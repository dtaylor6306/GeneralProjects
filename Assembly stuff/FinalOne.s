	.data
	.text
	.globl	main
main:
	mov $'s',%al
	mov $'t',%ah
	mov $'a',%dl

	mov %dl,%cl
	push %ax

	call putchar

	pop %ax
top:

	inc %dl
	
	cmp	%al,%dl
	je top
	
	cmp	%ah,%dl
	je top
	mov %dl,%cl
	push %ax

	call putchar

	pop %ax
	cmp $'z',%dl
	je done
	jmp top

done:
	
	mov $0,%eax
	ret
