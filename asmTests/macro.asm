.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
varMAC1 db 10 dup (5)
        db 10 dup (6)
last_voice db 1
changement dd 2
fx     dw 14 dup (0)


_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE




MAC1 MACRO
mov eax,0

ENDM

MAC2 MACRO arg1
mov eax,arg1
push es ds eax ebx
POP ebx eax ds es
ENDM

MAC3 MACRO m,o     
nop
mov m,o
nop
ENDM


MAC5 MACRO arg1
local c
MAC3 ecx,arg1
c:
INC EDX
LOOP c
ENDM

MAC6 MACRO a,b
lea edi,varMAC1
mov al,[a+edi]
ENDM

bruit MACRO a,b,t
local op


push ebp eax
mov al,a
or  al,01110000B
mov ebp,[last_voice]
add [last_voice],2
cmp [last_voice],14*2
jne op
mov [last_voice],0
op:


mov byte ptr [t+ebp],al   ;al ;073h ;4 bits:panning, 4 bits: sample
;0 droite. ici. F left

mov eax,[changement]
and eax,011B
add eax,b
mov byte ptr [t+ebp+1],al ;note
pop eax ebp
ENDM

mov eax,123
MAC1
cmp eax,0
jne failure

MAC2 122
cmp eax,122
jne failure

MAC3 ebx,45
cmp ebx,45
jne failure

MOV edx,0
MAC5 10
MAC5 10
CMP edx,20
jne failure

inc varMAC1

MAC6 3,2

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
