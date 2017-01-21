@ECHO OFF
echo compiling test.ASM
echo DEL test.OBJ 2>NUL
echo DEL test.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\test.asm /i..
if ERRORLEVEL == 1 GOTO FAILtest
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file test.obj
if ERRORLEVEL == 1 GOTO FAILtest
echo Running test.EXE
test.EXE
if ERRORLEVEL == 1 GOTO FAILtest
if ERRORLEVEL == 0 GOTO OKtest
:OKtest
echo Test test OK
echo Test test OK >> ../RESULT.TXT
GOTO FINISHtest
:FAILtest
echo Test test FAIL
echo Test test FAIL >> ../RESULT2.TXT
:FINISHtest
