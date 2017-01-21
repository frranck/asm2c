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
test eax,eax
jz failure

test al,0B
jnz failure

test al,010B
jz failure

mov ebx,0ffff01ffh
test bh,01h
jz failure

test bh,02h
jnz failure
jb failure

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
