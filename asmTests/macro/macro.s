	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_program
	.align	4, 0x90
_program:                               ## @program
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	testb	$1, _m+50(%rip)
	je	LBB0_2
## BB#1:
	jmp	LBB0_40
LBB0_2:
	testb	$1, _m+49(%rip)
	je	LBB0_4
## BB#3:
	xorl	%esi, %esi
	leaq	-160(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$5489, %rdi             ## imm = 0x1571
	movb	$0, _m+49(%rip)
	movslq	_m+5485(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+5485(%rip)
	movq	%rax, %r8
	movslq	_m+5485(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rdi
	movq	%rdi, -192(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-192(%rbp), %r8         ## 8-byte Reload
	movl	%esi, -196(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-208(%rbp), %rdi        ## 8-byte Reload
	movl	-196(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_4:
	movl	$123, _m(%rip)
	movl	$0, _m(%rip)
	movl	_m(%rip), %eax
	subl	$0, %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	cmpl	$0, _m(%rip)
	setb	%cl
	andb	$1, %cl
	movb	%cl, _m+44(%rip)
	movl	_m(%rip), %eax
	subl	$0, %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_6
## BB#5:
	jmp	LBB0_31
LBB0_6:
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	addq	$36, %rcx
	movl	$2, %edx
                                        ## 
	movq	$-1, %rsi
	addq	$5489, %rax             ## imm = 0x1571
	movl	$122, _m(%rip)
	movslq	_m+5485(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rsi, -216(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	callq	___memcpy_chk
	movslq	_m+5485(%rip), %rcx
	addq	$2, %rcx
	movl	%ecx, %r8d
	movl	%r8d, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	je	LBB0_8
## BB#7:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$46, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	addq	$34, %rcx
	movl	$2, %edx
                                        ## 
	movq	$-1, %rsi
	addq	$5489, %rax             ## imm = 0x1571
	movslq	_m+5485(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rsi, -232(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-232(%rbp), %rcx        ## 8-byte Reload
	callq	___memcpy_chk
	movslq	_m+5485(%rip), %rcx
	addq	$2, %rcx
	movl	%ecx, %r8d
	movl	%r8d, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	je	LBB0_11
## BB#10:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$47, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_11:
	jmp	LBB0_12
LBB0_12:
	leaq	_m(%rip), %rax
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	%rax, %rsi
	addq	$5489, %rsi             ## imm = 0x1571
	movslq	_m+5485(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	___memcpy_chk
	movslq	_m+5485(%rip), %rcx
	addq	$4, %rcx
	movl	%ecx, %r8d
	movl	%r8d, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	je	LBB0_14
## BB#13:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$48, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_14:
	jmp	LBB0_15
LBB0_15:
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	$4, %edx
                                        ## 
	movq	$-1, %rsi
	addq	$5489, %rax             ## imm = 0x1571
	movslq	_m+5485(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	callq	___memcpy_chk
	movslq	_m+5485(%rip), %rcx
	addq	$4, %rcx
	movl	%ecx, %r8d
	movl	%r8d, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	je	LBB0_17
## BB#16:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$49, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_17:
	jmp	LBB0_18
LBB0_18:
	leaq	_m(%rip), %rax
	movslq	_m+5485(%rip), %rcx
	subq	$4, %rcx
	movl	%ecx, %edx
	movl	%edx, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	movl	5489(%rax,%rcx,4), %edx
	movl	%edx, _m+4(%rip)
	movslq	_m+5485(%rip), %rcx
	subq	$4, %rcx
	movl	%ecx, %edx
	movl	%edx, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	movl	5489(%rax,%rcx,4), %edx
	movl	%edx, _m(%rip)
	movslq	_m+5485(%rip), %rcx
	subq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	movw	5489(%rax,%rcx,4), %si
	movw	%si, _m+34(%rip)
	movslq	_m+5485(%rip), %rcx
	subq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	movw	5489(%rax,%rcx,4), %si
	movw	%si, _m+36(%rip)
	movl	_m(%rip), %edx
	subl	$122, %edx
	cmpl	$0, %edx
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+45(%rip)
	cmpl	$122, _m(%rip)
	setb	%dil
	andb	$1, %dil
	movb	%dil, _m+44(%rip)
	movl	_m(%rip), %edx
	subl	$122, %edx
	shrl	$31, %edx
	cmpl	$0, %edx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_20
## BB#19:
	jmp	LBB0_31
LBB0_20:
	movl	$45, _m+4(%rip)
	movl	_m+4(%rip), %eax
	subl	$45, %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	cmpl	$45, _m+4(%rip)
	setb	%cl
	andb	$1, %cl
	movb	%cl, _m+44(%rip)
	movl	_m+4(%rip), %eax
	subl	$45, %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_22
## BB#21:
	jmp	LBB0_31
LBB0_22:
	movl	$0, _m+12(%rip)
	movl	$10, _m+8(%rip)
LBB0_23:                                ## =>This Inner Loop Header: Depth=1
	movl	_m+12(%rip), %eax
	addl	$1, %eax
	movl	%eax, _m+12(%rip)
	cmpl	$0, _m+12(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m+8(%rip), %eax
	subl	$1, %eax
	movl	%eax, _m+8(%rip)
	cmpl	$0, _m+8(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_25
## BB#24:                               ##   in Loop: Header=BB0_23 Depth=1
	jmp	LBB0_23
LBB0_25:
	movl	$10, _m+8(%rip)
LBB0_26:                                ## =>This Inner Loop Header: Depth=1
	movl	_m+12(%rip), %eax
	addl	$1, %eax
	movl	%eax, _m+12(%rip)
	cmpl	$0, _m+12(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m+8(%rip), %eax
	subl	$1, %eax
	movl	%eax, _m+8(%rip)
	cmpl	$0, _m+8(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_28
## BB#27:                               ##   in Loop: Header=BB0_26 Depth=1
	jmp	LBB0_26
LBB0_28:
	movl	_m+12(%rip), %eax
	subl	$20, %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	cmpl	$20, _m+12(%rip)
	setb	%cl
	andb	$1, %cl
	movb	%cl, _m+44(%rip)
	movl	_m+12(%rip), %eax
	subl	$20, %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_30
## BB#29:
	jmp	LBB0_31
LBB0_30:
	leaq	_m(%rip), %rax
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4973(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	52(%rax,%rdx), %ecx
	addl	$1, %ecx
	movb	%cl, %sil
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4973(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movb	%sil, 52(%rax,%rdx)
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4973(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	52(%rax,%rdx), %ecx
	cmpl	$0, %ecx
	sete	%sil
	andb	$1, %sil
	movb	%sil, _m+45(%rip)
	movl	$52, _m+20(%rip)
	movl	_m+20(%rip), %ecx
	addl	$3, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4973(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	movb	(%rdi,%rax), %sil
	movb	%sil, _m(%rip)
	movb	$0, _m(%rip)
	jmp	LBB0_32
LBB0_31:
	movb	$1, _m(%rip)
LBB0_32:
	movl	$33, %edi
	movb	$76, _m+1(%rip)
	callq	_asm2C_INT
	testb	$1, _m+49(%rip)
	je	LBB0_39
## BB#33:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_38
## BB#34:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5489, %rdi             ## imm = 0x1571
	movslq	_m+5485(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5485(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5485(%rip)
	movslq	_m+5485(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	je	LBB0_36
## BB#35:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$85, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_36:
	jmp	LBB0_37
LBB0_37:
	jmp	LBB0_40
LBB0_38:
	jmp	LBB0_39
LBB0_39:
	movb	$1, _m+50(%rip)
LBB0_40:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movb	_m+50(%rip), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%edx, -276(%rbp)        ## 4-byte Spill
	jne	LBB0_42
## BB#41:
	movl	-276(%rbp), %eax        ## 4-byte Reload
	addq	$288, %rsp              ## imm = 0x120
	popq	%rbp
	retq
LBB0_42:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_INT
	.align	4, 0x90
_asm2C_INT:                             ## @asm2C_INT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$1216, %rsp             ## imm = 0x4C0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1012(%rbp)
	movb	_m+1(%rip), %cl
	movb	%cl, -1017(%rbp)
	movb	_m(%rip), %cl
	movb	%cl, -1018(%rbp)
	movw	_m(%rip), %dx
	movw	%dx, -1020(%rbp)
	movw	_m+4(%rip), %dx
	movw	%dx, -1022(%rbp)
	movw	_m+8(%rip), %dx
	movw	%dx, -1024(%rbp)
	movw	_m+12(%rip), %dx
	movw	%dx, -1026(%rbp)
	movb	$0, _m+44(%rip)
	movl	-1012(%rbp), %edi
	movl	%edi, %esi
	subl	$16, %esi
	movl	%edi, -1084(%rbp)       ## 4-byte Spill
	movl	%esi, -1088(%rbp)       ## 4-byte Spill
	je	LBB1_1
	jmp	LBB1_64
LBB1_64:
	movl	-1084(%rbp), %eax       ## 4-byte Reload
	subl	$33, %eax
	movl	%eax, -1092(%rbp)       ## 4-byte Spill
	je	LBB1_5
	jmp	LBB1_65
LBB1_65:
	movl	-1084(%rbp), %eax       ## 4-byte Reload
	subl	$49, %eax
	movl	%eax, -1096(%rbp)       ## 4-byte Spill
	je	LBB1_41
	jmp	LBB1_59
LBB1_1:
	movzwl	-1020(%rbp), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -1100(%rbp)       ## 4-byte Spill
	movl	%ecx, -1104(%rbp)       ## 4-byte Spill
	je	LBB1_2
	jmp	LBB1_74
LBB1_74:
	movl	-1100(%rbp), %eax       ## 4-byte Reload
	subl	$19, %eax
	movl	%eax, -1108(%rbp)       ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_4
LBB1_2:
	jmp	LBB1_61
LBB1_3:
	callq	_stackDump
	jmp	LBB1_61
LBB1_4:
	jmp	LBB1_60
LBB1_5:
	movzbl	-1017(%rbp), %eax
	addl	$-9, %eax
	movl	%eax, %ecx
	subl	$67, %eax
	movq	%rcx, -1120(%rbp)       ## 8-byte Spill
	movl	%eax, -1124(%rbp)       ## 4-byte Spill
	ja	LBB1_39
## BB#66:
	leaq	LJTI1_0(%rip), %rax
	movq	-1120(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB1_6:
	leaq	_m(%rip), %rax
	movl	_m+12(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4973(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1040(%rbp)
	movl	$0, -1016(%rbp)
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-1016(%rbp), %rax
	movq	-1040(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$36, %edx
	je	LBB1_10
## BB#8:                                ##   in Loop: Header=BB1_7 Depth=1
	leaq	L_.str.13(%rip), %rdi
	movslq	-1016(%rbp), %rax
	movq	-1040(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1128(%rbp)       ## 4-byte Spill
## BB#9:                                ##   in Loop: Header=BB1_7 Depth=1
	movl	-1016(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1016(%rbp)
	jmp	LBB1_7
LBB1_10:
	jmp	LBB1_61
LBB1_11:
	movl	$512, _m+12(%rip)       ## imm = 0x200
	jmp	LBB1_61
LBB1_12:
	cmpq	$0, _m+4408181(%rip)
	je	LBB1_14
## BB#13:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.14(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movq	_m+4408181(%rip), %r9
	movl	_m+12(%rip), %eax
	movl	%eax, %r10d
	movq	%rdi, %r11
	addq	%r10, %r11
	movzwl	_m+34(%rip), %eax
	movl	%eax, %r10d
	movl	4973(%rdi,%r10,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r11
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%r11, %r9
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1132(%rbp)       ## 4-byte Spill
	jmp	LBB1_15
LBB1_14:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.15(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movl	_m+12(%rip), %eax
	movl	%eax, %r9d
	movq	%rdi, %r10
	addq	%r9, %r10
	movzwl	_m+34(%rip), %eax
	movl	%eax, %r9d
	movl	4973(%rdi,%r9,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r10
	movq	%r8, %rdi
	movq	%r10, %r8
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1136(%rbp)       ## 4-byte Spill
LBB1_15:
	leaq	L_.str.16(%rip), %rsi
	leaq	-1008(%rbp), %rdi
	callq	_fopen
	movq	%rax, _asm2C_INT.file(%rip)
	cmpq	$0, _asm2C_INT.file(%rip)
	je	LBB1_17
## BB#16:
	movl	$1, _m(%rip)
	jmp	LBB1_18
LBB1_17:
	leaq	L_.str.17(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1140(%rbp)       ## 4-byte Spill
LBB1_18:
	jmp	LBB1_61
LBB1_19:
	movq	_asm2C_INT.file(%rip), %rdi
	callq	_fclose
	cmpl	$0, %eax
	je	LBB1_21
## BB#20:
	leaq	L_.str.18(%rip), %rdi
	movb	$1, _m+44(%rip)
	callq	_perror
	leaq	L_.str.19(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1144(%rbp)       ## 4-byte Spill
LBB1_21:
	movq	$0, _asm2C_INT.file(%rip)
	jmp	LBB1_61
LBB1_22:
	leaq	_m(%rip), %rax
	movl	_m+12(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4973(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1048(%rbp)
	movq	_asm2C_INT.file(%rip), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB1_24
## BB#23:
	movl	$0, _m(%rip)
	jmp	LBB1_30
LBB1_24:
	movl	$1, %eax
	movl	%eax, %esi
	movq	-1048(%rbp), %rdi
	movzwl	-1024(%rbp), %eax
	movl	%eax, %edx
	movq	_asm2C_INT.file(%rip), %rcx
	callq	_fread
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	movzwl	-1024(%rbp), %r8d
	movl	%r8d, %ecx
	cmpq	%rcx, %rax
	je	LBB1_28
## BB#25:
	leaq	L_.str.18(%rip), %rdi
	callq	_perror
	leaq	L_.str.20(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1148(%rbp)       ## 4-byte Spill
	callq	_feof
	cmpl	$0, %eax
	jne	LBB1_27
## BB#26:
	leaq	L_.str.21(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	_printf
	movb	$1, _m+44(%rip)
	movl	%eax, -1152(%rbp)       ## 4-byte Spill
LBB1_27:
	jmp	LBB1_29
LBB1_28:
	jmp	LBB1_29
LBB1_29:
	movq	-1056(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, _m(%rip)
LBB1_30:
	jmp	LBB1_61
LBB1_31:
	movl	$0, -1060(%rbp)
	movzbl	-1017(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1156(%rbp)       ## 4-byte Spill
	je	LBB1_32
	jmp	LBB1_67
LBB1_67:
	movl	-1156(%rbp), %eax       ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1160(%rbp)       ## 4-byte Spill
	je	LBB1_33
	jmp	LBB1_68
LBB1_68:
	movl	-1156(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1164(%rbp)       ## 4-byte Spill
	je	LBB1_34
	jmp	LBB1_35
LBB1_32:
	movl	$0, -1060(%rbp)
	jmp	LBB1_35
LBB1_33:
	movl	$1, -1060(%rbp)
	jmp	LBB1_35
LBB1_34:
	movl	$2, -1060(%rbp)
LBB1_35:
	movzwl	-1024(%rbp), %eax
	shll	$16, %eax
	movzwl	-1026(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -1072(%rbp)
	movq	_asm2C_INT.file(%rip), %rdi
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	callq	_fseek
	cmpl	$0, %eax
	je	LBB1_37
## BB#36:
	leaq	L_.str.22(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1168(%rbp)       ## 4-byte Spill
LBB1_37:
	jmp	LBB1_61
LBB1_38:
	callq	_stackDump
	movb	$1, _m+49(%rip)
	movb	$1, _m+50(%rip)
	movb	-1018(%rbp), %al
	movb	%al, _m+51(%rip)
	jmp	LBB1_61
LBB1_39:
	jmp	LBB1_40
LBB1_40:
	jmp	LBB1_41
LBB1_41:
	movzwl	-1020(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1172(%rbp)       ## 4-byte Spill
	je	LBB1_42
	jmp	LBB1_69
LBB1_69:
	movl	-1172(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1176(%rbp)       ## 4-byte Spill
	je	LBB1_46
	jmp	LBB1_70
LBB1_70:
	movl	-1172(%rbp), %eax       ## 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1180(%rbp)       ## 4-byte Spill
	je	LBB1_49
	jmp	LBB1_71
LBB1_71:
	movl	-1172(%rbp), %eax       ## 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1184(%rbp)       ## 4-byte Spill
	je	LBB1_52
	jmp	LBB1_72
LBB1_72:
	movl	-1172(%rbp), %eax       ## 4-byte Reload
	subl	$517, %eax              ## imm = 0x205
	movl	%eax, -1188(%rbp)       ## 4-byte Spill
	je	LBB1_56
	jmp	LBB1_73
LBB1_73:
	movl	-1172(%rbp), %eax       ## 4-byte Reload
	subl	$1281, %eax             ## imm = 0x501
	movl	%eax, -1192(%rbp)       ## 4-byte Spill
	je	LBB1_53
	jmp	LBB1_57
LBB1_42:
	movl	_m+4969(%rip), %eax
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	$128, %eax
	jb	LBB1_44
## BB#43:
	leaq	L_.str.23(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1196(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_44:
	movl	_m+4969(%rip), %eax
	movl	%eax, _m(%rip)
	movzwl	-1024(%rbp), %eax
	addl	_m+4969(%rip), %eax
	movl	%eax, _m+4969(%rip)
## BB#45:
	jmp	LBB1_61
LBB1_46:
	movl	_m+4969(%rip), %eax
	addl	$1, %eax
	cmpl	$128, %eax
	jb	LBB1_48
## BB#47:
	leaq	L_.str.23(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1200(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_48:
	leaq	_m(%rip), %rax
	movl	_m+4969(%rip), %ecx
	movl	%ecx, %edx
	movl	$4280181, 4973(%rax,%rdx,4) ## imm = 0x414F75
	movl	_m+4969(%rip), %ecx
	movl	%ecx, _m(%rip)
	movl	_m+4969(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+4969(%rip)
	jmp	LBB1_61
LBB1_49:
	movzwl	-1022(%rbp), %eax
	cmpl	_m+4969(%rip), %eax
	jbe	LBB1_51
## BB#50:
	leaq	L_.str.24(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1204(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_51:
	leaq	_m(%rip), %rax
	movzwl	_m+12(%rip), %ecx
	andl	$65535, %ecx            ## imm = 0xFFFF
	movzwl	_m+8(%rip), %edx
	shll	$16, %edx
	addl	%edx, %ecx
	movzwl	-1022(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, 4973(%rax,%rsi,4)
	jmp	LBB1_61
LBB1_52:
	jmp	LBB1_61
LBB1_53:
	movzwl	-1022(%rbp), %eax
	shll	$16, %eax
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -1076(%rbp)
	movl	_m+21873(%rip), %eax
	addl	-1076(%rbp), %eax
	cmpl	$4194304, %eax          ## imm = 0x400000
	jb	LBB1_55
## BB#54:
	leaq	L_.str.25(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -1208(%rbp)       ## 4-byte Spill
	callq	_exit
LBB1_55:
	movl	_m+21873(%rip), %eax
	movl	%eax, %ecx
	addq	$21877, %rcx            ## imm = 0x5575
	movl	%ecx, %eax
	movl	%eax, -1080(%rbp)
	movl	-1076(%rbp), %eax
	addl	_m+21873(%rip), %eax
	movl	%eax, _m+21873(%rip)
	movl	-1080(%rbp), %eax
	andl	$65535, %eax            ## imm = 0xFFFF
	movl	%eax, _m+8(%rip)
	movl	-1080(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, _m+4(%rip)
	movl	$0, _m+20(%rip)
	movl	$0, _m+16(%rip)
	jmp	LBB1_61
LBB1_56:
	jmp	LBB1_61
LBB1_57:
	jmp	LBB1_58
LBB1_58:
	jmp	LBB1_60
LBB1_59:
	jmp	LBB1_60
LBB1_60:
	leaq	L_.str.26(%rip), %rdi
	movb	$1, _m+44(%rip)
	movl	-1012(%rbp), %esi
	movzbl	-1017(%rbp), %edx
	movzbl	-1018(%rbp), %ecx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1212(%rbp)       ## 4-byte Spill
LBB1_61:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB1_63
## BB#62:
	addq	$1216, %rsp             ## imm = 0x4C0
	popq	%rbp
	retq
LBB1_63:
	callq	___stack_chk_fail
	.cfi_endproc
	.align	2, 0x90
L1_0_set_6 = LBB1_6-LJTI1_0
L1_0_set_39 = LBB1_39-LJTI1_0
L1_0_set_11 = LBB1_11-LJTI1_0
L1_0_set_12 = LBB1_12-LJTI1_0
L1_0_set_19 = LBB1_19-LJTI1_0
L1_0_set_22 = LBB1_22-LJTI1_0
L1_0_set_31 = LBB1_31-LJTI1_0
L1_0_set_38 = LBB1_38-LJTI1_0
LJTI1_0:
	.long	L1_0_set_6
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_11
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_12
	.long	L1_0_set_19
	.long	L1_0_set_22
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_31
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_38

	.globl	_asm2C_printOffsets
	.align	4, 0x90
_asm2C_printOffsets:                    ## @asm2C_printOffsets
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	L_.str.2(%rip), %rax
	leaq	L_.str.3(%rip), %rsi
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	_fopen
	leaq	L_.str.4(%rip), %rsi
	movl	$52, %ecx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.5(%rip), %rsi
	movl	$62, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.6(%rip), %rsi
	movl	$72, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.7(%rip), %rsi
	movl	$73, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.8(%rip), %rsi
	movl	$77, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.9(%rip), %rsi
	movl	$105, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_fclose
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_checkIfVgaRamEmpty
	.align	4, 0x90
_checkIfVgaRamEmpty:                    ## @checkIfVgaRamEmpty
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$64000, -4(%rbp)        ## imm = 0xFA00
	jge	LBB3_6
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	leaq	_m(%rip), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 4280181(%rax,%rcx)
	je	LBB3_4
## BB#3:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	$0, -8(%rbp)
LBB3_4:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_5
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB3_1
LBB3_6:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_stackDump
	.align	4, 0x90
_stackDump:                             ## @stackDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	leaq	_m(%rip), %rdi
	movl	$4, %esi
	callq	_hexDump
	leaq	_m(%rip), %rdi
	addq	$36, %rdi
	movl	$4, %esi
	callq	_hexDump
	movl	$50, %esi
	leaq	_m(%rip), %rdi
	movl	_m+20(%rip), %eax
	movl	%eax, %ecx
	movq	%rdi, %rdx
	addq	%rcx, %rdx
	movzwl	_m+36(%rip), %eax
	movl	%eax, %ecx
	movl	4973(%rdi,%rcx,4), %eax
	movl	%eax, %ecx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	_hexDump
	callq	_checkIfVgaRamEmpty
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_hexDump
	.align	4, 0x90
_hexDump:                               ## @hexDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jne	LBB5_2
## BB#1:
	jmp	LBB5_19
LBB5_2:
	cmpl	$0, -44(%rbp)
	jge	LBB5_4
## BB#3:
	jmp	LBB5_19
LBB5_4:
	movl	$0, -48(%rbp)
LBB5_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB5_16
## BB#6:                                ##   in Loop: Header=BB5_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB5_10
## BB#7:                                ##   in Loop: Header=BB5_5 Depth=1
	cmpl	$0, -48(%rbp)
	je	LBB5_9
## BB#8:                                ##   in Loop: Header=BB5_5 Depth=1
	jmp	LBB5_9
LBB5_9:                                 ##   in Loop: Header=BB5_5 Depth=1
	jmp	LBB5_10
LBB5_10:                                ##   in Loop: Header=BB5_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jl	LBB5_12
## BB#11:                               ##   in Loop: Header=BB5_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB5_13
LBB5_12:                                ##   in Loop: Header=BB5_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movb	$46, -32(%rbp,%rsi)
	jmp	LBB5_14
LBB5_13:                                ##   in Loop: Header=BB5_5 Depth=1
	movl	$16, %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-48(%rbp), %edi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-68(%rbp), %edi         ## 4-byte Reload
	idivl	%edi
	movslq	%edx, %rcx
	movb	%sil, -32(%rbp,%rcx)
LBB5_14:                                ##   in Loop: Header=BB5_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$1, %edx
	movslq	%edx, %rsi
	movb	$0, -32(%rbp,%rsi)
## BB#15:                               ##   in Loop: Header=BB5_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB5_5
LBB5_16:
	jmp	LBB5_17
LBB5_17:                                ## =>This Inner Loop Header: Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB5_19
## BB#18:                               ##   in Loop: Header=BB5_17 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB5_17
LBB5_19:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB5_21
## BB#20:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB5_21:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_OUT
	.align	4, 0x90
_asm2C_OUT:                             ## @asm2C_OUT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %esi
	movl	%esi, %edi
	subl	$968, %edi              ## imm = 0x3C8
	movl	%esi, -12(%rbp)         ## 4-byte Spill
	movl	%edi, -16(%rbp)         ## 4-byte Spill
	je	LBB6_1
	jmp	LBB6_8
LBB6_8:
	movl	-12(%rbp), %eax         ## 4-byte Reload
	subl	$969, %eax              ## imm = 0x3C9
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	je	LBB6_2
	jmp	LBB6_6
LBB6_1:
	movl	-8(%rbp), %eax
	movl	%eax, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB6_7
LBB6_2:
	cmpl	$768, _asm2C_OUT.indexPalette(%rip) ## imm = 0x300
	jge	LBB6_4
## BB#3:
	leaq	_m(%rip), %rax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movslq	_asm2C_OUT.indexPalette(%rip), %rsi
	movb	%dl, 4201(%rax,%rsi)
	movl	_asm2C_OUT.indexPalette(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB6_5
LBB6_4:
	leaq	L_.str.10(%rip), %rdi
	movl	_asm2C_OUT.indexPalette(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB6_5:
	jmp	LBB6_7
LBB6_6:
	leaq	L_.str.11(%rip), %rdi
	movswl	-2(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB6_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_IN
	.align	4, 0x90
_asm2C_IN:                              ## @asm2C_IN
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, %ax
	movw	%ax, -4(%rbp)
	movzwl	%ax, %edi
	subl	$986, %edi              ## imm = 0x3DA
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	jne	LBB7_4
	jmp	LBB7_1
LBB7_1:
	testb	$1, _asm2C_IN.vblTick(%rip)
	je	LBB7_3
## BB#2:
	movb	$0, _asm2C_IN.vblTick(%rip)
	movb	$0, -1(%rbp)
	jmp	LBB7_5
LBB7_3:
	movb	$1, _asm2C_IN.vblTick(%rip)
	movb	$1, _m+49(%rip)
	movb	$8, -1(%rbp)
	jmp	LBB7_5
LBB7_4:
	leaq	L_.str.12(%rip), %rdi
	movswl	-4(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movb	$0, -1(%rbp)
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB7_5:
	movsbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_is_little_endian
	.align	4, 0x90
_is_little_endian:                      ## @is_little_endian
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_init
	.align	4, 0x90
_asm2C_init:                            ## @asm2C_init
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	callq	_is_little_endian
	andb	$1, %al
	movb	%al, _m+48(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_m                      ## @m
_m:
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	2
	.space	2
	.space	2
	.space	2
	.space	2
	.space	2
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.space	10,5
	.space	10,6
	.byte	1                       ## 0x1
	.long	2                       ## 0x2
	.space	28
	.space	4096
	.space	768
	.long	1                       ## 0x1
	.space	512
	.long	0                       ## 0x0
	.space	16384
	.long	0                       ## 0x0
	.space	4194304
	.space	64000
	.space	64000
	.space	64000
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L___func__.program:                     ## @__func__.program
	.asciz	"program"

L_.str:                                 ## @.str
	.asciz	"macro.c"

L_.str.1:                               ## @.str.1
	.asciz	"m.stackPointer<STACK_SIZE"

L_.str.2:                               ## @.str.2
	.asciz	"./memoryMap.log"

L_.str.3:                               ## @.str.3
	.asciz	"w"

L_.str.4:                               ## @.str.4
	.asciz	"xox %x (from beg RW) %x:varmac1\n"

L_.str.5:                               ## @.str.5
	.asciz	"xox %x (from beg RW) %x:dummy1\n"

L_.str.6:                               ## @.str.6
	.asciz	"xox %x (from beg RW) %x:last_voice\n"

L_.str.7:                               ## @.str.7
	.asciz	"xox %x (from beg RW) %x:changement\n"

L_.str.8:                               ## @.str.8
	.asciz	"xox %x (from beg RW) %x:fx\n"

L_.str.9:                               ## @.str.9
	.asciz	"xox %x (from beg RW) %x:dummy2\n"

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.10:                              ## @.str.10
	.asciz	"error: indexPalette>767 %d\n"

L_.str.11:                              ## @.str.11
	.asciz	"unknown OUT %d,%d\n"

	.section	__DATA,__data
_asm2C_IN.vblTick:                      ## @asm2C_IN.vblTick
	.byte	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str.12:                              ## @.str.12
	.asciz	"Unknown IN %d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,8,3 ## @asm2C_INT.file
L_.str.13:                              ## @.str.13
	.asciz	"%c"

L_.str.14:                              ## @.str.14
	.asciz	"%s/%s"

L_.str.15:                              ## @.str.15
	.asciz	"%s"

L_.str.16:                              ## @.str.16
	.asciz	"rb"

L_.str.17:                              ## @.str.17
	.asciz	"Error opening file %s\n"

L_.str.18:                              ## @.str.18
	.asciz	"Error"

L_.str.19:                              ## @.str.19
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.20:                              ## @.str.20
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.21:                              ## @.str.21
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.22:                              ## @.str.22
	.asciz	"Error seeking\n"

L_.str.23:                              ## @.str.23
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.24:                              ## @.str.24
	.asciz	"Error: selector number doesnt exist\n"

L_.str.25:                              ## @.str.25
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.26:                              ## @.str.26
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


.subsections_via_symbols
