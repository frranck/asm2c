//
//  main.swift
//  asm2c
//

import Foundation

let argCount = CommandLine.argc
if argCount>2 {
    var sourcePath = "file://"+CommandLine.arguments[1]
    var ressourcePath = "file://"+CommandLine.arguments[2]

    if let asmFileName = sourcePath.components(separatedBy: "/").last {
        
        let asmFileNameNoExtension = asmFileName.replace(target: ".asm", withString: "", option: .caseInsensitive)
        
        var fileNameHeap = sourcePath.replace(target: ".asm", withString: ".heap", option: .caseInsensitive)
        
        let heapFileName = asmFileName.replace(target: ".asm", withString: ".heap", option: .caseInsensitive)
        
        let fileNameOutputNoMacros=sourcePath.replace(target: asmFileName, withString: "\(asmFileNameNoExtension)/\(asmFileNameNoExtension).nomacro", option: .caseInsensitive)
        
        let fileNameOutputC=sourcePath.replace(target: asmFileName, withString: "\(asmFileNameNoExtension)/\(asmFileNameNoExtension).c", option: .caseInsensitive)
        let fileNameOutputH=sourcePath.replace(target: asmFileName, withString: "\(asmFileNameNoExtension)/\(asmFileNameNoExtension).h", option: .caseInsensitive)
        
        let macros = Macros()
        macros.expandMacros(fileName: sourcePath, fileNameOutput: fileNameOutputNoMacros)
        
        asm2c().convertToC(fileName: fileNameOutputNoMacros, fileNameOutputC: fileNameOutputC, fileNameOutputH: fileNameOutputH, include: asmFileNameNoExtension, ressourceDirectory: ressourcePath, fileNameHeap: fileNameHeap)
    }
} else {
    print("Missing argument. <path to file to convert> <path to resource directory with asm.h and c files>\n")
    exit(1)
}
