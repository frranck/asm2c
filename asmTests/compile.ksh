set -x

clean() {
#rm -f ${filename}.out
rm -f ${filename}.o
}

printError() {
echo -e "\033[1;31m$1\033[0m"
clean
exit
}
printOk() {
echo -e "\033[1;32m$1\033[0m"
clean
}

filename=$1
cc -arch i386 -arch x86_64 -O3 -I../../../libretro-common/include -Wall -pedantic -fPIC -std=gnu99 -I../../../libretro-common/include -fPIC -c -o ${filename}.o ${filename}.c
cc -fPIC   -o ${filename}.out ${filename}.o -lm
echo running ${filename}.out
./${filename}.out

if [ $? -ne 0 ]
then
printError "Error running test on $filename"
fi
printOk "Test $filename OK"

