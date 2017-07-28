
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,_acol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_acol
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acol
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	mov	[ebp-8],0
	jmp	_8
_9
	mov	[ebp-12],0
	jmp	_10
_11
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixel
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_12
_13
	mov	ebx,[ebp-16]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	shr	ebx,byte 8
	mov	[ebp-16],ebx
	mov	[ebp-28],2
	cmp	[ebp-28],1
	jz	_15
	cmp	[ebp-28],2
	jz	_16
	cmp	[ebp-28],3
	jz	_17
	cmp	[ebp-28],4
	jz	_18
	cmp	[ebp-28],5
	jz	_19
	cmp	[ebp-28],6
	jz	_20
	cmp	[ebp-28],7
	jz	_21
	cmp	[ebp-28],8
	jz	_22
	cmp	[ebp-28],9
	jz	_23
	cmp	[ebp-28],10
	jz	_24
	cmp	[ebp-28],11
	jz	_25
	cmp	[ebp-28],12
	jz	_26
	cmp	[ebp-28],13
	jz	_27
	cmp	[ebp-28],14
	jz	_28
	jmp	_14
_15
	mov	ebx,255
	sub	ebx,[ebp-24]
	mov	[ebp-24],ebx
	jmp	_14
_16
	mov	ebx,[ebp-24]
	shr	ebx,byte 1
	mov	[ebp-24],ebx
	jmp	_14
_17
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,128
	mov	[ebp-24],ebx
	jmp	_14
_18
	cmp	[ebp-24],128
	setge	al
	movzx	eax,al
	imul	eax,255
	mov	[ebp-24],eax
	jmp	_14
_19
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,64
	mov	[ebp-24],ebx
	jmp	_14
_20
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	sub	ebx,128
	mov	[ebp-24],ebx
	cmp	[ebp-24],0
	jge	_29
	mov	[ebp-24],0
_29
	cmp	[ebp-24],255
	jle	_30
	mov	[ebp-24],255
_30
	jmp	_14
_21
	sub	esp,4
	mov	eax,65025
	mov	ebx,[ebp-24]
	imul	ebx,[ebp-24]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	jmp	_14
_22
	mov	ebx,255
	sub	ebx,[ebp-24]
	mov	[ebp-24],ebx
	sub	esp,4
	mov	eax,65025
	mov	ebx,[ebp-24]
	imul	ebx,[ebp-24]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	jmp	_14
_23
	mov	eax,[ebp-24]
	mov	ecx,51
	cdq
	idiv	ecx
	imul	eax,51
	mov	[ebp-24],eax
	jmp	_14
_24
	mov	ebx,[ebp-24]
	shr	ebx,byte 6
	shl	ebx,byte 2
	mov	[ebp-24],ebx
	jmp	_14
_25
	mov	ebx,[ebp-24]
	mov	esi,64
	and	ebx,esi
	and	ebx,ebx
	jz	_31
	mov	ebx,[ebp-24]
	mov	esi,63
	and	ebx,esi
	shl	ebx,byte 2
	mov	esi,255
	sub	esi,ebx
	mov	[ebp-24],esi
	jmp	_32
_31
	mov	ebx,[ebp-24]
	mov	esi,63
	and	ebx,esi
	shl	ebx,byte 2
	mov	[ebp-24],ebx
_32
	jmp	_14
_26
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1060418741
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-24],esi
	jmp	_14
_27
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1060418741
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	jmp	_14
_28
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1068807349
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1123942400
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	jmp	_14
_14
	mov	ebx,[ebp-24]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_acol]
	mov	[esi],ebx
	add	[ebp-20],1
_12
	cmp	[ebp-20],2
	jle	_13
_5
	sub	esp,16
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_acol]
	mov	ebx,[ebx]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_acol]
	mov	esi,[esi]
	shl	esi,byte 8
	add	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_acol]
	mov	esi,[esi]
	shl	esi,byte 16
	add	ebx,esi
	sub	ebx,16777216
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_10
	cmp	[ebp-12],639
	jle	_11
_4
	add	[ebp-8],1
_8
	cmp	[ebp-8],479
	jle	_9
_3
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_acol	.dd	0
	.dd	1
	.dd	1
	.dd	0
_7	.db	"image1.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

