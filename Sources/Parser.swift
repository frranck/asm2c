//
//  Parser.swift
//  asm2c
//

import Foundation
import Expression

// Proc -> 'Proc' Label ProcPrimaryExpression Label 'Endp'
// ProcPrimaryExpression = Line | ProcPrimaryExpression Line
//
// DataLine -> Label DataSymbol DataPrimaryExpression | DataSymbol DataPrimaryExpression
// DataPrimaryExpression -> PrimaryExpression | DataPrimaryExpression ',' PrimaryExpression
//
//
// | Number 'dup' '(' Expression ')'
//
//
// DataSymbol -> 'db' | 'dw' | 'dd'
//
// Expression -> PrimaryExpression Operator Expression | PrimaryExpression
//              | Operator PrimaryExpression
// PrimaryExpression -> Identifier | Number | '(' Expression ')' | Registry | DataString | '[' Expression ']'
//
// Operator -> '*' | '/' | '+' | '-' | offset
//
//
// simplified version of pointer:
//
// Pointeur -> Identifier | Identifier Operator OffsetExpression | '[' Pointeur ']'
// OffsetExpression -> PrimaryOffsetExpression | PrimaryOffsetExpression Operator OffsetExpression
// PrimaryOffsetExpression -> Number  | '(' OffsetExpression ')'
//
//
//
// Line ->
// Instruction1Line | Instruction2Line | JmpInstructionLine | LabelLine | DataLine | Instruction0Line
//
// Instruction0Line -> 'Ret'
//
// Instruction1Line ->
// <instruction 1>  Qualifier? Expression
//
// Instruction2 ->
// Instruction2Token Qualifier? Expression Comma Expression
//
// Call ->
// CallToken Label
//
// JmpInstruction ->
// JumpInstructionToken Label
//
// Expression ->
// PrimaryExpression Operator Expression | PrimaryExpression
//
// PrimaryExpression -> Identifier | Number | Variable | Register | ( Expression ) | [ Expression] | Offset [ Expression] | Label

enum Errors: Error {
    case WrongExpressionBeforeDup
    case UnexpectedToken
    case UnexpectedToken2(Token)
    case UndefinedOperator(String)
    case UnexpectedRegister(String)
    case ExpectedCharacter(Character)
    case ExpectedExpression
    case ExpectedToken(Token)
    case ExpectedKeyword(String)
    case ExpectedArgumentList
    case ExpectedFunctionName
    case ExpectedInstruction
    case ExpectedRegister
    case ErrorParsing(String)
}



class Parser {
    let defaultSelector: String = "ds"
    var labelsnoCase = true
    let tokens: [(Token,Int, String)]
    var equ = [equNode]()
    var errorNumber = 0
    var index = 0
    var dummyIndex = 0
    var line = 0
    //var currentSizeDirective: SizeDirective = .unknown
    var currentSelector: String

    init(tokens: [(Token,Int, String)]) {
        self.tokens = tokens
        self.currentSelector = defaultSelector
    }

    func peekCurrentToken() -> Token {
        if index >= tokens.count { return .EOF }
        return tokens[index].0
    }

    func peekCurrentTokenLineNumber() -> Int? {
        if index >= tokens.count { return nil }
        return tokens[index].1
    }

    func currentLineNumber() -> Int {
        if index >= tokens.count { return 9999999 }
        return tokens[index].1
    }


    func popCurrentToken() -> Token {
        if index >= tokens.count { return .EOF }
        let token = tokens[index]
        index = index + 1
        return token.0
    }

