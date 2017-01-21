@ECHO OFF
echo compiling movsb.ASM
echo DEL movsb.OBJ 2>NUL
echo DEL movsb.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\movsb.asm /i..
if ERRORLEVEL == 1 GOTO FAILmovsb
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file movsb.obj
if ERRORLEVEL == 1 GOTO FAILmovsb
echo Running movsb.EXE
movsb.EXE
if ERRORLEVEL == 1 GOTO FAILmovsb
if ERRORLEVEL == 0 GOTO OKmovsb
:OKmovsb
echo Test movsb OK
echo Test movsb OK >> ../RESULT.TXT
GOTO FINISHmovsb
:FAILmovsb
echo Test movsb FAIL
echo Test movsb FAIL >> ../RESULT2.TXT
:FINISHmovsb
