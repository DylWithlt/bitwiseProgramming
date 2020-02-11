	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s \12\0"
LC1:
	.ascii "%d \12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10: ; basically a bunch of calls and declarations not much to see here
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$1819043144, 18(%esp)
	movl	$1768038511, 22(%esp)
	movl	$1936283508, 26(%esp)
	movw	$101, 30(%esp)
	leal	18(%esp), %eax
	movl	%eax, (%esp)
	call	_toUpperCase
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leal	18(%esp), %eax
	movl	%eax, (%esp)
	call	_toLowerCase
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$101, (%esp)
	call	_multi65
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$-101, (%esp)
	call	_multi65
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$1000000000, (%esp)
	call	_multi65
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (GNU) 5.3.0"
	.def	_toUpperCase;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_toLowerCase;	.scl	2;	.type	32;	.endef
	.def	_multi65;	.scl	2;	.type	32;	.endef
