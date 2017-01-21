@ECHO OFF
echo compiling hello.ASM
echo DEL hello.OBJ 2>NUL
echo DEL hello.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\hello.asm /i..
if ERRORLEVEL == 1 GOTO FAILhello
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file hello.obj
if ERRORLEVEL == 1 GOTO FAILhello
echo Running hello.EXE
hello.EXE
if ERRORLEVEL == 1 GOTO FAILhello
if ERRORLEVEL == 0 GOTO OKhello
:OKhello
echo Test hello OK
echo Test hello OK >> ../RESULT.TXT
GOTO FINISHhello
:FAILhello
echo Test hello FAIL
echo Test hello FAIL >> ../RESULT2.TXT
:FINISHhello
