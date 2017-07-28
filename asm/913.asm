
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
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,_alookup
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_alookup
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alookup
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_10
_11
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_alookup]
	mov	[esi],ebx
	add	[ebp-4],1
_10
	cmp	[ebp-4],255
	jle	_11
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
_fbufferize
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
	mov	[ebp-40],ebx
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
	sub	esp,4
	mov	eax,[ebp-4]
	imul	eax,[ebp-8]
	imul	eax,3
	add	eax,7
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	[esp+4],2
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	[esp+4],4
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],5
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],6
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	mov	[ebp-16],7
	mov	[ebp-20],0
	jmp	_12
_13
	mov	[ebp-24],0
	jmp	_14
_15
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	shl	eax,byte 8
	shr	eax,byte 8
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 8
	shr	ebx,byte 24
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 16
	shr	ebx,byte 24
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 24
	shr	ebx,byte 24
	mov	[ebp-40],ebx
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-16],1
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-16],1
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-16],1
	add	[ebp-24],1
_14
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_15
_6
	add	[ebp-20],1
_12
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_13
_5
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	cmp	[ebp+24],1
	jnz	_16
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffreeimage
_16
	mov	eax,[ebp-12]
	jmp	_4_leave
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
_falphasprite
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	call	_fgraphicswidth
	mov	[ebp-8],eax
	call	_fgraphicsheight
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekshort
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fpeekshort
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fpeekbyte
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],5
	call	_fpeekbyte
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],6
	call	_fpeekbyte
	mov	[ebp-32],eax
	mov	[ebp-36],7
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-40],0
	jmp	_17
_18
	mov	[ebp-44],0
	jmp	_19
_20
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-48],eax
	add	[ebp-36],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-52],eax
	add	[ebp-36],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-56],eax
	add	[ebp-36],1
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	cmp	eax,[ebp-8]
	setle	al
	movzx	eax,al
	mov	[ebp-88],eax
	mov	ebx,[ebp+28]
	add	ebx,[ebp-40]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	and	eax,ebx
	and	eax,eax
	jz	_21
	cmp	[ebp+36],1
	setz	al
	movzx	eax,al
	mov	[ebp-88],eax
	mov	ebx,[ebp-24]
	cmp	[ebp-48],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	and	eax,ebx
	mov	[ebp-88],eax
	mov	ebx,[ebp-28]
	cmp	[ebp-52],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	eax,ebx
	mov	[ebp-88],eax
	mov	ebx,[ebp-32]
	cmp	[ebp-56],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	eax,ebx
	mov	[ebp-88],eax
	cmp	[ebp+36],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	or	ebx,eax
	and	ebx,ebx
	jz	_22
	sub	esp,12
	mov	ebx,[ebp+28]
	add	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-60],eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 8
	shr	ebx,byte 24
	mov	[ebp-64],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 16
	shr	ebx,byte 24
	mov	[ebp-68],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 24
	shr	ebx,byte 24
	mov	[ebp-72],ebx
	mov	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_alookup]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-64]
	shl	esi,byte 2
	add	esi,[_alookup]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,100
	sub	edi,[ebp+32]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 16
	mov	[ebp-76],ebx
	mov	ebx,[ebp-52]
	shl	ebx,byte 2
	add	ebx,[_alookup]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_alookup]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,100
	sub	edi,[ebp+32]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 8
	mov	[ebp-80],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_alookup]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	shl	esi,byte 2
	add	esi,[_alookup]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,100
	sub	edi,[ebp+32]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	sub	esp,16
	mov	ebx,[ebp-76]
	add	ebx,[ebp-80]
	add	ebx,[ebp-84]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
_22
_21
	add	[ebp-44],1
_19
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-44],ebx
	jle	_20
_9
	add	[ebp-40],1
_17
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_18
_8
	sub	esp,4
	mov	eax,[ebp-4]
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
	ret	word 20
	.align	4
_alookup	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

