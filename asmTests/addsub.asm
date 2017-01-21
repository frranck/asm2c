.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
var1 db 2,5,6
var2 dw 4,6,9
var3 dd 11,-11,2,4
var4 db 100 dup (1)
var5 dd 10 dup (?)

_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

add word ptr [var5+2],50
cmp word ptr [var5+2],50
jne failure

sub word ptr [var5+2],25
cmp word ptr [var5+2],25
jne failure

cmp word ptr var5,0
jne failure

;sub word ptr [liste_bombe+ebp+4+5*4+xy_adder],ou

mov eax,3
mov ebx,2
sub ebx,eax
JA failure

mov eax,2
mov ebx,3
sub ebx,eax
JB failure
cmp ebx,1
jne failure

cmp ebx,2
JA failure
cmp ebx,0
JB failure
cmp ebx,1
JB failure
JA failure

mov eax,-1-(-2+3)
cmp eax,-2
jne failure

mov ebx,2
cmp eax,ebx
jb failure

mov dl,'c'
sub dl,'a'
cmp dl,2
jne failure

xor edi,edi
add edi,14*320

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
