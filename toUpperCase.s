	.file	"toUpperCase.c"
	.text
	.globl	_toUpperCase
	.def	_toUpperCase;	.scl	2;	.type	32;	.endef
_toUpperCase:
LFB11: ; See toLowerCase.s for explanation
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L2
L4:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$96, %al
	jle	L3 ; check if in range
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$122, %al
	jg	L3 ;check if in range
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	-12(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	andl	$-33, %edx ; This is the part that ands the not 32 with whatever str[i] is
	movb	%dl, (%eax)
L3:; See toLowerCase.s for explanation
	addl	$1, -12(%ebp)
L2:; See toLowerCase.s for explanation
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L4
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (GNU) 5.3.0"
	.def	_strlen;	.scl	2;	.type	32;	.endef
