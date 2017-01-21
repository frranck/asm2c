@ECHO OFF
echo compiling loop.ASM
echo DEL loop.OBJ 2>NUL
echo DEL loop.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\loop.asm /i..
if ERRORLEVEL == 1 GOTO FAILloop
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file loop.obj
if ERRORLEVEL == 1 GOTO FAILloop
echo Running loop.EXE
loop.EXE
if ERRORLEVEL == 1 GOTO FAILloop
if ERRORLEVEL == 0 GOTO OKloop
:OKloop
echo Test loop OK
echo Test loop OK >> ../RESULT.TXT
GOTO FINISHloop
:FAILloop
echo Test loop FAIL
echo Test loop FAIL >> ../RESULT2.TXT
:FINISHloop
