	.data
	
x:	.quad 2			


	.text
	.globl	main



Top:
	mov x(%rip),%rax
	cmp $10,%rax
	je outZ
	mov $97,%ecx
	call putchar
	jmp done
	
outZ:
	mov $122,%ecx
	call putchar
done:
	mov $0, %eax
	ret
	
main:
	call Top
	ret
