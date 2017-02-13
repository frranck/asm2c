//
//  Nodes.swift
//  asm2c
//

import Foundation

extension String
{
    func replace(target: String, withString: String, option: NSString.CompareOptions = NSString.CompareOptions.literal) -> String
    {
        return self.replacingOccurrences(of: target, with: withString, options: option, range: nil)
    }
}

public func multiline(_ x: String...) -> String {
    return x.joined(separator: "\n")
}


public protocol ExprNode: CustomStringConvertible {
}

public enum SizeDirective: String, CustomStringConvertible {
    case dword = "dword"
    case word = "word"
    case byte = "byte"
    case unknown = "unknown"
    public var description: String {
        switch self {
        case .dword:
            return("dd")
        case .word:
            return("dw")
        case .byte:
            return("db")
        case .unknown:
            return("")
        }
    }
    public var nbBits: String {
        switch self {
        case .dword:
            return("32")
        case .word:
            return("16")
        case .byte:
            return("8")
        case .unknown:
            return("?")
        }
    }
}



// the data declarations
public struct DataPrimaryNode: ExprNode {
    public let name: String // the data declarations
    public let kind: String
    public let nodes: [Any] // the data itself
    
     public func printDataType() -> String {
        var type: String
        switch kind.uppercased() {
        case "DB":
            type="db";
        case "DW":
            type="dw";
        case "DD":
            type="dd";
        default:
            type="ERROR"
        }
        return type
    }
    
    public func getSizeDirective() -> SizeDirective {
        switch kind.uppercased() {
        case "DB":
            return .byte
        case "DW":
            return .word
        case "DD":
            return .dword
        default:
            return .unknown
        }
    }
    //dataPrimaryNodesMap[name]
    
    public var description: String {
        if nodes.count > 1 {
            return "\(printDataType()) \(name)[\(nodes.count)];\n"
        } else {
            return "\(printDataType()) \(name);\n"
        }
    }
    public func printData() -> String {
        if nodes.count==1 {
            return nodes.map({"\($0)"}).joined(separator:",")+", //\(name)\n";
        } else {
            var allTheSameAndZero = true
            _ = nodes.reduce("") { prev, last in
                if (prev != "\(last)" && prev != "") {
                    allTheSameAndZero = false
                }
		if ( "\(last)" != "0" ) {
	            allTheSameAndZero = false			
	        }
                return "\(last)"
            };
            if allTheSameAndZero {
                return "{0}, //\(name)\n"
            }
            return "{"+nodes.map({"\($0)"}).joined(separator:",")+"}, //\(name)\n";
        }
    }
}

// as? DataPrimaryNode return
var equNameList = [String]()
var dataPrimaryNodes = [DataPrimaryNode]()
var dataPrimaryNodesMap = [String:DataPrimaryNode]()

public struct whateverNode: ExprNode {
    public let name: String
    public var description: String {
        return "\(name)\n"
    }
}


public struct LabelNode: ExprNode {
    public let name: String
    public var isEqu: Bool {
        return  equNameList.contains(name)
    }
    public var isVariable: Bool {
        if let _ = dataPrimaryNodesMap[name] {
            return true;
        } else {
            return false;
        }
    }
    public var description: String {
        if (isEqu) {
            return "\(name)"
        }
        if (isVariable) {
            return "offsetof(struct Mem,\(name))"
        }
        return "m.\(name)"
    }
}

public struct ProcedureNode: ExprNode {
    public let name: String
    public var nodes = [Any]()
    public var description: String {
        let instructions = nodes.reduce("") { prev, lastline in "\(prev)\(lastline)" }
        return "//PROC \(name)\n\(name):\n\(instructions)\n";
    }
}



// the data declarations
public struct equNode: ExprNode {
    public let name: String
    public let expr: ExprNode
    public var description: String {
        return "#define \(name) \(expr)\n"
    }
}

public struct GotoLabelNode: ExprNode {
    public let name: String
    public var description: String {
        return "\(name):\n"
    }
}


public struct quoteNumberNode: ExprNode {
    public let valueSmall: Int
    public let valueBig: Int
    public var description: String {
        if valueSmall != valueBig {
            return "(m.isLittle?\(valueSmall):\(valueBig))"
        } else {
            return "\(valueSmall)"
        }
    }
}

public struct NumberNode: ExprNode {
    public let value: Int
    public var description: String {
        return "\(value)"
    }
}

public struct RegisterNode: ExprNode {
    public let value: String
    public let size: SizeDirective
    public let isH: Bool
    public var description: String {
        switch size {
        case .dword:
            return "READDD(\(value))"
        case .word:
            return "READDW(\(value))"
        case .byte:
            if (isH) {
                return "READDBh(\(value))"
            } else {
                return "READDBl(\(value))"
            }
        case .unknown:
            return "xxxcant happen xxxx"
        }
    }
}

public struct ParenthesisNode: ExprNode {
    public let node: ExprNode
    public var description: String {
        return "(\(node))"
    }
}

public struct BinaryOpNode: ExprNode {
    public let op: String
    public let lhs: ExprNode
    public let rhs: ExprNode
    public var description: String {
        return "(\(lhs)\(op)\(rhs))"
    }
}

