# cpuid, um program de exemplo para extrair o indentificador do vendedor do processador (vendor id)

.section .data
output:
	.ascii "O ID do vendedor do processador eh 'XXXXXXXXXXXX'\n"

.section .text
.globl _start 

_start:
	movl $0, %eax
	cpuid
	movl $output, %edi
	movl %ebx, 36(%edi)
	movl %edx, 40(%edi)
	movl %ecx, 44(%edi)
	movl $4, %eax
	movl $1, %ebx
	movl $output, %ecx
	movl $51, %edx
	int $0x80

	movl $1, %eax
	movl $0, %ebx
	int $0x80


