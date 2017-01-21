@ECHO OFF
echo compiling neg.ASM
echo DEL neg.OBJ 2>NUL
echo DEL neg.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\neg.asm /i..
if ERRORLEVEL == 1 GOTO FAILneg
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file neg.obj
if ERRORLEVEL == 1 GOTO FAILneg
echo Running neg.EXE
neg.EXE
if ERRORLEVEL == 1 GOTO FAILneg
if ERRORLEVEL == 0 GOTO OKneg
:OKneg
echo Test neg OK
echo Test neg OK >> ../RESULT.TXT
GOTO FINISHneg
:FAILneg
echo Test neg FAIL
echo Test neg FAIL >> ../RESULT2.TXT
:FINISHneg
