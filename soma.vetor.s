#programa para somar vetores	
	.data
vet1:	.int	10,11,12,13
vet2:	.int	2,2,2,2

	.text
	.global	_start
_start:

	nop
	movl	vet1,		%ecx
	movl	$0,		%edi
loop:	movl	vet1(,%edi,4),	%ecx
	inc	%edi
	cmp	$4,		%edi
	jnz	loop
	movl	$1,		%eax
	movl	$1,		%ebx
	int	$0x80
