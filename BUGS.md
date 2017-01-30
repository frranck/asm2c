* Many instructions are missing
* Not so sure about the Big endian, and some tests are not Big endian compatible
* '' in data string will not be replaced by ' but skipped
* No constants are allowed in dup data declaration, this will fail:
```
nbStuff EQU 10
var dd nbStuff dup (?)
```
* Line numbers in errors may be wrong. (Can refer to the .nomacro file and not the .asm)
* Using functions name as adresses will fail
* movsx bx,[h2] is failing, see mov.asm test
* Please check the DOS Ints in asm2C_INT, they would require some work to be more generic.
