//
//  asm2c.swift
//  asm2c
//

import Foundation

class asm2c {

    func convertToC(fileName: String, fileNameOutputC: String, fileNameOutputH: String, include: String, ressourceDirectory:String, fileNameHeap: String) {
        print("reading: <\(fileName)>\n")
        print("output: <\(fileNameOutputC)>\n")

        guard let urlFile = URL(string: fileName) else {
            return;
        }

        //reading
        do {
            
            guard let asmHFile = URL(string: "\(ressourceDirectory)/asm.h") else {
                return;
            }
            guard let asmCFile = URL(string: "\(ressourceDirectory)/asm.c") else {
                return;
            }
            let asmH = try String(contentsOf: asmHFile)
            let asmC = try String(contentsOf: asmCFile)

            var heapInit = "{0},"
            if let urlHeap = URL(string: fileNameHeap) {
                if let heapInitFile = try? String(contentsOf: urlHeap) {
                    heapInit=heapInitFile
                }
            }

            let source = try String(contentsOf: urlFile, encoding: String.Encoding.isoLatin1).replace(target: "\r", withString: "")

            let lines: [String] = source.components(separatedBy: "\n")
                
    
            var lineNumber = 0


            let tokens: [[(Token,Int,String)]] = lines.flatMap { lineContent in lineNumber=lineNumber+1;return (Lexer(input: lineContent,line: lineNumber).tokenize()) }
            let parser = Parser(tokens: tokens.flatMap { $0 })
            dataPrimaryNodes = parser.parseData()
            _ = dataPrimaryNodes.map { dataPrimaryNodesMap[$0.name] = $0 }

            let (nodes, equ, nbErrors) = try parser.parse()
            let memory = dataPrimaryNodes.reduce("") {prev, lastline in
                    return "\(prev)\(lastline)"
            }

            let memoryValue = dataPrimaryNodes.reduce("") {prev, lastline in
                    return "\(prev)\(lastline.printData())"
            }

            let defineSizeOfs = multiline( "#define sizeOfeax 4",
                "#define sizeOfebx 4",
                "#define sizeOfecx 4",
                "#define sizeOfedx 4",
                "#define sizeOfesi 4",
                "#define sizeOfedi 4",
                "#define sizeOfebp 4",
                "#define sizeOfesp 4",
                "#define sizeOfcs 2",
                "#define sizeOfds 2",
                "#define sizeOfes 2",
                "#define sizeOffs 2",
                "#define sizeOfgs 2",
                "#define sizeOfss 2",
                dataPrimaryNodes.reduce("") {prev, lastline in
                    if (lastline.name.hasPrefix("dummy")) {
                        return "\(prev)"
                    } else {
                        var defineSizeOf = "#define sizeOf\(lastline.name) "
                        switch lastline.getSizeDirective() {
                        case .byte:
                            defineSizeOf="\(defineSizeOf) 1"
                        case .word:
                            defineSizeOf="\(defineSizeOf) 2"
                        case .dword:
                            defineSizeOf="\(defineSizeOf) 4"
                        default:
                            defineSizeOf="\(defineSizeOf) 0"
                        }
                        return "\(prev)\(defineSizeOf)\n"
                    }
                }
            )
            
            let printOffsets = multiline( "void asm2C_printOffsets(unsigned int offset) {",
                                          "#ifdef DEBUG", 
                                          "FILE * file;",
                                          "file=fopen(\"./memoryMap.log\", \"w\");",
                                          dataPrimaryNodes.reduce("") {prev, lastline in
                                            let offsetString="offsetof(struct Mem,\(lastline.name))"
                                            return "\(prev)fprintf(file, \"xox %x (from beg RW) %x:\(lastline.name)\\n\",(unsigned int) \(offsetString)-offset,(unsigned int) \(offsetString));\n"
                },
                                          "fclose(file);",
                                          "#endif",
                                          "}"
            )
            var showlines=false;

            // *** only For MrBoom
            var fixBigEndian = multiline(
                "#define INITVAR_dd(a,b) \\",
                "{ \\",
                "unsigned int offset=a-offsetof(struct Mem,replayer_saver); \\",
                "uint32_t * pointer=(uint32_t *) (((char *) data)+offset); \\",
                "for (i=0;i<b;i++) { \\",
                "pointer[i]=SWAP32(pointer[i]); \\",
                "}}",
                "#define INITVAR_dw(a,b) \\",
                "{ \\",
                "unsigned int offset=a-offsetof(struct Mem,replayer_saver); \\",
                "uint16_t * pointer=(uint16_t *) (((char *) data)+offset); \\",
                "for (i=0;i<b;i++) { \\",
                "pointer[i]=SWAP16(pointer[i]); \\",
                "}}",
                                          "void fixBigEndian(void *data) {",
                                          "int i;",
                                          dataPrimaryNodes.reduce("") {prev, lastline in
                                            let offsetString="offsetof(struct Mem,\(lastline.name))"
                                            var initLine="INITVAR_\(lastline.getSizeDirective())(\(offsetString),\(lastline.nodes.count));\n"
                                            
                                            if lastline.name=="replayer_saver" {
                                                showlines=true
                                            }
                                            
                                            if lastline.kind.uppercased()=="DB" || showlines==false {
                                                initLine="";
                                            }
                                            return "\(prev)\(initLine)"
                                            },
                                          "}"
            )
            if (showlines==false) {
                fixBigEndian="";
            }
            // ***
            
            let defines = equ.reduce("") {prev, lastline in
                               return "\(prev)\(lastline)"
			  }
            let code = nodes.reduce("") {prev, lastline in
                switch  lastline {
                    case is DataPrimaryNode:
                        return "\(prev)"
                default:
                    return "\(prev)\(lastline)"
                }
            }

            let generatedBy = "// Generated by asm2c https://github.com/frranck/asm2c"

            let outputString = multiline( generatedBy,
                                         "#include \"\(include).h\"",
                                         "#pragma GCC diagnostic ignored \"-Woverlength-strings\"",
                                         "#pragma GCC diagnostic ignored \"-Wunused-label\"",
                                          defines,
                                         "void program() {",
                                         "#ifndef FALCON",
                                         "jmp_buf jmpbuffer;",
                                         "#endif",
                                         "void * dest;",
                                         "void * src;",
                                         "int i;",
                                         "#ifdef INCLUDEMAIN",
                                         "dest=NULL;src=NULL;i=0; //to avoid a warning.",
                                         "#endif",
                                         "if (m.executionFinished) goto moveToBackGround;",
                                         "if (m.jumpToBackGround) {",
                                         "m.jumpToBackGround = 0;",
                                         "#ifdef MRBOOM",
                                         "if (m.nosetjmp) m.stackPointer=0; // this an an hack to avoid setJmp in saved state.",
                                         "if (m.nosetjmp==2) goto directjeu;",
                                         "if (m.nosetjmp==1) goto directmenu;",
                                         "#endif",
                                         "RET;",
                                         "}",
                                         code,
                                         "m.executionFinished = 1;",
                                         "moveToBackGround:",
                                         "return;",
                                         "}",
                                          "Memory m = {", // jmpbuffer",
                                         "{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}, // registers",
                                         "0,0,0,0,0,0, //flags",
                                         "0, //isLittle",
                                         "0, //exitCode",
                                         "\(memoryValue)",
                                         "{0}, //vgaPalette",
                                         "0,", //vgaPaletteModified",
                                         "1,{0}, //selectorsPointer+selectors",
                                         "0,{0}, //stackPointer+stack",
                                         "0, //heapPointer",
                                         "\(heapInit) //heap",
                                         "{0},{0},{0}, NULL, NULL, NULL};\n",
                                         printOffsets,
                                         asmC,
                                         fixBigEndian,
                                         "#ifdef INCLUDEMAIN",
                                         "int main() {",
                                         "asm2C_init();stackDump();",
                                         "while (m.executionFinished == 0) { program(); }",
                                         "return m.exitCode;",
                                         "}",
                                         "#endif",
                                         "\n\n");


            //writing
            print("writing \(fileNameOutputC)")
            if let urlFileOutput = URL(string: fileNameOutputC) {
                try outputString.write(to: urlFileOutput, atomically: false, encoding: String.Encoding.utf8)            }


            
            let outputStringH = multiline( generatedBy,
					  "#ifndef \(include.uppercased())_H__",
                                          asmH,
                                          "#ifdef __cplusplus",
                                          "extern \"C\" {",
                                          "#endif",
                                          "#define \(include.uppercased())_H__",
                                          "#pragma pack(push, 1)",
                                          "typedef struct Mem {",
                                          "registry32Bits eax;",
                                          "registry32Bits ebx;",
                                          "registry32Bits ecx;",
                                          "registry32Bits edx;",
                                          "registry32Bits esi;",
                                          "registry32Bits edi;",
                                          "registry32Bits ebp;",
                                          "registry32Bits esp;",
                                          "registry16Bits cs;",
                                          "registry16Bits csPadding;",
                                          "registry16Bits ds;",
                                          "registry16Bits dsPadding;",
                                          "registry16Bits es;",
                                          "registry16Bits esPadding;",
                                          "registry16Bits fs;",
                                          "registry16Bits fsPadding;",
                                          "registry16Bits gs;",
                                          "registry16Bits gsPadding;",
                                          "registry16Bits ss;",
                                          "registry16Bits ssPadding;",
                                          "bool CF;",
                                          "bool ZF;",
                                          "bool DF;",
                                          "bool SF;",
                                          "bool isLittle;",
                                          "bool jumpToBackGround;",
                                          "bool executionFinished;",
                                          "db exitCode;",
                                          memory,
                                          "db vgaPalette[256*3];",
                                          "db vgaPaletteModified;",
                                          "dd selectorsPointer;",
                                          "dd selectors[NB_SELECTORS];",
                                          "dd stackPointer;",
                                          "dd stack[STACK_SIZE];",
                                          "dd heapPointer;",
                                          "db heap[HEAP_SIZE];",
                                          "db vgaRamPaddingBefore[VGARAM_SIZE];",
                                          "db vgaRam[VGARAM_SIZE];",
                                          "db vgaRamPaddingAfter[VGARAM_SIZE];",
                                          "char *path;",
                                          "void *ramVideoPointer;",
                                          "void *ramCopyPointer;",
                                          "} Memory;",
                                          "#pragma pack(pop)",
                                          "extern Memory m;",
                                          "void program();",
                                          defineSizeOfs,
                                          "void fixBigEndian(void *data);",
                                          "#ifdef __cplusplus",
                                          "}",
                                          "#endif",
                                          "#endif",
                                          "\n\n"
                                          );
            
            
            //writing
            print("writing \(fileNameOutputH)")
            if let urlFileOutput = URL(string: fileNameOutputH) {
                try outputStringH.write(to: urlFileOutput, atomically: false, encoding: String.Encoding.utf8)
            }

            
            if (nbErrors > 0) {
                print("NB errors: \(nbErrors)")
                exit(1)
            }

        }
        catch {
            print("\(error)\n")
            //consoleIO.writeMessage("\(source)", to: .standard)
            exit(1)
            /* error handling here */
        }

    }
}
