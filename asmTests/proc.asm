.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

xor eax,eax
xor edx,edx
xor ebx,ebx

inc ebx
call incebx
inc ecx
inc ecx
call aincecx

cmp edx,1
jne failure

cmp ecx,3
jne failure

cmp ebx,3
jne failure

JMP exitLabel

incebx proc near
inc ebx
cmp ebx,TWO
je ok
ret
ok:
inc ebx
ret
inceBX endp

aincecx proc near
inc ecx
call aincedx
TWO equ 2
ret
endp

aincedx proc near
inc edx
ret
aincedx endp

;mov edx,offset exitLabel

MOV al,0
JMP exitLabel
failure:
mov al,1
exitLabel:
mov ah,4ch                    ; AH=4Ch - Exit To DOS
int 21h

_TEXT   ends ;IGNORE

stackseg   segment para stack 'STACK' ;IGNORE
db 1000h dup(?) ;IGNORE
stackseg   ends ;IGNORE

end start ;IGNORE
