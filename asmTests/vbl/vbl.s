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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp              ## imm = 0x160
Ltmp3:
	.cfi_offset %rbx, -48
Ltmp4:
	.cfi_offset %r12, -40
Ltmp5:
	.cfi_offset %r14, -32
Ltmp6:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	testb	$1, _m+4914(%rip)
	je	LBB0_2
## BB#1:
	jmp	LBB0_63
LBB0_2:
	testb	$1, _m+4913(%rip)
	je	LBB0_4
## BB#3:
	xorl	%esi, %esi
	leaq	-192(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movb	$0, _m+4913(%rip)
	movslq	_m+5684(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+5684(%rip)
	movq	%rax, %r8
	movslq	_m+5684(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rdi
	movq	%rdi, -224(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-224(%rbp), %r8         ## 8-byte Reload
	movl	%esi, -228(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-240(%rbp), %rdi        ## 8-byte Reload
	movl	-228(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_4:
	movl	$16, %edi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r8
	movw	$19, 4864(%rax,%r8)
	callq	_asm2C_INT
	testb	$1, _m+4913(%rip)
	je	LBB0_8
## BB#5:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_7
## BB#6:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_7:
	jmp	LBB0_8
LBB0_8:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_10
## BB#9:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	jmp	LBB0_59
LBB0_10:
	movl	$49, %edi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	$40960, _m+4868(%rip)   ## imm = 0xA000
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r8
	movw	$2, 4864(%rax,%r8)
	callq	_asm2C_INT
	testb	$1, _m+4913(%rip)
	je	LBB0_14
## BB#11:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_13
## BB#12:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_13:
	jmp	LBB0_14
LBB0_14:
	leaq	_m(%rip), %rax
	xorl	%ecx, %ecx
	movl	$2, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%ecx, %edx
	movslq	%edx, %rdi
	movw	4864(%rax,%rdi), %r8w
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%ecx, %ecx
	movslq	%ecx, %rdi
	movw	%r8w, 4900(%rax,%rdi)
	movl	_m+4884(%rip), %ecx
	xorl	_m+4884(%rip), %ecx
	movl	%ecx, _m+4884(%rip)
	cmpl	$0, _m+4884(%rip)
	sete	%sil
	andb	$1, %sil
	movb	%sil, _m+4909(%rip)
	movl	_m+4884(%rip), %ecx
	shrl	$31, %ecx
	cmpl	$0, %ecx
	setne	%sil
	andb	$1, %sil
	movb	%sil, _m+4911(%rip)
	movl	$2007695104, _m+4864(%rip) ## imm = 0x77AAFF00
	movl	$16000, _m+4872(%rip)   ## imm = 0x3E80
	movl	$0, -212(%rbp)
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	movl	-212(%rbp), %eax
	cmpl	_m+4872(%rip), %eax
	jae	LBB0_18
## BB#16:                               ##   in Loop: Header=BB0_15 Depth=1
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	addq	$4864, %rcx             ## imm = 0x1300
	movl	$4, %edx
                                        ## 
	movq	$-1, %rsi
	movl	_m+4884(%rip), %edi
	movl	%edi, %r8d
	movq	%rax, %r9
	addq	%r8, %r9
	movzwl	_m+4900(%rip), %edi
	movl	%edi, %r8d
	movl	22076(%rax,%r8,4), %edi
	movl	%edi, %eax
	addq	%rax, %r9
	movq	%r9, %rdi
	movq	%rsi, -272(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-272(%rbp), %rcx        ## 8-byte Reload
	callq	___memcpy_chk
	movl	_m+4884(%rip), %r10d
	addl	$4, %r10d
	movl	%r10d, _m+4884(%rip)
	movq	%rax, -280(%rbp)        ## 8-byte Spill
## BB#17:                               ##   in Loop: Header=BB0_15 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	LBB0_15
LBB0_18:
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movzwl	_m+4900(%rip), %esi
	movl	%esi, %edi
	movl	22076(%rax,%rdi,4), %esi
	movl	%esi, %edi
	movl	$2007695104, 6560(%rax,%rdi) ## imm = 0x77AAFF00
	movzwl	_m+4900(%rip), %esi
	movl	%esi, %edi
	movl	22076(%rax,%rdi,4), %esi
	movl	%esi, %edi
	movl	$2007695104, (%rax,%rdi) ## imm = 0x77AAFF00
	movb	_m+4912(%rip), %r8b
	testb	$1, %r8b
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movw	$986, 4876(%rax,%rdi)   ## imm = 0x3DA
LBB0_19:                                ## =>This Inner Loop Header: Depth=1
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movswl	4876(%rax,%rdi), %edi
	callq	_asm2C_IN
	leaq	_m(%rip), %r8
	movl	$3, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movb	%al, 4864(%r8,%r9)
	testb	$1, _m+4913(%rip)
	je	LBB0_23
## BB#20:                               ##   in Loop: Header=BB0_19 Depth=1
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_22
## BB#21:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_22:                                ##   in Loop: Header=BB0_19 Depth=1
	jmp	LBB0_23
LBB0_23:                                ##   in Loop: Header=BB0_19 Depth=1
	leaq	_m(%rip), %rax
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	$8, %esi
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	andl	$8, %r8d
	cmpl	$0, %r8d
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4909(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	cmpl	%r8d, %esi
	setl	%dil
	andb	$1, %dil
	movb	%dil, _m+4908(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzbl	4864(%rax,%r9), %ecx
	andl	$8, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+4911(%rip)
	testb	$1, _m+4909(%rip)
	jne	LBB0_25
## BB#24:                               ##   in Loop: Header=BB0_19 Depth=1
	jmp	LBB0_19
LBB0_25:
	jmp	LBB0_26
LBB0_26:                                ## =>This Inner Loop Header: Depth=1
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movswl	4876(%rax,%rdi), %edi
	callq	_asm2C_IN
	leaq	_m(%rip), %r8
	movl	$3, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movb	%al, 4864(%r8,%r9)
	testb	$1, _m+4913(%rip)
	je	LBB0_30
## BB#27:                               ##   in Loop: Header=BB0_26 Depth=1
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_29
## BB#28:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_29:                                ##   in Loop: Header=BB0_26 Depth=1
	jmp	LBB0_30
LBB0_30:                                ##   in Loop: Header=BB0_26 Depth=1
	leaq	_m(%rip), %rax
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	$8, %esi
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	andl	$8, %r8d
	cmpl	$0, %r8d
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4909(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	cmpl	%r8d, %esi
	setl	%dil
	andb	$1, %dil
	movb	%dil, _m+4908(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzbl	4864(%rax,%r9), %ecx
	andl	$8, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+4911(%rip)
	testb	$1, _m+4909(%rip)
	je	LBB0_32
## BB#31:                               ##   in Loop: Header=BB0_26 Depth=1
	jmp	LBB0_26
LBB0_32:
	leaq	_m(%rip), %rax
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	$2, %esi
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%esi, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movw	$968, 4876(%rax,%r9)    ## imm = 0x3C8
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movb	$0, 4864(%rax,%r9)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	cmovnel	%edx, %esi
	movslq	%esi, %r9
	movw	4876(%rax,%r9), %r10w
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzbl	4864(%rax,%r9), %esi
	movswl	%r10w, %edi
	callq	_asm2C_OUT
	movl	$60, _m+4872(%rip)
LBB0_33:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_34 Depth 2
                                        ##     Child Loop BB0_41 Depth 2
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movw	$986, 4876(%rax,%rdi)   ## imm = 0x3DA
LBB0_34:                                ##   Parent Loop BB0_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movswl	4876(%rax,%rdi), %edi
	callq	_asm2C_IN
	leaq	_m(%rip), %r8
	movl	$3, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movb	%al, 4864(%r8,%r9)
	testb	$1, _m+4913(%rip)
	je	LBB0_38
## BB#35:                               ##   in Loop: Header=BB0_34 Depth=2
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_37
## BB#36:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_37:                                ##   in Loop: Header=BB0_34 Depth=2
	jmp	LBB0_38
LBB0_38:                                ##   in Loop: Header=BB0_34 Depth=2
	leaq	_m(%rip), %rax
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	$8, %esi
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	andl	$8, %r8d
	cmpl	$0, %r8d
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4909(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	cmpl	%r8d, %esi
	setl	%dil
	andb	$1, %dil
	movb	%dil, _m+4908(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzbl	4864(%rax,%r9), %ecx
	andl	$8, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+4911(%rip)
	testb	$1, _m+4909(%rip)
	jne	LBB0_40
## BB#39:                               ##   in Loop: Header=BB0_34 Depth=2
	jmp	LBB0_34
LBB0_40:                                ##   in Loop: Header=BB0_33 Depth=1
	jmp	LBB0_41
LBB0_41:                                ##   Parent Loop BB0_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movswl	4876(%rax,%rdi), %edi
	callq	_asm2C_IN
	leaq	_m(%rip), %r8
	movl	$3, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movb	%al, 4864(%r8,%r9)
	testb	$1, _m+4913(%rip)
	je	LBB0_45
## BB#42:                               ##   in Loop: Header=BB0_41 Depth=2
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_44
## BB#43:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -312(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_44:                                ##   in Loop: Header=BB0_41 Depth=2
	jmp	LBB0_45
LBB0_45:                                ##   in Loop: Header=BB0_41 Depth=2
	leaq	_m(%rip), %rax
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	$8, %esi
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	andl	$8, %r8d
	cmpl	$0, %r8d
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+4909(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzbl	4864(%rax,%r9), %r8d
	cmpl	%r8d, %esi
	setl	%dil
	andb	$1, %dil
	movb	%dil, _m+4908(%rip)
	movb	_m+4912(%rip), %dil
	testb	$1, %dil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzbl	4864(%rax,%r9), %ecx
	andl	$8, %ecx
	sarl	$7, %ecx
	cmpl	$0, %ecx
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+4911(%rip)
	testb	$1, _m+4909(%rip)
	je	LBB0_47
## BB#46:                               ##   in Loop: Header=BB0_41 Depth=2
	jmp	LBB0_41
LBB0_47:                                ##   in Loop: Header=BB0_33 Depth=1
	movl	_m+4872(%rip), %eax
	subl	$1, %eax
	movl	%eax, _m+4872(%rip)
	cmpl	$0, _m+4872(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+4909(%rip)
	testb	$1, _m+4909(%rip)
	jne	LBB0_49
## BB#48:                               ##   in Loop: Header=BB0_33 Depth=1
	jmp	LBB0_33
LBB0_49:
	movl	$16, %edi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r8
	movw	$3, 4864(%rax,%r8)
	callq	_asm2C_INT
	testb	$1, _m+4913(%rip)
	je	LBB0_53
## BB#50:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_52
## BB#51:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -320(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_52:
	jmp	LBB0_53
LBB0_53:
	movl	$1, _m+4884(%rip)
	movl	$2, _m+4880(%rip)
	movl	_m+4864(%rip), %eax
	xorl	_m+4864(%rip), %eax
	movl	%eax, _m+4864(%rip)
	cmpl	$0, _m+4864(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+4909(%rip)
	movl	_m+4864(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+4911(%rip)
## BB#54:
	movl	$33, %edi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r8
	movb	$76, 4864(%rax,%r8)
	callq	_asm2C_INT
	testb	$1, _m+4913(%rip)
	je	LBB0_58
## BB#55:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_57
## BB#56:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5688, %rdi             ## imm = 0x1638
	movslq	_m+5684(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+5684(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5684(%rip)
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	jmp	LBB0_63
LBB0_57:
	jmp	LBB0_58
LBB0_58:
	jmp	LBB0_59
LBB0_59:
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	addq	$4864, %rcx             ## imm = 0x1300
	movl	$32, %edx
                                        ## 
	movq	$-1, %rsi
	addq	$5688, %rax             ## imm = 0x1638
	movslq	_m+5684(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rsi, -336(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-336(%rbp), %rcx        ## 8-byte Reload
	callq	___memcpy_chk
	leaq	_m(%rip), %rcx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	movl	$2, %r10d
	movslq	_m+5684(%rip), %rdx
	addq	$32, %rdx
	movl	%edx, %r11d
	movl	%r11d, _m+5684(%rip)
	movl	$0, _m+4880(%rip)
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	movl	%r10d, %r11d
	cmovnel	%r9d, %r11d
	movslq	%r11d, %rdx
	movw	$968, 4876(%rcx,%rdx)   ## imm = 0x3C8
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	movl	%r8d, %r11d
	cmovnel	%r9d, %r11d
	movslq	%r11d, %rdx
	movzbl	4864(%rcx,%rdx), %r11d
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	movl	%r8d, %r14d
	cmovnel	%r9d, %r14d
	movslq	%r14d, %rdx
	movzbl	4864(%rcx,%rdx), %r14d
	xorl	%r14d, %r11d
	movb	%r11b, %bl
	movb	_m+4912(%rip), %r15b
	testb	$1, %r15b
	movl	%r8d, %r11d
	cmovnel	%r9d, %r11d
	movslq	%r11d, %rdx
	movb	%bl, 4864(%rcx,%rdx)
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	movl	%r8d, %r11d
	cmovnel	%r9d, %r11d
	movslq	%r11d, %rdx
	movzbl	4864(%rcx,%rdx), %r11d
	cmpl	$0, %r11d
	sete	%bl
	andb	$1, %bl
	movb	%bl, _m+4909(%rip)
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	movl	%r8d, %r11d
	cmovnel	%r9d, %r11d
	movslq	%r11d, %rdx
	movzbl	4864(%rcx,%rdx), %r11d
	sarl	$7, %r11d
	cmpl	$0, %r11d
	setne	%bl
	andb	$1, %bl
	movb	%bl, _m+4911(%rip)
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	cmovnel	%r9d, %r10d
	movslq	%r10d, %rdx
	movw	4876(%rcx,%rdx), %r12w
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	cmovnel	%r9d, %r8d
	movslq	%r8d, %rdx
	movzbl	4864(%rcx,%rdx), %esi
	movswl	%r12w, %edi
	movq	%rax, -344(%rbp)        ## 8-byte Spill
	callq	_asm2C_OUT
	leaq	_m(%rip), %rax
	movl	$2, %esi
	xorl	%edi, %edi
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	movl	%esi, %r8d
	cmovnel	%edi, %r8d
	movslq	%r8d, %rcx
	movw	$969, 4876(%rax,%rcx)   ## imm = 0x3C9
	movb	_m+4912(%rip), %bl
	testb	$1, %bl
	cmovnel	%edi, %esi
	movslq	%esi, %rcx
	movw	$768, 4872(%rax,%rcx)   ## imm = 0x300
LBB0_60:                                ## =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$4864, %rdi             ## imm = 0x1300
	movl	$3, %eax
	xorl	%r8d, %r8d
	movb	_m+4912(%rip), %r9b
	testb	$1, %r9b
	cmovnel	%r8d, %eax
	movslq	%eax, %r10
	addq	%r10, %rdi
	movl	_m+4880(%rip), %eax
	movl	%eax, %r10d
	movq	%rsi, %r11
	addq	%r10, %r11
	movzwl	_m+4898(%rip), %eax
	movl	%eax, %r10d
	movl	22076(%rsi,%r10,4), %eax
	movl	%eax, %esi
	addq	%rsi, %r11
	movq	%r11, %rsi
	callq	___memcpy_chk
	leaq	_m(%rip), %rcx
	movl	$3, %r8d
	xorl	%ebx, %ebx
	movl	$2, %r14d
	movl	_m+4880(%rip), %r15d
	addl	$1, %r15d
	movl	%r15d, _m+4880(%rip)
	movb	_m+4912(%rip), %r9b
	testb	$1, %r9b
	cmovnel	%ebx, %r14d
	movslq	%r14d, %rdx
	movw	4876(%rcx,%rdx), %r12w
	movb	_m+4912(%rip), %r9b
	testb	$1, %r9b
	cmovnel	%ebx, %r8d
	movslq	%r8d, %rdx
	movzbl	4864(%rcx,%rdx), %esi
	movswl	%r12w, %edi
	movq	%rax, -352(%rbp)        ## 8-byte Spill
	callq	_asm2C_OUT
	leaq	_m(%rip), %rax
	movl	$2, %esi
	xorl	%edi, %edi
	movb	_m+4912(%rip), %r9b
	testb	$1, %r9b
	movl	%esi, %r8d
	cmovnel	%edi, %r8d
	movslq	%r8d, %rcx
	movzwl	4872(%rax,%rcx), %r8d
	subl	$1, %r8d
	movw	%r8w, %r12w
	movb	_m+4912(%rip), %r9b
	testb	$1, %r9b
	movl	%esi, %r8d
	cmovnel	%edi, %r8d
	movslq	%r8d, %rcx
	movw	%r12w, 4872(%rax,%rcx)
	movb	_m+4912(%rip), %r9b
	testb	$1, %r9b
	cmovnel	%edi, %esi
	movslq	%esi, %rcx
	movzwl	4872(%rax,%rcx), %esi
	cmpl	$0, %esi
	sete	%r9b
	andb	$1, %r9b
	movb	%r9b, _m+4909(%rip)
	testb	$1, _m+4909(%rip)
	jne	LBB0_62
## BB#61:                               ##   in Loop: Header=BB0_60 Depth=1
	jmp	LBB0_60
LBB0_62:
	xorl	%esi, %esi
	leaq	-192(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	movq	%rdi, %r8
	addq	$5688, %r8              ## imm = 0x1638
	movslq	_m+5684(%rip), %r9
	subq	$32, %r9
	movl	%r9d, %ecx
	movl	%ecx, _m+5684(%rip)
	movslq	_m+5684(%rip), %r9
	movq	5688(%rdi,%r9,4), %r10
	movq	%r10, _m+4864(%rip)
	movq	5696(%rdi,%r9,4), %r10
	movq	%r10, _m+4872(%rip)
	movq	5704(%rdi,%r9,4), %r10
	movq	%r10, _m+4880(%rip)
	movq	5712(%rdi,%r9,4), %rdi
	movq	%rdi, _m+4888(%rip)
	movslq	_m+5684(%rip), %rdi
	subq	$148, %rdi
	movl	%edi, %ecx
	movl	%ecx, _m+5684(%rip)
	movq	%rax, %rdi
	movslq	_m+5684(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %r8
	movl	%esi, -356(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-368(%rbp), %rdi        ## 8-byte Reload
	movl	-356(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_63:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movb	_m+4914(%rip), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	movl	%edx, -372(%rbp)        ## 4-byte Spill
	jne	LBB0_65
## BB#64:
	movl	-372(%rbp), %eax        ## 4-byte Reload
	addq	$352, %rsp              ## imm = 0x160
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_65:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_INT
	.align	4, 0x90
_asm2C_INT:                             ## @asm2C_INT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$1312, %rsp             ## imm = 0x520
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1012(%rbp)
	leaq	_m(%rip), %rax
	movb	_m+4912(%rip), %cl
	andb	$1, %cl
	cmpb	$1, %cl
	movl	$1, %edi
	adcl	$0, %edi
	movl	%edi, %edx
	movb	4864(%rdx,%rax), %cl
	movb	%cl, -1017(%rbp)
	movb	_m+4912(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	leal	(%rdx,%rdx,2), %edi
	movl	%edi, %edx
	movb	4864(%rdx,%rax), %cl
	movb	%cl, -1018(%rbp)
	movb	_m+4912(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	4864(%rax,%rdx,2), %si
	movw	%si, -1020(%rbp)
	movb	_m+4912(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	4868(%rax,%rdx,2), %si
	movw	%si, -1022(%rbp)
	movb	_m+4912(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	4872(%rax,%rdx,2), %si
	movw	%si, -1024(%rbp)
	movb	_m+4912(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	4876(%rax,%rdx,2), %si
	movw	%si, -1026(%rbp)
	movb	$0, _m+4908(%rip)
	movzbl	-1017(%rbp), %esi
	movzbl	-1018(%rbp), %edx
	movzwl	-1020(%rbp), %ecx
	movzwl	-1022(%rbp), %r8d
	movzwl	-1024(%rbp), %r9d
	movzwl	-1026(%rbp), %edi
	movq	%rsp, %rax
	movl	%edi, (%rax)
	leaq	L_.str.39(%rip), %rdi
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	movb	%r11b, %al
	callq	_printf
	movl	-1012(%rbp), %ecx
	movl	%ecx, %edx
	subl	$16, %edx
	movl	%eax, -1088(%rbp)       ## 4-byte Spill
	movl	%ecx, -1092(%rbp)       ## 4-byte Spill
	movl	%edx, -1096(%rbp)       ## 4-byte Spill
	je	LBB1_1
	jmp	LBB1_64
LBB1_64:
	movl	-1092(%rbp), %eax       ## 4-byte Reload
	subl	$33, %eax
	movl	%eax, -1100(%rbp)       ## 4-byte Spill
	je	LBB1_5
	jmp	LBB1_65
LBB1_65:
	movl	-1092(%rbp), %eax       ## 4-byte Reload
	subl	$49, %eax
	movl	%eax, -1104(%rbp)       ## 4-byte Spill
	je	LBB1_41
	jmp	LBB1_59
LBB1_1:
	movzwl	-1020(%rbp), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -1108(%rbp)       ## 4-byte Spill
	movl	%ecx, -1112(%rbp)       ## 4-byte Spill
	je	LBB1_2
	jmp	LBB1_74
LBB1_74:
	movl	-1108(%rbp), %eax       ## 4-byte Reload
	subl	$19, %eax
	movl	%eax, -1116(%rbp)       ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_4
LBB1_2:
	leaq	L_.str.40(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1120(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_3:
	leaq	L_.str.41(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1124(%rbp)       ## 4-byte Spill
	callq	_stackDump
	jmp	LBB1_61
LBB1_4:
	jmp	LBB1_60
LBB1_5:
	movzbl	-1017(%rbp), %eax
	addl	$-9, %eax
	movl	%eax, %ecx
	subl	$67, %eax
	movq	%rcx, -1136(%rbp)       ## 8-byte Spill
	movl	%eax, -1140(%rbp)       ## 4-byte Spill
	ja	LBB1_39
## BB#66:
	leaq	LJTI1_0(%rip), %rax
	movq	-1136(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB1_6:
	leaq	_m(%rip), %rax
	movl	_m+4876(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4898(%rip), %ecx
	movl	%ecx, %edx
	movl	22076(%rax,%rdx,4), %ecx
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
	leaq	L_.str.42(%rip), %rdi
	movslq	-1016(%rbp), %rax
	movq	-1040(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1144(%rbp)       ## 4-byte Spill
## BB#9:                                ##   in Loop: Header=BB1_7 Depth=1
	movl	-1016(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1016(%rbp)
	jmp	LBB1_7
LBB1_10:
	jmp	LBB1_61
LBB1_11:
	movl	$512, _m+4876(%rip)     ## imm = 0x200
	jmp	LBB1_61
LBB1_12:
	cmpq	$0, _m+4408896(%rip)
	je	LBB1_14
## BB#13:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.43(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movq	_m+4408896(%rip), %r9
	movl	_m+4876(%rip), %eax
	movl	%eax, %r10d
	movq	%rdi, %r11
	addq	%r10, %r11
	movzwl	_m+4898(%rip), %eax
	movl	%eax, %r10d
	movl	22076(%rdi,%r10,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r11
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%r11, %r9
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1148(%rbp)       ## 4-byte Spill
	jmp	LBB1_15
LBB1_14:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.44(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movl	_m+4876(%rip), %eax
	movl	%eax, %r9d
	movq	%rdi, %r10
	addq	%r9, %r10
	movzwl	_m+4898(%rip), %eax
	movl	%eax, %r9d
	movl	22076(%rdi,%r9,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r10
	movq	%r8, %rdi
	movq	%r10, %r8
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1152(%rbp)       ## 4-byte Spill
LBB1_15:
	leaq	L_.str.45(%rip), %rsi
	leaq	-1008(%rbp), %rdi
	callq	_fopen
	leaq	L_.str.46(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movq	%rax, _asm2C_INT.file(%rip)
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	cmpq	$0, _asm2C_INT.file(%rip)
	movl	%eax, -1156(%rbp)       ## 4-byte Spill
	je	LBB1_17
## BB#16:
	movl	$1, _m+4864(%rip)
	jmp	LBB1_18
LBB1_17:
	leaq	L_.str.47(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movb	$1, _m+4908(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1160(%rbp)       ## 4-byte Spill
LBB1_18:
	jmp	LBB1_61
LBB1_19:
	leaq	L_.str.48(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1164(%rbp)       ## 4-byte Spill
	callq	_fclose
	cmpl	$0, %eax
	je	LBB1_21
## BB#20:
	leaq	L_.str.49(%rip), %rdi
	movb	$1, _m+4908(%rip)
	callq	_perror
	leaq	L_.str.50(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1168(%rbp)       ## 4-byte Spill
LBB1_21:
	movq	$0, _asm2C_INT.file(%rip)
	jmp	LBB1_61
LBB1_22:
	leaq	L_.str.51(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	_m+4876(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+4898(%rip), %ecx
	movl	%ecx, %edx
	movl	22076(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1048(%rbp)
	movl	_m+4872(%rip), %esi
	movzwl	-1024(%rbp), %edx
	movzwl	_m+4898(%rip), %ecx
	movl	_m+4876(%rip), %r8d
	movq	-1048(%rbp), %r9
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1172(%rbp)       ## 4-byte Spill
	callq	_feof
	cmpl	$0, %eax
	je	LBB1_24
## BB#23:
	leaq	L_.str.52(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, _m+4864(%rip)
	movl	%eax, -1176(%rbp)       ## 4-byte Spill
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
	leaq	L_.str.49(%rip), %rdi
	callq	_perror
	leaq	L_.str.53(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1180(%rbp)       ## 4-byte Spill
	callq	_feof
	cmpl	$0, %eax
	jne	LBB1_27
## BB#26:
	leaq	L_.str.54(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	_printf
	movb	$1, _m+4908(%rip)
	movl	%eax, -1184(%rbp)       ## 4-byte Spill
LBB1_27:
	jmp	LBB1_29
LBB1_28:
	leaq	L_.str.55(%rip), %rdi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1188(%rbp)       ## 4-byte Spill
LBB1_29:
	movq	-1056(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, _m+4864(%rip)
LBB1_30:
	jmp	LBB1_61
LBB1_31:
	movl	$0, -1060(%rbp)
	movzbl	-1017(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1192(%rbp)       ## 4-byte Spill
	je	LBB1_32
	jmp	LBB1_67
LBB1_67:
	movl	-1192(%rbp), %eax       ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1196(%rbp)       ## 4-byte Spill
	je	LBB1_33
	jmp	LBB1_68
LBB1_68:
	movl	-1192(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1200(%rbp)       ## 4-byte Spill
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
	leaq	L_.str.56(%rip), %rdi
	movzwl	-1024(%rbp), %eax
	shll	$16, %eax
	movzwl	-1026(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -1072(%rbp)
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	movl	%eax, -1204(%rbp)       ## 4-byte Spill
	callq	_fseek
	cmpl	$0, %eax
	je	LBB1_37
## BB#36:
	leaq	L_.str.57(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1208(%rbp)       ## 4-byte Spill
LBB1_37:
	jmp	LBB1_61
LBB1_38:
	callq	_stackDump
	movb	$1, _m+4913(%rip)
	movb	$1, _m+4914(%rip)
	movb	-1018(%rbp), %al
	movb	%al, _m+4915(%rip)
	jmp	LBB1_61
LBB1_39:
	jmp	LBB1_40
LBB1_40:
	jmp	LBB1_41
LBB1_41:
	movzwl	-1020(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1212(%rbp)       ## 4-byte Spill
	je	LBB1_42
	jmp	LBB1_69
LBB1_69:
	movl	-1212(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1216(%rbp)       ## 4-byte Spill
	je	LBB1_46
	jmp	LBB1_70
LBB1_70:
	movl	-1212(%rbp), %eax       ## 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1220(%rbp)       ## 4-byte Spill
	je	LBB1_49
	jmp	LBB1_71
LBB1_71:
	movl	-1212(%rbp), %eax       ## 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1224(%rbp)       ## 4-byte Spill
	je	LBB1_52
	jmp	LBB1_72
LBB1_72:
	movl	-1212(%rbp), %eax       ## 4-byte Reload
	subl	$517, %eax              ## imm = 0x205
	movl	%eax, -1228(%rbp)       ## 4-byte Spill
	je	LBB1_56
	jmp	LBB1_73
LBB1_73:
	movl	-1212(%rbp), %eax       ## 4-byte Reload
	subl	$1281, %eax             ## imm = 0x501
	movl	%eax, -1232(%rbp)       ## 4-byte Spill
	je	LBB1_53
	jmp	LBB1_57
LBB1_42:
	leaq	L_.str.58(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+22072(%rip), %esi
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %esi
	cmpl	$128, %esi
	movl	%eax, -1236(%rbp)       ## 4-byte Spill
	jb	LBB1_44
## BB#43:
	leaq	L_.str.59(%rip), %rdi
	movb	$1, _m+4908(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1240(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_44:
	leaq	L_.str.60(%rip), %rdi
	movl	_m+22072(%rip), %eax
	movl	%eax, _m+4864(%rip)
	movzwl	-1024(%rbp), %eax
	addl	_m+22072(%rip), %eax
	movl	%eax, _m+22072(%rip)
	movl	_m+4864(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1244(%rbp)       ## 4-byte Spill
## BB#45:
	jmp	LBB1_61
LBB1_46:
	leaq	L_.str.61(%rip), %rdi
	movl	_m+4868(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+22072(%rip), %esi
	addl	$1, %esi
	cmpl	$128, %esi
	movl	%eax, -1248(%rbp)       ## 4-byte Spill
	jb	LBB1_48
## BB#47:
	leaq	L_.str.59(%rip), %rdi
	movb	$1, _m+4908(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1252(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_48:
	leaq	L_.str.62(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	_m+22072(%rip), %ecx
	movl	%ecx, %edx
	movl	$4280896, 22076(%rax,%rdx,4) ## imm = 0x415240
	movl	_m+22072(%rip), %ecx
	movl	%ecx, _m+4864(%rip)
	movl	_m+4864(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+22072(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+22072(%rip)
	movl	%eax, -1256(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_49:
	leaq	L_.str.63(%rip), %rdi
	movl	_m+4868(%rip), %esi
	movl	_m+4876(%rip), %edx
	movl	_m+4872(%rip), %ecx
	movb	$0, %al
	callq	_printf
	movzwl	-1022(%rbp), %ecx
	cmpl	_m+22072(%rip), %ecx
	movl	%eax, -1260(%rbp)       ## 4-byte Spill
	jbe	LBB1_51
## BB#50:
	leaq	L_.str.64(%rip), %rdi
	movb	$1, _m+4908(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1264(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_51:
	leaq	L_.str.65(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzwl	4876(%rax,%r9), %r8d
	andl	$65535, %r8d            ## imm = 0xFFFF
	movb	_m+4912(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzwl	4872(%rax,%r9), %ecx
	shll	$16, %ecx
	addl	%ecx, %r8d
	movzwl	-1022(%rbp), %ecx
	movl	%ecx, %r9d
	movl	%r8d, 22076(%rax,%r9,4)
	movzwl	-1022(%rbp), %esi
	movzwl	-1022(%rbp), %ecx
	movl	%ecx, %r9d
	movl	22076(%rax,%r9,4), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1268(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_52:
	leaq	L_.str.66(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1272(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_53:
	leaq	L_.str.67(%rip), %rdi
	movzwl	-1022(%rbp), %eax
	shll	$16, %eax
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -1076(%rbp)
	movl	-1076(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+22588(%rip), %ecx
	addl	-1076(%rbp), %ecx
	cmpl	$4194304, %ecx          ## imm = 0x400000
	movl	%eax, -1276(%rbp)       ## 4-byte Spill
	jb	LBB1_55
## BB#54:
	leaq	L_.str.68(%rip), %rdi
	movb	$1, _m+4908(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1280(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_55:
	leaq	L_.str.69(%rip), %rdi
	movl	_m+22588(%rip), %eax
	movl	%eax, %ecx
	addq	$22592, %rcx            ## imm = 0x5840
	movl	%ecx, %eax
	movl	%eax, -1080(%rbp)
	movl	-1076(%rbp), %eax
	addl	_m+22588(%rip), %eax
	movl	%eax, _m+22588(%rip)
	movl	_m+22588(%rip), %eax
	movl	%eax, %ecx
	addq	$22592, %rcx            ## imm = 0x5840
	movl	%ecx, %eax
	movl	%eax, -1084(%rbp)
	movl	-1084(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.70(%rip), %rdi
	movl	-1080(%rbp), %esi
	andl	$65535, %esi            ## imm = 0xFFFF
	movl	%esi, _m+4872(%rip)
	movl	-1080(%rbp), %esi
	shrl	$16, %esi
	movl	%esi, _m+4868(%rip)
	movl	$0, _m+4884(%rip)
	movl	$0, _m+4880(%rip)
	movl	-1080(%rbp), %esi
	movl	_m+4868(%rip), %edx
	movl	_m+4872(%rip), %ecx
	movl	%eax, -1284(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -1288(%rbp)       ## 4-byte Spill
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
	leaq	L_.str.71(%rip), %rdi
	movb	$1, _m+4908(%rip)
	movl	-1012(%rbp), %esi
	movzbl	-1017(%rbp), %edx
	movzbl	-1018(%rbp), %ecx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1292(%rbp)       ## 4-byte Spill
LBB1_61:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB1_63
## BB#62:
	addq	$1312, %rsp             ## imm = 0x520
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
Ltmp10:
	.cfi_def_cfa_offset 16
Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp12:
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
	movb	$1, _m+4913(%rip)
	movb	$8, -1(%rbp)
	jmp	LBB2_5
LBB2_4:
	leaq	L_.str.37(%rip), %rdi
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
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
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
	leaq	L_.str.35(%rip), %rdi
	movl	_asm2C_OUT.indexPalette(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB3_5:
	jmp	LBB3_7
LBB3_6:
	leaq	L_.str.36(%rip), %rdi
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

	.globl	_checkIfVgaRamEmpty
	.align	4, 0x90
_checkIfVgaRamEmpty:                    ## @checkIfVgaRamEmpty
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp16:
	.cfi_def_cfa_offset 16
Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$64000, -4(%rbp)        ## imm = 0xFA00
	jge	LBB4_6
## BB#2:                                ##   in Loop: Header=BB4_1 Depth=1
	leaq	_m(%rip), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 4280896(%rax,%rcx)
	je	LBB4_4
## BB#3:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, -8(%rbp)
LBB4_4:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_5
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB4_1
LBB4_6:
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.2(%rip), %rax
	leaq	L_.str.1(%rip), %rcx
	cmpl	$0, -8(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_stackDump
	.align	4, 0x90
_stackDump:                             ## @stackDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp19:
	.cfi_def_cfa_offset 16
Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	L_.str.3(%rip), %rdi
	movb	_m+4912(%rip), %al
	andb	$1, %al
	movzbl	%al, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movl	$4, %esi
                                        ## 
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movl	$4408904, %ecx          ## imm = 0x434648
	movl	%ecx, %esi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	movl	_m+4864(%rip), %esi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	_m(%rip), %rdi
	addq	$4864, %rdi             ## imm = 0x1300
	movl	$4, %esi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.10(%rip), %rdi
	movl	_m+4868(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	movl	_m+4872(%rip), %esi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.12(%rip), %rdi
	movl	_m+4876(%rip), %esi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.13(%rip), %rdi
	movl	_m+4888(%rip), %esi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.14(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4896(%rip), %esi
	movzwl	_m+4896(%rip), %ecx
	movl	%ecx, %r8d
	movl	22076(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.15(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4898(%rip), %esi
	movzwl	_m+4898(%rip), %ecx
	movl	%ecx, %r8d
	movl	22076(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.16(%rip), %rdi
	movl	_m+4880(%rip), %esi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.17(%rip), %rdi
	leaq	_m(%rip), %rdx
	movl	_m+4880(%rip), %ecx
	movl	%ecx, %r8d
	movq	%rdx, %r9
	addq	%r8, %r9
	movzwl	_m+4898(%rip), %ecx
	movl	%ecx, %r8d
	movl	22076(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r9
	movq	%r9, %rsi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.18(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4900(%rip), %esi
	movzwl	_m+4900(%rip), %ecx
	movl	%ecx, %r8d
	movl	22076(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	_m(%rip), %rdx
	addq	$4900, %rdx             ## imm = 0x1324
	movl	$4, %esi
	movq	%rdx, %rdi
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.19(%rip), %rdi
	movl	_m+4884(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.20(%rip), %rdi
	leaq	_m(%rip), %rdx
	movl	_m+4884(%rip), %ecx
	movl	%ecx, %r8d
	movq	%rdx, %r9
	addq	%r8, %r9
	movzwl	_m+4900(%rip), %ecx
	movl	%ecx, %r8d
	movl	22076(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r9
	movq	%r9, %rsi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$50, %esi
	leaq	_m(%rip), %rdx
	movl	_m+4884(%rip), %ecx
	movl	%ecx, %edi
	movq	%rdx, %r8
	addq	%rdi, %r8
	movzwl	_m+4900(%rip), %ecx
	movl	%ecx, %edi
	movl	22076(%rdx,%rdi,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rdi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.21(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4902(%rip), %esi
	movzwl	_m+4902(%rip), %eax
	movl	%eax, %r8d
	movl	22076(%rdx,%r8,4), %eax
	movl	%eax, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_printf
	leaq	L_.str.22(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+4904(%rip), %esi
	movzwl	_m+4904(%rip), %ecx
	movl	%ecx, %r8d
	movl	22076(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.23(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$22592, %rdx            ## imm = 0x5840
	movq	%rdx, %rsi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.24(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$4280896, %rdx          ## imm = 0x415240
	movq	%rdx, %rsi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.25(%rip), %rdi
	movzbl	_m+4280896(%rip), %esi
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.26(%rip), %rdi
	movb	_m+4909(%rip), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.27(%rip), %rdi
	movl	_m+5684(%rip), %esi
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	callq	_checkIfVgaRamEmpty
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_hexDump
	.align	4, 0x90
_hexDump:                               ## @hexDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	L_.str.28(%rip), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	cmpl	$0, -44(%rbp)
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	jne	LBB6_2
## BB#1:
	leaq	L_.str.29(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	jmp	LBB6_20
LBB6_2:
	cmpl	$0, -44(%rbp)
	jge	LBB6_4
## BB#3:
	leaq	L_.str.30(%rip), %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB6_20
LBB6_4:
	movl	$0, -48(%rbp)
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB6_16
## BB#6:                                ##   in Loop: Header=BB6_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB6_10
## BB#7:                                ##   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, -48(%rbp)
	je	LBB6_9
## BB#8:                                ##   in Loop: Header=BB6_5 Depth=1
	leaq	L_.str.31(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
LBB6_9:                                 ##   in Loop: Header=BB6_5 Depth=1
	leaq	L_.str.32(%rip), %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -80(%rbp)         ## 4-byte Spill
LBB6_10:                                ##   in Loop: Header=BB6_5 Depth=1
	leaq	L_.str.33(%rip), %rdi
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movzbl	(%rdi,%rcx), %esi
	cmpl	$32, %esi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	jl	LBB6_12
## BB#11:                               ##   in Loop: Header=BB6_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB6_13
LBB6_12:                                ##   in Loop: Header=BB6_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movb	$46, -32(%rbp,%rsi)
	jmp	LBB6_14
LBB6_13:                                ##   in Loop: Header=BB6_5 Depth=1
	movl	$16, %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-48(%rbp), %edi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-92(%rbp), %edi         ## 4-byte Reload
	idivl	%edi
	movslq	%edx, %rcx
	movb	%sil, -32(%rbp,%rcx)
LBB6_14:                                ##   in Loop: Header=BB6_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-96(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$1, %edx
	movslq	%edx, %rsi
	movb	$0, -32(%rbp,%rsi)
## BB#15:                               ##   in Loop: Header=BB6_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB6_5
LBB6_16:
	jmp	LBB6_17
LBB6_17:                                ## =>This Inner Loop Header: Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB6_19
## BB#18:                               ##   in Loop: Header=BB6_17 Depth=1
	leaq	L_.str.34(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	jmp	LBB6_17
LBB6_19:
	leaq	L_.str.31(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -108(%rbp)        ## 4-byte Spill
LBB6_20:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB6_22
## BB#21:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB6_22:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_is_little_endian
	.align	4, 0x90
_is_little_endian:                      ## @is_little_endian
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp25:
	.cfi_def_cfa_offset 16
Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp27:
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
Ltmp28:
	.cfi_def_cfa_offset 16
Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_is_little_endian
	leaq	L_.str.38(%rip), %rdi
	andb	$1, %al
	movb	%al, _m+4912(%rip)
	movb	_m+4912(%rip), %al
	andb	$1, %al
	movzbl	%al, %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_m                      ## @m
	.align	3
_m:
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
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.space	768
	.long	0                       ## 0x0
	.space	16384
	.long	1                       ## 0x1
	.space	512
	.long	0                       ## 0x0
	.space	4194304
	.space	64000
	.space	64000
	.space	64000
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"vgaram_empty : %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"true"

L_.str.2:                               ## @.str.2
	.asciz	"false"

L_.str.3:                               ## @.str.3
	.asciz	"is_little_endian()=%d\n"

L_.str.4:                               ## @.str.4
	.asciz	"sizeof(dd)=%zu\n"

L_.str.5:                               ## @.str.5
	.asciz	"sizeof(dd *)=%zu\n"

L_.str.6:                               ## @.str.6
	.asciz	"sizeof(dw)=%zu\n"

L_.str.7:                               ## @.str.7
	.asciz	"sizeof(db)=%zu\n"

L_.str.8:                               ## @.str.8
	.asciz	"sizeof(mem)=%zu\n"

L_.str.9:                               ## @.str.9
	.asciz	"eax: %x\n"

L_.str.10:                              ## @.str.10
	.asciz	"ebx: %x\n"

L_.str.11:                              ## @.str.11
	.asciz	"ecx: %x\n"

L_.str.12:                              ## @.str.12
	.asciz	"edx: %x\n"

L_.str.13:                              ## @.str.13
	.asciz	"ebp: %x\n"

L_.str.14:                              ## @.str.14
	.asciz	"cs: %d -> %p\n"

L_.str.15:                              ## @.str.15
	.asciz	"ds: %d -> %p\n"

L_.str.16:                              ## @.str.16
	.asciz	"esi: %x\n"

L_.str.17:                              ## @.str.17
	.asciz	"ds:esi %p\n"

L_.str.18:                              ## @.str.18
	.asciz	"es: %d -> %p\n"

L_.str.19:                              ## @.str.19
	.asciz	"edi: %x\n"

L_.str.20:                              ## @.str.20
	.asciz	"es:edi %p\n"

L_.str.21:                              ## @.str.21
	.asciz	"fs: %d -> %p\n"

L_.str.22:                              ## @.str.22
	.asciz	"gs: %d -> %p\n"

L_.str.23:                              ## @.str.23
	.asciz	"adress heap: %p\n"

L_.str.24:                              ## @.str.24
	.asciz	"adress vgaRam: %p\n"

L_.str.25:                              ## @.str.25
	.asciz	"first pixels vgaRam: %x\n"

L_.str.26:                              ## @.str.26
	.asciz	"flags: ZF = %d\n"

L_.str.27:                              ## @.str.27
	.asciz	"top stack=%d\n"

L_.str.28:                              ## @.str.28
	.asciz	"hexDump %p:\n"

L_.str.29:                              ## @.str.29
	.asciz	"  ZERO LENGTH\n"

L_.str.30:                              ## @.str.30
	.asciz	"  NEGATIVE LENGTH: %i\n"

L_.str.31:                              ## @.str.31
	.asciz	"  %s\n"

L_.str.32:                              ## @.str.32
	.asciz	"  %04x "

L_.str.33:                              ## @.str.33
	.asciz	" %02x"

L_.str.34:                              ## @.str.34
	.asciz	"   "

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.35:                              ## @.str.35
	.asciz	"error: indexPalette>767 %d\n"

L_.str.36:                              ## @.str.36
	.asciz	"unknown OUT %d,%d\n"

	.section	__DATA,__data
_asm2C_IN.vblTick:                      ## @asm2C_IN.vblTick
	.byte	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str.37:                              ## @.str.37
	.asciz	"Unknown IN %d\n"

L_.str.38:                              ## @.str.38
	.asciz	"asm2C_init is_little_endian:%d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,8,3 ## @asm2C_INT.file
L_.str.39:                              ## @.str.39
	.asciz	"asm2C_INT ah=%x al=%x ax=%x bx=%x cx=%x dx=%x\n"

L_.str.40:                              ## @.str.40
	.asciz	"Switch to text mode\n"

L_.str.41:                              ## @.str.41
	.asciz	"Switch to VGA\n"

L_.str.42:                              ## @.str.42
	.asciz	"%c"

L_.str.43:                              ## @.str.43
	.asciz	"%s/%s"

L_.str.44:                              ## @.str.44
	.asciz	"%s"

L_.str.45:                              ## @.str.45
	.asciz	"rb"

L_.str.46:                              ## @.str.46
	.asciz	"Opening file %s -> %p\n"

L_.str.47:                              ## @.str.47
	.asciz	"Error opening file %s\n"

L_.str.48:                              ## @.str.48
	.asciz	"Closing file. bx:%d\n"

L_.str.49:                              ## @.str.49
	.asciz	"Error"

L_.str.50:                              ## @.str.50
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.51:                              ## @.str.51
	.asciz	"Reading ecx=%d cx=%d eds=%x edx=%x -> %p file: %p\n"

L_.str.52:                              ## @.str.52
	.asciz	"feof(file)\n"

L_.str.53:                              ## @.str.53
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.54:                              ## @.str.54
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.55:                              ## @.str.55
	.asciz	"Reading OK %p\n"

L_.str.56:                              ## @.str.56
	.asciz	"Seeking to offset %ld %d\n"

L_.str.57:                              ## @.str.57
	.asciz	"Error seeking\n"

L_.str.58:                              ## @.str.58
	.asciz	"Function 0000h - Allocate %d Descriptors\n"

L_.str.59:                              ## @.str.59
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.60:                              ## @.str.60
	.asciz	"Return %x\n"

L_.str.61:                              ## @.str.61
	.asciz	"Function 0002h - Converts a real mode segment into a protected mode descriptor real mode segment: %d\n"

L_.str.62:                              ## @.str.62
	.asciz	"Returns new selector: eax: %d\n"

L_.str.63:                              ## @.str.63
	.asciz	"Function 0007h - Set Segment Base Address: ebx: %x, edx:%x ecx:%x\n"

L_.str.64:                              ## @.str.64
	.asciz	"Error: selector number doesnt exist\n"

L_.str.65:                              ## @.str.65
	.asciz	"Address for selector %d: %x\n"

L_.str.66:                              ## @.str.66
	.asciz	"Function 0008h - Set Segment Limit for selector %d (Ignored)\n"

L_.str.67:                              ## @.str.67
	.asciz	"Function 0501h - Allocate Memory Block: %d bytes\n"

L_.str.68:                              ## @.str.68
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.69:                              ## @.str.69
	.asciz	"New top of heap: %x\n"

L_.str.70:                              ## @.str.70
	.asciz	"Return %x ebx:ecx %x:%x\n"

L_.str.71:                              ## @.str.71
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


.subsections_via_symbols
