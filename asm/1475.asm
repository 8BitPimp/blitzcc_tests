
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
	mov	[_vscreenwidth],800
	mov	[_vscreenheight],600
	sub	esp,4
	mov	eax,_ascreenpixels
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vscreenwidth]
	imul	ebx,[_vscreenheight]
	mov	esi,_ascreenpixels
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ascreenpixels
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aimagepixels
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vscreenwidth]
	imul	ebx,[_vscreenheight]
	mov	esi,_aimagepixels
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimagepixels
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aampixels
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vscreenwidth]
	imul	ebx,[_vscreenheight]
	mov	esi,_aampixels
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aampixels
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fccdrawimagealpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fccalphadrawsetup
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fccalphadraw
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fccalphadrawsetup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	mov	[ebp-12],0
	sub	esp,12
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_15
_16
	mov	[ebp-20],0
	jmp	_17
_18
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aampixels]
	mov	[ebx],eax
	add	[ebp-12],1
	add	[ebp-20],1
_17
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_18
_6
	add	[ebp-16],1
_15
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_16
_5
	sub	esp,12
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fccreadimagepixelsvert
	sub	esp,12
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-24],0
	mov	[ebp-16],0
	jmp	_19
_20
	mov	[ebp-20],0
	jmp	_21
_22
	sub	esp,12
	mov	ebx,[ebp+28]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+24]
	add	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ascreenpixels]
	mov	[ebx],eax
	add	[ebp-24],1
	add	[ebp-20],1
_21
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_22
_8
	add	[ebp-16],1
_19
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_20
_7
	sub	esp,12
	mov	eax,[ebp+36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fccalphadraw
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
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	jmp	_23
_24
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	jmp	_25
_26
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aampixels]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	eax,[ebp-16]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	mov	eax,[ebp-16]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aimagepixels]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_29
_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aimagepixels]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ascreenpixels]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aampixels]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-24]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	sub	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-24]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	sub	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-24]
	mov	esi,255
	and	ebx,esi
	sub	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	sub	esp,16
	mov	ebx,[ebp-36]
	add	ebx,[ebp-48]
	shl	ebx,byte 16
	mov	esi,[ebp-40]
	add	esi,[ebp-52]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-44]
	add	esi,[ebp-56]
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
_29
_27
	add	[ebp-4],1
	add	[ebp-12],1
_25
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_26
_11
	add	[ebp-8],1
_23
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_24
_10
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fccreadimagepixelsvert
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_30
_31
	mov	[ebp-12],0
	jmp	_32
_33
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aimagepixels]
	mov	[ebx],eax
	add	[ebp-4],1
	add	[ebp-12],1
_32
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_33
_14
	add	[ebp-8],1
_30
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_31
_13
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vscreenwidth	.dd	0
	.align	4
_vscreenheight	.dd	0
	.align	4
_ascreenpixels	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aimagepixels	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aampixels	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

