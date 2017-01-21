@ECHO OFF
echo compiling dataOff.ASM
echo DEL dataOff.OBJ 2>NUL
echo DEL dataOff.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\dataOff.asm /i..
if ERRORLEVEL == 1 GOTO FAILdataOff
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file dataOff.obj
if ERRORLEVEL == 1 GOTO FAILdataOff
echo Running dataOff.EXE
dataOff.EXE
if ERRORLEVEL == 1 GOTO FAILdataOff
if ERRORLEVEL == 0 GOTO OKdataOff
:OKdataOff
echo Test dataOff OK
echo Test dataOff OK >> ../RESULT.TXT
GOTO FINISHdataOff
:FAILdataOff
echo Test dataOff FAIL
echo Test dataOff FAIL >> ../RESULT2.TXT
:FINISHdataOff
