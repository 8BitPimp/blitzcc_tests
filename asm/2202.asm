
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvolledigehoek
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],0
	mov	[ebp-8],1024
	mov	[ebp-12],0
	jmp	_5
_6
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1129512960
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1129512960
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	add	[ebp-4],1
	sub	esp,12
	mov	eax,[ebp-16]
	sub	eax,[ebp+28]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	sub	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-32]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jge	_7
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
_7
	add	[ebp-12],1
_5
	cmp	[ebp-12],360
	jle	_6
_4
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	jmp	_3_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

