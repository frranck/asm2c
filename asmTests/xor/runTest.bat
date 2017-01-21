@ECHO OFF
echo compiling xor.ASM
echo DEL xor.OBJ 2>NUL
echo DEL xor.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\xor.asm /i..
if ERRORLEVEL == 1 GOTO FAILxor
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file xor.obj
if ERRORLEVEL == 1 GOTO FAILxor
echo Running xor.EXE
xor.EXE
if ERRORLEVEL == 1 GOTO FAILxor
if ERRORLEVEL == 0 GOTO OKxor
:OKxor
echo Test xor OK
echo Test xor OK >> ../RESULT.TXT
GOTO FINISHxor
:FAILxor
echo Test xor FAIL
echo Test xor FAIL >> ../RESULT2.TXT
:FINISHxor
