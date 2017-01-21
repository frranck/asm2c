
#include "../../Resources/asm.h"
typedef struct __attribute__((packed)) Mem {
db d2;
db dummy1[4096];

dd eax;
dd ebx;
dd ecx;
dd edx;
dd esi;
dd edi;
dd ebp;
dd esp;
dw cs;
dw ds;
dw es;
dw fs;
dw gs;
dw ss;
_Bool CF;
_Bool ZF;
_Bool DF;
_Bool SF;
_Bool jumpToBackGround;
_Bool executionFinished;
db exitCode;
int stackPointer;
dd stack[STACK_SIZE];
dd selectorsPointer;
dd selectors[NB_SELECTORS];
dd heapPointer;
db heap[HEAP_SIZE];
db vgaRam0[VGARAM_SIZE];
db vgaRam[VGARAM_SIZE];
db vgaRam2[VGARAM_SIZE];
db vgaPalette[256*3];
char *path;
} Memory;
Memory m = {
0, //d2
{ [0 ... 4095 ] = 0 }, //dummy1
0,0,0,0,0,0,0,0,0,0,0,0,0,0, // registers
0,0,0,0,0,0, //flags
0, //exitCode
0,{0},1,{0},0,{0},{0},{0},{0}, {0}, NULL};

int program() {
jmp_buf jmpbuffer;
if (m.executionFinished) goto moveToBackGround;
if (m.jumpToBackGround) {
m.jumpToBackGround = 0;
RET;
}
R(LEA(32,m.edx,32,(((dd)offsetof(struct Mem,d2)))));
R(SUB(32,READDD(edx),32,(dd)4));
R(CMP(32,READDD(edx),32,(dd)0));
R(JNE(failure));
R(XOR(32,READDD(eax),32,(dd)READDD(eax)));
R(JMP(exitlabel));
failure:
R(MOV(8,READDBl(eax),8,(db)1));
exitlabel:
R(MOV(8,READDBh(eax),8,(db)76));
R(INT(33));

m.executionFinished = 1;
moveToBackGround:
return (m.executionFinished == 0);
}
#include "../../Resources/asm.c"
#ifdef TEST
int main() {
stackDump();while (program()) { }
return m.exitCode;
}
#endif


