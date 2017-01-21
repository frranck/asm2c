@ECHO OFF
echo compiling shlshr.ASM
echo DEL shlshr.OBJ 2>NUL
echo DEL shlshr.EXE 2>NUL
\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\shlshr.asm /i..
if ERRORLEVEL == 1 GOTO FAILshlshr
\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file shlshr.obj
if ERRORLEVEL == 1 GOTO FAILshlshr
echo Running shlshr.EXE
shlshr.EXE
if ERRORLEVEL == 1 GOTO FAILshlshr
if ERRORLEVEL == 0 GOTO OKshlshr
:OKshlshr
echo Test shlshr OK
echo Test shlshr OK >> ../RESULT.TXT
GOTO FINISHshlshr
:FAILshlshr
echo Test shlshr FAIL
echo Test shlshr FAIL >> ../RESULT2.TXT
:FINISHshlshr
