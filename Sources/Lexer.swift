//
//  Lexer.swift
//  asm2c
//

import Foundation
import Regex

public enum Token {
    case Define
    case DataSymbol(String)
    case DataString(String)
    case Label(String)
    case Register(String)
    case Register16(String)
    case Register8h(String)
    case Register8l(String)
    case Qualifier(String)
    case Instruction0(String)
    case Instruction1(String)
    case Instruction2(String)
    case JumpInstruction(String)
    case Number(Int)
    case Operator(String)
    case ParensOpen
    case ParensClose
    case BraquetOpen
    case BraquetClose
    case Offset
    case DotDot
    case Proc
    case Endp
    case Ret
    case Call
    case Comma
    case Equ
    case Dup
    case Other(String)
    case EOF
}



typealias TokenGenerator = (String) -> Token?
var lineNumber = 1

let tokenList: [(String, TokenGenerator, Int)] = [
    ("\r|;.*|\\..*|assume .*|_TEXT .*", { _ in lineNumber = lineNumber + 1 ; return nil } , 0),
    (" |\t|ptr|near|short", { _ in nil }, 0), //note: ignoring CLD/STD instructions
    ("Offset", { _ in .Offset } , 0),
    ("db|dw|dd", { .DataSymbol($0) } ,0),
    ("dup", { _ in .Dup } ,0),
    ("\\?", { _ in .Number(Int(0)) } ,0),
    ("proc", { _ in .Proc } ,0),
    ("endp", { _ in .Endp } ,0),
    ("equ", { _ in .Equ } ,0),
    ("ret|iret", { _ in .Ret }, 0),
    ("call", { _ in .Call }, 0),
    ("byte|word|dword", { .Qualifier($0) }, 0),
    ("eax|ebx|ecx|edx|esi|edi|ebp|esp", { .Register($0) }, 0),
    ("ax|bx|cx|dx|si|di|bp|sp", { .Register16($0) }, 0),
    ("cs|ds|es|fs|gs|ss", { .Register16($0) }, 0),
    ("ah|bh|ch|dh", { .Register8h($0) }, 0),
    ("al|bl|cl|dl", { .Register8l($0) }, 0),
    ("movsb|movsw|movsd|lodsb|lodsw|lodsd|stosb|stosw|stosd|rep|std|cld|sti|pushf|popf|nop|ramesi|sprite_bn|sprite_bw|sprite_cloud|SPRITE_8_16|sprite_16_16|SPRITE_16_11|SPRITE_32_32|SPRITE_16_187|SPRITE_16_263|SPRITE_16_5|SPRITE_191_16|SPRITE_192_21|SPRITE_19_23|SPRITE_23_21|SPRITE_26_206|SPRITE_30_48|SPRITE_36_88|SPRITE_64_46|SPRITE_77_12|SPRITE_85_17|SPRITE_92_17|SPRITE_27_31|SPRITE_TIMEOUT|copyblock|rambuffer|popad|pushad|eax_x_320|edx_x_320", { .Instruction0($0) }, 0),
    ("dec|inc|pop|push|int|neg", { .Instruction1($0) }, 0),
    ("je|jne|jmp|jnz|jna|jz|loop|ja|jbe|jnbe|jb|jc|jnae|js|jns|jnb|jae|jnc", { .JumpInstruction($0) }, 0),
    ("cmp|movsx|movzx|mov|or|xor|and|add|rol|ror|sub|shl|shr|test|in|out|lea", { .Instruction2($0) }, 0),
    ("\\+|\\*|-|/", { .Operator($0) }, 0),
    ("\'.\'", { (r: String) in
        let index = r.index(r.startIndex, offsetBy: 1)
        let s = String(r[index]).unicodeScalars
        
        /*
        if (s.characters.count != 1) {
        print("Warning string \(s) size!=characters.count\n");
        }
 */
        
        let x = s[s.startIndex].value
        
        
        return .Number(Int(x)) }, 0),
    ("[0-9]+", { (r: String) in .Number(Int(r) ?? 0) }, 0),
    ("[0-9]+[0-9a-f]*[h|H]", { (r: String) in var hexaString = r;  hexaString.remove(at: r.index(before: hexaString.endIndex)); return .Number(Int(hexaString, radix: 16) ?? 0) }, 1),
    ("[0-1]+[b|B]", { (r: String) in var binString = r;  binString.remove(at: r.index(before: binString.endIndex)); return .Number(Int(binString, radix: 2) ?? 0) }, 1),
    ("\\(", { _ in .ParensOpen }, 0),
    ("\\)", { _ in .ParensClose }, 0),
    ("\\[", { _ in .BraquetOpen }, 0),
    ("\\]", { _ in .BraquetClose }, 0),
    (":", { _ in .DotDot }, 0),
    (",", { _ in .Comma }, 0),
    ("[a-z_@][a-z0-9_@]*", { .Label($0.replace(target: "@", withString: "arobase", option: .caseInsensitive)) }, 2),
    ("'[^']*'", { .DataString($0) }, 0)]

var expressions = [String: Regex]()
// regex: Regex

public extension String {
    
    private func getRegex(regex: String) -> Regex {
        let expression: Regex
        if let exists = expressions[regex] {
            expression = exists
        } else {
            // Regex
            expression = try! Regex(pattern: regex)
            expressions[regex] = expression
        }
        return expression
    }
    
    public func match(regex: String, atBegining: Bool = true ) -> String? {
        let expression = getRegex(regex: "^(\(regex))")
        return expression.findFirst(in: self)?.group(at: 0)
    }
}

public class Lexer {
    let input: String
    let line: Int
    init(input: String, line: Int) {
        self.input = input
        self.line = line
    }
    public func tokenize() -> [(Token,Int,String)] {
        var tokens = [(Token,Int,String)]()
        var content = input
        
        while (content.count > 0) {
            var matched = false
            
            let matchingTokensSorted = tokenList.filter { (content.match(regex: $0.0) != nil) }
                .sorted(by: { (content.match(regex: $0.0)?.count)! > (content.match(regex: $1.0)?.count)! && ($0.2 >= $1.2)  })
            
            for (pattern, generator, _) in matchingTokensSorted {
                if let m = content.match(regex: pattern) {
                    if let t = generator(m) {
                        tokens.append((t,line,input))
                    }
                    let index = content.index(content.startIndex, offsetBy: m.count)
                    content = content.substring(from: index)
                    matched = true
                    break
                }
            }
            if !matched {
                guard let range: Range<String.Index> = content.range(of: "\n") else {
                    return tokens
                }
                print("ERROR tokenize: line \(line) <\(input)>\n") //  <\(content.substring(to: range.lowerBound))>\n")
                content = content.substring(from: range.lowerBound)
            }
        }
        return tokens
    }
}
