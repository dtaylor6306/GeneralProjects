	.data
	
last:	.quad 0		/* 10 for decimal conversion */
n:		.quad 36
guess:	.quad 0
divisor:		.quad 2

	.text
	.globl	main

sqrt:
	xor %rax,%rax				/*clears rax */
	mov  guess(%rip),%rax			/*  guess into rax */
	xor %rbx, %rbx
	mov last(%rip),%rbx 		/* last into rbx */
	xor %rdi,%rdi		
	mov divisor(%rip),%rdi		/* divisor into rdi */
	mov n(%rip), %rdx		/*number into rdx*/
Top:

	mov %rax,%rbx		/* last = guess*/
	mov %rdx,%rax		/*rax = number*/
	push %rdx
	div %rbx			/* guess = number / guess */
	
	pop %rdx
	cmp %rdx,%rax			/* if number = 0 break out*/
	je done
	push %rdx
	add %rax , %rbx		/* guess+last guess*/
	
	div %rdi			/* (guess+last guess) / 2 */
	
	pop %rdx
	
	
	

	jmp Top				
	

print:
	cmp $0, %rdi
	je done
	pop %rcx			/* rcx by default is used by putchar */
	push %rdi
	call putchar
	pop %rdi
	dec %rdi
	jmp print
	
done:
	mov $0, %eax
	ret
	
main:
	call sqrt
	ret
