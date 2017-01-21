//
//  Macros.swift
//  asm2c
//

import Foundation
import Regex

class Macros {
    
    let regexInclude:Regex;
    let regexComments:Regex;
    let regexPushPops:Regex;
    let regexEndp:Regex;
    let regexMacro:Regex;
    let regexEndm:Regex;
    let regexLocal:Regex;
    let regexEqu:Regex;
    enum MacroError: Error {
        case macroError(String)
    }
    
    init() {
        regexInclude = try! Regex(pattern:"include[ ]+([^ ]+)\\b", groupNames: "filename")
        regexComments = try! Regex(pattern:"^([^;]*)(;.*)$", groupNames: "line", "comment")
        regexPushPops = try! Regex(pattern:"^[ ]*(push|pop)[ ]+(.*)$", groupNames: "instruction", "registers")
        regexEndp = try! Regex(pattern:"^.*\\bendp\\b")
        regexMacro = try! Regex(pattern:"^[ ]*([^ ]+)[ ]+MACRO[ ]*(.*)$", groupNames: "name", "arguments")
        regexEndm = try! Regex(pattern:"^.*ENDM$")
        regexLocal = try! Regex(pattern: "^[ ]*local[ ]+([a-z_][a-z0-9_]*)", groupNames: "local")
        regexEqu = try! Regex(pattern:"^[ ]*([^ ]+)[ ]+EQU[ ]*(.*)$", groupNames: "equName", "equValue")
    }
    
    struct Macro: CustomStringConvertible {
        let name: String
        let argLabels: [String]
        var localGotos: [String]
        var body: String
        let regex: Regex
        
        static var localMacro: Int = 0
        public var description: String {
            return "name: \(name)("+argLabels.map({"\($0)"}).joined(separator:",")+") \n\(body)\n";
        }
        
        func applyMacro(on: String) throws -> String? {
            var macroName: String = "?"
            var args = [String]()
            let match = regex.findFirst(in: on)
            if let match = match {
                if let m = match.group(named: "macro")  {
                    macroName = m
                }
                if let arguments = match.group(named: "arguments") {
                    // try to separate args with ","
                    args = arguments.components(separatedBy: ",").filter { $0 != "" }
                    // if its not working try with spaces
                    if (args.count != argLabels.count) {
                        args = arguments.components(separatedBy: " ").filter { $0 != "" }
                    }
                }
            } else {
                return nil
            }
        
            var result = body
            
            if (args.count != argLabels.count) {
                throw MacroError.macroError("Error macro: <\(macroName)> \(args.count) args \(args) but  \(argLabels.count) expected Line:<\(on)> MACRO:<\(self)> \(argLabels)")
            }
            var i = 0
            for arg in args {
                result = ("\\b\(argLabels[i])\\b".r?.replaceAll(in: result, with: arg))!
                i = i + 1
            }
            i = 0
            for localgoto in localGotos {
                result = ("\\b\(localGotos[i])\\b".r?.replaceAll(in: result, with: "\(macroName)\(localgoto)x\(Macro.localMacro)"))!
                i = i + 1
            }
            Macro.localMacro = Macro.localMacro + 1
            return result
            
            //return "//macro \(macroName)\n\(result)"
        }
    }
    
    func getStringsFromFile(fileName: String) -> String {
        guard let urlFile = URL(string: fileName) else {
            print("Error on file: \(fileName)")
            return ""
        }
        guard var source = try? String(contentsOf: urlFile, encoding: String.Encoding.isoLatin1) else {
            print("Error on file: \(fileName)")
            return ""
        }

        source = removeComments(content:source)
        source = expendPushPops(content:source)

        let content = source.components(separatedBy: "\n").reduce("") { prev, lastline in
            
            let match = regexInclude.findFirst(in: lastline)
            if let match = match {
                if let m = match.group(named: "filename")  {
                    print("including: <\(m)>")
                    let includedFile = getStringsFromFile(fileName: fileName.replace(target: urlFile.lastPathComponent , withString:"\(m)"))
                    return "\(prev)\n\(includedFile)"
                }
            }
            return "\(prev)\n\(lastline)"
        }
        return content
    }

    func removeComments(content: String) -> String {
        return content.components(separatedBy: "\n").reduce("") { prev, lastline in
            
            let match = regexComments.findFirst(in: lastline)
            if let match = match {
                if let comment = match.group(named: "comment") {
                    if (comment == ";IGNORE") {
                        print("Ignoring <\(lastline)>\n");
                        return "\(prev)\n"
                    }
                }
            }
            let lastline = regexComments.replaceAll(in: lastline, with: "$1")
            return "\(prev)\n\(lastline)"
        }
    }
    
