#sizetest1.s um programa simples para ver o tamnho do executavel gerado

.section                .text

.globl                  _start

_start:

movl            $1,     %eax
movl            $0,     %ebx
int             $0x80

