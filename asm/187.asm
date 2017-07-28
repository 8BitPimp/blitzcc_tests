
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
_falpha_precalc_image
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,[ebp-8]
	add	esi,1
	imul	ebx,esi
	shl	ebx,byte 2
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	imul	ebx,101
	add	ebx,8
	mov	[ebp-16],ebx
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-20],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	[esp+4],2
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokeshort
	mov	[ebp-24],4
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
	mov	[ebp-28],0
	jmp	_10
_11
	mov	[ebp-32],0
	jmp	_12
_13
	mov	[ebp-36],0
	jmp	_14
_15
	sub	esp,12
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-40],eax
	mov	ebx,[ebp-40]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-40]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-40]
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-56]
	cmp	[ebp-48],ebx
	jle	_16
	mov	ebx,[ebp-48]
	mov	[ebp-56],ebx
	jmp	_17
_16
	mov	ebx,[ebp-56]
	cmp	[ebp-52],ebx
	jle	_18
	mov	ebx,[ebp-52]
	mov	[ebp-56],ebx
_18
_17
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	ebx,[ebp-24]
	add	ebx,2
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	ebx,[ebp-24]
	add	ebx,3
	mov	[esp+4],ebx
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-24],4
	add	[ebp-36],1
_14
	mov	ebx,[ebp-4]
	cmp	[ebp-36],ebx
	jle	_15
_6
	add	[ebp-32],1
_12
	mov	ebx,[ebp-8]
	cmp	[ebp-32],ebx
	jle	_13
_5
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_10
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_11
_4
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-20]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_falpha_render_image
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekshort
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fpeekshort
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	sub	[ebp+24],ebx
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	sub	[ebp+28],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,[ebp-8]
	add	esi,1
	imul	ebx,esi
	shl	ebx,byte 2
	mov	[ebp-12],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-16]
	add	ebx,4
	mov	[ebp-20],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	[ebp+32],1065353216
_19
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	[ebp+32],0
_20
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-28],0
	jmp	_21
_22
	mov	[ebp-32],0
	jmp	_23
_24
	mov	ebx,[ebp+24]
	add	ebx,[ebp-32]
	mov	[ebp-36],ebx
	mov	ebx,[ebp+28]
	add	ebx,[ebp-28]
	mov	[ebp-40],ebx
	cmp	[ebp-36],0
	setg	al
	movzx	eax,al
	mov	[ebp-76],eax
	mov	ebx,[ebp-44]
	sub	ebx,1
	cmp	[ebp-36],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	and	eax,ebx
	mov	[ebp-76],eax
	cmp	[ebp-40],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	and	eax,ebx
	mov	[ebp-76],eax
	mov	ebx,[ebp-48]
	sub	ebx,1
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	and	eax,ebx
	and	eax,eax
	jz	_25
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp-52],16777215
	jge	_26
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	add	ebx,3
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-56],eax
	mov	ebx,[ebp-52]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	call	_fpeekbyte
	add	ebx,eax
	mov	[ebp-60],ebx
	mov	ebx,[ebp-52]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	esi,[ebp-20]
	add	esi,1
	mov	[esp+4],esi
	call	_fpeekbyte
	add	ebx,eax
	mov	[ebp-64],ebx
	mov	ebx,[ebp-52]
	mov	esi,255
	and	ebx,esi
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	esi,[ebp-20]
	add	esi,2
	mov	[esp+4],esi
	call	_fpeekbyte
	add	ebx,eax
	mov	[ebp-68],ebx
	cmp	[ebp-60],255
	jle	_27
	mov	[ebp-60],255
_27
	cmp	[ebp-64],255
	jle	_28
	mov	[ebp-64],255
_28
	cmp	[ebp-68],255
	jle	_29
	mov	[ebp-68],255
_29
	mov	ebx,[ebp-60]
	mov	[ebp-72],ebx
	mov	ebx,[ebp-72]
	cmp	[ebp-64],ebx
	jle	_30
	mov	ebx,[ebp-64]
	mov	[ebp-72],ebx
	jmp	_31
_30
	mov	ebx,[ebp-72]
	cmp	[ebp-68],ebx
	jle	_32
	mov	ebx,[ebp-68]
	mov	[ebp-72],ebx
_32
_31
	mov	ebx,[ebp-56]
	cmp	[ebp-72],ebx
	jl	_33
	sub	esp,16
	mov	ebx,[ebp-60]
	shl	ebx,byte 16
	mov	esi,[ebp-64]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-68]
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fwritepixelfast
_33
_26
_25
	add	[ebp-20],4
	add	[ebp-32],1
_23
	mov	ebx,[ebp-4]
	cmp	[ebp-32],ebx
	jle	_24
_9
	add	[ebp-28],1
_21
	mov	ebx,[ebp-8]
	cmp	[ebp-28],ebx
	jle	_22
_8
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_7_leave
_7_leave
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

