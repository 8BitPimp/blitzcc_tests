
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
_fccgradientfill
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	mov	[ebp-8],0
	jmp	_7
_8
	sub	esp,12
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	push	eax
	fild	[esp]
	pop	eax
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fccblendcolours
	mov	[ebp-12],eax
	mov	[ebp-4],0
	jmp	_9
_10
	sub	esp,12
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-16],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-16],ebx
	jnz	_11
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
_11
	add	[ebp-4],1
_9
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_10
_5
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_7
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_8
_4
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fccblendcolours
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	ebx,[ebp+20]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-16],ebx
	mov	ebx,[ebp+24]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-20],ebx
	mov	ebx,[ebp+24]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-16]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-24]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	eax,[ebp-4]
	sub	eax,[ebp-28]
	shl	eax,byte 16
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-32]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-36]
	or	eax,ebx
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

