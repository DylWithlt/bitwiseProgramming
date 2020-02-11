	.file	"multi65.c"
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4,,15
	.globl	_multi65
	.def	_multi65;	.scl	2;	.type	32;	.endef
_multi65:
LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	%edx, %eax
	sall	$6, %eax
	testl	%edx, %edx
	je	L2
	.p2align 4,,10
L3:
	xorl	%edx, %eax
	andl	%eax, %edx
	addl	%edx, %edx
	jne	L3
L2:
	rep ret
	.cfi_endproc
LFE0:
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.ident	"GCC: (GNU) 5.3.0"
