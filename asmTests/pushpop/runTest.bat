@ECHO OFF
echo compiling pushpop.ASM
echo DEL pushpop.OBJ 2>NUL
echo DEL pushpop.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\pushpop.asm /i..
if ERRORLEVEL == 1 GOTO FAILpushpop
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file pushpop.obj
if ERRORLEVEL == 1 GOTO FAILpushpop
echo Running pushpop.EXE
pushpop.EXE
if ERRORLEVEL == 1 GOTO FAILpushpop
if ERRORLEVEL == 0 GOTO OKpushpop
:OKpushpop
echo Test pushpop OK
echo Test pushpop OK >> ../RESULT.TXT
GOTO FINISHpushpop
:FAILpushpop
echo Test pushpop FAIL
echo Test pushpop FAIL >> ../RESULT2.TXT
:FINISHpushpop
