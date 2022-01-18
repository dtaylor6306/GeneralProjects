	.globl	main
main:
	mov		$0,  %ax
Top:
	cmp		$10, %ax
	je done
	push %rax
	mov 	$68, %edi
	call	putchar
	pop %rax
	inc %ax
	jmp Top
	
	mov 	$0, %eax
	ret
