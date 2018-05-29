	.file	"figura1.cpp"
	.local	s
	.comm	s,40000,32
	.section	.rodata
.LC1:
	.string	"R[0] = %i, R[39999] = %i\n"
.LC2:
	.string	"\nTiempo (seg.) = %11.9f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160112, %rsp
	movl	%edi, -160084(%rbp)
	movq	%rsi, -160096(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-160048(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	movl	$1, -160072(%rbp)
.L9:
	cmpl	$40000, -160072(%rbp)
	jg	.L2
	movl	$0, -160064(%rbp)
	movl	$0, -160060(%rbp)
	movl	$0, -160068(%rbp)
.L4:
	cmpl	$4999, -160068(%rbp)
	jg	.L3
	movl	-160068(%rbp), %eax
	cltq
	movl	s(,%rax,8), %eax
	leal	(%rax,%rax), %edx
	movl	-160072(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -160064(%rbp)
	addl	$1, -160068(%rbp)
	jmp	.L4
.L3:
	movl	$0, -160068(%rbp)
.L6:
	cmpl	$4999, -160068(%rbp)
	jg	.L5
	movl	-160068(%rbp), %eax
	cltq
	movl	s+4(,%rax,8), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	-160072(%rbp), %eax
	addl	%eax, -160060(%rbp)
	addl	$1, -160068(%rbp)
	jmp	.L6
.L5:
	movl	-160064(%rbp), %eax
	cmpl	-160060(%rbp), %eax
	jge	.L7
	movl	-160072(%rbp), %eax
	cltq
	movl	-160064(%rbp), %edx
	movl	%edx, -160016(%rbp,%rax,4)
	jmp	.L8
.L7:
	movl	-160072(%rbp), %eax
	cltq
	movl	-160060(%rbp), %edx
	movl	%edx, -160016(%rbp,%rax,4)
.L8:
	addl	$1, -160072(%rbp)
	jmp	.L9
.L2:
	leaq	-160032(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	movq	-160032(%rbp), %rdx
	movq	-160048(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-160024(%rbp), %rdx
	movq	-160040(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160056(%rbp)
	movl	-20(%rbp), %edx
	movl	-160016(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-160056(%rbp), %rax
	movq	%rax, -160104(%rbp)
	movsd	-160104(%rbp), %xmm0
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L11
	call	__stack_chk_fail
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.6) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
