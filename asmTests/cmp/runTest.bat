@ECHO OFF
echo compiling cmp.ASM
echo DEL cmp.OBJ 2>NUL
echo DEL cmp.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\cmp.asm /i..
if ERRORLEVEL == 1 GOTO FAILcmp
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file cmp.obj
if ERRORLEVEL == 1 GOTO FAILcmp
echo Running cmp.EXE
cmp.EXE
if ERRORLEVEL == 1 GOTO FAILcmp
if ERRORLEVEL == 0 GOTO OKcmp
:OKcmp
echo Test cmp OK
echo Test cmp OK >> ../RESULT.TXT
GOTO FINISHcmp
:FAILcmp
echo Test cmp FAIL
echo Test cmp FAIL >> ../RESULT2.TXT
:FINISHcmp
