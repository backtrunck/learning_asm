#cpuid2.s View the CPUID Vendor ID string using C library calls
.section        .data
                output:
                                .asciz "the processor vendor ID is '%s'\n"
.section        .bss
                .lcomm  buffer, 12

.section        .text

.globl          _start
_start:
                nop
                movl $0, %eax
                cpuid
                movl $buffer, %edi
                movl %ebx, (%edi)
                movl %edx, 4(%edi)
                movl %ecx, 8(%edi)
                movq    $output,%rdi
                movq    $buffer,%rsi
                movq    $0,%rax
                call printf
                movq  $0,%rdi
                movq  $0,%rax
                call exit
