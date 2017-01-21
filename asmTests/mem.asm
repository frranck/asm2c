.386p

_DATA   segment use32 dword public 'DATA' ;IGNORE
a db 1
;padding db 10241024 dup(?)

b db 2
c db 3
d db 4
e db 5
f db 6
pas_de_mem  db 'NOT enought memory for VGA display, controls work for network games',13,10,'$'
pbs1        db 'probleme dans allocation de descriptor..',13,10,'$'
pbs2        db 'probleme dans dans definition de la taille du segment',13,10,'$'
ASCII DB '00000000',0Dh,0Ah,'$' ; buffer for ASCII string

_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

taille_moire equ ((((2030080+64000*26)/4096)+1)*4096)-1

;--------------------- rÇserve de la mÇmoire pour mettre les donnÇes. ----
;2.29 - Function 0501h - Allocate Memory Block:
;In:  AX     = 0501h
;  BX:CX  = size of block in bytes (must be non-zero)
;Out: if successful:
;    carry flag clear
;    BX:CX  = linear address of allocated memory block
;    SI:DI  = memory block handle (used to resize and free block)
mov eax,1024*1024
mov cx,ax
shr eax,16
mov bx,ax
mov ax,501h
int 31h
jNC OK
xor eax,eax
jmp failure
OK:

push bx cx ; linear address of allocated memory block

;2.0 - Function 0000h - Allocate Descriptors:
;--------------------------------------------
;  Allocates one or more descriptors in the client's descriptor table. The
;descriptor(s) allocated must be initialized by the application with other
;function calls.
;In:
;  AX     = 0000h
;  CX     = number of descriptors to allocate
;Out:
;  if successful:
;    carry flag clear
;    AX     = base selector
xor ax,ax
mov cx,1
int 31h
jC failure

;2.5 - Function 0007h - Set Segment Base Address:
; Sets the 32bit linear base address field in the descriptor for the specified
;segment.
; In:   AX     = 0007h
; BX     = selector
;  CX:DX  = 32bit linear base address of segment

pop  dx cx ; linear address of allocated memory block
; to remove

mov  bx,ax
mov  fs,ax
mov ax,0007
;mov cx,si
;mov dx,di
int 31h
;dans FS: selector sur donnÇes.

;2.6 - Function 0008h - Set Segment Limit:
;-----------------------------------------
;  Sets the limit field in the descriptor for the specified segment.
;  In:
;  AX     = 0008h
;  BX     = selector
;  CX:DX  = 32bit segment limit
;  Out:
;  if successful:
;    carry flag clear
;  if failed:
;    carry flag set
mov eax,taille_moire  ;::!300000h-1 ;182400h-1 ;1582080 ;0300000h-1 ;2mega 182400h-1
;mov eax,((((2582080)/4096)+1)*4096)-1  ;::!300000h-1 ;182400h-1 ;1582080 ;0300000h-1 ;2mega 182400h-1

mov dx,ax
shr eax,16
mov cx,ax
mov bx,fs
mov ax,08h
int 31h
jc failure


; This function Converts a real mode segment into a protected mode descriptor.
; BX =    real mode segment
; Out:
; if successful:
; carry flag clear
; AX =  selector
; if failed:
; carry flag set


;lea ebx,b ;
mov ebx,0a000h
mov ax,0002h
int 31h
mov es,ax

mov byte ptr ds:[0],55
cmp byte ptr es:[0],55
je failure

mov byte ptr es:[0],56
inc byte ptr es:[0]
cmp byte ptr es:[0],57
jne failure

lea esi,f
push es
pop ds
lea edi,f
cmp edi,esi
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
