#!/bin/bash
fileT2C=../.build/debug/asm2c
pmodewDir=../../watcom/pmode/pmodew.exe
exitOnError=1
swiftBin=/usr/bin/swift

printError() {
    echo -e "\033[1;31m$1\033[0m"
    if [ $exitOnError == 1 ]
    then
        exit
    fi
}
printOk() {
    echo -e "\033[1;32m$1\033[0m"
}


createSwiftScript() {
if [[ -x "$swiftBin" ]]
then
$swiftBin build
else
echo "File '$swiftBin' is not executable or found"
fi
}

runSwiftScript() {
    filename=$(basename "$1")
    extension="${filename##*.}"
    filename="${filename%.*}"
    mkdir $filename 2> /dev/null
    resourcePath=`cd ../Resources/;pwd`

    if [[ -x $fileT2C ]]
    then
        echo running $fileT2C `pwd`/$1
        if [ $2 == "silent" ]
        then
            $fileT2C `pwd`/$1 $resourcePath > /tmp/test.$$
        else
            $fileT2C `pwd`/$1 $resourcePath
        fi
        if [ $? -ne 0 ]
        then
            cat /tmp/test.$$ 2> /dev/null
            rm -f /tmp/test.$$ 2> /dev/null
            printError "Error running $fileT2C `pwd`/$1"
        fi
        rm -f /tmp/test.$$
    else
        echo "$fileT2C not found"
    fi
}
checkFileExists() {
     if [ ! -e "$1" ]
     then
        printError "file $1 doesnt exist"
     fi
}
runTest() {
    filename=$(basename "$1")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo "compiling ${filename}.c"
    cp -f ../Resources/Makefile ${filename}/
    cp -f ../Resources/link.T ${filename}/
    (cd ${filename};make test DEBUG=2 INCLUDEMAIN=1 OBJECTS=${filename}.o TARGET_NAME=${filename})

if [ $? -ne 0 ]
then
printError "Error Compiling $filename.c"
return
fi

    echo "rm *.o;make OBJECTS=${filename}.o TARGET_NAME=${filename}" > ${filename}/createLib.sh
    chmod a+x ${filename}/createLib.sh
    echo "rm *.o;make test INCLUDEMAIN=1 DEBUG=1 OBJECTS=${filename}.o TARGET_NAME=${filename}" > ${filename}/createTest.sh
    chmod a+x ${filename}/createTest.sh
    echo running ${filename}/${filename}.out

    if [ $2 == "silent" ]
    then
      ./${filename}/${filename}.out > /tmp/test.$$
    else
      touch /tmp/test.$$
      ./${filename}/${filename}.out
    fi

    if [ $? -ne 0 ]
    then
        cat /tmp/test.$$
        rm -f /tmp/test.$$
        #rm -f ./${filename}.out
        printError "Error running test on $filename"
        if [ $2 == "silent" ]
        then
            echo "Error $filename" >> /tmp/result.$$
        fi
        return
    fi
    rm -f /tmp/test.$$
# rm -f ./${filename}/${filename}.out
    printOk "Test $filename OK"
    if [ $2 == "silent" ]
    then
        echo "OK $filename" >> /tmp/result.$$
    fi
}

createSwiftScript
#./createRunTestBat.ksh $1

#if [ $? -ne 0 ]
if [ $# -ne 1 ]
then
    exitOnError=0
    rm -f /tmp/result.$$ 2> /dev/null
    for a in `ls *.asm`
    do
        runSwiftScript $a  silent
        runTest $a silent
    done
    ./generatingRunTestBatFiles.sh
    cat /tmp/result.$$
    rm -f /tmp/result.$$ 2> /dev/null
else
    checkFileExists $1
    runSwiftScript $1 nosilent
    runTest $1 nosilent
fi
