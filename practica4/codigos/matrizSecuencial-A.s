	.file	"matrizSecuencial-A.c"
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
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
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
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -116(%rbp)
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
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -96(%rbp)
	movl	-100(%rbp), %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -88(%rbp)
	movl	-100(%rbp), %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L8
.L9:
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-100(%rbp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, (%rbx)
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-100(%rbp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, (%rbx)
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-100(%rbp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, (%rbx)
	addl	$1, -112(%rbp)
.L8:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L9
	movl	$0, -112(%rbp)
	jmp	.L10
.L13:
	movl	$0, -108(%rbp)
	jmp	.L11
.L12:
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$2, (%rax)
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$1, (%rax)
	addl	$1, -108(%rbp)
.L11:
	movl	-108(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L12
	addl	$1, -112(%rbp)
.L10:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L13
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	movl	$0, -112(%rbp)
	jmp	.L14
.L19:
	movl	$0, -104(%rbp)
	jmp	.L15
.L18:
	movl	$0, -108(%rbp)
	jmp	.L16
.L17:
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-112(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-108(%rbp), %ecx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rdx), %ecx
	movl	-112(%rbp), %edx
	leaq	0(,%rdx,8), %rsi
	movq	-88(%rbp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movl	-104(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %esi
	movl	-104(%rbp), %edx
	leaq	0(,%rdx,8), %rdi
	movq	-80(%rbp), %rdx
	addq	%rdi, %rdx
	movq	(%rdx), %rdx
	movl	-108(%rbp), %edi
	salq	$2, %rdi
	addq	%rdi, %rdx
	movl	(%rdx), %edx
	imull	%esi, %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -108(%rbp)
.L16:
	movl	-108(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L17
	addl	$1, -104(%rbp)
.L15:
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L18
	addl	$1, -112(%rbp)
.L14:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L19
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	cmpl	$14, -100(%rbp)
	ja	.L20
	movl	$.LC3, %edi
	call	puts
	movl	-100(%rbp), %eax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	printMatriz
	movl	$.LC4, %edi
	call	puts
	movl	-100(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	printMatriz
	movl	$.LC5, %edi
	call	puts
	movl	-100(%rbp), %eax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	printMatriz
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)
	movsd	-136(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	jmp	.L21
.L20:
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)
	movsd	-136(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
.L21:
	movl	$0, -112(%rbp)
	jmp	.L22
.L23:
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	addl	$1, -112(%rbp)
.L22:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L23
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L25
	call	__stack_chk_fail
.L25:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
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
