	.file	"toLowerCase.c"
	.text
	.globl	_toLowerCase
	.def	_toLowerCase;	.scl	2;	.type	32;	.endef
_toLowerCase:
LFB11: ; Pretty sure this is just getting the char string we sent
	.cfi_startproc
	pushl	%ebp ; make new place on stack
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp ; move memory at ebp to esp
	.cfi_def_cfa_register 5
	subl	$40, %esp ; sub data at esp from memory addresss of 40 and add to esp
	movl	$0, -12(%ebp) ; move data at ebp at an offset of -12 into address 0
	jmp	L2 ; goto l2
L4:
	movl	-12(%ebp), %edx ; move edx into ebp - 12
	movl	8(%ebp), %eax ; move 8
	addl	%edx, %eax ; add eax to edx
	movzbl	(%eax), %eax ; mov eax into eax, fill rest of bytes with 0 | I assume this is the cast?
	cmpb	$64, %al ;compare al to memory address 64 | check if character is within range above 64
	jle	L3 ;if its not equal jump to l3 | aka invalid char
	movl	-12(%ebp), %edx ;
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jg	L3 ; Same thing as above but it checks the other way around
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	-12(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx ; yada yada memory moving stuff
	orl	$32, %edx ; or edx with 32 and mov to edx
	movb	%dl, (%eax) ; move eax to dl (first 8 bits of dl)
L3:
	addl	$1, -12(%ebp) ; basically add for loop i by 1 and continue loop
L2:
	movl	8(%ebp), %eax ;mov whatevers in eax into ebp offset by 8
	movl	%eax, (%esp) ;mov whatevers in esp into eax
	call	_strlen ; call strlen
	movl	%eax, %edx ; move edx into eax, I think this means eax holds the length of the str edx
	movl	-12(%ebp), %eax ; mov eax into ebp - 12, saves size of str on stack frame
	cmpl	%eax, %edx ; check if edx is,
	ja	L4 ;jump to L4 if edx is above str
	movl	8(%ebp), %eax ; move whatevers in eax to ebp + 8
	leave ; clear stack frame
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (GNU) 5.3.0"
	.def	_strlen;	.scl	2;	.type	32;	.endef
