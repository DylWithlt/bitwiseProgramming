	.file	"multi65.c"
	.text
	.globl	_multi65
	.def	_multi65;	.scl	2;	.type	32;	.endef
_multi65:
LFB0: ; setting up stack frame and stuff
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp) ; setup add variable
	sall	$6, 8(%ebp) ; shift left 6
	jmp	L2
L3:
	movl	-4(%ebp), %eax
	xorl	%eax, 8(%ebp) ; xor x with add
	movl	8(%ebp), %eax
	andl	-4(%ebp), %eax ; and eax with ebp-4 basically and add with x
	addl	%eax, %eax ; add eax to eax or basically shift left 1
	movl	%eax, -4(%ebp) ; move add into eax
L2: ; main body
	cmpl	$0, -4(%ebp) ; check if add is not 0
	jne	L3 ; if not 0 then go to L3
	movl	8(%ebp), %eax ;basically move eax into ebp+8 or update x for the return statement.
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (GNU) 5.3.0"
