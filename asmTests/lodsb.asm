.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
var1 db 2,5,6
var2 dw 4,6,9
var3 dd 11,-11,2,4
var4 db 100 dup (1)
var5 db 'abcd'


_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

push ds
pop es

mov esi,offset var1
mov edi,offset var4

mov eax, 0ffffffffh
lodsb
cmp al,2
jne failure
cmp ah,0ffh
jne failure
cmp ah,-1
jne failure

mov ecx,'dcba'
xor eax,eax
lea esi,var5
lodsd
mov ebx,eax
cmp ebx,'dcba'
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
