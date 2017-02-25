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
	subq	$320, %rsp              ## imm = 0x140
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	testb	$1, _m+50(%rip)
	je	LBB0_2
## BB#1:
	jmp	LBB0_93
LBB0_2:
	testb	$1, _m+49(%rip)
	je	LBB0_4
## BB#3:
	xorl	%esi, %esi
	leaq	-160(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movb	$0, _m+49(%rip)
	movslq	_m+6200(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+6200(%rip)
	movq	%rax, %r8
	movslq	_m+6200(%rip), %r9
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
	movl	$16, %edi
	movw	$19, _m(%rip)
	callq	_asm2C_INT
	testb	$1, _m+49(%rip)
	je	LBB0_11
## BB#5:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_10
## BB#6:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	je	LBB0_8
## BB#7:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$85, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	jmp	LBB0_93
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_16
## BB#12:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	je	LBB0_14
## BB#13:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$86, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_14:
	jmp	LBB0_15
LBB0_15:
	jmp	LBB0_86
LBB0_16:
	movl	$49, %edi
	movl	$40960, _m+4(%rip)      ## imm = 0xA000
	movw	$2, _m(%rip)
	callq	_asm2C_INT
	testb	$1, _m+49(%rip)
	je	LBB0_23
## BB#17:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_22
## BB#18:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	je	LBB0_20
## BB#19:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$89, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_20:
	jmp	LBB0_21
LBB0_21:
	jmp	LBB0_93
LBB0_22:
	jmp	LBB0_23
LBB0_23:
	movw	_m(%rip), %ax
	movw	%ax, _m+36(%rip)
	movl	_m+20(%rip), %ecx
	xorl	_m+20(%rip), %ecx
	movl	%ecx, _m+20(%rip)
	cmpl	$0, _m+20(%rip)
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movl	_m+20(%rip), %ecx
	shrl	$31, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	movl	$2007695104, _m(%rip)   ## imm = 0x77AAFF00
	movl	$16000, _m+8(%rip)      ## imm = 0x3E80
	movl	$0, -180(%rbp)
LBB0_24:                                ## =>This Inner Loop Header: Depth=1
	movl	-180(%rbp), %eax
	cmpl	_m+8(%rip), %eax
	jae	LBB0_27
## BB#25:                               ##   in Loop: Header=BB0_24 Depth=1
	leaq	_m(%rip), %rax
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movl	_m+20(%rip), %esi
	movl	%esi, %edi
	movq	%rax, %r8
	addq	%rdi, %r8
	movzwl	_m+36(%rip), %esi
	movl	%esi, %edi
	movl	5688(%rax,%rdi,4), %esi
	movl	%esi, %edi
	addq	%rdi, %r8
	movq	%r8, %rdi
	movq	%rax, %rsi
	callq	___memcpy_chk
	movl	_m+20(%rip), %r9d
	addl	$4, %r9d
	movl	%r9d, _m+20(%rip)
	movq	%rax, -240(%rbp)        ## 8-byte Spill
## BB#26:                               ##   in Loop: Header=BB0_24 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	LBB0_24
LBB0_27:
	leaq	_m(%rip), %rax
	movzwl	_m+36(%rip), %ecx
	movl	%ecx, %edx
	movl	5688(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	$2007695104, 6560(%rax,%rdx) ## imm = 0x77AAFF00
	movzwl	_m+36(%rip), %ecx
	movl	%ecx, %edx
	movl	5688(%rax,%rdx,4), %ecx
	movl	%ecx, %edx
	movl	$2007695104, (%rax,%rdx) ## imm = 0x77AAFF00
	movw	$986, _m+12(%rip)       ## imm = 0x3DA
LBB0_28:                                ## =>This Inner Loop Header: Depth=1
	movswl	_m+12(%rip), %edi
	callq	_asm2C_IN
	movb	%al, _m(%rip)
	testb	$1, _m+49(%rip)
	je	LBB0_35
## BB#29:                               ##   in Loop: Header=BB0_28 Depth=1
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_34
## BB#30:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	je	LBB0_32
## BB#31:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$99, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_32:
	jmp	LBB0_33
LBB0_33:
	jmp	LBB0_93
LBB0_34:                                ##   in Loop: Header=BB0_28 Depth=1
	jmp	LBB0_35
LBB0_35:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$8, %eax
	movzbl	_m(%rip), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m(%rip), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	andb	$1, %dl
	movb	%dl, _m+44(%rip)
	movzbl	_m(%rip), %eax
	andl	$8, %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_37
## BB#36:                               ##   in Loop: Header=BB0_28 Depth=1
	jmp	LBB0_28
LBB0_37:
	jmp	LBB0_38
LBB0_38:                                ## =>This Inner Loop Header: Depth=1
	movswl	_m+12(%rip), %edi
	callq	_asm2C_IN
	movb	%al, _m(%rip)
	testb	$1, _m+49(%rip)
	je	LBB0_45
## BB#39:                               ##   in Loop: Header=BB0_38 Depth=1
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_44
## BB#40:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	je	LBB0_42
## BB#41:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$103, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_42:
	jmp	LBB0_43
LBB0_43:
	jmp	LBB0_93
LBB0_44:                                ##   in Loop: Header=BB0_38 Depth=1
	jmp	LBB0_45
LBB0_45:                                ##   in Loop: Header=BB0_38 Depth=1
	movl	$8, %eax
	movzbl	_m(%rip), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m(%rip), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	andb	$1, %dl
	movb	%dl, _m+44(%rip)
	movzbl	_m(%rip), %eax
	andl	$8, %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	je	LBB0_47
## BB#46:                               ##   in Loop: Header=BB0_38 Depth=1
	jmp	LBB0_38
LBB0_47:
	movw	$968, _m+12(%rip)       ## imm = 0x3C8
	movb	$0, _m(%rip)
	movw	_m+12(%rip), %ax
	movzbl	_m(%rip), %esi
	movswl	%ax, %edi
	callq	_asm2C_OUT
	movl	$60, _m+8(%rip)
LBB0_48:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_49 Depth 2
                                        ##     Child Loop BB0_59 Depth 2
	movw	$986, _m+12(%rip)       ## imm = 0x3DA
LBB0_49:                                ##   Parent Loop BB0_48 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movswl	_m+12(%rip), %edi
	callq	_asm2C_IN
	movb	%al, _m(%rip)
	testb	$1, _m+49(%rip)
	je	LBB0_56
## BB#50:                               ##   in Loop: Header=BB0_49 Depth=2
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_55
## BB#51:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	je	LBB0_53
## BB#52:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$113, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_53:
	jmp	LBB0_54
LBB0_54:
	jmp	LBB0_93
LBB0_55:                                ##   in Loop: Header=BB0_49 Depth=2
	jmp	LBB0_56
LBB0_56:                                ##   in Loop: Header=BB0_49 Depth=2
	movl	$8, %eax
	movzbl	_m(%rip), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m(%rip), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	andb	$1, %dl
	movb	%dl, _m+44(%rip)
	movzbl	_m(%rip), %eax
	andl	$8, %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_58
## BB#57:                               ##   in Loop: Header=BB0_49 Depth=2
	jmp	LBB0_49
LBB0_58:                                ##   in Loop: Header=BB0_48 Depth=1
	jmp	LBB0_59
LBB0_59:                                ##   Parent Loop BB0_48 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movswl	_m+12(%rip), %edi
	callq	_asm2C_IN
	movb	%al, _m(%rip)
	testb	$1, _m+49(%rip)
	je	LBB0_66
## BB#60:                               ##   in Loop: Header=BB0_59 Depth=2
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_65
## BB#61:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	je	LBB0_63
## BB#62:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$117, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_63:
	jmp	LBB0_64
LBB0_64:
	jmp	LBB0_93
LBB0_65:                                ##   in Loop: Header=BB0_59 Depth=2
	jmp	LBB0_66
LBB0_66:                                ##   in Loop: Header=BB0_59 Depth=2
	movl	$8, %eax
	movzbl	_m(%rip), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m(%rip), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	andb	$1, %dl
	movb	%dl, _m+44(%rip)
	movzbl	_m(%rip), %eax
	andl	$8, %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	je	LBB0_68
## BB#67:                               ##   in Loop: Header=BB0_59 Depth=2
	jmp	LBB0_59
LBB0_68:                                ##   in Loop: Header=BB0_48 Depth=1
	movl	_m+8(%rip), %eax
	subl	$1, %eax
	movl	%eax, _m+8(%rip)
	cmpl	$0, _m+8(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_70
## BB#69:                               ##   in Loop: Header=BB0_48 Depth=1
	jmp	LBB0_48
LBB0_70:
	movl	$16, %edi
	movw	$3, _m(%rip)
	callq	_asm2C_INT
	testb	$1, _m+49(%rip)
	je	LBB0_77
## BB#71:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_76
## BB#72:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -280(%rbp)        ## 8-byte Spill
	je	LBB0_74
## BB#73:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$122, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_74:
	jmp	LBB0_75
LBB0_75:
	jmp	LBB0_93
LBB0_76:
	jmp	LBB0_77
LBB0_77:
	movl	$1, _m+20(%rip)
	movl	$2, _m+16(%rip)
	movl	_m(%rip), %eax
	xorl	_m(%rip), %eax
	movl	%eax, _m(%rip)
	cmpl	$0, _m(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
## BB#78:
	movl	$33, %edi
	movb	$76, _m+1(%rip)
	callq	_asm2C_INT
	testb	$1, _m+49(%rip)
	je	LBB0_85
## BB#79:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_84
## BB#80:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$6204, %rdi             ## imm = 0x183C
	movslq	_m+6200(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	je	LBB0_82
## BB#81:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$131, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_82:
	jmp	LBB0_83
LBB0_83:
	jmp	LBB0_93
LBB0_84:
	jmp	LBB0_85
LBB0_85:
	jmp	LBB0_86
LBB0_86:
	leaq	_m(%rip), %rax
	movl	$32, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movq	%rax, %rsi
	addq	$6204, %rsi             ## imm = 0x183C
	movslq	_m+6200(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	___memcpy_chk
	movslq	_m+6200(%rip), %rcx
	addq	$32, %rcx
	movl	%ecx, %r8d
	movl	%r8d, _m+6200(%rip)
	movslq	_m+6200(%rip), %rcx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	je	LBB0_88
## BB#87:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$134, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_88:
	jmp	LBB0_89
LBB0_89:
	movl	$52, _m+16(%rip)
	movw	$968, _m+12(%rip)       ## imm = 0x3C8
	movzbl	_m(%rip), %eax
	movzbl	_m(%rip), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, _m(%rip)
	movzbl	_m(%rip), %eax
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m(%rip), %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	movw	_m+12(%rip), %si
	movzbl	_m(%rip), %eax
	movswl	%si, %edi
	movl	%eax, %esi
	callq	_asm2C_OUT
	movw	$969, _m+12(%rip)       ## imm = 0x3C9
	movw	$768, _m+8(%rip)        ## imm = 0x300
LBB0_90:                                ## =>This Inner Loop Header: Depth=1
	leaq	_m(%rip), %rax
	movl	_m+16(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	5688(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	movb	(%rsi,%rax), %dil
	movb	%dil, _m(%rip)
	movl	_m+16(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+16(%rip)
	movw	_m+12(%rip), %r8w
	movzbl	_m(%rip), %esi
	movswl	%r8w, %edi
	callq	_asm2C_OUT
	movzwl	_m+8(%rip), %ecx
	subl	$1, %ecx
	movw	%cx, %r8w
	movw	%r8w, _m+8(%rip)
	movzwl	_m+8(%rip), %ecx
	cmpl	$0, %ecx
	sete	%r9b
	andb	$1, %r9b
	movb	%r9b, _m+45(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_92
## BB#91:                               ##   in Loop: Header=BB0_90 Depth=1
	jmp	LBB0_90
LBB0_92:
	xorl	%esi, %esi
	leaq	-160(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	movq	%rdi, %r8
	addq	$6204, %r8              ## imm = 0x183C
	movslq	_m+6200(%rip), %r9
	subq	$32, %r9
	movl	%r9d, %ecx
	movl	%ecx, _m+6200(%rip)
	movslq	_m+6200(%rip), %r9
	movq	6204(%rdi,%r9,4), %r10
	movq	%r10, _m(%rip)
	movq	6212(%rdi,%r9,4), %r10
	movq	%r10, _m+8(%rip)
	movq	6220(%rdi,%r9,4), %r10
	movq	%r10, _m+16(%rip)
	movq	6228(%rdi,%r9,4), %rdi
	movq	%rdi, _m+24(%rip)
	movslq	_m+6200(%rip), %rdi
	subq	$148, %rdi
	movl	%edi, %ecx
	movl	%ecx, _m+6200(%rip)
	movq	%rax, %rdi
	movslq	_m+6200(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %r8
	movl	%esi, -300(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -312(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-312(%rbp), %rdi        ## 8-byte Reload
	movl	-300(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_93:
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
	movl	%edx, -316(%rbp)        ## 4-byte Spill
	jne	LBB0_95
## BB#94:
	movl	-316(%rbp), %eax        ## 4-byte Reload
	addq	$320, %rsp              ## imm = 0x140
	popq	%rbp
	retq
LBB0_95:
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
	movl	5688(%rax,%rdx,4), %ecx
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
	leaq	L_.str.56(%rip), %rdi
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
	cmpq	$0, _m+4408896(%rip)
	je	LBB1_14
## BB#13:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.57(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movq	_m+4408896(%rip), %r9
	movl	_m+12(%rip), %eax
	movl	%eax, %r10d
	movq	%rdi, %r11
	addq	%r10, %r11
	movzwl	_m+34(%rip), %eax
	movl	%eax, %r10d
	movl	5688(%rdi,%r10,4), %eax
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
	leaq	L_.str.58(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movl	_m+12(%rip), %eax
	movl	%eax, %r9d
	movq	%rdi, %r10
	addq	%r9, %r10
	movzwl	_m+34(%rip), %eax
	movl	%eax, %r9d
	movl	5688(%rdi,%r9,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r10
	movq	%r8, %rdi
	movq	%r10, %r8
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1136(%rbp)       ## 4-byte Spill
LBB1_15:
	leaq	L_.str.59(%rip), %rsi
	leaq	-1008(%rbp), %rdi
	callq	_fopen
	movq	%rax, _asm2C_INT.file(%rip)
	cmpq	$0, _asm2C_INT.file(%rip)
	je	LBB1_17
## BB#16:
	movl	$1, _m(%rip)
	jmp	LBB1_18
LBB1_17:
	leaq	L_.str.60(%rip), %rdi
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
	leaq	L_.str.61(%rip), %rdi
	movb	$1, _m+44(%rip)
	callq	_perror
	leaq	L_.str.62(%rip), %rdi
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
	movl	5688(%rax,%rdx,4), %ecx
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
	leaq	L_.str.61(%rip), %rdi
	callq	_perror
	leaq	L_.str.63(%rip), %rdi
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
	leaq	L_.str.64(%rip), %rdi
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
	leaq	L_.str.65(%rip), %rdi
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
	movl	_m+5684(%rip), %eax
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	$128, %eax
	jb	LBB1_44
## BB#43:
	leaq	L_.str.66(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1196(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_44:
	movl	_m+5684(%rip), %eax
	movl	%eax, _m(%rip)
	movzwl	-1024(%rbp), %eax
	addl	_m+5684(%rip), %eax
	movl	%eax, _m+5684(%rip)
## BB#45:
	jmp	LBB1_61
LBB1_46:
	movl	_m+5684(%rip), %eax
	addl	$1, %eax
	cmpl	$128, %eax
	jb	LBB1_48
## BB#47:
	leaq	L_.str.66(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1200(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_48:
	leaq	_m(%rip), %rax
	movl	_m+5684(%rip), %ecx
	movl	%ecx, %edx
	movl	$4280896, 5688(%rax,%rdx,4) ## imm = 0x415240
	movl	_m+5684(%rip), %ecx
	movl	%ecx, _m(%rip)
	movl	_m+5684(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+5684(%rip)
	jmp	LBB1_61
LBB1_49:
	movzwl	-1022(%rbp), %eax
	cmpl	_m+5684(%rip), %eax
	jbe	LBB1_51
## BB#50:
	leaq	L_.str.67(%rip), %rdi
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
	movl	%ecx, 5688(%rax,%rsi,4)
	jmp	LBB1_61
LBB1_52:
	jmp	LBB1_61
LBB1_53:
	movzwl	-1022(%rbp), %eax
	shll	$16, %eax
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -1076(%rbp)
	movl	_m+22588(%rip), %eax
	addl	-1076(%rbp), %eax
	cmpl	$4194304, %eax          ## imm = 0x400000
	jb	LBB1_55
## BB#54:
	leaq	L_.str.68(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -1208(%rbp)       ## 4-byte Spill
	callq	_exit
LBB1_55:
	movl	_m+22588(%rip), %eax
	movl	%eax, %ecx
	addq	$22592, %rcx            ## imm = 0x5840
	movl	%ecx, %eax
	movl	%eax, -1080(%rbp)
	movl	-1076(%rbp), %eax
	addl	_m+22588(%rip), %eax
	movl	%eax, _m+22588(%rip)
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
	leaq	L_.str.69(%rip), %rdi
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

	.globl	_asm2C_IN
	.align	4, 0x90
_asm2C_IN:                              ## @asm2C_IN
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
	subq	$16, %rsp
	movw	%di, %ax
	movw	%ax, -4(%rbp)
	movzwl	%ax, %edi
	subl	$986, %edi              ## imm = 0x3DA
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	jne	LBB2_4
	jmp	LBB2_1
LBB2_1:
	testb	$1, _asm2C_IN.vblTick(%rip)
	je	LBB2_3
## BB#2:
	movb	$0, _asm2C_IN.vblTick(%rip)
	movb	$0, -1(%rbp)
	jmp	LBB2_5
LBB2_3:
	movb	$1, _asm2C_IN.vblTick(%rip)
	movb	$1, _m+49(%rip)
	movb	$8, -1(%rbp)
	jmp	LBB2_5
LBB2_4:
	leaq	L_.str.55(%rip), %rdi
	movswl	-4(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movb	$0, -1(%rbp)
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB2_5:
	movsbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_OUT
	.align	4, 0x90
_asm2C_OUT:                             ## @asm2C_OUT
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
	subq	$32, %rsp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %esi
	movl	%esi, %edi
	subl	$968, %edi              ## imm = 0x3C8
	movl	%esi, -12(%rbp)         ## 4-byte Spill
	movl	%edi, -16(%rbp)         ## 4-byte Spill
	je	LBB3_1
	jmp	LBB3_8
LBB3_8:
	movl	-12(%rbp), %eax         ## 4-byte Reload
	subl	$969, %eax              ## imm = 0x3C9
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	je	LBB3_2
	jmp	LBB3_6
LBB3_1:
	movl	-8(%rbp), %eax
	movl	%eax, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB3_7
LBB3_2:
	cmpl	$768, _asm2C_OUT.indexPalette(%rip) ## imm = 0x300
	jge	LBB3_4
## BB#3:
	leaq	_m(%rip), %rax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movslq	_asm2C_OUT.indexPalette(%rip), %rsi
	movb	%dl, 4916(%rax,%rsi)
	movl	_asm2C_OUT.indexPalette(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB3_5
LBB3_4:
	leaq	L_.str.53(%rip), %rdi
	movl	_asm2C_OUT.indexPalette(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB3_5:
	jmp	LBB3_7
LBB3_6:
	leaq	L_.str.54(%rip), %rdi
	movswl	-2(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB3_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_printOffsets
	.align	4, 0x90
_asm2C_printOffsets:                    ## @asm2C_printOffsets
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
	subq	$224, %rsp
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
	movl	$68, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.6(%rip), %rsi
	movl	$84, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.7(%rip), %rsi
	movl	$100, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.8(%rip), %rsi
	movl	$116, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.9(%rip), %rsi
	movl	$132, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.10(%rip), %rsi
	movl	$148, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.11(%rip), %rsi
	movl	$164, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.12(%rip), %rsi
	movl	$180, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.13(%rip), %rsi
	movl	$196, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.14(%rip), %rsi
	movl	$212, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.15(%rip), %rsi
	movl	$228, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.16(%rip), %rsi
	movl	$244, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.17(%rip), %rsi
	movl	$260, %ecx              ## imm = 0x104
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.18(%rip), %rsi
	movl	$276, %ecx              ## imm = 0x114
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.19(%rip), %rsi
	movl	$292, %ecx              ## imm = 0x124
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.20(%rip), %rsi
	movl	$308, %ecx              ## imm = 0x134
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.21(%rip), %rsi
	movl	$324, %ecx              ## imm = 0x144
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.22(%rip), %rsi
	movl	$340, %ecx              ## imm = 0x154
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.23(%rip), %rsi
	movl	$356, %ecx              ## imm = 0x164
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.24(%rip), %rsi
	movl	$372, %ecx              ## imm = 0x174
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.25(%rip), %rsi
	movl	$388, %ecx              ## imm = 0x184
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.26(%rip), %rsi
	movl	$404, %ecx              ## imm = 0x194
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.27(%rip), %rsi
	movl	$420, %ecx              ## imm = 0x1A4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.28(%rip), %rsi
	movl	$436, %ecx              ## imm = 0x1B4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.29(%rip), %rsi
	movl	$452, %ecx              ## imm = 0x1C4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.30(%rip), %rsi
	movl	$468, %ecx              ## imm = 0x1D4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.31(%rip), %rsi
	movl	$484, %ecx              ## imm = 0x1E4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.32(%rip), %rsi
	movl	$500, %ecx              ## imm = 0x1F4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -128(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.33(%rip), %rsi
	movl	$516, %ecx              ## imm = 0x204
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.34(%rip), %rsi
	movl	$532, %ecx              ## imm = 0x214
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -136(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.35(%rip), %rsi
	movl	$548, %ecx              ## imm = 0x224
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -140(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.36(%rip), %rsi
	movl	$564, %ecx              ## imm = 0x234
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -144(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.37(%rip), %rsi
	movl	$580, %ecx              ## imm = 0x244
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -148(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.38(%rip), %rsi
	movl	$596, %ecx              ## imm = 0x254
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -152(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.39(%rip), %rsi
	movl	$612, %ecx              ## imm = 0x264
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -156(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.40(%rip), %rsi
	movl	$628, %ecx              ## imm = 0x274
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -160(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.41(%rip), %rsi
	movl	$644, %ecx              ## imm = 0x284
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -164(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.42(%rip), %rsi
	movl	$660, %ecx              ## imm = 0x294
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -168(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.43(%rip), %rsi
	movl	$676, %ecx              ## imm = 0x2A4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -172(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.44(%rip), %rsi
	movl	$692, %ecx              ## imm = 0x2B4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -176(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.45(%rip), %rsi
	movl	$708, %ecx              ## imm = 0x2C4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -180(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.46(%rip), %rsi
	movl	$724, %ecx              ## imm = 0x2D4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -184(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.47(%rip), %rsi
	movl	$740, %ecx              ## imm = 0x2E4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -188(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.48(%rip), %rsi
	movl	$756, %ecx              ## imm = 0x2F4
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -192(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.49(%rip), %rsi
	movl	$772, %ecx              ## imm = 0x304
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -196(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.50(%rip), %rsi
	movl	$788, %ecx              ## imm = 0x314
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -200(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.51(%rip), %rsi
	movl	$804, %ecx              ## imm = 0x324
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -204(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.52(%rip), %rsi
	movl	$820, %ecx              ## imm = 0x334
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movl	%eax, -208(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -212(%rbp)        ## 4-byte Spill
	callq	_fclose
	movl	%eax, -216(%rbp)        ## 4-byte Spill
	addq	$224, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_checkIfVgaRamEmpty
	.align	4, 0x90
_checkIfVgaRamEmpty:                    ## @checkIfVgaRamEmpty
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
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$64000, -4(%rbp)        ## imm = 0xFA00
	jge	LBB5_6
## BB#2:                                ##   in Loop: Header=BB5_1 Depth=1
	leaq	_m(%rip), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 4280896(%rax,%rcx)
	je	LBB5_4
## BB#3:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	$0, -8(%rbp)
LBB5_4:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_5
LBB5_5:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB5_1
LBB5_6:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_stackDump
	.align	4, 0x90
_stackDump:                             ## @stackDump
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
	movl	5688(%rdi,%rcx,4), %eax
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
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
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
	jne	LBB7_2
## BB#1:
	jmp	LBB7_19
LBB7_2:
	cmpl	$0, -44(%rbp)
	jge	LBB7_4
## BB#3:
	jmp	LBB7_19
LBB7_4:
	movl	$0, -48(%rbp)
LBB7_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB7_16
## BB#6:                                ##   in Loop: Header=BB7_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB7_10
## BB#7:                                ##   in Loop: Header=BB7_5 Depth=1
	cmpl	$0, -48(%rbp)
	je	LBB7_9
## BB#8:                                ##   in Loop: Header=BB7_5 Depth=1
	jmp	LBB7_9
LBB7_9:                                 ##   in Loop: Header=BB7_5 Depth=1
	jmp	LBB7_10
LBB7_10:                                ##   in Loop: Header=BB7_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jl	LBB7_12
## BB#11:                               ##   in Loop: Header=BB7_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB7_13
LBB7_12:                                ##   in Loop: Header=BB7_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movb	$46, -32(%rbp,%rsi)
	jmp	LBB7_14
LBB7_13:                                ##   in Loop: Header=BB7_5 Depth=1
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
LBB7_14:                                ##   in Loop: Header=BB7_5 Depth=1
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
## BB#15:                               ##   in Loop: Header=BB7_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB7_5
LBB7_16:
	jmp	LBB7_17
LBB7_17:                                ## =>This Inner Loop Header: Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB7_19
## BB#18:                               ##   in Loop: Header=BB7_17 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB7_17
LBB7_19:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB7_21
## BB#20:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB7_21:
	callq	___stack_chk_fail
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
	.align	3
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
	.ascii	"\000\000\000\000\000\025\000\000*\000\000?\t\000\000\t"
	.asciz	"\000\025\t\000*\t\000?\022\000\000\022\000\025\022"
	.ascii	"*\022\000?\033\000\000\033\000\025\033\000*\033\000?"
	.ascii	"$\000\000$\000\025$\000*$\000?-\000\000-"
	.asciz	"\000\025-\000*-\000?6\000\0006\000\0256"
	.ascii	"*6\000??\000\000?\000\025?\000*?\000?"
	.ascii	"\000\t\000\000\t\025\000\t*\000\t?\t\t\000\t"
	.ascii	"\t\025\t\t*\t\t?\022\t\000\022\t\025\022\t"
	.ascii	"*\022\t?\033\t\000\033\t\025\033\t*\033\t?"
	.ascii	"$\t\000$\t\025$\t*$\t?-\t\000-"
	.ascii	"\t\025-\t*-\t?6\t\0006\t\0256\t"
	.ascii	"*6\t??\t\000?\t\025?\t*?\t?"
	.ascii	"\000\022\000\000\022\025\000\022*\000\022?\t\022\000\t"
	.ascii	"\022\025\t\022*\t\022?\022\022\000\022\022\025\022\022"
	.ascii	"*\022\022?\033\022\000\033\022\025\033\022*\033\022?"
	.ascii	"$\022\000$\022\025$\022*$\022?-\022\000-"
	.ascii	"\022\025-\022*-\022?6\022\0006\022\0256\022"
	.ascii	"*6\022??\022\000?\022\025?\022*?\022?"
	.ascii	"\000\033\000\000\033\025\000\033*\000\033?\t\033\000\t"
	.ascii	"\033\025\t\033*\t\033?\022\033\000\022\033\025\022\033"
	.ascii	"*\022\033?\033\033\000\033\033\025\033\033*\033\033?"
	.ascii	"$\033\000$\033\025$\033*$\033?-\033\000-"
	.ascii	"\033\025-\033*-\033?6\033\0006\033\0256\033"
	.ascii	"*6\033??\033\000?\033\025?\033*?\033?"
	.ascii	"\000$\000\000$\025\000$*\000$?\t$\000\t"
	.ascii	"$\025\t$*\t$?\022$\000\022$\025\022$"
	.ascii	"*\022$?\033$\000\033$\025\033$*\033$?"
	.ascii	"$$\000$$\025$$*$$?-$\000-"
	.ascii	"$\025-$*-$?6$\0006$\0256$"
	.ascii	"*6$??$\000?$\025?$*?$?"
	.ascii	"\000-\000\000-\025\000-*\000-?\t-\000\t"
	.ascii	"-\025\t-*\t-?\022-\000\022-\025\022-"
	.ascii	"*\022-?\033-\000\033-\025\033-*\033-?"
	.ascii	"$-\000$-\025$-*$-?--\000-"
	.ascii	"-\025--*--?6-\0006-\0256-"
	.ascii	"*6-??-\000?-\025?-*?-?"
	.ascii	"\0006\000\0006\025\0006*\0006?\t6\000\t"
	.ascii	"6\025\t6*\t6?\0226\000\0226\025\0226"
	.ascii	"*\0226?\0336\000\0336\025\0336*\0336?"
	.ascii	"$6\000$6\025$6*$6?-6\000-"
	.ascii	"6\025-6*-6?66\00066\02566"
	.ascii	"*66??6\000?6\025?6*?6?"
	.ascii	"\000?\000\000?\025\000?*\000??\t?\000\t"
	.ascii	"?\025\t?*\t??\022?\000\022?\025\022?"
	.ascii	"*\022??\033?\000\033?\025\033?*\033??"
	.ascii	"$?\000$?\025$?*$??-?\000-"
	.ascii	"?\025-?*-??6?\0006?\0256?"
	.ascii	"*6????\000??\025??*???"
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
	.asciz	"vbl.c"

L_.str.1:                               ## @.str.1
	.asciz	"m.stackPointer<STACK_SIZE"

L_.str.2:                               ## @.str.2
	.asciz	"./memoryMap.log"

L_.str.3:                               ## @.str.3
	.asciz	"w"

L_.str.4:                               ## @.str.4
	.asciz	"xox %x (from beg RW) %x:pal_jeu\n"

L_.str.5:                               ## @.str.5
	.asciz	"xox %x (from beg RW) %x:dummy1\n"

L_.str.6:                               ## @.str.6
	.asciz	"xox %x (from beg RW) %x:dummy2\n"

L_.str.7:                               ## @.str.7
	.asciz	"xox %x (from beg RW) %x:dummy3\n"

L_.str.8:                               ## @.str.8
	.asciz	"xox %x (from beg RW) %x:dummy4\n"

L_.str.9:                               ## @.str.9
	.asciz	"xox %x (from beg RW) %x:dummy5\n"

L_.str.10:                              ## @.str.10
	.asciz	"xox %x (from beg RW) %x:dummy6\n"

L_.str.11:                              ## @.str.11
	.asciz	"xox %x (from beg RW) %x:dummy7\n"

L_.str.12:                              ## @.str.12
	.asciz	"xox %x (from beg RW) %x:dummy8\n"

L_.str.13:                              ## @.str.13
	.asciz	"xox %x (from beg RW) %x:dummy9\n"

L_.str.14:                              ## @.str.14
	.asciz	"xox %x (from beg RW) %x:dummy10\n"

L_.str.15:                              ## @.str.15
	.asciz	"xox %x (from beg RW) %x:dummy11\n"

L_.str.16:                              ## @.str.16
	.asciz	"xox %x (from beg RW) %x:dummy12\n"

L_.str.17:                              ## @.str.17
	.asciz	"xox %x (from beg RW) %x:dummy13\n"

L_.str.18:                              ## @.str.18
	.asciz	"xox %x (from beg RW) %x:dummy14\n"

L_.str.19:                              ## @.str.19
	.asciz	"xox %x (from beg RW) %x:dummy15\n"

L_.str.20:                              ## @.str.20
	.asciz	"xox %x (from beg RW) %x:dummy16\n"

L_.str.21:                              ## @.str.21
	.asciz	"xox %x (from beg RW) %x:dummy17\n"

L_.str.22:                              ## @.str.22
	.asciz	"xox %x (from beg RW) %x:dummy18\n"

L_.str.23:                              ## @.str.23
	.asciz	"xox %x (from beg RW) %x:dummy19\n"

L_.str.24:                              ## @.str.24
	.asciz	"xox %x (from beg RW) %x:dummy20\n"

L_.str.25:                              ## @.str.25
	.asciz	"xox %x (from beg RW) %x:dummy21\n"

L_.str.26:                              ## @.str.26
	.asciz	"xox %x (from beg RW) %x:dummy22\n"

L_.str.27:                              ## @.str.27
	.asciz	"xox %x (from beg RW) %x:dummy23\n"

L_.str.28:                              ## @.str.28
	.asciz	"xox %x (from beg RW) %x:dummy24\n"

L_.str.29:                              ## @.str.29
	.asciz	"xox %x (from beg RW) %x:dummy25\n"

L_.str.30:                              ## @.str.30
	.asciz	"xox %x (from beg RW) %x:dummy26\n"

L_.str.31:                              ## @.str.31
	.asciz	"xox %x (from beg RW) %x:dummy27\n"

L_.str.32:                              ## @.str.32
	.asciz	"xox %x (from beg RW) %x:dummy28\n"

L_.str.33:                              ## @.str.33
	.asciz	"xox %x (from beg RW) %x:dummy29\n"

L_.str.34:                              ## @.str.34
	.asciz	"xox %x (from beg RW) %x:dummy30\n"

L_.str.35:                              ## @.str.35
	.asciz	"xox %x (from beg RW) %x:dummy31\n"

L_.str.36:                              ## @.str.36
	.asciz	"xox %x (from beg RW) %x:dummy32\n"

L_.str.37:                              ## @.str.37
	.asciz	"xox %x (from beg RW) %x:dummy33\n"

L_.str.38:                              ## @.str.38
	.asciz	"xox %x (from beg RW) %x:dummy34\n"

L_.str.39:                              ## @.str.39
	.asciz	"xox %x (from beg RW) %x:dummy35\n"

L_.str.40:                              ## @.str.40
	.asciz	"xox %x (from beg RW) %x:dummy36\n"

L_.str.41:                              ## @.str.41
	.asciz	"xox %x (from beg RW) %x:dummy37\n"

L_.str.42:                              ## @.str.42
	.asciz	"xox %x (from beg RW) %x:dummy38\n"

L_.str.43:                              ## @.str.43
	.asciz	"xox %x (from beg RW) %x:dummy39\n"

L_.str.44:                              ## @.str.44
	.asciz	"xox %x (from beg RW) %x:dummy40\n"

L_.str.45:                              ## @.str.45
	.asciz	"xox %x (from beg RW) %x:dummy41\n"

L_.str.46:                              ## @.str.46
	.asciz	"xox %x (from beg RW) %x:dummy42\n"

L_.str.47:                              ## @.str.47
	.asciz	"xox %x (from beg RW) %x:dummy43\n"

L_.str.48:                              ## @.str.48
	.asciz	"xox %x (from beg RW) %x:dummy44\n"

L_.str.49:                              ## @.str.49
	.asciz	"xox %x (from beg RW) %x:dummy45\n"

L_.str.50:                              ## @.str.50
	.asciz	"xox %x (from beg RW) %x:dummy46\n"

L_.str.51:                              ## @.str.51
	.asciz	"xox %x (from beg RW) %x:dummy47\n"

L_.str.52:                              ## @.str.52
	.asciz	"xox %x (from beg RW) %x:dummy48\n"

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.53:                              ## @.str.53
	.asciz	"error: indexPalette>767 %d\n"

L_.str.54:                              ## @.str.54
	.asciz	"unknown OUT %d,%d\n"

	.section	__DATA,__data
_asm2C_IN.vblTick:                      ## @asm2C_IN.vblTick
	.byte	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str.55:                              ## @.str.55
	.asciz	"Unknown IN %d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,8,3 ## @asm2C_INT.file
L_.str.56:                              ## @.str.56
	.asciz	"%c"

L_.str.57:                              ## @.str.57
	.asciz	"%s/%s"

L_.str.58:                              ## @.str.58
	.asciz	"%s"

L_.str.59:                              ## @.str.59
	.asciz	"rb"

L_.str.60:                              ## @.str.60
	.asciz	"Error opening file %s\n"

L_.str.61:                              ## @.str.61
	.asciz	"Error"

L_.str.62:                              ## @.str.62
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.63:                              ## @.str.63
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.64:                              ## @.str.64
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.65:                              ## @.str.65
	.asciz	"Error seeking\n"

L_.str.66:                              ## @.str.66
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.67:                              ## @.str.67
	.asciz	"Error: selector number doesnt exist\n"

L_.str.68:                              ## @.str.68
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.69:                              ## @.str.69
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


.subsections_via_symbols
