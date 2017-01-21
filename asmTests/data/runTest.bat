@ECHO OFF
echo compiling data.ASM
echo DEL data.OBJ 2>NUL
echo DEL data.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\data.asm /i..
if ERRORLEVEL == 1 GOTO FAILdata
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file data.obj
if ERRORLEVEL == 1 GOTO FAILdata
echo Running data.EXE
data.EXE
if ERRORLEVEL == 1 GOTO FAILdata
if ERRORLEVEL == 0 GOTO OKdata
:OKdata
echo Test data OK
echo Test data OK >> ../RESULT.TXT
GOTO FINISHdata
:FAILdata
echo Test data FAIL
echo Test data FAIL >> ../RESULT2.TXT
:FINISHdata
