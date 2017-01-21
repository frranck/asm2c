.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
var1 db 1
var2 dw 2
var3 dd 3
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA

start: ;IGNORE

sti                             ; Set The Interrupt Flag
cld                             ; Clear The Direction Flag

cmp var1,1
jne failure

mov eax,1
cmp var1,al
jne failure

cmp var2,2
jne failure


mov ebx,2
cmp var2,bx
jne failure

cmp var3,3
jne failure

mov ecx,3
cmp var3,ecx
jne failure

mov al,7
mov ah,7
cmp al,ah
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
