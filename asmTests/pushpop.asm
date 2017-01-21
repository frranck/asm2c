.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

mov ebx,2
push ebx
pop eax
cmp eax,2
jne failure
cmp ebx,2
jne failure

mov eax,1
mov ebx,2
mov ecx,3
mov edx,4
mov esi,6
mov edi,8
mov ebp,9

pushad

xor eax,eax
xor ecx,ecx
xor ebx,ebx
xor edx,edx
xor esi,esi
xor edi,edi
xor ebp,ebp

cmp esi,0
jne failure
cmp edi,0
jne failure

popad

 push  eax ebp  ebx
pOp  ebx ebp    eax

cmp ebp,9
jne failure


xor ecx,ecx
mov ecx,0a0000h
mov ebx,0f222h
push bx fs
pop fs cx
cmp ecx,0af222h
jne exitLabel

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

