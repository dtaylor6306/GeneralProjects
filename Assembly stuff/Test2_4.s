	.data
	
y:	.quad 
m:	.quad 
x: .quad 
b:	.quad 		


	.text
	.globl	main

Top:
	xor %rsi, %rsi
	mov y(%rip),%rsi
	
	xor %rcx,%rcx
	mov m(%rip),%rcx
	
	xor %rdi,%rdi
	mov x(%rip),%rdi
	
	xor %rdx , %rdx 
	mov b(%rip),%rdx
	
	xor %rax,%rax
	mov $1,%rax

Test:

	
	mul %rdi		/* 1 * x */
	
	mul %rcx		/* m * x */
	
	
	add %rax,%rdx 	/* add m*x + b */
	mov %rax, %rsi		/* mov m*x + b to y  or y = m*x + b*/
	


	
done:
	mov $0, %eax
	ret
	
main:
	call Top
	ret
