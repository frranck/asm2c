@ECHO OFF
echo compiling rol.ASM
echo DEL rol.OBJ 2>NUL
echo DEL rol.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\rol.asm /i..
if ERRORLEVEL == 1 GOTO FAILrol
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file rol.obj
if ERRORLEVEL == 1 GOTO FAILrol
echo Running rol.EXE
rol.EXE
if ERRORLEVEL == 1 GOTO FAILrol
if ERRORLEVEL == 0 GOTO OKrol
:OKrol
echo Test rol OK
echo Test rol OK >> ../RESULT.TXT
GOTO FINISHrol
:FAILrol
echo Test rol FAIL
echo Test rol FAIL >> ../RESULT2.TXT
:FINISHrol
