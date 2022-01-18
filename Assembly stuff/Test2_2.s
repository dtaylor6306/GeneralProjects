	.data
	
divisor:	.long 0x02			/* two for binary conversion */
Total:			.long 0x33
counter:	.quad 0

	.text
	.globl	main

Binary:
	xor %eax,%eax				/*clears rax */
	mov Total(%rip),%eax			/*  number into rax */
	xor %ebx, %ebx
	mov divisor(%rip),%rbx 		/* divisor into rbx */
	xor %rdi,%rdi		
	mov counter(%rip),%rdi		/* counter into rdi */
Top:
	cmp $0,%eax			/* if number = 0 break out*/
	je print
	
	push %rdi			
	xor %edx,%edx		/* clears where the remainder is stored */
	div %ebx			/* divids rax by default by rbx */
	
	cmp $0, %edx		/* if remainder is 0 push a zero to our number */
	je	AddZero
	pop %rdi


	
	push $49			/* else push a 1 onto the stack */
	
	inc %rdi			/* increments our counter for our print loop */
	

	jmp Top				/* repeats the above steps till the number is zero */
	
AddZero:
	pop %rdi

	
	push $48
	inc %rdi


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
	call Binary
	ret
