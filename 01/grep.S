g:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	addl	$3, %eax
	popl	%ebp
	ret
f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	8(%ebp)
	call	g
	addl	$4, %esp
	leave
	ret
main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	$8
	call	f
	addl	$4, %esp
	addl	$1, %eax
	leave
	ret
