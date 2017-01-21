.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
var1 db 2,5,6
var2 dw 4,6,9
var3 dd 11,-11,2,4
var4 db 100 dup (1)
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

mov eax,10B
cmp eax,2
jne failure

SHR eax,1
cmp eax,1
jne failure

mov ebx,0ffffffffh
mov bl,011111111B
SHR bl,1

cmp bl,001111111B
jne failure

mov ecx,0ffffffffh
mov ch,011111111B
SHR ch,1
cmp ch,001111111B
jne failure

SHL ch,2
cmp ch,011111100B
jne failure

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
