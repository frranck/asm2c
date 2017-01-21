.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
a db 1
b dw 2
c dd 3
d db 4
e db 5
f db 6
g dd 12345
h db -1
h2 db 1

_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE


mov ebx,0aabbccddh
cmp bl,0ddh
jne failure

cmp bh,0cch
jne failure

mov eax,256+3+65536
mov a,al
cmp a,3
jne failure

mov a,ah
cmp a,1
jne failure

mov b,ax
cmp b,256+3
jne failure

mov c,eax
cmp c,256+3+65536
jne failure

mov byte ptr [a],5
cmp byte ptr [a],5
jne failure

mov a,5
cmp a,5
jne failure

mov [a],5
cmp [a],5
jne failure

xor ebx,ebx
mov bx,word ptr [d]
cmp bx,4+5*256
jne failure

xor ebx,ebx
mov bx,word ptr [e]
cmp bx,6*256+5
jne failure

mov ecx,-1
mov bx,5
movzx ecx,bx
cmp ecx,5
jne failure

xor ecx,ecx
mov cx,-5
movsx ecx,cx
cmp ecx,-5
jne failure

xor ebx,ebx
mov bl,-1
movsx bx,bl
cmp bx,-1
jne failure

mov ebx,0FFFFFFFFh
mov bl,1
movsx bx,bl
cmp bx,1
jne failure

xor ebx,ebx
movsx bx,byte ptr [h]
cmp bx,-1
jne failure

xor ebx,ebx
movsx bx,byte ptr [h2]
cmp bx,1
jne failure

;TOFIX: test in dosbox if this works
xor ebx,ebx
movsx bx,[h2]
cmp bx,1
jne failure

mov ebx,[g]
cmp ebx,12345
jne failure

mov ebx,g
cmp ebx,12345
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
