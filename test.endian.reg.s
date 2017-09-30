

.section        .data
        value1:
                .byte   1,-1
.section        .text
.globl           _start
_start:
        nop
        movl    value1,%edx
        movl    $0,%ebx
        movl    $1,%eax
        int     $0x80

