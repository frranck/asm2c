* Many instructions are missing
* If you compile for Big endian use -DMSB_FIRST, please note that some tests are not Big endian compatible
* '' in data string will not be replaced by ' but skipped
* No constants are allowed in dup data declaration, this will fail:
```
nbStuff EQU 10
var dd nbStuff dup (?)
```
* Line numbers in errors may be wrong. (Can refer to the .nomacro file and not the .asm)
* Using functions name as adresses will fail
* movsx bx,[h2] is failing, see mov.asm test
* The DOS Ints in asm2C_INT would require some work to be more generic
