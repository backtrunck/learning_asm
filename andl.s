#Andl.s, app para ver o funcionamento do comando andl

.section	.data
output:
		.asciz "o valor eh:%d\n"

.section	.text

.globl		_start

_start:
	nop
	push	%rbp
	movl	%esp,		%ebp
	subl	$24,		%esp
	andl	$-16,		%esp
	movl	$0,		%eax
	subl	%eax,		%esp
	movl	$100,		-4(%ebp)
	movl	$25,		-8(%ebp)
	movl	-4(%ebp),	%eax
	cmpl	-8(%ebp),	%eax
	movl	$1,		%eax	
	movl	$0,		%ebx
	int	$0x80				
