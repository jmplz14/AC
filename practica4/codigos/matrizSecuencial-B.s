	.file	"matrizSecuencial-B.c"
	.section	.rodata
.LC0:
	.string	"%d "
	.text
	.globl	printMatriz
	.type	printMatriz, @function
printMatriz:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L4
	movl	$10, %edi
	call	putchar
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L5
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printMatriz, .-printMatriz
	.section	.rodata
	.align 8
.LC1:
	.string	"ERROR: falta numero de filas y columnas\n"
.LC3:
	.string	"M1:"
.LC4:
	.string	"M2:"
.LC5:
	.string	"Sol:"
	.align 8
.LC6:
	.string	"Tiempo = %11.9f\t Primera = %d\t Ultima=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -100(%rbp)
	jg	.L7
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L7:
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -72(%rbp)
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -64(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L8
.L9:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-96(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	$2, (%rax)
	movl	-96(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	addl	$1, -96(%rbp)
.L8:
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	cmpl	-96(%rbp), %eax
	ja	.L9
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	movl	$0, -96(%rbp)
	jmp	.L10
.L15:
	movl	$0, -88(%rbp)
	jmp	.L11
.L14:
	movl	$0, -92(%rbp)
	jmp	.L12
.L13:
	movl	-96(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-96(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	-96(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %esi
	movl	-88(%rbp), %eax
	addl	%esi, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %esi
	movl	-88(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, %edi
	movl	-92(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdi
	movq	-80(%rbp), %rax
	addq	%rdi, %rax
	movl	(%rax), %eax
	imull	%esi, %eax
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	addl	$1, -92(%rbp)
.L12:
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jb	.L13
	addl	$1, -88(%rbp)
.L11:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jb	.L14
	addl	$1, -96(%rbp)
.L10:
	movl	-96(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jb	.L15
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	cmpl	$14, -84(%rbp)
	ja	.L16
	movl	$.LC3, %edi
	call	puts
	movl	-84(%rbp), %eax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	printMatriz
	movl	$.LC4, %edi
	call	puts
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	printMatriz
	movl	$.LC5, %edi
	call	puts
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	printMatriz
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	jmp	.L17
.L16:
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
.L17:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L19
	call	__stack_chk_fail
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.6) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
