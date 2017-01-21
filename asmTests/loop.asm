.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA

start: ;IGNORE

xor edx,edx

mov ecx,10
toto:
INC edx
loop toto

cmp edx,10
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
db 1000h dup(?) ;IGNORE
stackseg   ends ;IGNORE

end start ;IGNORE
