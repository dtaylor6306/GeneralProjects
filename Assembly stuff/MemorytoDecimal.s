	.data
	
divisor:	.quad 10		/* 10 for decimal conversion */
n:			.quad 89
counter:	.quad 0

	.text
	.globl	main

Binary:
	xor %rax,%rax				/*clears rax */
	mov n(%rip),%rax			/*  number into rax */
	xor %rbx, %rbx
	mov divisor(%rip),%rbx 		/* divisor into rbx */
	xor %rdi,%rdi		
	mov counter(%rip),%rdi		/* counter into rdi */
Top:
	cmp $0,%rax			/* if number = 0 break out*/
	je print
	
	push %rdi			
	xor %rdx,%rdx		/* clears where the remainder is stored */
	div %rbx			/* divids rax by default by rbx */
	
	pop %rdi

	add $48, %rdx		/* converts value into ascii value 0 is 48 etc */
	
	push %rdx			/* else push rdx value  onto the stack */
	
	inc %rdi			/* increments our counter for our print loop */
	

	jmp Top				/* repeats the above steps till the number is zero */
	

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
	call Binary
	ret
