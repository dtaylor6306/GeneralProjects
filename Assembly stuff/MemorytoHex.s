	.data
	
divisor:	.quad 16		/* 16 for hex conversion */
n:			.quad 18
counter:	.quad 0

	.text
	.globl	main

Binary:
	
	mov $'a',%al
	call putchar
	

	
done:
	mov $0, %eax
	ret
	
main:
	call Binary
	ret
