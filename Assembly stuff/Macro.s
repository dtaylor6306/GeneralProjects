.macro BeginProgram
		.globl main

main:

.endm
.macro EndProgram 

		xor %eax, %eax
		ret
.endm

.macro ForLoop var start end
		.data
		
\var:	.quad 0
end\var: .quad 0

		.text
		mov $\end,%rax
		mov %rax,end\var(%rip)
		mov $\start,%rax
		mov %rax,\var(%rip)

top\var:
	cmp %rax,end\var(%rip)
	je bottom\var
.endm

.macro Next var
		incq \var(%rip)
		mov  \var(%rip),%rax
		jmp top\var
bottom\var:
.endm

BeginProgram
		ForLoop i,0,3 
			ForLoop j,0,3
				mov $'D',%ecx
				call putchar
				mov $'y',%ecx
				call putchar
				mov $'l',%ecx
				call putchar
				mov $'a',%ecx
				call putchar
				mov $'n',%ecx
				call putchar
				mov $' ',%ecx
				call putchar
				
			Next j
			mov $'\n',%ecx
			call putchar
		Next i
EndProgram
