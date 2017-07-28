
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
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_aoilcol
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aoilcol
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoilcol
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
_foilimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	mov	ebx,[ebp+24]
	sar	ebx,byte 1
	mov	[ebp-24],ebx
	mov	ebx,[ebp+24]
	imul	ebx,[ebp+24]
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	add	eax,[ebp+24]
	shl	eax,byte 2
	mov	ebx,[ebp-8]
	add	ebx,[ebp+24]
	imul	eax,ebx
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-32],eax
	mov	[ebp-36],0
	jmp	_12
_13
	mov	[ebp-40],0
	jmp	_14
_15
	sub	esp,12
	mov	ebx,[ebp-40]
	add	ebx,[ebp-24]
	mov	esi,[ebp-4]
	add	esi,[ebp+24]
	imul	ebx,esi
	shl	ebx,byte 2
	mov	esi,[ebp-36]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,ebx
	mov	[esp+4],esi
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	edi,[ebp-16]
	mov	[esp+8],edi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16579836
	and	eax,ebx
	mov	[esp+8],eax
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-40],1
_14
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_15
_5
	add	[ebp-36],1
_12
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_13
_4
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-36],0
	jmp	_16
_17
	mov	[ebp-40],0
	jmp	_18
_19
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_aoilcol
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,_aoilcol
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-44],0
	mov	ebx,[ebp-24]
	neg	ebx
	mov	[ebp-48],ebx
	jmp	_20
_21
	mov	ebx,[ebp-24]
	neg	ebx
	mov	[ebp-52],ebx
	jmp	_22
_23
	sub	esp,8
	mov	ebx,[ebp-40]
	add	ebx,[ebp-52]
	add	ebx,[ebp-24]
	mov	esi,[ebp-4]
	add	esi,[ebp+24]
	imul	ebx,esi
	shl	ebx,byte 2
	mov	esi,[ebp-36]
	add	esi,[ebp-48]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,ebx
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpeekint
	mov	[ebp-56],eax
	mov	[ebp-60],0
	jmp	_24
_25
	mov	ebx,_aoilcol
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoilcol]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-56]
	jnz	_26
	mov	ebx,_aoilcol
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoilcol]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_aoilcol
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aoilcol]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	add	ebx,2
	mov	[ebp-60],ebx
_26
	add	[ebp-60],1
_24
	mov	ebx,[ebp-44]
	cmp	[ebp-60],ebx
	jle	_25
_10
	mov	ebx,[ebp-44]
	add	ebx,1
	cmp	[ebp-60],ebx
	jnz	_27
	mov	ebx,[ebp-56]
	mov	esi,_aoilcol
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aoilcol]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_aoilcol
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aoilcol]
	mov	[esi],ebx
	add	[ebp-44],1
_27
	add	[ebp-52],1
_22
	mov	ebx,[ebp-24]
	cmp	[ebp-52],ebx
	jle	_23
_9
	add	[ebp-48],1
_20
	mov	ebx,[ebp-24]
	cmp	[ebp-48],ebx
	jle	_21
_8
	mov	[ebp-64],0
	mov	[ebp-68],0
	jmp	_28
_29
	mov	ebx,_aoilcol
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-68]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoilcol]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-64]
	jle	_30
	mov	ebx,_aoilcol
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-68]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoilcol]
	mov	ebx,[ebx]
	mov	[ebp-72],ebx
	mov	ebx,_aoilcol
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-68]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoilcol]
	mov	ebx,[ebx]
	mov	[ebp-64],ebx
_30
	add	[ebp-68],1
_28
	mov	ebx,[ebp-28]
	cmp	[ebp-68],ebx
	jle	_29
_11
	sub	esp,16
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aoilcol
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aoilcol
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbDimArray
	add	[ebp-40],1
_18
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_19
_7
	add	[ebp-36],1
_16
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_17
_6
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aoilcol
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aoilcol
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoilcol
	mov	[esp],eax
	call	__bbDimArray
	mov	eax,[ebp-12]
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
	.align	4
_aoilcol	.dd	0
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

