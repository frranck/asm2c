@ECHO OFF
echo compiling array.ASM
echo DEL array.OBJ 2>NUL
echo DEL array.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\array.asm /i..
if ERRORLEVEL == 1 GOTO FAILarray
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file array.obj
if ERRORLEVEL == 1 GOTO FAILarray
echo Running array.EXE
array.EXE
if ERRORLEVEL == 1 GOTO FAILarray
if ERRORLEVEL == 0 GOTO OKarray
:OKarray
echo Test array OK
echo Test array OK >> ../RESULT.TXT
GOTO FINISHarray
:FAILarray
echo Test array FAIL
echo Test array FAIL >> ../RESULT2.TXT
:FINISHarray
