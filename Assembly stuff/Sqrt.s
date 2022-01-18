	.data
	
last:		.quad 0
n:			.quad 36
guess:		.quad 0
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
	mov %rdx, %rax
	
	push %rdx
	div %rdi
	pop %rdx

Top:
	
	add %rax , %rbx		/* guess+last guess*/
	push %rdx
	div %rdi			/* (guess+last guess) / 2 */
breakone:
	pop %rdx
	mov %rax,%rbx		/* last = guess*/
	mov %rdx,%rax		/*rax = number*/
breaktwo:
	push %rdx
	div %rbx			/* guess = number / guess */
	mul %rax
lastbreak:
	cmp %rdx,%rax			/* if number = 0 break out*/
	je done
	div %rax
	pop %rdx
	
	
	

	jmp Top				
	
done:
	div %rax
	mov $0, %eax
	ret
	
main:
	call sqrt
	ret
