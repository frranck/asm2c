@ECHO OFF
echo compiling chars8b.ASM
echo DEL chars8b.OBJ 2>NUL
echo DEL chars8b.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\chars8b.asm /i..
if ERRORLEVEL == 1 GOTO FAILchars8b
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file chars8b.obj
if ERRORLEVEL == 1 GOTO FAILchars8b
echo Running chars8b.EXE
chars8b.EXE
if ERRORLEVEL == 1 GOTO FAILchars8b
if ERRORLEVEL == 0 GOTO OKchars8b
:OKchars8b
echo Test chars8b OK
echo Test chars8b OK >> ../RESULT.TXT
GOTO FINISHchars8b
:FAILchars8b
echo Test chars8b FAIL
echo Test chars8b FAIL >> ../RESULT2.TXT
:FINISHchars8b
