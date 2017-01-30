.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
load_handle dd 0
fileName db 'file.txt',0
buffer db 64000 dup(0)
_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

mov edx,0
mov ecx,2
lea edi,buffer
mov ebx,5

call load_raw

xor eax,eax
cmp dword ptr buffer,'tseT'
jne failure
JMP exitLabel

load_raw proc near ; ecx: offset dans le fichier.
                   ; edi: viseur dans donn�es ou ca serra copi� (ax:)
                   ; ebx: nombre de pixels dans le pcx

pushad
push es ds

lea edx,fileName
xor eax,eax
mov al,00h  ;ouverture du fichier pour lecture.
mov ah,03dh
int 21h
jnc noerror
mov eax,1
ret
noerror:

mov [load_handle],eax

mov ebx,[load_handle]
mov ah,042h
mov al,00h ;debut du fichier
mov dx,cx
shr ecx,16
int 21h

mov ecx,10

mov ebx,[load_handle]
mov ah,03fh
                   ; edi: viseur dans donn�es ou ca serra copi� (ax:)
push ds
;push fs
;pop  ds
mov edx,edi
int 21h

; to remove
;mov ebx,eax
;jmp failure
;

pop ds

mov ebx,[load_handle]
mov ah,03eh
int 21h

pop ds es
popad
ret
load_raw endp


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
