test1 EQU (00+38*3)*320+1/2+33*(3-1)
test3 EQU 1500 ; 8*2*3 ;+1 +19*13*2*4
TEST2 EQU -13

.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
beginningdata db 4
var1 db 2
var2 dw 11
var3 dd test2
var4 db 131
db 141
var5 dw 2,5,0
var6 dd 9,8,7,1
dd 111,1
dw 223,22
db 'OKOKOKOK',10,13
db 4 dup (5)
db 'OKOKOKOK'
dd offset var5
ASCII DB '00000000',0Dh,0Ah,'$' ; buffer for ASCII string
doublequote db 'ab''cd'

enddata db 4

_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA

start: ;IGNORE

lea ebx,beginningdata
lea eax,enddata
sub eax,ebx
inc eax
call printeax

;TOFIX:
cmp [doublequote+4],'d'
;jne failure

mov eax,teST2
cmp eax,-13
jne failure

cmp var3,-13
jne failure

inc var3
cmp var3,-12
jne failure

mov dl,var1
cmp dl,2
jne failure

mov edi,offset var1
mov esi,offset var2
mov byte ptr dl,[edi]
cmp dl,2
jne failure

mov edi,offset var1
mov dx,[edi+1]
cmp dx,11
jne failure

inc byte ptr [edi+7]
cmp byte ptr [edi+7],132
jne failure

MOV al,0
JMP exitLabel
failure:
mov al,1
exitLabel:
mov ah,4ch                    ; AH=4Ch - Exit To DOS
int 21h                       ; DOS INT 21h



printeax proc near

;-----------------------
; convert the value in EAX to hexadecimal ASCIIs
;-----------------------
mov edi,OFFSET ASCII ; get the offset address
mov cl,8            ; number of ASCII
P1: rol eax,4           ; 1 Nibble (start with highest byte)
mov bl,al
and bl,0Fh          ; only low-Nibble
add bl,30h          ; convert to ASCII
cmp bl,39h          ; above 9?
jna short P2
add bl,7            ; "A" to "F"
P2: mov [edi],bl         ; store ASCII in buffer
inc edi              ; increase target address
dec cl              ; decrease loop counter
jnz P1              ; jump if cl is not equal 0 (zeroflag is not set)
;-----------------------
; Print string
;-----------------------
mov edx,OFFSET ASCII ; DOS 1+ WRITE STRING TO STANDARD OUTPUT
mov ah,9            ; DS:DX->'$'-terminated string
int 21h             ; maybe redirected under DOS 2+ for output to file
; (using pipe character">") or output to printer
ret
endp


_TEXT   ends ;IGNORE



stackseg   segment para stack 'STACK' ;IGNORE
db 1000h dup(?)
stackseg   ends ;IGNORE

end start ;IGNORE
