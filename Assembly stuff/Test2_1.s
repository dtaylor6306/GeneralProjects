	.data
	
N:	.quad 9
startNum:	.quad 1
Total: .quad 0		


	.text
	.globl	main

Top:
	xor %rax,%rax
	mov Total(%rip),%rax
	
	xor %rbx, %rbx
	mov N(%rip),%rbx
	
	xor %rdi,%rdi
	mov startNum(%rip),%rdi
	
	xor %rdx, %rdx
	mov $3,%rdx
Test:
	push %rbx
	
	mul %rdi
	inc %rdi
	
	pop %rbx
	
	cmp %rbx,%rdi
	je done
	
	jmp Test
	
done:
	mov $0, %eax
	ret
	
main:
	call Top
	ret
