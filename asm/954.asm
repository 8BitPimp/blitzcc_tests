
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
_ffastline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	mov	[ebp-4],0
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	mov	[ebp-20],ebx
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-40]
	cmp	eax,ebx
	jle	_6
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-24]
	mov	[ebp-20],ebx
	mov	[ebp-4],1
_6
	mov	ebx,[ebp-20]
	mov	[ebp-12],ebx
	cmp	[ebp-20],0
	jge	_7
	mov	[ebp-8],-1
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-20],ebx
	jmp	_8
_7
	mov	[ebp-8],1
_8
	cmp	[ebp-20],0
	jnz	_9
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	jmp	_10
_9
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_10
	mov	[ebp-32],0
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_11
	mov	[ebp-36],0
	jmp	_13
_12
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	[ebp-40],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	ebx,[ebp+24]
	add	ebx,[ebp-36]
	cmp	ebx,0
	jl	_16
	mov	ebx,[ebp+24]
	add	ebx,[ebp-36]
	call	_fgraphicsheight
	cmp	ebx,eax
	jge	_17
	sub	esp,16
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	add	esi,[ebp-36]
	mov	[esp+4],esi
	call	_fwritepixel
_17
_16
_15
_14
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	add	[ebp-36],ebx
_13
	mov	ebx,[ebp-12]
	cmp	[ebp-36],ebx
	jnz	_12
_4
	jmp	_18
_11
	mov	[ebp-36],0
	jmp	_20
_19
	mov	ebx,[ebp+20]
	add	ebx,[ebp-36]
	cmp	ebx,0
	jl	_21
	mov	ebx,[ebp+20]
	add	ebx,[ebp-36]
	call	_fgraphicswidth
	cmp	ebx,eax
	jge	_22
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	[ebp-40],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_24
	sub	esp,16
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp+20]
	add	eax,[ebp-36]
	mov	[esp],eax
	call	_fwritepixel
_24
_23
_22
_21
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	add	[ebp-36],ebx
_20
	mov	ebx,[ebp-12]
	cmp	[ebp-36],ebx
	jnz	_19
_5
_18
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

