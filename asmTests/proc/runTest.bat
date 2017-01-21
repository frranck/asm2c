@ECHO OFF
echo compiling proc.ASM
echo DEL proc.OBJ 2>NUL
echo DEL proc.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\proc.asm /i..
if ERRORLEVEL == 1 GOTO FAILproc
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file proc.obj
if ERRORLEVEL == 1 GOTO FAILproc
echo Running proc.EXE
proc.EXE
if ERRORLEVEL == 1 GOTO FAILproc
if ERRORLEVEL == 0 GOTO OKproc
:OKproc
echo Test proc OK
echo Test proc OK >> ../RESULT.TXT
GOTO FINISHproc
:FAILproc
echo Test proc FAIL
echo Test proc FAIL >> ../RESULT2.TXT
:FINISHproc
