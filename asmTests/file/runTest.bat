@ECHO OFF
echo compiling file.ASM
echo DEL file.OBJ 2>NUL
echo DEL file.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\file.asm /i..
if ERRORLEVEL == 1 GOTO FAILfile
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file file.obj
if ERRORLEVEL == 1 GOTO FAILfile
echo Running file.EXE
file.EXE
if ERRORLEVEL == 1 GOTO FAILfile
if ERRORLEVEL == 0 GOTO OKfile
:OKfile
echo Test file OK
echo Test file OK >> ../RESULT.TXT
GOTO FINISHfile
:FAILfile
echo Test file FAIL
echo Test file FAIL >> ../RESULT2.TXT
:FINISHfile
