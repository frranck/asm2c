.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
var1 db 2,5,6
var2 dw 4,6,9
var3 dd 11,-11,2,4000000
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA

start: ;IGNORE

sti                             ; Set The Interrupt Flag
cld                             ; Clear The Direction Flag

cmp var1,2
jne failure

cmp [var1],2
jne failure

JMP exitLabel


cmp [var1+1],5
jne failure



cmp [var2],4
jne failure

cmp [var2+2],6
jne failure

cmp [var3],11
jne failure

cmp [var3+3*4],4000000
jne failure

cmp var3+3*4,4000000
jne failure

mov ebp,3*4
cmp [var3+ebp],4000000
jne failure

cmp var3+ebp,4000000
jne failure

MOV al,0
JMP exitLabel
failure:
mov al,1
exitLabel:
mov ah,4ch                    ; AH=4Ch - Exit To DOS
int 21h                       ; DOS INT 21h

_TEXT   ends ;IGNORE



stackseg   segment para stack 'STACK' ;IGNORE
db 1000h dup(?)
stackseg   ends ;IGNORE

end start ;IGNORE
