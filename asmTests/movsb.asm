.386p
_DATA   segment use32 dword public 'DATA' ;IGNORE
db 1,2,3,4

var1 db 2,5,6
var2 dw 4,6,9
var3 dd 11,-11,2,4
var4 db 100 dup (1)
testOVerlap db 1,2,3,4,5,6,7,8,9,10,11,12,13,14

T EQU 4


_DATA   ends ;IGNORE

_TEXT   segment use32 dword public 'CODE' ;IGNORE
assume  cs:_TEXT,ds:_DATA
start: ;IGNORE

push ds
pop es

jmp finTest

mov esi,offset var1
mov edi,offset var4
movsb
cmp [var4],2
jne failure



cmp esi,offset var1+1
jne failure
cmp edi,offset var4+1
jne failure


mov esi,offset var3
mov edi,offset var4
mov ecx,t
rep movsb
cmp dword ptr var4,11
jne failure
cmp [var4+t],1
jne failure


cmp esi,offset var3+4
jne failure
cmp edi,offset var4+4
jne failure

;mov edx,offset var1             ; DS:EDX -> $ Terminated String
;cmp edx,0
;jne failure
;mov cl, byte ptr ds:[2]
;cmp cl,6
;jne failure


finTest:
mov esi,offset testOVerlap
mov edi,esi
inc edi
mov ecx,10
rep movsb
lea edi,testOVerlap
cmp byte ptr [testOVerlap+1],1
jne failure

mov byte ptr [var1+1],5
cmp byte ptr [var1+1],5
jne failure

mov esi,offset var1
mov edi,esi
inc edi
mov ecx,10
rep movsb
lea edi,var1
cmp byte ptr [var1+2],5
je failure ; http://blog.rewolf.pl/blog/?p=177

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
