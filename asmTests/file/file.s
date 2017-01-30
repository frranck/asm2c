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
	pushq	%rbx
	subq	$424, %rsp              ## imm = 0x1A8
Ltmp3:
	.cfi_offset %rbx, -40
Ltmp4:
	.cfi_offset %r14, -32
Ltmp5:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	testb	$1, _m+68159(%rip)
	je	LBB0_2
## BB#1:
	jmp	LBB0_35
LBB0_2:
	testb	$1, _m+68158(%rip)
	je	LBB0_4
## BB#3:
	xorl	%esi, %esi
	leaq	-192(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movb	$0, _m+68158(%rip)
	movslq	_m+68929(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+68929(%rip)
	movq	%rax, %r8
	movslq	_m+68929(%rip), %r9
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
	leaq	-192(%rbp), %rdi
	movl	$0, _m+68121(%rip)
	movl	$2, _m+68117(%rip)
	movl	$13, _m+68129(%rip)
	movl	$5, _m+68113(%rip)
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_6
## BB#5:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+68929(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	jmp	LBB0_9
LBB0_6:
	movl	$1415934836, %eax       ## imm = 0x54657374
	movl	$1953719636, %ecx       ## imm = 0x74736554
	leaq	_m(%rip), %rdx
	movl	_m+68109(%rip), %esi
	xorl	_m+68109(%rip), %esi
	movl	%esi, _m+68109(%rip)
	cmpl	$0, _m+68109(%rip)
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+68154(%rip)
	movl	_m+68109(%rip), %esi
	shrl	$31, %esi
	cmpl	$0, %esi
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+68156(%rip)
	movzwl	_m+68143(%rip), %esi
	movl	%esi, %r8d
	movl	85321(%rdx,%r8,4), %esi
	movl	%esi, %r8d
	movl	13(%rdx,%r8), %esi
	movb	_m+68157(%rip), %dil
	testb	$1, %dil
	movl	%eax, %r9d
	cmovnel	%ecx, %r9d
	subl	%r9d, %esi
	cmpl	$0, %esi
	sete	%dil
	andb	$1, %dil
	movb	%dil, _m+68154(%rip)
	movzwl	_m+68143(%rip), %esi
	movl	%esi, %r8d
	movl	85321(%rdx,%r8,4), %esi
	movl	%esi, %r8d
	movl	13(%rdx,%r8), %esi
	movb	_m+68157(%rip), %dil
	testb	$1, %dil
	movl	%eax, %r9d
	cmovnel	%ecx, %r9d
	cmpl	%r9d, %esi
	setb	%dil
	andb	$1, %dil
	movb	%dil, _m+68153(%rip)
	movzwl	_m+68143(%rip), %esi
	movl	%esi, %r8d
	movl	85321(%rdx,%r8,4), %esi
	movl	%esi, %r8d
	movl	13(%rdx,%r8), %esi
	movb	_m+68157(%rip), %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	subl	%eax, %esi
	shrl	$31, %esi
	cmpl	$0, %esi
	setne	%dil
	andb	$1, %dil
	movb	%dil, _m+68156(%rip)
	testb	$1, _m+68154(%rip)
	jne	LBB0_8
## BB#7:
	jmp	LBB0_29
LBB0_8:
	jmp	LBB0_30
LBB0_9:
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	addq	$68109, %rcx            ## imm = 0x10A0D
	movl	$32, %edx
                                        ## 
	movq	$-1, %rsi
	addq	$68933, %rax            ## imm = 0x10D45
	movslq	_m+68929(%rip), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	callq	___memcpy_chk
	movl	$2, %r8d
	movl	%r8d, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$68145, %rdi            ## imm = 0x10A31
	xorl	%r8d, %r8d
	addq	$68933, %rsi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r9
	addq	$32, %r9
	movl	%r9d, %r10d
	movl	%r10d, _m+68929(%rip)
	movslq	_m+68929(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rsi
	movb	_m+68157(%rip), %r11b
	testb	$1, %r11b
	cmovnel	%r8d, %r8d
	movslq	%r8d, %r9
	addq	%r9, %rdi
	movq	%rdi, -264(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-264(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	callq	___memcpy_chk
	movl	$2, %r8d
	movl	%r8d, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$68143, %rdi            ## imm = 0x10A2F
	xorl	%r8d, %r8d
	addq	$68933, %rsi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r9
	addq	$2, %r9
	movl	%r9d, %r10d
	movl	%r10d, _m+68929(%rip)
	movslq	_m+68929(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rsi
	movb	_m+68157(%rip), %r11b
	testb	$1, %r11b
	cmovnel	%r8d, %r8d
	movslq	%r8d, %r9
	addq	%r9, %rdi
	movq	%rdi, -280(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-280(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	callq	___memcpy_chk
	movl	$33, %edi
	leaq	_m(%rip), %rcx
	movl	$2, %r8d
	movl	$1, %r10d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movslq	_m+68929(%rip), %rdx
	addq	$2, %rdx
	movl	%edx, %r15d
	movl	%r15d, _m+68929(%rip)
	movl	$4, _m+68121(%rip)
	movl	_m+68109(%rip), %r15d
	xorl	_m+68109(%rip), %r15d
	movl	%r15d, _m+68109(%rip)
	cmpl	$0, _m+68109(%rip)
	sete	%r11b
	andb	$1, %r11b
	movb	%r11b, _m+68154(%rip)
	movl	_m+68109(%rip), %r15d
	shrl	$31, %r15d
	cmpl	$0, %r15d
	setne	%r11b
	andb	$1, %r11b
	movb	%r11b, _m+68156(%rip)
	movb	_m+68157(%rip), %r11b
	testb	$1, %r11b
	cmovnel	%r14d, %ebx
	movslq	%ebx, %rdx
	movb	$0, 68109(%rcx,%rdx)
	movb	_m+68157(%rip), %r11b
	testb	$1, %r11b
	cmovnel	%r10d, %r8d
	movslq	%r8d, %rdx
	movb	$61, 68109(%rcx,%rdx)
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	callq	_asm2C_INT
	testb	$1, _m+68158(%rip)
	je	LBB0_13
## BB#10:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_12
## BB#11:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+68929(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	jmp	LBB0_35
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	testb	$1, _m+68153(%rip)
	jne	LBB0_15
## BB#14:
	jmp	LBB0_16
LBB0_15:
	xorl	%esi, %esi
	leaq	-192(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movl	$1, _m+68109(%rip)
	movslq	_m+68929(%rip), %r8
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+68929(%rip)
	movq	%rax, %r8
	movslq	_m+68929(%rip), %r9
	shlq	$2, %r9
	addq	%r9, %rdi
	movq	%rdi, -312(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-312(%rbp), %r8         ## 8-byte Reload
	movl	%esi, -316(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-328(%rbp), %rdi        ## 8-byte Reload
	movl	-316(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_16:
	movl	$33, %edi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	$3, %esi
	movl	$1, %r8d
	movl	_m+68109(%rip), %r9d
	movzwl	_m+68143(%rip), %r10d
	movl	%r10d, %r11d
	movl	85321(%rax,%r11,4), %r10d
	movl	%r10d, %r11d
	movl	%r9d, (%rax,%r11)
	movzwl	_m+68143(%rip), %r9d
	movl	%r9d, %r11d
	movl	85321(%rax,%r11,4), %r9d
	movl	%r9d, %r11d
	movl	(%rax,%r11), %r9d
	movl	%r9d, _m+68113(%rip)
	movb	_m+68157(%rip), %bl
	testb	$1, %bl
	movl	%ecx, %r9d
	cmovnel	%r8d, %r9d
	movslq	%r9d, %r11
	movb	$66, 68109(%rax,%r11)
	movb	_m+68157(%rip), %bl
	testb	$1, %bl
	cmovnel	%edx, %esi
	movslq	%esi, %r11
	movb	$0, 68109(%rax,%r11)
	movb	_m+68157(%rip), %bl
	testb	$1, %bl
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movslq	%esi, %r11
	movw	68117(%rax,%r11), %r14w
	movb	_m+68157(%rip), %bl
	testb	$1, %bl
	cmovnel	%edx, %ecx
	movslq	%ecx, %r11
	movw	%r14w, 68121(%rax,%r11)
	movl	_m+68117(%rip), %ecx
	shrl	$16, %ecx
	movl	%ecx, _m+68117(%rip)
	callq	_asm2C_INT
	testb	$1, _m+68158(%rip)
	je	LBB0_20
## BB#17:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_19
## BB#18:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+68929(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rax, -336(%rbp)        ## 8-byte Spill
	jmp	LBB0_35
LBB0_19:
	jmp	LBB0_20
LBB0_20:
	movl	$2, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$68143, %rdi            ## imm = 0x10A2F
	xorl	%eax, %eax
	movq	%rsi, %r8
	addq	$68933, %r8             ## imm = 0x10D45
	movl	$2, %r9d
	movl	$1, %r10d
	movl	$10, _m+68117(%rip)
	movzwl	_m+68143(%rip), %r11d
	movl	%r11d, %ebx
	movl	85321(%rsi,%rbx,4), %r11d
	movl	%r11d, %ebx
	movl	(%rsi,%rbx), %r11d
	movl	%r11d, _m+68113(%rip)
	movb	_m+68157(%rip), %r14b
	testb	$1, %r14b
	cmovnel	%r10d, %r9d
	movslq	%r9d, %rbx
	movb	$63, 68109(%rsi,%rbx)
	movslq	_m+68929(%rip), %rsi
	shlq	$2, %rsi
	addq	%rsi, %r8
	movb	_m+68157(%rip), %r14b
	testb	$1, %r14b
	cmovnel	%eax, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -344(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-344(%rbp), %rsi        ## 8-byte Reload
	callq	___memcpy_chk
	movl	$33, %edi
	movslq	_m+68929(%rip), %rcx
	addq	$2, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movl	_m+68129(%rip), %r9d
	movl	%r9d, _m+68121(%rip)
	movq	%rax, -352(%rbp)        ## 8-byte Spill
	callq	_asm2C_INT
	testb	$1, _m+68158(%rip)
	je	LBB0_24
## BB#21:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_23
## BB#22:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+68929(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rax, -360(%rbp)        ## 8-byte Spill
	jmp	LBB0_35
LBB0_23:
	jmp	LBB0_24
LBB0_24:
	movl	$2, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	addq	$68143, %rsi            ## imm = 0x10A2F
	xorl	%eax, %eax
	movslq	_m+68929(%rip), %r8
	subq	$2, %r8
	movl	%r8d, %r9d
	movl	%r9d, _m+68929(%rip)
	movb	_m+68157(%rip), %r10b
	testb	$1, %r10b
	cmovnel	%eax, %eax
	movslq	%eax, %r8
	addq	%r8, %rsi
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	%rdi, -368(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-368(%rbp), %rsi        ## 8-byte Reload
	callq	___memcpy_chk
	movl	$33, %edi
	leaq	_m(%rip), %rcx
	movl	$2, %r9d
	movl	$1, %r11d
	movzwl	_m+68143(%rip), %ebx
	movl	%ebx, %edx
	movl	85321(%rcx,%rdx,4), %ebx
	movl	%ebx, %edx
	movl	(%rcx,%rdx), %ebx
	movl	%ebx, _m+68113(%rip)
	movb	_m+68157(%rip), %r10b
	testb	$1, %r10b
	cmovnel	%r11d, %r9d
	movslq	%r9d, %rdx
	movb	$62, 68109(%rcx,%rdx)
	movq	%rax, -376(%rbp)        ## 8-byte Spill
	callq	_asm2C_INT
	testb	$1, _m+68158(%rip)
	je	LBB0_28
## BB#25:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_27
## BB#26:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+68929(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rax, -384(%rbp)        ## 8-byte Spill
	jmp	LBB0_35
LBB0_27:
	jmp	LBB0_28
LBB0_28:
	movl	$2, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	addq	$68143, %rsi            ## imm = 0x10A2F
	xorl	%eax, %eax
	movslq	_m+68929(%rip), %r8
	subq	$2, %r8
	movl	%r8d, %r9d
	movl	%r9d, _m+68929(%rip)
	movb	_m+68157(%rip), %r10b
	testb	$1, %r10b
	cmovnel	%eax, %eax
	movslq	%eax, %r8
	addq	%r8, %rsi
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	%rdi, -392(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-392(%rbp), %rsi        ## 8-byte Reload
	callq	___memcpy_chk
	movl	$2, %r9d
	movl	%r9d, %edx
	movq	$-1, %rcx
	leaq	_m(%rip), %rsi
	movq	%rsi, %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	addq	$68145, %rsi            ## imm = 0x10A31
	xorl	%r9d, %r9d
	movslq	_m+68929(%rip), %r8
	subq	$2, %r8
	movl	%r8d, %r11d
	movl	%r11d, _m+68929(%rip)
	movb	_m+68157(%rip), %r10b
	testb	$1, %r10b
	cmovnel	%r9d, %r9d
	movslq	%r9d, %r8
	addq	%r8, %rsi
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	%rdi, -400(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-400(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	callq	___memcpy_chk
	xorl	%esi, %esi
	leaq	-192(%rbp), %rcx
	movl	$148, %r9d
	movl	%r9d, %edx
	leaq	_m(%rip), %rdi
	movq	%rdi, %r8
	addq	$68933, %r8             ## imm = 0x10D45
	movslq	_m+68929(%rip), %rbx
	subq	$32, %rbx
	movl	%ebx, %r9d
	movl	%r9d, _m+68929(%rip)
	movslq	_m+68929(%rip), %rbx
	movq	68933(%rdi,%rbx,4), %r14
	movq	%r14, _m+68109(%rip)
	movq	68941(%rdi,%rbx,4), %r14
	movq	%r14, _m+68117(%rip)
	movq	68949(%rdi,%rbx,4), %r14
	movq	%r14, _m+68125(%rip)
	movq	68957(%rdi,%rbx,4), %rdi
	movq	%rdi, _m+68133(%rip)
	movslq	_m+68929(%rip), %rdi
	subq	$148, %rdi
	movl	%edi, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rcx, %rdi
	movslq	_m+68929(%rip), %rbx
	shlq	$2, %rbx
	addq	%rbx, %r8
	movl	%esi, -412(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -424(%rbp)        ## 8-byte Spill
	movq	%rcx, -432(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	movl	-412(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_29:
	leaq	_m(%rip), %rax
	movl	$3, %ecx
	xorl	%edx, %edx
	movb	_m+68157(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdi
	movb	$1, 68109(%rax,%rdi)
LBB0_30:
	movl	$33, %edi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movb	_m+68157(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r8
	movb	$76, 68109(%rax,%r8)
	callq	_asm2C_INT
	testb	$1, _m+68158(%rip)
	je	LBB0_34
## BB#31:
	leaq	-192(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_33
## BB#32:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-192(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$68933, %rdi            ## imm = 0x10D45
	movslq	_m+68929(%rip), %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movslq	_m+68929(%rip), %rcx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+68929(%rip)
	movq	%rax, -440(%rbp)        ## 8-byte Spill
	jmp	LBB0_35
LBB0_33:
	jmp	LBB0_34
LBB0_34:
	movb	$1, _m+68159(%rip)
LBB0_35:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movb	_m+68159(%rip), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	movl	%edx, -444(%rbp)        ## 4-byte Spill
	jne	LBB0_37
## BB#36:
	movl	-444(%rbp), %eax        ## 4-byte Reload
	addq	$424, %rsp              ## imm = 0x1A8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_37:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_INT
	.align	4, 0x90
_asm2C_INT:                             ## @asm2C_INT
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
	subq	$1312, %rsp             ## imm = 0x520
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1012(%rbp)
	leaq	_m(%rip), %rax
	movb	_m+68157(%rip), %cl
	andb	$1, %cl
	cmpb	$1, %cl
	movl	$1, %edi
	adcl	$0, %edi
	movl	%edi, %edx
	movb	68109(%rdx,%rax), %cl
	movb	%cl, -1017(%rbp)
	movb	_m+68157(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	leal	(%rdx,%rdx,2), %edi
	movl	%edi, %edx
	movb	68109(%rdx,%rax), %cl
	movb	%cl, -1018(%rbp)
	movb	_m+68157(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	68109(%rax,%rdx,2), %si
	movw	%si, -1020(%rbp)
	movb	_m+68157(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	68113(%rax,%rdx,2), %si
	movw	%si, -1022(%rbp)
	movb	_m+68157(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	68117(%rax,%rdx,2), %si
	movw	%si, -1024(%rbp)
	movb	_m+68157(%rip), %cl
	testb	$1, %cl
	sete	%cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movw	68121(%rax,%rdx,2), %si
	movw	%si, -1026(%rbp)
	movb	$0, _m+68153(%rip)
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
	movq	%rax, %rcx
	movl	_m+68121(%rip), %edx
	movl	%edx, %esi
	addq	%rsi, %rcx
	movzwl	_m+68143(%rip), %edx
	movl	%edx, %esi
	movl	85321(%rax,%rsi,4), %edx
	movl	%edx, %eax
	addq	%rax, %rcx
	movq	%rcx, -1040(%rbp)
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
	movl	$512, _m+68121(%rip)    ## imm = 0x200
	jmp	LBB1_61
LBB1_12:
	cmpq	$0, _m+4472141(%rip)
	je	LBB1_14
## BB#13:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.43(%rip), %rcx
	leaq	_m(%rip), %rdi
	movq	%rdi, %r8
	leaq	-1008(%rbp), %r9
	movq	_m+4472141(%rip), %r10
	movl	_m+68121(%rip), %eax
	movl	%eax, %r11d
	addq	%r11, %r8
	movzwl	_m+68143(%rip), %eax
	movl	%eax, %r11d
	movl	85321(%rdi,%r11,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r8
	movq	%r9, %rdi
	movq	%r8, -1152(%rbp)        ## 8-byte Spill
	movq	%r10, %r8
	movq	-1152(%rbp), %r9        ## 8-byte Reload
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1156(%rbp)       ## 4-byte Spill
	jmp	LBB1_15
LBB1_14:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.44(%rip), %rcx
	leaq	_m(%rip), %rdi
	movq	%rdi, %r8
	leaq	-1008(%rbp), %r9
	movl	_m+68121(%rip), %eax
	movl	%eax, %r10d
	addq	%r10, %r8
	movzwl	_m+68143(%rip), %eax
	movl	%eax, %r10d
	movl	85321(%rdi,%r10,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r8
	movq	%r9, %rdi
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1160(%rbp)       ## 4-byte Spill
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
	movl	%eax, -1164(%rbp)       ## 4-byte Spill
	je	LBB1_17
## BB#16:
	movl	$1, _m+68109(%rip)
	jmp	LBB1_18
LBB1_17:
	leaq	L_.str.47(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movb	$1, _m+68153(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1168(%rbp)       ## 4-byte Spill
LBB1_18:
	jmp	LBB1_61
LBB1_19:
	leaq	L_.str.48(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1172(%rbp)       ## 4-byte Spill
	callq	_fclose
	cmpl	$0, %eax
	je	LBB1_21
## BB#20:
	leaq	L_.str.49(%rip), %rdi
	movb	$1, _m+68153(%rip)
	callq	_perror
	leaq	L_.str.50(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1176(%rbp)       ## 4-byte Spill
LBB1_21:
	movq	$0, _asm2C_INT.file(%rip)
	jmp	LBB1_61
LBB1_22:
	leaq	L_.str.51(%rip), %rdi
	leaq	_m(%rip), %rax
	movq	%rax, %rcx
	movl	_m+68121(%rip), %edx
	movl	%edx, %esi
	addq	%rsi, %rcx
	movzwl	_m+68143(%rip), %edx
	movl	%edx, %esi
	movl	85321(%rax,%rsi,4), %edx
	movl	%edx, %eax
	addq	%rax, %rcx
	movq	%rcx, -1048(%rbp)
	movl	_m+68117(%rip), %esi
	movzwl	-1024(%rbp), %edx
	movzwl	_m+68143(%rip), %ecx
	movl	_m+68121(%rip), %r8d
	movq	-1048(%rbp), %r9
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	_printf
	movq	_asm2C_INT.file(%rip), %rdi
	movl	%eax, -1180(%rbp)       ## 4-byte Spill
	callq	_feof
	cmpl	$0, %eax
	je	LBB1_24
## BB#23:
	leaq	L_.str.52(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, _m+68109(%rip)
	movl	%eax, -1184(%rbp)       ## 4-byte Spill
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
	movl	%eax, -1188(%rbp)       ## 4-byte Spill
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
	movb	$1, _m+68153(%rip)
	movl	%eax, -1192(%rbp)       ## 4-byte Spill
LBB1_27:
	jmp	LBB1_29
LBB1_28:
	leaq	L_.str.55(%rip), %rdi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1196(%rbp)       ## 4-byte Spill
LBB1_29:
	movq	-1056(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, _m+68109(%rip)
LBB1_30:
	jmp	LBB1_61
LBB1_31:
	movl	$0, -1060(%rbp)
	movzbl	-1017(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1200(%rbp)       ## 4-byte Spill
	je	LBB1_32
	jmp	LBB1_67
LBB1_67:
	movl	-1200(%rbp), %eax       ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1204(%rbp)       ## 4-byte Spill
	je	LBB1_33
	jmp	LBB1_68
LBB1_68:
	movl	-1200(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1208(%rbp)       ## 4-byte Spill
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
	movl	%eax, -1212(%rbp)       ## 4-byte Spill
	callq	_fseek
	cmpl	$0, %eax
	je	LBB1_37
## BB#36:
	leaq	L_.str.57(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1216(%rbp)       ## 4-byte Spill
LBB1_37:
	jmp	LBB1_61
LBB1_38:
	callq	_stackDump
	movb	$1, _m+68158(%rip)
	movb	$1, _m+68159(%rip)
	movb	-1018(%rbp), %al
	movb	%al, _m+68160(%rip)
	jmp	LBB1_61
LBB1_39:
	jmp	LBB1_40
LBB1_40:
	jmp	LBB1_41
LBB1_41:
	movzwl	-1020(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1220(%rbp)       ## 4-byte Spill
	je	LBB1_42
	jmp	LBB1_69
LBB1_69:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1224(%rbp)       ## 4-byte Spill
	je	LBB1_46
	jmp	LBB1_70
LBB1_70:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1228(%rbp)       ## 4-byte Spill
	je	LBB1_49
	jmp	LBB1_71
LBB1_71:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1232(%rbp)       ## 4-byte Spill
	je	LBB1_52
	jmp	LBB1_72
LBB1_72:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$517, %eax              ## imm = 0x205
	movl	%eax, -1236(%rbp)       ## 4-byte Spill
	je	LBB1_56
	jmp	LBB1_73
LBB1_73:
	movl	-1220(%rbp), %eax       ## 4-byte Reload
	subl	$1281, %eax             ## imm = 0x501
	movl	%eax, -1240(%rbp)       ## 4-byte Spill
	je	LBB1_53
	jmp	LBB1_57
LBB1_42:
	leaq	L_.str.58(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+85317(%rip), %esi
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %esi
	cmpl	$128, %esi
	movl	%eax, -1244(%rbp)       ## 4-byte Spill
	jb	LBB1_44
## BB#43:
	leaq	L_.str.59(%rip), %rdi
	movb	$1, _m+68153(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1248(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_44:
	leaq	L_.str.60(%rip), %rdi
	movl	_m+85317(%rip), %eax
	movl	%eax, _m+68109(%rip)
	movzwl	-1024(%rbp), %eax
	addl	_m+85317(%rip), %eax
	movl	%eax, _m+85317(%rip)
	movl	_m+68109(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1252(%rbp)       ## 4-byte Spill
## BB#45:
	jmp	LBB1_61
LBB1_46:
	leaq	L_.str.61(%rip), %rdi
	movl	_m+68113(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+85317(%rip), %esi
	addl	$1, %esi
	cmpl	$128, %esi
	movl	%eax, -1256(%rbp)       ## 4-byte Spill
	jb	LBB1_48
## BB#47:
	leaq	L_.str.59(%rip), %rdi
	movb	$1, _m+68153(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1260(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_48:
	leaq	L_.str.62(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	_m+85317(%rip), %ecx
	movl	%ecx, %edx
	movl	$4344141, 85321(%rax,%rdx,4) ## imm = 0x42494D
	movl	_m+85317(%rip), %ecx
	movl	%ecx, _m+68109(%rip)
	movl	_m+68109(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	_m+85317(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+85317(%rip)
	movl	%eax, -1264(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_49:
	leaq	L_.str.63(%rip), %rdi
	movl	_m+68113(%rip), %esi
	movl	_m+68121(%rip), %edx
	movl	_m+68117(%rip), %ecx
	movb	$0, %al
	callq	_printf
	movzwl	-1022(%rbp), %ecx
	cmpl	_m+85317(%rip), %ecx
	movl	%eax, -1268(%rbp)       ## 4-byte Spill
	jbe	LBB1_51
## BB#50:
	leaq	L_.str.64(%rip), %rdi
	movb	$1, _m+68153(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1272(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_51:
	leaq	L_.str.65(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	$2, %ecx
	xorl	%edx, %edx
	movb	_m+68157(%rip), %sil
	testb	$1, %sil
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movslq	%r8d, %r9
	movzwl	68121(%rax,%r9), %r8d
	andl	$65535, %r8d            ## imm = 0xFFFF
	movb	_m+68157(%rip), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movslq	%ecx, %r9
	movzwl	68117(%rax,%r9), %ecx
	shll	$16, %ecx
	addl	%ecx, %r8d
	movzwl	-1022(%rbp), %ecx
	movl	%ecx, %r9d
	movl	%r8d, 85321(%rax,%r9,4)
	movzwl	-1022(%rbp), %esi
	movzwl	-1022(%rbp), %ecx
	movl	%ecx, %r9d
	movl	85321(%rax,%r9,4), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1276(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_52:
	leaq	L_.str.66(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1280(%rbp)       ## 4-byte Spill
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
	movl	_m+85833(%rip), %ecx
	addl	-1076(%rbp), %ecx
	cmpl	$4194304, %ecx          ## imm = 0x400000
	movl	%eax, -1284(%rbp)       ## 4-byte Spill
	jb	LBB1_55
## BB#54:
	leaq	L_.str.68(%rip), %rdi
	movb	$1, _m+68153(%rip)
	movb	$0, %al
	callq	_printf
	movl	%eax, -1288(%rbp)       ## 4-byte Spill
	jmp	LBB1_61
LBB1_55:
	leaq	L_.str.69(%rip), %rdi
	movl	_m+85833(%rip), %eax
	movl	%eax, %ecx
	addq	$85837, %rcx            ## imm = 0x14F4D
	movl	%ecx, %eax
	movl	%eax, -1080(%rbp)
	movl	-1076(%rbp), %eax
	addl	_m+85833(%rip), %eax
	movl	%eax, _m+85833(%rip)
	movl	_m+85833(%rip), %eax
	movl	%eax, %ecx
	addq	$85837, %rcx            ## imm = 0x14F4D
	movl	%ecx, %eax
	movl	%eax, -1084(%rbp)
	movl	-1084(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.70(%rip), %rdi
	movl	-1080(%rbp), %esi
	andl	$65535, %esi            ## imm = 0xFFFF
	movl	%esi, _m+68117(%rip)
	movl	-1080(%rbp), %esi
	shrl	$16, %esi
	movl	%esi, _m+68113(%rip)
	movl	$0, _m+68129(%rip)
	movl	$0, _m+68125(%rip)
	movl	-1080(%rbp), %esi
	movl	_m+68113(%rip), %edx
	movl	_m+68117(%rip), %ecx
	movl	%eax, -1292(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -1296(%rbp)       ## 4-byte Spill
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
	movb	$1, _m+68153(%rip)
	movl	-1012(%rbp), %esi
	movzbl	-1017(%rbp), %edx
	movzbl	-1018(%rbp), %ecx
	movb	$0, %al
	callq	_printf
	movl	%eax, -1300(%rbp)       ## 4-byte Spill
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
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$64000, -4(%rbp)        ## imm = 0xFA00
	jge	LBB2_6
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	leaq	_m(%rip), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 4344141(%rax,%rcx)
	je	LBB2_4
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$0, -8(%rbp)
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB2_1
LBB2_6:
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
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	L_.str.3(%rip), %rdi
	movb	_m+68157(%rip), %al
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
	movl	$4472149, %ecx          ## imm = 0x443D55
	movl	%ecx, %esi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	movl	_m+68109(%rip), %esi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	_m(%rip), %rdi
	addq	$68109, %rdi            ## imm = 0x10A0D
	movl	$4, %esi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.10(%rip), %rdi
	movl	_m+68113(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	movl	_m+68117(%rip), %esi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.12(%rip), %rdi
	movl	_m+68121(%rip), %esi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.13(%rip), %rdi
	movl	_m+68133(%rip), %esi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.14(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %r8
	movzwl	_m+68141(%rip), %esi
	movzwl	_m+68141(%rip), %ecx
	movl	%ecx, %r9d
	movl	85321(%rdx,%r9,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rdx
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.15(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %r8
	movzwl	_m+68143(%rip), %esi
	movzwl	_m+68143(%rip), %ecx
	movl	%ecx, %r9d
	movl	85321(%rdx,%r9,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rdx
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.16(%rip), %rdi
	movl	_m+68125(%rip), %esi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.17(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %r8
	movl	_m+68125(%rip), %ecx
	movl	%ecx, %r9d
	addq	%r9, %r8
	movzwl	_m+68143(%rip), %ecx
	movl	%ecx, %r9d
	movl	85321(%rdx,%r9,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rsi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.18(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %rsi
	movzwl	_m+68145(%rip), %ecx
	movzwl	_m+68145(%rip), %r10d
	movl	%r10d, %r8d
	movl	85321(%rdx,%r8,4), %r10d
	movl	%r10d, %edx
	addq	%rdx, %rsi
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	movl	%ecx, %esi
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	_m(%rip), %rdx
	addq	$68145, %rdx            ## imm = 0x10A31
	movl	$4, %esi
	movq	%rdx, %rdi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.19(%rip), %rdi
	movl	_m+68129(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.20(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %r8
	movl	_m+68129(%rip), %ecx
	movl	%ecx, %r9d
	addq	%r9, %r8
	movzwl	_m+68145(%rip), %ecx
	movl	%ecx, %r9d
	movl	85321(%rdx,%r9,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rsi
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$50, %esi
	leaq	_m(%rip), %rdx
	movq	%rdx, %rdi
	movl	_m+68129(%rip), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdi
	movzwl	_m+68145(%rip), %ecx
	movl	%ecx, %r8d
	movl	85321(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rdi
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	callq	_hexDump
	leaq	L_.str.21(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %r8
	movzwl	_m+68147(%rip), %esi
	movzwl	_m+68147(%rip), %eax
	movl	%eax, %r9d
	movl	85321(%rdx,%r9,4), %eax
	movl	%eax, %edx
	addq	%rdx, %r8
	movq	%r8, %rdx
	movb	$0, %al
	callq	_printf
	leaq	L_.str.22(%rip), %rdi
	leaq	_m(%rip), %rdx
	movq	%rdx, %r8
	movzwl	_m+68149(%rip), %esi
	movzwl	_m+68149(%rip), %ecx
	movl	%ecx, %r9d
	movl	85321(%rdx,%r9,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rdx
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.23(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$85837, %rdx            ## imm = 0x14F4D
	movq	%rdx, %rsi
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.24(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$4344141, %rdx          ## imm = 0x42494D
	movq	%rdx, %rsi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.25(%rip), %rdi
	movzbl	_m+4344141(%rip), %esi
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.26(%rip), %rdi
	movb	_m+68154(%rip), %r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.27(%rip), %rdi
	movl	_m+68929(%rip), %esi
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -108(%rbp)        ## 4-byte Spill
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
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
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
	jne	LBB4_2
## BB#1:
	leaq	L_.str.29(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	jmp	LBB4_20
LBB4_2:
	cmpl	$0, -44(%rbp)
	jge	LBB4_4
## BB#3:
	leaq	L_.str.30(%rip), %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB4_20
LBB4_4:
	movl	$0, -48(%rbp)
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB4_16
## BB#6:                                ##   in Loop: Header=BB4_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB4_10
## BB#7:                                ##   in Loop: Header=BB4_5 Depth=1
	cmpl	$0, -48(%rbp)
	je	LBB4_9
## BB#8:                                ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str.31(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
LBB4_9:                                 ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str.32(%rip), %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -80(%rbp)         ## 4-byte Spill
LBB4_10:                                ##   in Loop: Header=BB4_5 Depth=1
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
	jl	LBB4_12
## BB#11:                               ##   in Loop: Header=BB4_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB4_13
LBB4_12:                                ##   in Loop: Header=BB4_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movb	$46, -32(%rbp,%rsi)
	jmp	LBB4_14
LBB4_13:                                ##   in Loop: Header=BB4_5 Depth=1
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
LBB4_14:                                ##   in Loop: Header=BB4_5 Depth=1
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
## BB#15:                               ##   in Loop: Header=BB4_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB4_5
LBB4_16:
	jmp	LBB4_17
LBB4_17:                                ## =>This Inner Loop Header: Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB4_19
## BB#18:                               ##   in Loop: Header=BB4_17 Depth=1
	leaq	L_.str.34(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	jmp	LBB4_17
LBB4_19:
	leaq	L_.str.31(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -108(%rbp)        ## 4-byte Spill
LBB4_20:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB4_22
## BB#21:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB4_22:
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
	je	LBB5_1
	jmp	LBB5_8
LBB5_8:
	movl	-12(%rbp), %eax         ## 4-byte Reload
	subl	$969, %eax              ## imm = 0x3C9
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	je	LBB5_2
	jmp	LBB5_6
LBB5_1:
	movl	-8(%rbp), %eax
	movl	%eax, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB5_7
LBB5_2:
	cmpl	$768, _asm2C_OUT.indexPalette(%rip) ## imm = 0x300
	jge	LBB5_4
## BB#3:
	leaq	_m(%rip), %rax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movslq	_asm2C_OUT.indexPalette(%rip), %rsi
	movb	%dl, 68161(%rax,%rsi)
	movl	_asm2C_OUT.indexPalette(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB5_5
LBB5_4:
	leaq	L_.str.35(%rip), %rdi
	movl	_asm2C_OUT.indexPalette(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB5_5:
	jmp	LBB5_7
LBB5_6:
	leaq	L_.str.36(%rip), %rdi
	movswl	-2(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB5_7:
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
	jne	LBB6_4
	jmp	LBB6_1
LBB6_1:
	testb	$1, _asm2C_IN.vblTick(%rip)
	je	LBB6_3
## BB#2:
	movb	$0, _asm2C_IN.vblTick(%rip)
	movb	$0, -1(%rbp)
	jmp	LBB6_5
LBB6_3:
	movb	$1, _asm2C_IN.vblTick(%rip)
	movb	$1, _m+68158(%rip)
	movb	$8, -1(%rbp)
	jmp	LBB6_5
LBB6_4:
	leaq	L_.str.37(%rip), %rdi
	movswl	-4(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movb	$0, -1(%rbp)
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB6_5:
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
	subq	$16, %rsp
	callq	_is_little_endian
	leaq	L_.str.38(%rip), %rdi
	andb	$1, %al
	movb	%al, _m+68157(%rip)
	movb	_m+68157(%rip), %al
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
_m:
	.long	0                       ## 0x0
	.asciz	"file.txt"
	.space	64000
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
