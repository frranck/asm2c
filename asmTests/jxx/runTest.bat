@ECHO OFF
echo compiling jxx.ASM
echo DEL jxx.OBJ 2>NUL
echo DEL jxx.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\jxx.asm /i..
if ERRORLEVEL == 1 GOTO FAILjxx
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file jxx.obj
if ERRORLEVEL == 1 GOTO FAILjxx
echo Running jxx.EXE
jxx.EXE
if ERRORLEVEL == 1 GOTO FAILjxx
if ERRORLEVEL == 0 GOTO OKjxx
:OKjxx
echo Test jxx OK
echo Test jxx OK >> ../RESULT.TXT
GOTO FINISHjxx
:FAILjxx
echo Test jxx FAIL
echo Test jxx FAIL >> ../RESULT2.TXT
:FINISHjxx
