
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fmake_seamless
	mov	[ebp-8],eax
	sub	esp,16
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftileimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fend
	sub	esp,4
	mov	eax,_aimage
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aimage
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aimage
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aimage
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimage
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adiagonal
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_adiagonal
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_adiagonal
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_adiagonal
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adiagonal
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atile
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atile
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atile
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atile
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atile
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amask
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_amask
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amask
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amask
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
_fmake_seamless
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp+24],eax
	cmp	[ebp+24],2
	jle	_15
	mov	[ebp+24],2
_15
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jz	_16
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jle	_17
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
_17
	mov	ebx,[ebp-16]
	cmp	[ebp-20],ebx
	jle	_18
	mov	ebx,[ebp-20]
	mov	[ebp-24],ebx
_18
	sub	esp,12
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fresizeimage
_16
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jnz	_19
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
_19
	sub	esp,4
	mov	eax,_aimage
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_aimage
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,_aimage
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_aimage
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimage
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adiagonal
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_adiagonal
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,_adiagonal
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_adiagonal
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adiagonal
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atile
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_atile
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,_atile
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atile
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atile
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amask
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_amask
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,_amask
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amask
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-28],0
	jmp	_20
_21
	mov	[ebp-32],0
	jmp	_22
_23
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-36],eax
	mov	ebx,[ebp-36]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,_aimage
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	mov	edi,_aimage
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aimage]
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,_aimage
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	mov	edi,_aimage
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aimage]
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	mov	esi,255
	and	ebx,esi
	mov	esi,_aimage
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	mov	edi,_aimage
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aimage]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	sar	eax,byte 1
	add	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,_adiagonal
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	eax,ebx
	mov	ebx,_adiagonal
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adiagonal]
	mov	ebx,_aimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_aimage
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aimage]
	mov	ebx,[ebx]
	mov	[eax],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	sar	eax,byte 1
	add	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,_adiagonal
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	eax,ebx
	mov	ebx,_adiagonal
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adiagonal]
	mov	ebx,_aimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_aimage
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aimage]
	mov	ebx,[ebx]
	mov	[eax],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	sar	eax,byte 1
	add	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,_adiagonal
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	eax,ebx
	mov	ebx,_adiagonal
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adiagonal]
	mov	ebx,_aimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_aimage
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aimage]
	mov	ebx,[ebx]
	mov	[eax],ebx
	add	[ebp-32],1
_22
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_23
_5
	add	[ebp-28],1
_20
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_21
_4
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	[ebp-32],0
	jmp	_24
_25
	mov	[ebp-28],0
	jmp	_26
_27
	mov	ebx,[ebp+24]
	mov	[ebp-40],ebx
	cmp	[ebp-40],0
	jz	_29
	cmp	[ebp-40],1
	jz	_30
	cmp	[ebp-40],2
	jz	_31
	jmp	_28
_29
	sub	esp,4
	mov	eax,[ebp-32]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	ebx,[ebp-32]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	imul	eax,ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	esi,[ebp-28]
	mov	edi,[ebp-24]
	sar	edi,byte 1
	sub	esi,edi
	imul	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	jmp	_28
_30
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	ebx,[ebp-32]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	esi,[ebp-28]
	cmp	ebx,esi
	jge	_32
	sub	esp,4
	mov	eax,[ebp-28]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	imul	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_32
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	ebx,[ebp-32]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	esi,[ebp-28]
	cmp	ebx,esi
	jl	_33
	sub	esp,4
	mov	eax,[ebp-32]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	ebx,[ebp-32]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	imul	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_33
	jmp	_28
