
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],1
	mov	[ebp-8],1
	jmp	_7
_8
	sub	esp,20
	mov	[esp+4],1
	mov	[esp+8],10
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fincr
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_7
	cmp	[ebp-8],20
	jle	_8
_3
	mov	[ebp-4],10
	mov	[ebp-12],20
	jmp	_9
_10
	sub	esp,20
	mov	[esp+4],3
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecr
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-12],1
_9
	cmp	[ebp-12],1
	jle	_10
_4
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fincr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	add	ebx,[ebp+24]
	cmp	ebx,[ebp+28]
	jle	_11
	mov	eax,[ebp+28]
	jmp	_5_leave
_11
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fdecr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	sub	ebx,[ebp+24]
	cmp	ebx,[ebp+28]
	jge	_12
	mov	eax,[ebp+28]
	jmp	_6_leave
_12
	mov	eax,[ebp+20]
	sub	eax,[ebp+24]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