    func moveUpEqusDeclarations(content: String) -> String {
        var equContent = "";
        let notEquContent = content.components(separatedBy: "\n").reduce("") { prev, lastline in
            let match = regexEqu.findFirst(in: lastline)
            if match != nil {
                if equContent == ""  {
                    equContent = lastline;
                } else {
                    equContent = "\(equContent)\n\(lastline)"
                }
                return "\(prev)"
            } else {
                return "\(prev)\n\(lastline)"
            }
        }
        return "\(equContent)\(notEquContent)"
    }
    
    func expendPushPops(content: String) -> String {

        return content.components(separatedBy: "\n").reduce("") { prev, lastline in
            let match = regexPushPops.findFirst(in: lastline)
            if let match = match {
                if let instruction = match.group(named: "instruction") {
                    if let registers = match.group(named: "registers") {
                        let registers2 = registers.components(separatedBy: " ").filter { $0 != "" }
                      //  print("pushpopsx\n@\(lastline)@\n: \(instruction) <\(registers2)>\n")
                        if registers2.count > 1 {
                            var lastline2 = ""
                            for a in registers2 {
                                    lastline2 = "\(lastline2)\n\(instruction) \(a)"
                            }
                           // print("pushpopsx2 -> \(lastline2)")
                            return "\(prev)\n\(lastline2)"
                        }
                        
                    }
                }
                //print("pushpopsx -> \(lastline)")
            }
            return "\(prev)\n\(lastline)"
        }
    }
    
    func expandMacros(lines: [String], macros: [Macro]) throws -> [String] {
        var lineNumber = 0
        return try lines.map { lastline in
            lineNumber = lineNumber + 1
            let modifiedlastLine = try macros.flatMap { macro in
                try macro.applyMacro(on: lastline)
            }
            if let m = modifiedlastLine.first {
                return "\(m)"
            }
            return "\(lastline)"
        }
    }
    
    func expandMacros(fileName: String, fileNameOutput: String) {
        print("(macros) reading: <\(fileName)>\n")
        print("(macros) output: <\(fileNameOutput)>\n")
        
        var currentMacro: Macro?
        var macros: [Macro] = []
        
        //reading
        
        var lines: [String] = getStringsFromFile(fileName: fileName).replace(target: "\r", withString: "").components(separatedBy: "\n");

        // fix the endps
        lines = lines .map {
            if (regexEndp.findFirst(in: $0) != nil) {
                return "ENDP"
            } else {
                return $0
            }
        }
        
        var lineFilter = 0
        
        
        lines = lines.filter() { lastline in
            lineFilter = lineFilter + 1

                let match = regexMacro.findFirst(in: lastline)
                if let match = match {
                    var args = [String]()
                    if let name = match.group(named: "name") {
                    if let arguments = match.group(named: "arguments") {
                        args = arguments.components(separatedBy: ",").filter { $0 != "" }.map {
                            $0.replace(target: " ", withString: "")
                        }
                    }
                    //print("found macro:\(name) \(args)\n")
                    guard let regex = try? Regex(pattern:"^[ ]*(\(name))\\b(.*)", options: [], groupNames: "macro", "arguments" ) else {
                        print("Error creating reg exp")
                        return false
                    }
                    currentMacro = Macro(name:name,argLabels: args, localGotos: [], body:"", regex: regex)
                    }
                    return false
            } else {
                    if (regexEndm.findFirst(in: lastline) != nil) {
                        if currentMacro == nil  {
                            print("\(lineFilter) ENDM before macro start?!?! <\(lastline)>");
                        } else {
                            //print("macro finished: \(currentMacro!)\n");
                            macros.append(currentMacro!)
                            currentMacro=nil
                            return false
                        }
                    }
                    if let match = regexLocal.findFirst(in: lastline) {
                        if let local = match.group(named: "local") {
                            currentMacro?.localGotos.append(local)
                            return false
                        }
                    }
                currentMacro?.body.append("\(lastline)\n");
            }
            guard var current = currentMacro else {
                return true
            }
            
            current.body.append(lastline);
            return false
        }
        
        do {
            let lines2 = try expandMacros(lines: lines, macros: macros).reduce("") { prev, lastline in
                return "\(prev)\n\(lastline)"
            }.components(separatedBy: "\n")
            lines = try expandMacros(lines: lines2, macros: macros)
        }
        catch {
            print("line \(lineNumber) \(error)\n")
            exit(1)
        }
        
        let outputStringTmp = lines.reduce("") { prev, lastline in
            return "\(prev)\n\(lastline)"
        }
        
        let outputString = moveUpEqusDeclarations(content: outputStringTmp);
        
        //writing
        if let urlFileOutput = URL(string: fileNameOutput) {
            try? outputString.write(to: urlFileOutput, atomically: false, encoding: String.Encoding.utf8)
        }
    }
}

