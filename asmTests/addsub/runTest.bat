@ECHO OFF
echo compiling addsub.ASM
echo DEL addsub.OBJ 2>NUL
echo DEL addsub.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\addsub.asm /i..
if ERRORLEVEL == 1 GOTO FAILaddsub
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file addsub.obj
if ERRORLEVEL == 1 GOTO FAILaddsub
echo Running addsub.EXE
addsub.EXE
if ERRORLEVEL == 1 GOTO FAILaddsub
if ERRORLEVEL == 0 GOTO OKaddsub
:OKaddsub
echo Test addsub OK
echo Test addsub OK >> ../RESULT.TXT
GOTO FINISHaddsub
:FAILaddsub
echo Test addsub FAIL
echo Test addsub FAIL >> ../RESULT2.TXT
:FINISHaddsub
