@ECHO OFF
echo compiling include.ASM
echo DEL include.OBJ 2>NUL
echo DEL include.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\include.asm /i..
if ERRORLEVEL == 1 GOTO FAILinclude
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file include.obj
if ERRORLEVEL == 1 GOTO FAILinclude
echo Running include.EXE
include.EXE
if ERRORLEVEL == 1 GOTO FAILinclude
if ERRORLEVEL == 0 GOTO OKinclude
:OKinclude
echo Test include OK
echo Test include OK >> ../RESULT.TXT
GOTO FINISHinclude
:FAILinclude
echo Test include FAIL
echo Test include FAIL >> ../RESULT2.TXT
:FINISHinclude
