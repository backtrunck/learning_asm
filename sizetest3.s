#sizetest2 programa para verificar o tamanho do executavel

.section        .data
buffer:
                .fill   10000

.section        .text

.globl          _start

_start:

                movl    $1,%eax
                movl    $0,%ebx
                int     $0x80

