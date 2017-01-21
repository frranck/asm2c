#!/bin/bash

createDosBatForTest() {
filename=$(basename "$a")
extension="${filename##*.}"
filename="${filename%.*}"
batfile=$filename/runTest.bat
pmodewDir=./pmodew.exe
echo "generating $batfile"
rm -f $batfile 2> /dev/null
echo "@ECHO OFF" >> $batfile
echo "echo compiling ${filename}.ASM" >> $batfile
echo "echo DEL $filename.OBJ 2>NUL" >> $batfile
echo "echo DEL $filename.EXE 2>NUL" >> $batfile
echo "\tasm\bin\tasm32 /la /l /zi /mu /m9 /q ..\\${filename}.asm /i.." >> $batfile
echo "if ERRORLEVEL == 1 GOTO FAIL${filename}" >> $batfile
echo "\watcom\binw\wlink @c:\watcom\pmode\pmodew.lnk system pmodew file $filename.obj" >> $batfile
echo "if ERRORLEVEL == 1 GOTO FAIL${filename}" >> $batfile
echo "echo Running ${filename}.EXE" >> $batfile
echo "${filename}.EXE" >> $batfile
echo "if ERRORLEVEL == 1 GOTO FAIL${filename}" >> $batfile
echo "if ERRORLEVEL == 0 GOTO OK${filename}" >> $batfile
echo ":OK${filename}" >> $batfile
echo "echo Test ${filename} OK" >> $batfile
echo "echo Test ${filename} OK >> ../RESULT.TXT" >> $batfile
echo "GOTO FINISH${filename}" >> $batfile
echo ":FAIL${filename}" >> $batfile
echo "echo Test ${filename} FAIL" >> $batfile
echo "echo Test ${filename} FAIL >> ../RESULT2.TXT" >> $batfile
echo ":FINISH${filename}" >> $batfile
#
ln $pmodewDir $filename/pmodew.exe 2> /dev/null
# create line in global DOS test bat...
echo "CD $filename" >> runTest.bat
echo "CALL RUNTEST.BAT" >> runTest.bat
echo "CD .." >> runTest.bat

}
globalBatFile=./runTest.bat
echo "@ECHO OFF" > $globalBatFile
echo "DEL RESULT.TXT 2>NUL" >> $globalBatFile
echo "DEL RESULT2.TXT 2>NUL" >> $globalBatFile
for a in `ls *.asm`
do
    createDosBatForTest $a
done
echo "TYPE RESULT.TXT" >> $globalBatFile
echo "TYPE RESULT2.TXT" >> $globalBatFile
echo "DEL RESULT.TXT 2>NUL" >> $globalBatFile
echo "DEL RESULT2.TXT 2>NUL" >> $globalBatFile
echo "generating runTest.bat"


