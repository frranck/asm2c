@ECHO OFF
echo compiling macro.ASM
echo DEL macro.OBJ 2>NUL
echo DEL macro.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\macro.asm /i..
if ERRORLEVEL == 1 GOTO FAILmacro
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file macro.obj
if ERRORLEVEL == 1 GOTO FAILmacro
echo Running macro.EXE
macro.EXE
if ERRORLEVEL == 1 GOTO FAILmacro
if ERRORLEVEL == 0 GOTO OKmacro
:OKmacro
echo Test macro OK
echo Test macro OK >> ../RESULT.TXT
GOTO FINISHmacro
:FAILmacro
echo Test macro FAIL
echo Test macro FAIL >> ../RESULT2.TXT
:FINISHmacro
