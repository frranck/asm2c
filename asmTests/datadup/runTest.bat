@ECHO OFF
echo compiling datadup.ASM
echo DEL datadup.OBJ 2>NUL
echo DEL datadup.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\datadup.asm /i..
if ERRORLEVEL == 1 GOTO FAILdatadup
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file datadup.obj
if ERRORLEVEL == 1 GOTO FAILdatadup
echo Running datadup.EXE
datadup.EXE
if ERRORLEVEL == 1 GOTO FAILdatadup
if ERRORLEVEL == 0 GOTO OKdatadup
:OKdatadup
echo Test datadup OK
echo Test datadup OK >> ../RESULT.TXT
GOTO FINISHdatadup
:FAILdatadup
echo Test datadup FAIL
echo Test datadup FAIL >> ../RESULT2.TXT
:FINISHdatadup