_31
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	ebx,[ebp-32]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	esi,[ebp-28]
	cmp	ebx,esi
	jge	_34
	sub	esp,4
	mov	eax,[ebp-28]
	sub	eax,[ebp-24]
	mov	ebx,[ebp-28]
	sub	ebx,[ebp-24]
	imul	eax,ebx
	mov	ebx,[ebp-32]
	sub	ebx,[ebp-24]
	mov	esi,[ebp-32]
	sub	esi,[ebp-24]
	imul	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1066443735
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_34
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	ebx,[ebp-32]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	esi,[ebp-28]
	cmp	ebx,esi
	jl	_35
	sub	esp,4
	mov	eax,[ebp-32]
	sub	eax,[ebp-24]
	mov	ebx,[ebp-32]
	sub	ebx,[ebp-24]
	imul	eax,ebx
	mov	ebx,[ebp-28]
	sub	ebx,[ebp-24]
	mov	esi,[ebp-28]
	sub	esi,[ebp-24]
	imul	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1066443735
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_35
	jmp	_28
_28
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	eax,[ebp-12]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_36
	mov	[ebp-12],1065353216
_36
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_37
	mov	[ebp-12],1132396544
_37
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_amask
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_amask]
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	sub	ebx,1
	sub	ebx,[ebp-28]
	mov	esi,_amask
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_amask]
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebx],esi
	mov	ebx,[ebp-24]
	sub	ebx,1
	sub	ebx,[ebp-32]
	mov	esi,_amask
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amask]
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebx],esi
	mov	ebx,[ebp-24]
	sub	ebx,1
	sub	ebx,[ebp-28]
	mov	esi,_amask
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-24]
	sub	esi,1
	sub	esi,[ebp-32]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amask]
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esi],ebx
	add	[ebp-28],1
_26
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_27
_7
	add	[ebp-32],1
_24
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_25
_6
	mov	[ebp-28],0
	jmp	_38
_39
	mov	[ebp-32],0
	jmp	_40
_41
	mov	ebx,_amask
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_amask]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	sar	eax,byte 1
	add	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,_amask
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amask]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	ebx,_aimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_aimage
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aimage]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	fdivp	st(1)
	mov	ebx,_adiagonal
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	edi,_adiagonal
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_adiagonal]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	fdivp	st(1)
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,_atile
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	edi,_atile
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_atile]
	mov	[ebx],esi
	mov	ebx,_aimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_aimage
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aimage]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	fdivp	st(1)
	mov	ebx,_adiagonal
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	edi,_adiagonal
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_adiagonal]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	fdivp	st(1)
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,_atile
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	edi,_atile
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_atile]
	mov	[ebx],esi
	mov	ebx,_aimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_aimage
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aimage]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	fdivp	st(1)
	mov	ebx,_adiagonal
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	edi,_adiagonal
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_adiagonal]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	fdivp	st(1)
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,_atile
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	edi,_atile
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_atile]
	mov	[ebx],esi
	add	[ebp-32],1
_40
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_41
_10
	add	[ebp-28],1
_38
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_39
_9
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-44],eax
	sub	esp,12
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-28],0
	jmp	_42
_43
	mov	[ebp-32],0
	jmp	_44
_45
	mov	ebx,_atile
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-32]
	mov	esi,_atile
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atile]
	mov	ebx,[ebx]
	shl	ebx,byte 16
	mov	esi,_atile
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	mov	edi,_atile
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atile]
	mov	esi,[esi]
	shl	esi,byte 8
	add	ebx,esi
	mov	esi,_atile
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	mov	edi,_atile
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atile]
	mov	esi,[esi]
	add	ebx,esi
	mov	[ebp-36],ebx
	sub	esp,24
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-32],1
_44
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_45
_12
	add	[ebp-28],1
_42
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_43
_11
	sub	esp,12
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,_aimage
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aimage
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aimage
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aimage
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimage
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adiagonal
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_adiagonal
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_adiagonal
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_adiagonal
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adiagonal
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atile
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atile
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atile
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atile
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atile
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amask
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_amask
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amask
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amask
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jz	_46
	sub	esp,12
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fresizeimage
_46
	mov	eax,[ebp-44]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_13	.db	"your_image.bmp",0
_14	.db	"seamless.bmp",0
	.align	4
_aimage	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_adiagonal	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_atile	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_amask	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
