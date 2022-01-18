	.data
i:  .long 0
	.text
	.globl	main
main:
	mov	$0,  %ax
Top:
	cmp		$10, %ax
	je done
	push %rax
	mov 	$'D', %ecx
	call	putchar
	pop %rax
	inc %rax
	jmp Top

done:
	mov $0, %eax
	ret
