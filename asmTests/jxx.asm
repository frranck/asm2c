.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
a db 0ffh,0dfh,0h
b db 2

_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

mov eax,-1
test eax,eax
js @df@@@@
@df@@@@:
jns failure

xor eax,eax
js failure

mov ax,-1
test ax,ax
jns failure

mov al,[a]
mov bl,[a+1]
cmp bl,al
ja failure


mov bl,192
cmp bl,192
jb failure

cmp bl,193
jnb failure

mov dx,-1
cmp dx,0
jns failure

mov dx,1
cmp dx,0
js failure


mov ecx,000ff00ffh
mov cx,1
or cx,cx
jz failure

xor cx,cx
jnz failure

lea esi,b
cmp byte ptr [esi],1
jb failure

cmp byte ptr [esi],4
ja failure

mov byte ptr [esi],-2
cmp byte ptr [esi],1
jb failure  ; // because unsigned comparaison



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
