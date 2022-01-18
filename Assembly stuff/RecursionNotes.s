	.data
	
i:	.quad 0
n:	.quad 0


	.text
	.globl main
	


OutputDylan:
	/* The count is in the %rdi register */
	mov %rdi,n(%rip)
	xor %rax,%rax
	mov %rax,i(%rip) /* i = 0 */
top:
	cmp %rax,n(%rip)
	je bottom
	
	mov $'D',%ecx
	call putchar
	
	mov $'Y',%ecx
	call putchar
	
	mov $'L',%ecx
	call putchar
	
	mov $'A',%ecx
	call putchar
	
	mov $'N',%ecx
	call putchar
	
	incq i(%rip)
	mov i(%rip),%rax
	jmp top
	
bottom:
	ret

main:
	mov $3,%rdi
	call OutputDylan
	mov $'\n',%ecx
	call putchar
	mov $5,%rdi
	call OutputDylan
	
	xor %eax,%eax
	
	ret
	
