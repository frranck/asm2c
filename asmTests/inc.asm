.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
var1 db 2
var2 dw 11
var3 dd 34
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

xor eax,eax
INC eax
CMP eax,1
JNE failure

INC eax
CMP eax,2
JNE failure

INC eax
CMP eax,3
JNE failure
CMP eax,133
JE failure

INC [var1]
CMP [var1],3
JNE failure
CMP [var1],111
JE failure

INC [var2]
INC [var2]
CMP [var2],13
JNE failure
CMP [var2],1
JE failure

INC [var3]
CMP [var3],35
JNE failure
CMP [var3],37
JE failure

MOV al,0
JMP exitLabel
failure:
mov al,1
exitLabel:
mov ah,4ch                    ; AH=4Ch - Exit To DOS
int 21h

_TEXT   ends ;IGNORE

stackseg   segment para stack 'STACK' ;IGNORE
db 1000h dup(?)
stackseg   ends ;IGNORE

end start ;IGNORE
