@ECHO OFF
echo compiling mem.ASM
echo DEL mem.OBJ 2>NUL
echo DEL mem.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\mem.asm /i..
if ERRORLEVEL == 1 GOTO FAILmem
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file mem.obj
if ERRORLEVEL == 1 GOTO FAILmem
echo Running mem.EXE
mem.EXE
if ERRORLEVEL == 1 GOTO FAILmem
if ERRORLEVEL == 0 GOTO OKmem
:OKmem
echo Test mem OK
echo Test mem OK >> ../RESULT.TXT
GOTO FINISHmem
:FAILmem
echo Test mem FAIL
echo Test mem FAIL >> ../RESULT2.TXT
:FINISHmem
