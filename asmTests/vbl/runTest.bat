@ECHO OFF
echo compiling vbl.ASM
echo DEL vbl.OBJ 2>NUL
echo DEL vbl.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\vbl.asm /i..
if ERRORLEVEL == 1 GOTO FAILvbl
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file vbl.obj
if ERRORLEVEL == 1 GOTO FAILvbl
echo Running vbl.EXE
vbl.EXE
if ERRORLEVEL == 1 GOTO FAILvbl
if ERRORLEVEL == 0 GOTO OKvbl
:OKvbl
echo Test vbl OK
echo Test vbl OK >> ../RESULT.TXT
GOTO FINISHvbl
:FAILvbl
echo Test vbl FAIL
echo Test vbl FAIL >> ../RESULT2.TXT
:FINISHvbl