    func parseNumber() throws -> ExprNode {
        guard case let Token.Number(value) = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }
        return NumberNode(value: value)
    }





    func parseRegister() throws -> RegisterNode {

        switch popCurrentToken() {
        case Token.Register( let value):
            return RegisterNode(value: value.lowercased(), size: .dword, isH: false)
        case Token.Register16(let value):
            switch value.lowercased() {
            case "ax":
                return RegisterNode(value: "eax", size: .word, isH: false)
            case "bx":
                return RegisterNode(value: "ebx", size: .word, isH: false)
            case "cx":
                return RegisterNode(value: "ecx", size: .word, isH: false)
            case "dx":
                return RegisterNode(value: "edx", size: .word, isH: false)
            case "si":
                return RegisterNode(value: "esi", size: .word, isH: false)
            case "di":
                return RegisterNode(value: "edi", size: .word, isH: false)
            case "bp":
                return RegisterNode(value: "ebp", size: .word, isH: false)
            case "cs":
                return RegisterNode(value: "cs", size: .word, isH: false)
            case "ds":
                return RegisterNode(value: "ds", size: .word, isH: false)
            case "es":
                return RegisterNode(value: "es", size: .word, isH: false)
            case "fs":
                return RegisterNode(value: "fs", size: .word, isH: false)
            case "gs":
                return RegisterNode(value: "gs", size: .word, isH: false)
            case "ss":
                return RegisterNode(value: "ss", size: .word, isH: false)
            default:
                throw Errors.UnexpectedRegister(value)
               // return RegisterNode(value: value.lowercased(), size: .word, isH: false)
            }
        case Token.Register8h(let value):
            switch value.lowercased() {
            case "ah":
                return RegisterNode(value: "eax", size: .byte, isH: true)
            case "bh":
                return RegisterNode(value: "ebx", size: .byte, isH: true)
            case "ch":
                return RegisterNode(value: "ecx", size: .byte, isH: true)
            case "dh":
                return RegisterNode(value: "edx", size: .byte, isH: true)
            default:
                throw Errors.UnexpectedRegister(value)
            }
        case Token.Register8l(let value):
            switch value.lowercased() {
            case "al":
                return RegisterNode(value: "eax", size: .byte, isH: false)
            case "bl":
                return RegisterNode(value: "ebx", size: .byte, isH: false)
            case "cl":
                return RegisterNode(value: "ecx", size: .byte, isH: false)
            case "dl":
                return RegisterNode(value: "edx", size: .byte, isH: false)
            default:
                throw Errors.UnexpectedRegister(value)
            }
        default:
            throw Errors.UnexpectedToken
        }
    }


    func parseParens() throws -> ExprNode {
        guard case Token.ParensOpen = popCurrentToken() else {
            throw Errors.ExpectedCharacter("(")
        }

        guard let exp = try parseExpression() else {
            throw Errors.ExpectedExpression
        }

        guard case Token.ParensClose = popCurrentToken() else {
            throw Errors.ExpectedCharacter(")")
        }

        return ParenthesisNode(node: exp)
    }

    func parseBraquet() throws -> ExprNode {
        guard case Token.BraquetOpen = popCurrentToken() else {
            throw Errors.ExpectedCharacter("[")
        }

        guard let exp = try parseExpression() else {
            throw Errors.ExpectedExpression
        }

        guard case Token.BraquetClose = popCurrentToken() else {
            throw Errors.ExpectedCharacter("]")
        }
        return BraquetNode(expr: exp)
    }

    func parseOffset() throws -> ExprNode {
        guard case Token.Offset = popCurrentToken() else {
            throw Errors.ExpectedKeyword("Offset")
        }

        guard let exp = try parseExpression() else {
            throw Errors.ExpectedExpression
        }

        return OffsetNode(expr: exp)
    }


    let operatorPrecedence: [String: Int] = [
        "+": 20,
        "-": 20,
        "*": 40,
        "/": 40
    ]

    func getCurrentTokenPrecedence() throws -> Int {
        guard index < tokens.count else {
            return -1
        }
        /*
        guard case .Label = peekCurrentToken() else {
            return 60
        }
 */
        guard case let Token.Operator(op) = peekCurrentToken() else {
            return -1
        }

        guard let precedence = operatorPrecedence[op] else {
            throw Errors.UndefinedOperator(op)
        }

        return precedence
    }




    func parseDataString() throws -> [NumberNode] {
        var nodes = [NumberNode]()
        guard case let Token.DataString(value) = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }
        let start = value.index(value.startIndex, offsetBy: 1)
        let end = value.index(value.endIndex, offsetBy: -1)
        let myRange:Range = start..<end
        let stringFound = value.substring(with: myRange)
        for code in String(stringFound).utf8 { nodes.append(NumberNode(value: Int(code))) } ;
        
        if (stringFound.count != nodes.count) {
            print("Warning string \(stringFound) size!=characters.count\n");
            let error="Error string <\(stringFound)> size!=characters.count prob a file encoding issue. (Did you converted your 8bit charset to utfxx?) \n";
            print(error)
            throw Errors.ErrorParsing(error)
        }
        return nodes;
    }

    func parseDupDataContent() throws -> [ExprNode] {
        var nodes = [ExprNode]()
        guard case Token.ParensOpen = popCurrentToken() else {
            throw Errors.ExpectedToken(.ParensOpen)
        }
        let currentLine = currentLineNumber()
        while (index < tokens.count && currentLine == currentLineNumber()) {
            switch (peekCurrentToken()) {
            case Token.ParensClose:
                _ = popCurrentToken()
                return nodes;
            case .Comma:
                _ = popCurrentToken()
            default:
                if let node = try parseExpression() {
                    nodes.append(node)
                } else {
                    print("error parsing dup inside?")
                }
            }
        }
        return nodes
    }

    func evaluateExpr(expr: ExprNode) -> Int {
        let expression = Expression("\(expr)")
        guard let result = try? expression.evaluate() else {
            print("ERROR: evaluateExpr:  \(expr)") //TODO fail properly.
            return -1
        }
        return Int(result)
    }

    func parseDup(dupSize: ExprNode) throws -> [ExprNode] {
        var evaluateDupsize: Int;
        var nodes = [ExprNode]()
        let nodesToCopy = try parseDupDataContent()
        evaluateDupsize = evaluateExpr(expr: dupSize)
        for _ in 1...evaluateDupsize {
            _ = nodesToCopy.map { nodes.append( $0 ) }
        }
        return nodes;
    }

    func parseExpression() throws -> ExprNode? {

        switch peekCurrentToken() {
        case .Operator(_):
            guard case let Token.Operator(op) = popCurrentToken() else {
                throw Errors.UnexpectedToken
            }
            switch (peekCurrentToken()) {
                case .Number:
                        return try parseBinaryOp(node: ParenthesisNode (node: BinaryOpNode(op: op, lhs: NumberNode(value: 0), rhs: try parseNumber())))
                default: break;
            }
        default: break

        }
        guard let node = try parsePrimary() else {
            return nil
        }
        return try parseBinaryOp(node: node)
    }

    func parsePrimary() throws -> ExprNode? {
        switch (peekCurrentToken()) {
        case .Register:
            return try parseRegister()
        case .Register16:
            let node = try parseRegister()
            guard case .DotDot =  peekCurrentToken() else { // to skip cs: es: ds:
                return node
            }
            self.currentSelector = node.value;
            _ = popCurrentToken()
            return try parsePrimary()
        case .Register8h:
            return try parseRegister()
        case .Register8l:
            return try parseRegister()
        case .Label:
            return try parseLabel()
        case .Number:
            return try parseNumber()
        case .ParensOpen:
            return try parseParens()
        case .BraquetOpen:
            return try parseBraquet()
        case .Offset:
            return try parseOffset()
        case .DataString:
            var numberValueSmall = 0
            var numberValueBig = 0
            let dataString = try parseDataString()
            var multi = 1
            _ = dataString.reversed().map { value -> (NumberNode) in numberValueSmall = numberValueSmall + value.value * multi; multi = multi * 256; return value }
            multi = 1
            _ = dataString.map { value -> (NumberNode) in numberValueBig = numberValueBig + value.value * multi; multi = multi * 256; return value }
            return quoteNumberNode(valueSmall: numberValueSmall, valueBig: numberValueBig)
        default:
            return nil
        }
    }

    func parseBinaryOp(node: ExprNode, exprPrecedence: Int = 0) throws -> ExprNode {
        var lhs = node
        while true {
            let tokenPrecedence = try getCurrentTokenPrecedence()
            if tokenPrecedence < exprPrecedence {
                return lhs
            }

            guard case let Token.Operator(op) = popCurrentToken() else {
                throw Errors.UnexpectedToken
            }

            guard var rhs = try parsePrimary() else {
                throw Errors.UnexpectedToken
            }
            let nextPrecedence = try getCurrentTokenPrecedence()

            if tokenPrecedence < nextPrecedence {
                rhs = try parseBinaryOp(node: rhs, exprPrecedence: tokenPrecedence+1)
            }
            lhs = BinaryOpNode(op: op, lhs: lhs, rhs: rhs)
        }
    }

    func parseLabel() throws -> LabelNode {
        guard case let Token.Label(name) = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }
        if labelsnoCase {
            return LabelNode(name: name.lowercased())
        } else {
            return LabelNode(name: name)
        }

    }

    func parseDataLine(label: String) throws -> DataPrimaryNode {
        if case let Token.DataSymbol(symbole) = peekCurrentToken()  {
            _ = popCurrentToken()
            return try parseDataPrimaryExpression(label: label, dataSymbol: symbole)
        }
        throw Errors.UnexpectedToken2(peekCurrentToken())
    }

    func parseDataPrimaryExpression(label: String, dataSymbol: String) throws -> DataPrimaryNode {
        var nodes = [ExprNode]()
       // print("xxx line:\(label)")
        let currentLine = currentLineNumber()

        while (index < tokens.count && currentLine == currentLineNumber()) {
          //  print("parseDataPrimaryExpression found:\(peekCurrentToken())")
            switch (peekCurrentToken()) {
            case .DataString:
                _ = try parseDataString().map { nodes.append($0) }
            case .Comma:
                _ = popCurrentToken()
            case .Dup:
                _ = popCurrentToken()
                if let node = nodes.last {
                    nodes.removeLast()
                    _ = try parseDup(dupSize: node).map { nodes.append($0) }
                } else {
                    throw Errors.WrongExpressionBeforeDup
                }
            case .DataSymbol:
                return (DataPrimaryNode(name: label, kind: dataSymbol, nodes: nodes))
                /*
            case .Label:
                print(".Label")
                return (DataPrimaryNode(name: label, kind: dataSymbol, nodes: nodes))
 */
            default:
                if let node = try parseExpression() {
                    nodes.append(node)
                } else {
                   // print("parseDataPrimaryExpression not processing \(peekCurrentToken()) as data")
                    return (DataPrimaryNode(name: label, kind: dataSymbol, nodes: nodes))
                }
            }
        }
        return (DataPrimaryNode(name: label, kind: dataSymbol, nodes: nodes))
    }






    func parseCall() throws -> CallNode  {
        guard case Token.Call = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }
        guard case let Token.Label(name) = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }
        return CallNode(label: name)
    }

    func parseJumpInstruction() throws -> JumpInstruction {
        guard case let Token.JumpInstruction(instruction) = popCurrentToken() else {
            throw Errors.ExpectedInstruction
        }
        guard case let Token.Label(name) = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }
        return JumpInstruction(instruction: instruction, label: name)
    }


    func getCurrentSizeDirective() -> SizeDirective {
        guard case let .Qualifier(name) = peekCurrentToken() else {
            return .unknown
        }
        if let sizeDirective = SizeDirective(rawValue: name.lowercased()) {
            _ = popCurrentToken()
            return sizeDirective
        } else {
            print("weird sizeDirective: \(name)")
            return .unknown
        }
    }

    func parseInstruction0()  throws -> Instruction0Node {
        guard case let .Instruction0(instruction) = popCurrentToken() else {
            throw Errors.ExpectedInstruction
        }
        if (instruction.uppercased()=="REP") {
            guard case let .Instruction0(instructionRep) = popCurrentToken() else {
                throw Errors.ExpectedInstruction
            }
            return Instruction0Node(instruction: "REP_\(instructionRep)")
        }
        return Instruction0Node(instruction: instruction)
    }

    func parseInstruction1() throws -> Instruction1Node {
        guard case let Token.Instruction1(instruction) = popCurrentToken() else {
            throw Errors.ExpectedInstruction
        }
        var currentSizeDirective = getCurrentSizeDirective()

        guard let expr = try parseExpression() else {
            throw Errors.UnexpectedToken
        }

        if currentSizeDirective == .unknown {
            let currentSizeDirectiveFromExpr: SizeDirective = try getCurrentSizeFrom(expr: expr)
            currentSizeDirective = currentSizeDirectiveFromExpr
        }

        return Instruction1Node(instruction: instruction.uppercased(), sizeDirective: currentSizeDirective, selector: currentSelector, operand: expr)
    }
    
    func isInstructionWithDifferentSizeForSourceAndDestination(instruction : String) -> Bool {
        if instruction.uppercased() == "MOVSX" {
            return true
        }
        if instruction.uppercased() == "MOVZX" {
            return true
        }
        return false
    }

    func parseInstruction2() throws -> Instruction2Node {
        guard case let Token.Instruction2(instruction) = popCurrentToken() else {
            throw Errors.ExpectedInstruction
        }
        var currentSizeDirectiveDest = getCurrentSizeDirective()
        var currentSizeDirectiveSource: SizeDirective = .unknown

        guard let lhs = try parseExpression() else {
            throw Errors.ExpectedExpression
        }

        if currentSizeDirectiveDest == .unknown {
            let currentSizeDirectiveFromExpr: SizeDirective = try getCurrentSizeFrom(expr: lhs)
            currentSizeDirectiveDest = currentSizeDirectiveFromExpr
        }

        guard case Token.Comma = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }

        currentSizeDirectiveSource = getCurrentSizeDirective()

        if currentSizeDirectiveDest == .unknown {
            currentSizeDirectiveDest=currentSizeDirectiveSource
        }
        
        guard var rhs = try parseExpression() else {
            throw Errors.ExpectedExpression
        }

        if instruction.uppercased() == "LEA" {
            rhs = OffsetNode(expr: rhs)
        }
        
        if let rhs = rhs as? RegisterNode  {
            currentSizeDirectiveSource = rhs.size
        }

        if (currentSizeDirectiveSource == .unknown) {
            currentSizeDirectiveSource = currentSizeDirectiveDest
        }
        if (currentSizeDirectiveDest == .unknown) {
            currentSizeDirectiveDest = currentSizeDirectiveSource
        }

        if (isInstructionWithDifferentSizeForSourceAndDestination(instruction: instruction) == true) {
            if (currentSizeDirectiveDest == currentSizeDirectiveSource) {
                print("Warning:\(instruction) dest and source size marked as egals, please fix your asm code with a byte ptr or word ptr thing???\n")
                // TOFIX: Test on DOSBOX if should fail
            }
        }
        return Instruction2Node(instruction: instruction.uppercased(), sizeDirectiveSource: currentSizeDirectiveSource, sizeDirectiveDest: currentSizeDirectiveDest, selector: currentSelector, lhs: lhs, rhs: rhs)
    }


    func parseLine() throws -> Any {
        self.currentSelector = defaultSelector
        switch peekCurrentToken() {
        case .Instruction0:
            return try parseInstruction0()
        case .Instruction1:
            return try parseInstruction1()
        case .Instruction2:
            return try parseInstruction2()
        case .JumpInstruction:
            return try parseJumpInstruction()
        case .Label:
            return try parseLabelLine()
        case .DataSymbol:
            dummyIndex = dummyIndex + 1
            return try parseDataLine(label: "dummy\(dummyIndex)")
        case .Ret:
            _ = popCurrentToken()
            return whateverNode(name: "RET;")
        case .Call:
            return try parseCall()
        default:
            throw Errors.UnexpectedToken2(peekCurrentToken())
        }
    }



    // first: main nodes, second: procedures nodes



    func parseEqu(variableName: String) throws -> ExprNode {
        if case Token.Equ = peekCurrentToken()  {
            _ = popCurrentToken()
            guard let equValue = try parseExpression() else {
                throw Errors.ExpectedExpression
            }
            var variableName2 = variableName
            if labelsnoCase {
               variableName2 = variableName2.lowercased()
            }
            equNameList.append(variableName2)
            return  equNode(name: variableName2, expr:  equValue)
        }
        throw Errors.UnexpectedToken2(peekCurrentToken())
    }

    func parseLabelLine() throws -> ExprNode  {
        guard case let Token.Label(name) = popCurrentToken() else {
            throw Errors.UnexpectedToken
        }

        if case .DotDot = peekCurrentToken()  {
            _ = popCurrentToken()
            if labelsnoCase {
                return GotoLabelNode(name: name.lowercased())
            } else {
                return GotoLabelNode(name: name)
            }
        }

        if case .DataSymbol = peekCurrentToken()  {
            let node = try parseDataLine(label: name)
            return node
        }

        if case .Equ = peekCurrentToken()  {
            return try parseEqu(variableName: name)
        }

        if case .Proc = peekCurrentToken() {
            _ = popCurrentToken()
            return try parseProcedure(name: name)
        }
        throw Errors.UnexpectedToken
    }

    func printLine(number lineNumber: Int) {
        let lineTokens = tokens.filter { $0.1 == lineNumber }.map { $0.0 }
        let lineString = tokens.filter { $0.1 == lineNumber }.map { $0.2 }.first
        print("line: <\(lineString)>")
        print("tokens: <\(lineTokens)>")
    }

    func gotoLineAfter(line: Int) {
        var currentLine = peekCurrentTokenLineNumber()
        while (currentLine != nil) {
            if (currentLine! > line) {
                return
            }
            _ = popCurrentToken()
            currentLine = peekCurrentTokenLineNumber()
        }
    }

    func parseData() -> [DataPrimaryNode] {
        var data = [DataPrimaryNode]()
        index = 0
        while index < tokens.count {
            let lineNumber = currentLineNumber()
                do {
                    switch peekCurrentToken() {
                    case .DataSymbol:
                        dummyIndex = dummyIndex + 1
                        if let node = try? parseDataLine(label: "dummy\(dummyIndex)") {
                            data.append(node)
                        }
                    case .Label:
                        guard case let Token.Label(name) = popCurrentToken() else {
                            throw Errors.UnexpectedToken
                        }
                        if case .DataSymbol = peekCurrentToken()  {
                            var labelName = name
                            if labelsnoCase {
                                labelName = labelName.lowercased()
                            }
                            if let node = try? parseDataLine(label: labelName) {
                                data.append(node)
                             //   dataPrimaryNodesMap[node.name] = node
                            }
                        }
                    default:
                        gotoLineAfter(line: lineNumber)
                        break
                    }
                }
                catch {
                    gotoLineAfter(line: lineNumber)
                }
        }
        index = 0
        return data
    }

    func parseProcedure(name: String) throws -> ProcedureNode {
        var nodes = [Any]()
        while index < tokens.count {
            let lineNumber = currentLineNumber()
            do {
                //print("parseProcedure parsing <\(peekCurrentToken())>")
                if case .Endp = peekCurrentToken()  {
                    _ = popCurrentToken()
                    break;
                }
                let node = try parseLine()
                if let node = node as? equNode {
                    equ.append(node)
                }
                //print("parseProcedure: \(name) adding: \(node)")
                nodes.append(node)
            }
            catch {
                print("error parsing proc line: \(lineNumber)\n")
                printLine(number:lineNumber)
                let lineNumber = currentLineNumber()
                errorNumber = errorNumber + 1
                gotoLineAfter(line: lineNumber)
            }
        }
        //print("parseProcedure: \(name) return: \(nodes)")
        return ProcedureNode(name: name, nodes:nodes);
    }

    func parse() throws -> ([Any],[equNode],Int) {
        var main = [Any]()
        index = 0
        equ = []
        while index < tokens.count {
            let lineNumber = currentLineNumber()
            do {
                let node = try parseLine()

                if let node = node as? equNode {
                    equ.append(node)
                }
                else {
                    main.append(node)
                }
            }
            catch {
                print("error \(error) parsing line: \(lineNumber)\n")
                printLine(number:lineNumber)
                let lineNumber = currentLineNumber()
                errorNumber = errorNumber + 1
                gotoLineAfter(line: lineNumber)

            }
        }
        //main.append(whateverNode(name: "firstRun = 2;goto moveToBackGround;"))
        return (main,equ,errorNumber)
    }
}