let maxTraces = true;

public struct JumpInstruction: CustomStringConvertible {
    public let instruction: String
    public let label: String
    public var description: String {
        let jumpStr = "\(instruction.uppercased())(\(label.lowercased()))"
        return "R(\(jumpStr));\n";
    }
}

public struct Instruction0Node: CustomStringConvertible {
    public let instruction: String
    public var description: String {
        let s = "\(instruction.uppercased())"
        return "R(\(s));\n";
    }
}

public struct Instruction1Node: CustomStringConvertible {
    public let instruction: String
    public let sizeDirective: SizeDirective
    public let selector: String
    public let operand: ExprNode
    public var description: String {
        var castOperand = "(\(operand))"
        // special cases
        if instruction == "INT" {
            return "R(\(instruction)\(castOperand));\n"
        }
        if shouldPointExpression(expr: operand) {
            castOperand = "*((\(sizeDirective) *) realAddress(\(operand), \(selector)))" //TOFIX
        }
        let s = "\(instruction.uppercased())(\(sizeDirective.nbBits),\(castOperand))"
        return "R(\(s));\n";
    }
}





public struct Instruction2Node: CustomStringConvertible {
    public let instruction: String
    public let sizeDirectiveSource: SizeDirective
    public let sizeDirectiveDest: SizeDirective
    public let selector: String
    public let lhs: ExprNode
    public let rhs: ExprNode
    public var description: String  {
        
        var castLhs = "\(lhs)"
        var castRhs = "\(rhs)"
        
        // special cases
        if instruction == "IN" || instruction == "OUT" {
            return "\(instruction)(\(castLhs),\(castRhs));\n"
        }
        
        if shouldPointExpression(expr: lhs) {
           castLhs = "*((\(sizeDirectiveDest) *) realAddress(\(lhs), \(selector)))"
        }
        switch (rhs) {
        case is BraquetNode:
            castRhs = "*((\(sizeDirectiveSource) *) realAddress(\(rhs), \(selector)))"
        case is OffsetNode:
            castRhs = "(\(rhs))"
            if let lhs = lhs as? RegisterNode {
                castLhs = "m.\(lhs.value).dd.val"
            }
        default:
            if shouldPointExpression(expr: rhs) {
                castRhs = "*((\(sizeDirectiveDest) *) realAddress(\(rhs), \(selector)))"
            } else {
                castRhs = "(\(sizeDirectiveSource))\(rhs)"
            }
        }
        return "R(\(instruction)(\(sizeDirectiveDest.nbBits),\(castLhs),\(sizeDirectiveSource.nbBits),\(castRhs)));\n"
    }
}

public struct BraquetNode: ExprNode {
    public let expr: ExprNode
    public var description: String {
        return "\(expr)"
    }
}


public struct OffsetNode: ExprNode {
    public let expr: ExprNode
    public var description: String {
        return "((dd)\(expr))"
    }
}

public struct CallNode: ExprNode {
    public let label: String
    public var description: String {
        return "CALL(\(label));\n"
    }
}

public struct PrototypeNode: CustomStringConvertible {
    public let name: String
    public let argumentNames: [String]
    public var description: String {
        return "PrototypeNode(name: \(name), argumentNames: \(argumentNames))"
    }
}

public struct FunctionNode: CustomStringConvertible {
    public let prototype: PrototypeNode
    public let body: ExprNode
    public var description: String {
        return "FunctionNode(prototype: \(prototype), body: \(body))"
    }
}

func getCurrentSizeFrom(expr: ExprNode) throws -> SizeDirective {
    var sizeDirective : SizeDirective = .unknown
    if let expr = expr as? RegisterNode {
        sizeDirective = expr.size
    } else {
        if let expr = getNestedVariable(expr: expr) {
            if let node = dataPrimaryNodesMap[expr.name] {
                return node.getSizeDirective()
            } else {
                let errorMsg="Error: In getCurrentSizeFrom function on:<\(expr)>\n"
                print("\(errorMsg)\n")
                throw Errors.ErrorParsing("\(errorMsg)")
            }
        }
    }
    return sizeDirective
}

func getNestedVariable(expr: ExprNode) -> LabelNode? {
    if let expr = expr as? LabelNode {
        if expr.isVariable {
            return expr;
        } else {
            return nil;
        }
    }
    if let expr = expr as? BraquetNode {
        return getNestedVariable(expr: expr.expr)
    }
    if let expr = expr as? BinaryOpNode {
        if let lhs = getNestedVariable(expr: expr.lhs) {
            return lhs
        }
        return  getNestedVariable(expr: expr.rhs)
    }
    return nil
}
//toFiX: shit
func shouldPointExpression(expr: ExprNode) -> Bool {
    switch (expr) {
    case is BraquetNode:
        return true
    case is LabelNode:
        if let expr = expr as? LabelNode {
            if  equNameList.contains(expr.name) {
                return false
            }
        }
        return true;
    default:
        return getNestedVariable(expr: expr) != nil
    }
}
