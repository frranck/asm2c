.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
_msg    db 'Hello World From Protected Mode!',10,13,'$'

_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
  assume  cs:_TEXT,ds:_DATA

start: ;IGNORE

sti                             ; Set The Interrupt Flag
cld                             ; Clear The Direction Flag

mov ah,9                        ; AH=09h - Print DOS Message
mov edx,offset _msg             ; DS:EDX -> $ Terminated String
int 21h                         ; DOS INT 21h

; weird test...
mov ebx,-1
mov bl,''
cmp ebx,0ffffff00h
jne failure

xor eax,eax
jmp exitLabel
failure:
mov al,1
exitLabel:
mov ah,4ch                    ; AH=4Ch - Exit To DOS
int 21h                       ; DOS INT 21h                     ; DOS INT 21h

_TEXT   ends ;IGNORE

stackseg   segment para stack 'STACK' ;IGNORE
db 1000h dup(?)
stackseg   ends ;IGNORE

end start ;IGNORE
