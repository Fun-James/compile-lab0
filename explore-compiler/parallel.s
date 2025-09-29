	.file	"parallel.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1565:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1565:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB3082:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %r12
	testq	%r12, %r12
	je	.L9
	cmpb	$0, 56(%r12)
	movq	%rdi, %rbp
	je	.L5
	movsbl	67(%r12), %esi
.L6:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L5:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L6
	movl	$10, %esi
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L6
.L9:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3082:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, @function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2867:
	.cfi_startproc
	endbr64
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	.L10
	movq	16(%rdi), %rsi
	movq	%r8, %rdi
	subq	%r8, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L10:
	ret
	.cfi_endproc
.LFE2867:
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Last element: "
.LC1:
	.string	"Elapsed time: "
.LC3:
	.string	" s"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2466:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2466
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$40000000, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$152, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	leaq	main._loopfn.2(%rip), %rdi
	leaq	8(%rsp), %rsi
	xorl	%ecx, %ecx
	leaq	40000000(%rax), %rbx
	movl	$4, %edx
	movq	%rax, 16(%rsp)
	movq	%rax, %r12
	movq	%rbx, 32(%rsp)
	movq	%rax, 8(%rsp)
	call	GOMP_parallel@PLT
	movl	$40000000, %edi
	movq	%rbx, 24(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	leaq	40000000(%rax), %rbx
	movq	%rsp, %rsi
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	leaq	main._loopfn.1(%rip), %rdi
	movl	$4, %edx
	movq	%rax, 48(%rsp)
	movq	%rax, %rbp
	movq	%rbx, 64(%rsp)
	call	GOMP_parallel@PLT
	movl	$40000000, %edi
	movq	%rbx, 56(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	leaq	40000000(%rax), %r13
	leaq	4(%rax), %rdi
	movq	%rax, 80(%rsp)
	movq	%rax, %rbx
	movq	%r13, 96(%rsp)
	movl	$0, (%rax)
	cmpq	%r13, %rdi
	je	.L13
	movl	$39999996, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L13:
	movq	%r13, 88(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	112(%rsp), %rsi
	leaq	main._loopfn.0(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 120(%rsp)
	movl	$4, %edx
	leaq	_ZSt4cout(%rip), %r12
	movq	%rax, %r13
	movq	%rbp, 112(%rsp)
	movq	%rbx, 128(%rsp)
	call	GOMP_parallel@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	.LC0(%rip), %rsi
	movq	%r12, %rdi
	movq	%rax, %rbp
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	39999996(%rbx), %esi
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	.LC1(%rip), %rsi
	movq	%r12, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	subq	%r13, %rbp
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
	cvtsi2sdq	%rbp, %xmm0
	divsd	.LC2(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC3(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE3:
	leaq	80(%rsp), %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	leaq	48(%rsp), %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	leaq	16(%rsp), %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L23
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L23:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L20:
	endbr64
	movq	%rax, %rbp
	jmp	.L14
.L19:
	endbr64
	movq	%rax, %rbp
	jmp	.L15
.L18:
	endbr64
	movq	%rax, %rbp
	jmp	.L16
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2466:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2466-.LLSDACSB2466
.LLSDACSB2466:
	.uleb128 .LEHB0-.LFB2466
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2466
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB2466
	.uleb128 0
	.uleb128 .LEHB2-.LFB2466
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L19-.LFB2466
	.uleb128 0
	.uleb128 .LEHB3-.LFB2466
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L20-.LFB2466
	.uleb128 0
.LLSDACSE2466:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2466
	.type	main.cold, @function
main.cold:
.LFSB2466:
.L14:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	leaq	80(%rsp), %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
.L15:
	leaq	48(%rsp), %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
.L16:
	leaq	16(%rsp), %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbp, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE2466:
	.section	.gcc_except_table
.LLSDAC2466:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2466-.LLSDACSBC2466
.LLSDACSBC2466:
	.uleb128 .LEHB4-.LCOLDB4
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2466:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3076:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3076:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.text
	.p2align 4
	.type	main._loopfn.2, @function
main._loopfn.2:
.LFB3088:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rbp
	call	omp_get_num_threads@PLT
	movslq	%eax, %rbx
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movl	$10000000, %eax
	divq	%rbx
	cmpq	%rdx, %rcx
	jnb	.L30
	addq	$1, %rax
	xorl	%edx, %edx
.L30:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L26
	leaq	0(%rbp,%rdx,4), %rdx
	leaq	0(%rbp,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L29:
	movl	$1, (%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.L29
.L26:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3088:
	.size	main._loopfn.2, .-main._loopfn.2
	.p2align 4
	.type	main._loopfn.1, @function
main._loopfn.1:
.LFB3087:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rbp
	call	omp_get_num_threads@PLT
	movslq	%eax, %rbx
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movl	$10000000, %eax
	divq	%rbx
	cmpq	%rdx, %rcx
	jnb	.L37
	addq	$1, %rax
	xorl	%edx, %edx
.L37:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L33
	leaq	0(%rbp,%rdx,4), %rdx
	leaq	0(%rbp,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L36:
	movl	$2, (%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.L36
.L33:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3087:
	.size	main._loopfn.1, .-main._loopfn.1
	.p2align 4
	.type	main._loopfn.0, @function
main._loopfn.0:
.LFB3086:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	16(%rdi), %rbx
	movq	8(%rdi), %rbp
	movq	(%rdi), %r12
	call	omp_get_num_threads@PLT
	movl	%eax, %r13d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	$10000000, %eax
	divl	%r13d
	cmpl	%edx, %ecx
	jnb	.L44
	addl	$1, %eax
	xorl	%edx, %edx
.L44:
	imull	%eax, %ecx
	addl	%ecx, %edx
	leal	(%rax,%rdx), %esi
	cmpl	%esi, %edx
	jnb	.L40
	.p2align 4,,10
	.p2align 3
.L43:
	movslq	%edx, %rax
	addl	$1, %edx
	movl	(%r12,%rax,4), %ecx
	addl	0(%rbp,%rax,4), %ecx
	movl	%ecx, (%rbx,%rax,4)
	cmpl	%edx, %esi
	jne	.L43
.L40:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3086:
	.size	main._loopfn.0, .-main._loopfn.0
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
