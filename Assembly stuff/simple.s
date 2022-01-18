	.globl	main
main:
	mov	$0, %ecx
	add $65,%cl
	inc %cl
	push %cx
	call putchar
	inc %cl
	call putchar
	
	mov 	$0, %eax
	ret
