@ECHO OFF
echo compiling inc.ASM
echo DEL inc.OBJ 2>NUL
echo DEL inc.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\inc.asm /i..
if ERRORLEVEL == 1 GOTO FAILinc
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file inc.obj
if ERRORLEVEL == 1 GOTO FAILinc
echo Running inc.EXE
inc.EXE
if ERRORLEVEL == 1 GOTO FAILinc
if ERRORLEVEL == 0 GOTO OKinc
:OKinc
echo Test inc OK
echo Test inc OK >> ../RESULT.TXT
GOTO FINISHinc
:FAILinc
echo Test inc FAIL
echo Test inc FAIL >> ../RESULT2.TXT
:FINISHinc
