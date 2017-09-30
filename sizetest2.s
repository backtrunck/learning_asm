#sizetest2.s programa para verificar o tamanho do executavel

.section                .bss

        .lcomm  buffer, 10000

.section                .text

.globl                  _start
        movl    $1,%eax
        movl    $0,%ebx
        int     $0x80
_start:


