
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
	sub	esp,16
	mov	[esp+8],100
	mov	[esp+12],8
	mov	[esp+4],100
	mov	[esp],100
	call	_fcircle
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcircle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+32],0
	jnz	_5
	mov	eax,0
	jmp	_3_leave
_5
	mov	[ebp-4],0
	jmp	_6
_7
	sub	esp,20
	mov	eax,360
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	ebx,[ebp-4]
	add	ebx,1
	imul	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,360
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	esi,[ebp-4]
	add	esi,1
	imul	eax,esi
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	edi,[ebp+24]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,360
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	imul	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	edi,[ebp+24]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,360
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	imul	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	edi,[ebp+20]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	add	[ebp-4],1
_6
	mov	ebx,[ebp+32]
	cmp	[ebp-4],ebx
	jle	_7
_4
	mov	eax,0
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

