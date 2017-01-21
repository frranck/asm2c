@ECHO OFF
echo compiling lodsb.ASM
echo DEL lodsb.OBJ 2>NUL
echo DEL lodsb.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\lodsb.asm /i..
if ERRORLEVEL == 1 GOTO FAILlodsb
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file lodsb.obj
if ERRORLEVEL == 1 GOTO FAILlodsb
echo Running lodsb.EXE
lodsb.EXE
if ERRORLEVEL == 1 GOTO FAILlodsb
if ERRORLEVEL == 0 GOTO OKlodsb
:OKlodsb
echo Test lodsb OK
echo Test lodsb OK >> ../RESULT.TXT
GOTO FINISHlodsb
:FAILlodsb
echo Test lodsb FAIL
echo Test lodsb FAIL >> ../RESULT2.TXT
:FINISHlodsb
