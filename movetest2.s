#movetest2.s exemplo de movimentacao de dados entre registro e memoria

.section                .data
        value:
                .int 1

.section                .text

.globl                  _start

_start:

        nop
        movl    $100,   %ecx
        movl    %ecx,   value
        movl    $1,     %eax
        movl    $0,     %ebx
        int     $0x80

