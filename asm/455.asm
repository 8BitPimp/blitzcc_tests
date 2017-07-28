
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	mov	[_vangle],0
	jmp	_7
_6
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	call	_fmousey
	mov	[esp+12],eax
	mov	[esp+16],33
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+4],200
	mov	[esp],200
	call	_fdrawline
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_6
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	eax,[ebp+20]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	imul	eax,[ebp+36]
	mov	[ebp+20],eax
	mov	eax,[ebp+24]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	imul	eax,[ebp+36]
	mov	[ebp+24],eax
	mov	eax,[ebp+28]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	imul	eax,[ebp+36]
	mov	[ebp+28],eax
	mov	eax,[ebp+32]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	imul	eax,[ebp+36]
	mov	[ebp+32],eax
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jge	_8
	mov	[ebp-4],1
	jmp	_9
_8
	mov	[ebp-4],0
_9
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jge	_10
	mov	[ebp-8],1
	jmp	_11
_10
	mov	[ebp-8],0
_11
	sub	esp,4
	mov	eax,[ebp+20]
	sub	eax,[ebp+28]
	mov	[esp],eax
	call	__bbAbs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+24]
	sub	eax,[ebp+32]
	mov	[esp],eax
	call	__bbAbs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	cmp	[ebp-4],0
	jnz	_13
	mov	[ebp-24],-1082130432
	jmp	_14
_13
	mov	[ebp-24],1065353216
_14
	cmp	[ebp-8],0
	jnz	_15
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	jmp	_16
_15
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_16
	jmp	_17
_12
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	cmp	[ebp-4],0
	jnz	_18
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	jmp	_19
_18
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
_19
	cmp	[ebp-8],0
	jnz	_20
	mov	[ebp-28],-1082130432
	jmp	_21
_20
	mov	[ebp-28],1065353216
_21
_17
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fceil
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	[ebp-40],1
	jmp	_22
_23
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	imul	ebx,[ebp+36]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	imul	ebx,[ebp+36]
	mov	[ebp-56],ebx
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-32],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-36],esi
	add	[ebp-40],1
_22
	mov	ebx,[ebp-20]
	cmp	[ebp-40],ebx
	jle	_23
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
_vangle	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

