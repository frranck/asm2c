@ECHO OFF
echo compiling mov.ASM
echo DEL mov.OBJ 2>NUL
echo DEL mov.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\mov.asm /i..
if ERRORLEVEL == 1 GOTO FAILmov
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file mov.obj
if ERRORLEVEL == 1 GOTO FAILmov
echo Running mov.EXE
mov.EXE
if ERRORLEVEL == 1 GOTO FAILmov
if ERRORLEVEL == 0 GOTO OKmov
:OKmov
echo Test mov OK
echo Test mov OK >> ../RESULT.TXT
GOTO FINISHmov
:FAILmov
echo Test mov FAIL
echo Test mov FAIL >> ../RESULT2.TXT
:FINISHmov
