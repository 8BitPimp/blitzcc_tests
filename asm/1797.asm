
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,__DATA
	mov	[esp],eax
	call	__bbRestore
	sub	esp,4
	mov	eax,__LIBS
	mov	[esp],eax
	call	__bbLoadLibs
	call	_2_begin
	jmp	_2_leave
_2_begin
	sub	esp,8
	mov	eax,_3
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_3	.db	"No Code as it was a wrong entry",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

