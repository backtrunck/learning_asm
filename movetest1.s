#movetest1.s programa para ver movimentacao de dados da memoria para o registrador

.section                .data
        value:
                .int    1

.section                .text

.globl                   _start

_start:

        nop
        movl    value,     %ecx
        movl    $1,        %eax
        movl    $0,        %ebx
        int     $0x80
