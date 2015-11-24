	.text
	.file	"cm_test.bc"
	.globl	_Z5c_getPc
	.align	16, 0x90
	.type	_Z5c_getPc,@function
_Z5c_getPc:                             # @_Z5c_getPc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 80
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	leaq	40(%rsp), %r14
	movq	%r14, %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev
	movl	$_mapping_table, %edi
	callq	_ZNSt6vectorI3mapSaIS0_EE5beginEv
	movq	%rax, 40(%rsp)
	movl	$_mapping_table, %edi
	callq	_ZNSt6vectorI3mapSaIS0_EE3endEv
	movq	%rax, 32(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	je	.LBB0_4
# BB#1:
	leaq	40(%rsp), %rbx
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv
	cmpq	%r15, 8(%rax)
	je	.LBB0_4
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.LBB0_2
.LBB0_4:                                # %for.end
	movl	$_mapping_table, %edi
	callq	_ZNSt6vectorI3mapSaIS0_EE3endEv
	movq	%rax, 24(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.LBB0_9
# BB#5:                                 # %if.end12
	movq	$1, 8(%rsp)
	leaq	40(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl
	movq	%rax, 16(%rsp)
	movl	$_mapping_table, %edi
	callq	_ZNSt6vectorI3mapSaIS0_EE3endEv
	movq	%rax, (%rsp)
	leaq	16(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	xorl	%r14d, %r14d
	testb	%al, %al
	jne	.LBB0_8
# BB#6:                                 # %if.end22
	leaq	40(%rsp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv
	movq	16(%rax), %r14
	movq	32(%rax), %rbx
	cmpq	%r15, (%rbx)
	je	.LBB0_8
# BB#7:                                 # %if.then26
	movq	8(%rax), %rsi
	movq	24(%rax), %rdx
	movq	%r14, %rdi
	callq	memcpy
	movq	%r15, (%rbx)
.LBB0_8:                                # %return
	movq	%r14, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_9:                                # %if.then11
	movl	$.L.str, %edi
	callq	perror
	movl	$-1, %edi
	callq	exit
.Ltmp7:
	.size	_Z5c_getPc, .Ltmp7-_Z5c_getPc
	.cfi_endproc

	.globl	_Z10c_init_regiz
	.align	16, 0x90
	.type	_Z10c_init_regiz,@function
_Z10c_init_regiz:                       # @_Z10c_init_regiz
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 24
	subq	$216, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 240
.Ltmp11:
	.cfi_offset %rbx, -24
.Ltmp12:
	.cfi_offset %r14, -16
	movl	%edi, %ebx
	testb	%al, %al
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB1_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 200(%rsp)
	movl	$48, 196(%rsp)
	movl	$8, 192(%rsp)
	testl	%ebx, %ebx
	jle	.LBB1_8
# BB#3:                                 # %for.body.lr.ph
	leaq	184(%rsp), %r14
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	192(%rsp), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_6
# BB#5:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %rax
	addq	208(%rsp), %rax
	leal	8(%rcx), %ecx
	movl	%ecx, 192(%rsp)
	jmp	.LBB1_7
	.align	16, 0x90
.LBB1_6:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	200(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 200(%rsp)
.LBB1_7:                                # %vaarg.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%rax), %rax
	movq	%rax, 184(%rsp)
	movl	$_region_table, %edi
	movq	%r14, %rsi
	callq	_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_
	decl	%ebx
	jne	.LBB1_4
.LBB1_8:                                # %for.end
	xorl	%eax, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp13:
	.size	_Z10c_init_regiz, .Ltmp13-_Z10c_init_regiz
	.cfi_endproc

	.globl	_Z10c_init_mapiz
	.align	16, 0x90
	.type	_Z10c_init_mapiz,@function
_Z10c_init_mapiz:                       # @_Z10c_init_mapiz
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	subq	$248, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 272
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %r14, -16
	movl	%edi, %ebx
	testb	%al, %al
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB2_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 240(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 232(%rsp)
	movl	$48, 228(%rsp)
	movl	$8, 224(%rsp)
	testl	%ebx, %ebx
	jle	.LBB2_18
# BB#3:                                 # %for.body.lr.ph
	leaq	184(%rsp), %r14
	.align	16, 0x90
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	224(%rsp), %rax
	cmpq	$40, %rax
	ja	.LBB2_6
# BB#5:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rax, %rcx
	addq	240(%rsp), %rcx
	leal	8(%rax), %eax
	movl	%eax, 224(%rsp)
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_6:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	232(%rsp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, 232(%rsp)
.LBB2_7:                                # %vaarg.end
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	(%rcx), %rcx
	movq	%rcx, 184(%rsp)
	cmpl	$41, %eax
	jae	.LBB2_8
# BB#9:                                 # %vaarg.end13
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	240(%rsp), %rcx
	movslq	%eax, %rsi
	leal	8(%rax), %edx
	movl	%edx, 224(%rsp)
	movq	(%rcx,%rsi), %rsi
	movq	%rsi, 192(%rsp)
	cmpl	$41, %edx
	jae	.LBB2_10
# BB#19:                                # %vaarg.in_reg19
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	addl	$16, %eax
	movl	%eax, 224(%rsp)
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_8:                                # %vaarg.end13.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	232(%rsp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 232(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, 192(%rsp)
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_10:                               # %vaarg.end13.vaarg.in_mem21_crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	232(%rsp), %rcx
	movl	%edx, %eax
.LBB2_11:                               # %vaarg.in_mem21
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	8(%rcx), %rdx
	movq	%rdx, 232(%rsp)
.LBB2_12:                               # %vaarg.end25
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	(%rcx), %rcx
	movq	%rcx, 200(%rsp)
	cmpl	$41, %eax
	jae	.LBB2_13
# BB#14:                                # %vaarg.end37
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	240(%rsp), %rcx
	movslq	%eax, %rsi
	leal	8(%rax), %edx
	movl	%edx, 224(%rsp)
	movq	(%rcx,%rsi), %rsi
	movq	%rsi, 208(%rsp)
	cmpl	$41, %edx
	jae	.LBB2_15
# BB#20:                                # %vaarg.in_reg43
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	addl	$16, %eax
	movl	%eax, 224(%rsp)
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_13:                               # %vaarg.end37.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	232(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 232(%rsp)
	movq	(%rax), %rax
	movq	%rax, 208(%rsp)
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_15:                               # %vaarg.end37.vaarg.in_mem45_crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	232(%rsp), %rcx
.LBB2_16:                               # %vaarg.in_mem45
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	8(%rcx), %rax
	movq	%rax, 232(%rsp)
.LBB2_17:                               # %vaarg.end49
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	(%rcx), %rax
	movq	%rax, 216(%rsp)
	movl	$_mapping_table, %edi
	movq	%r14, %rsi
	callq	_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_
	decl	%ebx
	jne	.LBB2_4
.LBB2_18:                               # %for.end
	xorl	%eax, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp19:
	.size	_Z10c_init_mapiz, .Ltmp19-_Z10c_init_mapiz
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev,@function
_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev: # @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	retq
.Ltmp20:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev, .Ltmp20-_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI3mapSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI3mapSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI3mapSaIS0_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorI3mapSaIS0_EE5beginEv,@function
_ZNSt6vectorI3mapSaIS0_EE5beginEv:      # @_ZNSt6vectorI3mapSaIS0_EE5beginEv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	leaq	(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	(%rsp), %rax
	popq	%rdx
	retq
.Ltmp22:
	.size	_ZNSt6vectorI3mapSaIS0_EE5beginEv, .Ltmp22-_ZNSt6vectorI3mapSaIS0_EE5beginEv
	.cfi_endproc

	.section	.text._ZNSt6vectorI3mapSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI3mapSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI3mapSaIS0_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorI3mapSaIS0_EE3endEv,@function
_ZNSt6vectorI3mapSaIS0_EE3endEv:        # @_ZNSt6vectorI3mapSaIS0_EE3endEv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 16
	leaq	8(%rdi), %rsi
	leaq	(%rsp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	(%rsp), %rax
	popq	%rdx
	retq
.Ltmp24:
	.size	_ZNSt6vectorI3mapSaIS0_EE3endEv, .Ltmp24-_ZNSt6vectorI3mapSaIS0_EE3endEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,@function
_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_: # @_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -24
.Ltmp29:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	cmpq	(%rax), %rbx
	setne	%al
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp30:
	.size	_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .Ltmp30-_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	retq
.Ltmp31:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv, .Ltmp31-_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv,@function
_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv: # @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$40, (%rdi)
	movq	%rdi, %rax
	retq
.Ltmp32:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv, .Ltmp32-_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,@function
_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_: # @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 32
.Ltmp36:
	.cfi_offset %rbx, -24
.Ltmp37:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	cmpq	(%rax), %rbx
	sete	%al
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp38:
	.size	_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .Ltmp38-_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl,@function
_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl: # @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 32
	movq	(%rsi), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	16(%rsp), %rax
	addq	$24, %rsp
	retq
.Ltmp40:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl, .Ltmp40-_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_,@function
_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_: # @_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -24
.Ltmp45:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.LBB11_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_
	addq	$8, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB11_2:                               # %if.else
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI6regionSaIS0_EE3endEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_ # TAILCALL
.Ltmp46:
	.size	_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_, .Ltmp46-_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_
	.cfi_endproc

	.section	.text._ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_,comdat
	.weak	_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_,@function
_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_: # @_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.LBB12_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_
	addq	$40, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB12_2:                               # %if.else
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI3mapSaIS0_EE3endEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_ # TAILCALL
.Ltmp52:
	.size	_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_, .Ltmp52-_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_code_manager.cpp,@function
_GLOBAL__sub_I_code_manager.cpp:        # @_GLOBAL__sub_I_code_manager.cpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movl	$_region_table, %edi
	callq	_ZNSt6vectorI6regionSaIS0_EEC2Ev
	movl	$_ZNSt6vectorI6regionSaIS0_EED2Ev, %edi
	movl	$_region_table, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movl	$_mapping_table, %edi
	callq	_ZNSt6vectorI3mapSaIS0_EEC2Ev
	movl	$_ZNSt6vectorI3mapSaIS0_EED2Ev, %edi
	movl	$_mapping_table, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Ltmp54:
	.size	_GLOBAL__sub_I_code_manager.cpp, .Ltmp54-_GLOBAL__sub_I_code_manager.cpp
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	retq
.Ltmp55:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Ltmp55-_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Ltmp56:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv, .Ltmp56-_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_,@function
_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_: # @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_ # TAILCALL
.Ltmp57:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_, .Ltmp57-_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EE3endEv,@function
_ZNSt6vectorI6regionSaIS0_EE3endEv:     # @_ZNSt6vectorI6regionSaIS0_EE3endEv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 16
	leaq	8(%rdi), %rsi
	leaq	(%rsp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	(%rsp), %rax
	popq	%rdx
	retq
.Ltmp59:
	.size	_ZNSt6vectorI6regionSaIS0_EE3endEv, .Ltmp59-_ZNSt6vectorI6regionSaIS0_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_,@function
_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_: # @_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 80
.Ltmp67:
	.cfi_offset %rbx, -56
.Ltmp68:
	.cfi_offset %r12, -48
.Ltmp69:
	.cfi_offset %r13, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	%rsi, 16(%rsp)
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.LBB18_2
# BB#1:                                 # %if.then
	leaq	-8(%rsi), %rdx
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_
	movq	8(%rbx), %r14
	leaq	8(%r14), %rax
	movq	%rax, 8(%rbx)
	movq	(%r15), %rbp
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdi
	leaq	-8(%r14), %rsi
	movq	%r14, %rdx
	callq	_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_
	movq	%rbx, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbp, (%rax)
	jmp	.LBB18_3
.LBB18_2:                               # %invoke.cont39
	movl	$1, %esi
	movl	$.L.str3, %edx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI6regionSaIS0_EE5beginEv
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %r13
	leaq	8(%rsp), %rsi
	movq	%r13, %rdi
	callq	_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm
	movq	%rax, %r12
	leaq	(%r12,%r14,8), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_
	movq	(%rbx), %r15
	movq	%r13, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	movq	%rax, %rbp
	movq	(%rbp), %r13
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_
	leaq	8(%rax), %rdx
	movq	(%rbp), %rdi
	movq	8(%rbx), %rsi
	movq	%r14, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_
	movq	%rax, %rbp
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 16(%rbx)
.LBB18_3:                               # %if.end70
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp73:
	.size	_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_, .Ltmp73-_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_,@function
_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_: # @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_ # TAILCALL
.Ltmp74:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_, .Ltmp74-_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_
	.cfi_endproc

	.section	.text._ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_,"axG",@progbits,_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_,comdat
	.weak	_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_,@function
_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_: # @_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 128
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	%rsi, 64(%rsp)
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.LBB20_2
# BB#1:                                 # %if.then
	leaq	-40(%rsi), %rdx
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_
	movq	8(%rbx), %r14
	leaq	40(%r14), %rax
	movq	%rax, 8(%rbx)
	movq	32(%r15), %rax
	movq	%rax, 56(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 48(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 40(%rsp)
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, 24(%rsp)
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdi
	leaq	-40(%r14), %rsi
	movq	%r14, %rdx
	callq	_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_
	movq	%rbx, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv
	movq	56(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	jmp	.LBB20_3
.LBB20_2:                               # %invoke.cont39
	movl	$1, %esi
	movl	$.L.str3, %edx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI3mapSaIS0_EE5beginEv
	movq	%rax, 16(%rsp)
	leaq	64(%rsp), %r13
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm
	movq	%rax, %r12
	leaq	(%r14,%r14,4), %rax
	leaq	(%r12,%rax,8), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_
	movq	(%rbx), %r15
	movq	%r13, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	movq	%rax, %rbp
	movq	(%rbp), %r13
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_
	leaq	40(%rax), %rdx
	movq	(%rbp), %rdi
	movq	8(%rbx), %rsi
	movq	%r14, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_
	movq	%rax, %rbp
	movq	(%rbx), %rsi
	movq	16(%rbx), %rax
	subq	%rsi, %rax
	sarq	$3, %rax
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rax, %rdx
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%rax,4), %rax
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 16(%rbx)
.LBB20_3:                               # %if.end70
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp88:
	.size	_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_, .Ltmp88-_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EEC2Ev,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EEC2Ev,@function
_ZNSt6vectorI6regionSaIS0_EEC2Ev:       # @_ZNSt6vectorI6regionSaIS0_EEC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev # TAILCALL
.Ltmp89:
	.size	_ZNSt6vectorI6regionSaIS0_EEC2Ev, .Ltmp89-_ZNSt6vectorI6regionSaIS0_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EED2Ev,@function
_ZNSt6vectorI6regionSaIS0_EED2Ev:       # @_ZNSt6vectorI6regionSaIS0_EED2Ev
	.cfi_startproc
# BB#0:                                 # %invoke.cont3
	jmp	_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev # TAILCALL
.Ltmp90:
	.size	_ZNSt6vectorI6regionSaIS0_EED2Ev, .Ltmp90-_ZNSt6vectorI6regionSaIS0_EED2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI3mapSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI3mapSaIS0_EEC2Ev,comdat
	.weak	_ZNSt6vectorI3mapSaIS0_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI3mapSaIS0_EEC2Ev,@function
_ZNSt6vectorI3mapSaIS0_EEC2Ev:          # @_ZNSt6vectorI3mapSaIS0_EEC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev # TAILCALL
.Ltmp91:
	.size	_ZNSt6vectorI3mapSaIS0_EEC2Ev, .Ltmp91-_ZNSt6vectorI3mapSaIS0_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI3mapSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI3mapSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI3mapSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI3mapSaIS0_EED2Ev,@function
_ZNSt6vectorI3mapSaIS0_EED2Ev:          # @_ZNSt6vectorI3mapSaIS0_EED2Ev
	.cfi_startproc
# BB#0:                                 # %invoke.cont3
	jmp	_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev # TAILCALL
.Ltmp92:
	.size	_ZNSt6vectorI3mapSaIS0_EED2Ev, .Ltmp92-_ZNSt6vectorI3mapSaIS0_EED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_,@function
_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_: # @_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB25_2
# BB#1:                                 # %new.notnull
	movq	(%rdx), %rax
	movq	%rax, (%rsi)
.LBB25_2:                               # %new.cont
	retq
.Ltmp93:
	.size	_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_, .Ltmp93-_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	retq
.Ltmp94:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Ltmp94-_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Ltmp95:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv, .Ltmp95-_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc

	.section	.text._ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_,@function
_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_: # @_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 32
.Ltmp99:
	.cfi_offset %rbx, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp102:
	.size	_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_, .Ltmp102-_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	retq
.Ltmp103:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv, .Ltmp103-_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 64
.Ltmp110:
	.cfi_offset %rbx, -48
.Ltmp111:
	.cfi_offset %r12, -40
.Ltmp112:
	.cfi_offset %r13, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movabsq	$2305843009213693951, %r13 # imm = 0x1FFFFFFFFFFFFFFF
	movq	%r12, 8(%rsp)
                                        # kill: RDI<def> R14<kill>
	callq	_ZNKSt6vectorI6regionSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	%r13, %rax
	subq	%rbx, %rax
	cmpq	%r12, %rax
	jb	.LBB30_2
# BB#1:                                 # %if.end
	movq	%rbx, (%rsp)
	leaq	(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI6regionSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	cmpq	%rbx, %r13
	setb	%cl
	orb	%al, %cl
	cmovneq	%r13, %rbx
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB30_2:                               # %if.then
	movq	%r15, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp115:
	.size	_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc, .Ltmp115-_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EE5beginEv,@function
_ZNSt6vectorI6regionSaIS0_EE5beginEv:   # @_ZNSt6vectorI6regionSaIS0_EE5beginEv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp116:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	leaq	(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	(%rsp), %rax
	popq	%rdx
	retq
.Ltmp117:
	.size	_ZNSt6vectorI6regionSaIS0_EE5beginEv, .Ltmp117-_ZNSt6vectorI6regionSaIS0_EE5beginEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,@function
_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_: # @_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp120:
	.cfi_def_cfa_offset 32
.Ltmp121:
	.cfi_offset %rbx, -24
.Ltmp122:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv
	subq	(%rax), %rbx
	sarq	$3, %rbx
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp123:
	.size	_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .Ltmp123-_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB33_1
# BB#2:                                 # %cond.true
	xorl	%edx, %edx
	jmp	_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv # TAILCALL
.LBB33_1:                               # %cond.end
	xorl	%eax, %eax
	retq
.Ltmp124:
	.size	_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm, .Ltmp124-_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Ltmp125:
	.size	_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv, .Ltmp125-_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_
	.align	16, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E # TAILCALL
.Ltmp126:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_, .Ltmp126-_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB36_1
# BB#2:                                 # %if.then
	jmp	_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m # TAILCALL
.LBB36_1:                               # %if.end
	retq
.Ltmp127:
	.size	_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m, .Ltmp127-_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_,@function
_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_: # @_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB37_2
# BB#1:                                 # %new.notnull
	movq	32(%rdx), %rax
	movq	%rax, 32(%rsi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsi)
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rsi)
	movq	%rax, (%rsi)
.LBB37_2:                               # %new.cont
	retq
.Ltmp128:
	.size	_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_, .Ltmp128-_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_
	.cfi_endproc

	.section	.text._ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_,@function
_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_: # @_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 32
.Ltmp132:
	.cfi_offset %rbx, -32
.Ltmp133:
	.cfi_offset %r14, -24
.Ltmp134:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp135:
	.size	_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_, .Ltmp135-_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 64
.Ltmp142:
	.cfi_offset %rbx, -48
.Ltmp143:
	.cfi_offset %r12, -40
.Ltmp144:
	.cfi_offset %r13, -32
.Ltmp145:
	.cfi_offset %r14, -24
.Ltmp146:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movabsq	$461168601842738790, %r13 # imm = 0x666666666666666
	movq	%r12, 8(%rsp)
                                        # kill: RDI<def> R14<kill>
	callq	_ZNKSt6vectorI3mapSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	%r13, %rax
	subq	%rbx, %rax
	cmpq	%r12, %rax
	jb	.LBB39_2
# BB#1:                                 # %if.end
	movq	%rbx, (%rsp)
	leaq	(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI3mapSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	cmpq	%rbx, %r13
	setb	%cl
	orb	%al, %cl
	cmovneq	%r13, %rbx
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB39_2:                               # %if.then
	movq	%r15, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp147:
	.size	_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc, .Ltmp147-_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,@function
_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_: # @_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp150:
	.cfi_def_cfa_offset 32
.Ltmp151:
	.cfi_offset %rbx, -24
.Ltmp152:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv
	subq	(%rax), %rbx
	sarq	$3, %rbx
	movabsq	$-3689348814741910323, %rax # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp153:
	.size	_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .Ltmp153-_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB41_1
# BB#2:                                 # %cond.true
	xorl	%edx, %edx
	jmp	_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv # TAILCALL
.LBB41_1:                               # %cond.end
	xorl	%eax, %eax
	retq
.Ltmp154:
	.size	_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm, .Ltmp154-_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Ltmp155:
	.size	_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv, .Ltmp155-_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_
	.align	16, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E # TAILCALL
.Ltmp156:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_, .Ltmp156-_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB44_1
# BB#2:                                 # %if.then
	jmp	_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m # TAILCALL
.LBB44_1:                               # %if.end
	retq
.Ltmp157:
	.size	_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m, .Ltmp157-_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev,@function
_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev: # @_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev # TAILCALL
.Ltmp158:
	.size	_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev, .Ltmp158-_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI6regionSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev
	.cfi_startproc
# BB#0:                                 # %invoke.cont
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	jmp	_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m # TAILCALL
.Ltmp159:
	.size	_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev, .Ltmp159-_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev,@function
_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev:   # @_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev # TAILCALL
.Ltmp160:
	.size	_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev, .Ltmp160-_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI3mapSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev:   # @_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev
	.cfi_startproc
# BB#0:                                 # %invoke.cont
	movq	(%rdi), %rsi
	movq	16(%rdi), %rax
	subq	%rsi, %rax
	sarq	$3, %rax
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rax, %rdx
	jmp	_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m # TAILCALL
.Ltmp161:
	.size	_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev, .Ltmp161-_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_,@function
_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_: # @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_ # TAILCALL
.Ltmp162:
	.size	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_, .Ltmp162-_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_,@function
_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_: # @_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 32
.Ltmp166:
	.cfi_offset %rbx, -32
.Ltmp167:
	.cfi_offset %r14, -24
.Ltmp168:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp169:
	.size	_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_, .Ltmp169-_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorI6regionSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI6regionSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI6regionSaIS0_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI6regionSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI6regionSaIS0_EE4sizeEv:   # @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	retq
.Ltmp170:
	.size	_ZNKSt6vectorI6regionSaIS0_EE4sizeEv, .Ltmp170-_ZNKSt6vectorI6regionSaIS0_EE4sizeEv
	.cfi_endproc

	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.align	16, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	jb	.LBB52_2
# BB#1:                                 # %select.mid
	movq	%rdi, %rsi
.LBB52_2:                               # %select.end
	movq	%rsi, %rax
	retq
.Ltmp171:
	.size	_ZSt3maxImERKT_S2_S2_, .Ltmp171-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp172:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	shrq	$61, %rax
	jne	.LBB53_1
# BB#2:                                 # %if.end
	shlq	$3, %rsi
	movq	%rsi, %rdi
	popq	%rax
	jmp	_Znwm                   # TAILCALL
.LBB53_1:                               # %if.then
	callq	_ZSt17__throw_bad_allocv
.Ltmp173:
	.size	_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv, .Ltmp173-_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_ # TAILCALL
.Ltmp174:
	.size	_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E, .Ltmp174-_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	_ZdlPv                  # TAILCALL
.Ltmp175:
	.size	_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m, .Ltmp175-_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_,@function
_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_: # @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_ # TAILCALL
.Ltmp176:
	.size	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_, .Ltmp176-_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_,@function
_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_: # @_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 32
.Ltmp180:
	.cfi_offset %rbx, -32
.Ltmp181:
	.cfi_offset %r14, -24
.Ltmp182:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp183:
	.size	_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_, .Ltmp183-_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorI3mapSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI3mapSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI3mapSaIS0_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI3mapSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI3mapSaIS0_EE4sizeEv:      # @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rcx
	subq	(%rdi), %rcx
	sarq	$3, %rcx
	movabsq	$-3689348814741910323, %rax # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rcx, %rax
	retq
.Ltmp184:
	.size	_ZNKSt6vectorI3mapSaIS0_EE4sizeEv, .Ltmp184-_ZNKSt6vectorI3mapSaIS0_EE4sizeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp185:
	.cfi_def_cfa_offset 16
	movabsq	$461168601842738791, %rax # imm = 0x666666666666667
	cmpq	%rax, %rsi
	jae	.LBB59_1
# BB#2:                                 # %if.end
	shlq	$3, %rsi
	leaq	(%rsi,%rsi,4), %rdi
	popq	%rax
	jmp	_Znwm                   # TAILCALL
.LBB59_1:                               # %if.then
	callq	_ZSt17__throw_bad_allocv
.Ltmp186:
	.size	_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv, .Ltmp186-_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_ # TAILCALL
.Ltmp187:
	.size	_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E, .Ltmp187-_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	_ZdlPv                  # TAILCALL
.Ltmp188:
	.size	_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m, .Ltmp188-_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	retq
.Ltmp189:
	.size	_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev, .Ltmp189-_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	retq
.Ltmp190:
	.size	_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev, .Ltmp190-_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_,"axG",@progbits,_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_,comdat
	.weak	_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_,@function
_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_: # @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Ltmp191:
	.size	_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_, .Ltmp191-_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_,@function
_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_: # @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_ # TAILCALL
.Ltmp192:
	.size	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_, .Ltmp192-_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_,@function
_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_: # @_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_ # TAILCALL
.Ltmp193:
	.size	_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_, .Ltmp193-_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_,@function
_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_: # @_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_ # TAILCALL
.Ltmp194:
	.size	_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_, .Ltmp194-_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_,"axG",@progbits,_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_,comdat
	.weak	_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_,@function
_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_: # @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Ltmp195:
	.size	_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_, .Ltmp195-_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_,@function
_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_: # @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_ # TAILCALL
.Ltmp196:
	.size	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_, .Ltmp196-_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_,@function
_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_: # @_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_ # TAILCALL
.Ltmp197:
	.size	_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_, .Ltmp197-_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_,@function
_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_: # @_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_ # TAILCALL
.Ltmp198:
	.size	_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_, .Ltmp198-_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_
	.align	16, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_,@function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_: # @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rdi, %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	sarq	$3, %rdx
	movq	%rax, %rsi
	andq	$-8, %rsi
	subq	%rsi, %rbx
	testq	%rdx, %rdx
	je	.LBB72_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	memmove
.LBB72_2:                               # %if.end
	movq	%rbx, %rax
	popq	%rbx
	retq
.Ltmp201:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_, .Ltmp201-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZSt4copyIP6regionS1_ET0_T_S3_S2_ # TAILCALL
.Ltmp202:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_, .Ltmp202-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_
	.cfi_endproc

	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_
	.align	16, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_,@function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_: # @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	%rdi, %rsi
	movq	%rcx, %rax
	subq	%rsi, %rax
	movabsq	$-7378697629483820647, %rdx # imm = 0x9999999999999999
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$4, %rdx
	addq	%rax, %rdx
	subq	%rsi, %rcx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rbx,%rax,8), %rbx
	je	.LBB74_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	memmove
.LBB74_2:                               # %if.end
	movq	%rbx, %rax
	popq	%rbx
	retq
.Ltmp205:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_, .Ltmp205-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZSt4copyIP3mapS1_ET0_T_S3_S2_ # TAILCALL
.Ltmp206:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_, .Ltmp206-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_
	.cfi_endproc

	.section	.text._ZSt4copyIP6regionS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIP6regionS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIP6regionS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt4copyIP6regionS1_ET0_T_S3_S2_,@function
_ZSt4copyIP6regionS1_ET0_T_S3_S2_:      # @_ZSt4copyIP6regionS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp209:
	.cfi_def_cfa_offset 32
.Ltmp210:
	.cfi_offset %rbx, -32
.Ltmp211:
	.cfi_offset %r14, -24
.Ltmp212:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp213:
	.size	_ZSt4copyIP6regionS1_ET0_T_S3_S2_, .Ltmp213-_ZSt4copyIP6regionS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZSt4copyIP3mapS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIP3mapS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIP3mapS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt4copyIP3mapS1_ET0_T_S3_S2_,@function
_ZSt4copyIP3mapS1_ET0_T_S3_S2_:         # @_ZSt4copyIP3mapS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp214:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 32
.Ltmp217:
	.cfi_offset %rbx, -32
.Ltmp218:
	.cfi_offset %r14, -24
.Ltmp219:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp220:
	.size	_ZSt4copyIP3mapS1_ET0_T_S3_S2_, .Ltmp220-_ZSt4copyIP3mapS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp221:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 32
.Ltmp224:
	.cfi_offset %rbx, -32
.Ltmp225:
	.cfi_offset %r14, -24
.Ltmp226:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp227:
	.size	_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_, .Ltmp227-_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp228:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp229:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 32
.Ltmp231:
	.cfi_offset %rbx, -32
.Ltmp232:
	.cfi_offset %r14, -24
.Ltmp233:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_ # TAILCALL
.Ltmp234:
	.size	_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_, .Ltmp234-_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_,@function
_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_: # @_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_ # TAILCALL
.Ltmp235:
	.size	_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_, .Ltmp235-_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_,@function
_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_: # @_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_ # TAILCALL
.Ltmp236:
	.size	_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_, .Ltmp236-_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_
	.align	16, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp237:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp238:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp239:
	.cfi_def_cfa_offset 32
.Ltmp240:
	.cfi_offset %rbx, -24
.Ltmp241:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rcx
	subq	%rcx, %rax
	movq	%rax, %rbx
	sarq	$3, %rbx
	je	.LBB82_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	memmove
.LBB82_2:                               # %if.end
	leaq	(%r14,%rbx,8), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp242:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_, .Ltmp242-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_
	.cfi_endproc

	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_
	.align	16, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp243:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp244:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp245:
	.cfi_def_cfa_offset 32
.Ltmp246:
	.cfi_offset %rbx, -24
.Ltmp247:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rbx # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rdx, %rbx
	subq	%rcx, %rax
	je	.LBB83_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	memmove
.LBB83_2:                               # %if.end
	leaq	(%rbx,%rbx,4), %rax
	leaq	(%r14,%rax,8), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Ltmp248:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_, .Ltmp248-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_
	.cfi_endproc

	.text
	.globl	_Z2f1i
	.align	16, 0x90
	.type	_Z2f1i,@function
_Z2f1i:                                 # @_Z2f1i
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp250:
	.cfi_def_cfa_offset 32
.Ltmp251:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	$_Z6c_call, 8(%rsp)
	movl	$_Z6c_call, %eax
	movl	$_Z2f1i, %edi
	movl	$_Z2f2ii, %esi
	movl	$33, %edx
	movl	$67, %ecx
	callq	*%rax
	imull	$10, %ebx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Ltmp252:
	.size	_Z2f1i, .Ltmp252-_Z2f1i
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI85_0:
	.quad	4617315517961601024     # double 5
.LCPI85_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_Z2f2ii
	.align	16, 0x90
	.type	_Z2f2ii,@function
_Z2f2ii:                                # @_Z2f2ii
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp254:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp255:
	.cfi_def_cfa_offset 32
.Ltmp256:
	.cfi_offset %rbx, -24
.Ltmp257:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movl	%edi, %ebp
	movq	$_Z6c_call1, (%rsp)
	movl	$_Z6c_call1, %eax
	movsd	.LCPI85_0(%rip), %xmm1
	movsd	.LCPI85_1(%rip), %xmm0
	movl	$_Z2f2ii, %edi
	movl	$_Z2f3ddd, %esi
	movaps	%xmm0, %xmm2
	callq	*%rax
	imull	%ebx, %ebp
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Ltmp258:
	.size	_Z2f2ii, .Ltmp258-_Z2f2ii
	.cfi_endproc

	.globl	_Z2f3ddd
	.align	16, 0x90
	.type	_Z2f3ddd,@function
_Z2f3ddd:                               # @_Z2f3ddd
	.cfi_startproc
# BB#0:                                 # %entry
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	retq
.Ltmp259:
	.size	_Z2f3ddd, .Ltmp259-_Z2f3ddd
	.cfi_endproc

	.globl	_Z2f4v
	.align	16, 0x90
	.type	_Z2f4v,@function
_Z2f4v:                                 # @_Z2f4v
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp260:
	.cfi_def_cfa_offset 32
	movq	$_Z6c_call, 16(%rsp)
	movl	$_Z6c_call, %eax
	movl	$_Z2f4v, %edi
	movl	$_Z2f5ii, %esi
	movl	$3, %edx
	movl	$4, %ecx
	callq	*%rax
	movl	%eax, %ecx
	movq	$printf, 8(%rsp)
	movl	$printf, %edx
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	*%rdx
	addq	$24, %rsp
	retq
.Ltmp261:
	.size	_Z2f4v, .Ltmp261-_Z2f4v
	.cfi_endproc

	.globl	_Z2f5ii
	.align	16, 0x90
	.type	_Z2f5ii,@function
_Z2f5ii:                                # @_Z2f5ii
	.cfi_startproc
# BB#0:                                 # %entry
                                        # kill: ESI<def> ESI<kill> RSI<def>
                                        # kill: EDI<def> EDI<kill> RDI<def>
	imull	%edi, %edi
	imull	%esi, %esi
	leal	(%rsi,%rdi), %eax
	retq
.Ltmp262:
	.size	_Z2f5ii, .Ltmp262-_Z2f5ii
	.cfi_endproc

	.globl	_Z6c_mainiPPc
	.align	16, 0x90
	.type	_Z6c_mainiPPc,@function
_Z6c_mainiPPc:                          # @_Z6c_mainiPPc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp263:
	.cfi_def_cfa_offset 32
	movq	$_Z6c_call2, 16(%rsp)
	movl	$_Z6c_call2, %eax
	movl	$_Z6c_mainiPPc, %edi
	movl	$_Z2f1i, %esi
	movl	$18, %edx
	callq	*%rax
	movl	%eax, %ecx
	movq	$printf, 8(%rsp)
	movl	$printf, %edx
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	*%rdx
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Ltmp264:
	.size	_Z6c_mainiPPc, .Ltmp264-_Z6c_mainiPPc
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$120, %rsp
.Ltmp265:
	.cfi_def_cfa_offset 128
	movl	$1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_Z10c_init_regiz
	movl	$_region_table, %edi
	xorl	%esi, %esi
	callq	_ZNSt6vectorI6regionSaIS0_EEixEm
	movq	%rax, %r9
	movq	%r9, 112(%rsp)
	movq	%r9, 72(%rsp)
	movq	%r9, 32(%rsp)
	movl	$112, 104(%rsp)
	movq	$spm_code, 96(%rsp)
	movq	$_Z6c_mainiPPc, 88(%rsp)
	movq	$.L.str4, 80(%rsp)
	movl	$48, 64(%rsp)
	movq	$spm_code, 56(%rsp)
	movq	$_Z2f3ddd, 48(%rsp)
	movq	$.L.str33, 40(%rsp)
	movl	$128, 24(%rsp)
	movq	$spm_code, 16(%rsp)
	movq	$_Z2f2ii, 8(%rsp)
	movq	$.L.str2, (%rsp)
	movl	$4, %edi
	movl	$.L.str12, %esi
	movl	$_Z2f1i, %edx
	movl	$spm_code, %ecx
	movl	$80, %r8d
	xorl	%eax, %eax
	callq	_Z10c_init_mapiz
	callq	_Z6c_mainiPPc
	xorl	%eax, %eax
	addq	$120, %rsp
	retq
.Ltmp266:
	.size	main, .Ltmp266-main
	.cfi_endproc

	.section	.text._ZNSt6vectorI6regionSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI6regionSaIS0_EEixEm,comdat
	.weak	_ZNSt6vectorI6regionSaIS0_EEixEm
	.align	16, 0x90
	.type	_ZNSt6vectorI6regionSaIS0_EEixEm,@function
_ZNSt6vectorI6regionSaIS0_EEixEm:       # @_ZNSt6vectorI6regionSaIS0_EEixEm
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	(,%rsi,8), %rax
	addq	(%rdi), %rax
	retq
.Ltmp267:
	.size	_ZNSt6vectorI6regionSaIS0_EEixEm, .Ltmp267-_ZNSt6vectorI6regionSaIS0_EEixEm
	.cfi_endproc

	.section	.text._Z6c_call,"axG",@progbits,_Z6c_call,comdat
	.weak	_Z6c_call
	.align	16, 0x90
	.type	_Z6c_call,@function
_Z6c_call:                              # @_Z6c_call
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp268:
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movq	24(%rsp), %rdi
	callq	_Z5c_getPc
	movq	%rax, 8(%rsp)
	movl	20(%rsp), %edi
	movl	16(%rsp), %esi
	callq	*%rax
	movl	%eax, 4(%rsp)
	movq	32(%rsp), %rdi
	callq	_Z5c_getPc
	movl	4(%rsp), %eax
	addq	$40, %rsp
	retq
.Ltmp269:
	.size	_Z6c_call, .Ltmp269-_Z6c_call
	.cfi_endproc

	.section	.text._Z6c_call1,"axG",@progbits,_Z6c_call1,comdat
	.weak	_Z6c_call1
	.align	16, 0x90
	.type	_Z6c_call1,@function
_Z6c_call1:                             # @_Z6c_call1
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp270:
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	movq	40(%rsp), %rdi
	callq	_Z5c_getPc
	movq	%rax, 8(%rsp)
	movsd	32(%rsp), %xmm0
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm2
	callq	*%rax
	movsd	%xmm0, (%rsp)
	movq	48(%rsp), %rdi
	callq	_Z5c_getPc
	movsd	(%rsp), %xmm0
	addq	$56, %rsp
	retq
.Ltmp271:
	.size	_Z6c_call1, .Ltmp271-_Z6c_call1
	.cfi_endproc

	.section	.text._Z6c_call2,"axG",@progbits,_Z6c_call2,comdat
	.weak	_Z6c_call2
	.align	16, 0x90
	.type	_Z6c_call2,@function
_Z6c_call2:                             # @_Z6c_call2
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp272:
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movq	24(%rsp), %rdi
	callq	_Z5c_getPc
	movq	%rax, 8(%rsp)
	movl	20(%rsp), %edi
	callq	*%rax
	movl	%eax, 4(%rsp)
	movq	32(%rsp), %rdi
	callq	_Z5c_getPc
	movl	4(%rsp), %eax
	addq	$40, %rsp
	retq
.Ltmp273:
	.size	_Z6c_call2, .Ltmp273-_Z6c_call2
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_region_table,@object   # @_region_table
	.bss
	.globl	_region_table
	.align	8
_region_table:
	.zero	24
	.size	_region_table, 24

	.type	_mapping_table,@object  # @_mapping_table
	.globl	_mapping_table
	.align	8
_mapping_table:
	.zero	24
	.size	_mapping_table, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"c_get: function not found in mapping table!"
	.size	.L.str, 44

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"vector::_M_insert_aux"
	.size	.L.str3, 22

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_code_manager.cpp
	.type	spm_code,@object        # @spm_code
	.bss
	.globl	spm_code
	.align	16
spm_code:
	.zero	4096
	.size	spm_code, 4096

	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	"%d\n"
	.size	.L.str1, 4

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"f1"
	.size	.L.str12, 3

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"f2"
	.size	.L.str2, 3

	.type	.L.str33,@object        # @.str33
.L.str33:
	.asciz	"f3"
	.size	.L.str33, 3

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"c_main"
	.size	.L.str4, 7


	.ident	"clang version 3.6.0 (trunk 220547)"
	.ident	"clang version 3.6.0 (trunk 220547)"
	.section	".note.GNU-stack","",@progbits
