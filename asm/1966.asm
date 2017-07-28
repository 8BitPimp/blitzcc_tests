
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_11
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
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-12],1
	mov	[ebp-16],0
	jmp	_12
_13
	sub	esp,20
	mov	ebx,640
	mov	esi,[ebp-16]
	shl	esi,byte 1
	sub	ebx,esi
	mov	[esp+8],ebx
	mov	esi,480
	mov	edi,[ebp-16]
	shl	edi,byte 1
	sub	esi,edi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-16]
	add	ebx,2
	mov	esi,[ebp-16]
	add	esi,2
	imul	ebx,esi
	add	[ebp-12],ebx
	add	[ebp-16],1
_12
	cmp	[ebp-16],1
	jle	_13
_3
	mov	[ebp-20],2
	jmp	_14
_15
	mov	[ebp-24],2
	jmp	_16
_17
	mov	[ebp-28],0
	mov	[ebp-32],0
	mov	[ebp-36],0
	mov	[ebp-40],3
	cmp	[ebp-40],1
	jz	_19
	cmp	[ebp-40],2
	jz	_20
	cmp	[ebp-40],3
	jz	_21
	jmp	_18
_19
	mov	[ebp-44],-2
	jmp	_22
_23
	mov	[ebp-48],-2
	jmp	_24
_25
	sub	esp,12
	mov	ebx,[ebp-20]
	add	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-52],eax
	mov	ebx,[ebp-52]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	add	[ebp-28],ebx
	mov	ebx,[ebp-52]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	add	[ebp-32],ebx
	mov	ebx,[ebp-52]
	mov	esi,255
	and	ebx,esi
	add	[ebp-36],ebx
	add	[ebp-48],1
_24
	cmp	[ebp-48],2
	jle	_25
_8
	add	[ebp-44],1
_22
	cmp	[ebp-44],2
	jle	_23
_7
	sub	esp,16
	mov	eax,[ebp-36]
	mov	ecx,25
	cdq
	idiv	ecx
	mov	[ebp-64],eax
	mov	ebx,[ebp-32]
	mov	ecx,25
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	shl	ebx,byte 8
	add	eax,ebx
	mov	[ebp-64],eax
	mov	ebx,[ebp-28]
	mov	ecx,25
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	shl	ebx,byte 16
	add	eax,ebx
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixel
	jmp	_18
_20
	sub	esp,36
	mov	[esp],-2
	mov	[esp+4],2
	call	_frand
	add	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	[esp],-2
	mov	[esp+4],2
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-64]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	call	_freadpixelfast
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixel
	jmp	_18
_21
	mov	[ebp-56],0
	mov	[ebp-44],-2
	jmp	_26
_27
	mov	[ebp-48],-2
	jmp	_28
_29
	sub	esp,12
	mov	ebx,[ebp-20]
	add	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-52],eax
	mov	ebx,[ebp-52]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-52]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-32],ebx
	mov	ebx,[ebp-52]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-36],ebx
	mov	ebx,1051931443
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1055286886
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,1045220557
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-44]
	add	ebx,[ebp-48]
	cmp	ebx,0
	jnz	_30
	mov	ebx,[ebp-60]
	mov	esi,[ebp-56]
	sar	esi,byte 3
	sub	ebx,esi
	add	ebx,255
	sar	ebx,byte 1
	mov	[ebp-56],ebx
	jmp	_31
_30
	mov	ebx,[ebp-60]
	add	[ebp-56],ebx
_31
	add	[ebp-48],1
_28
	cmp	[ebp-48],0
	jle	_29
_10
	add	[ebp-44],1
_26
	cmp	[ebp-44],0
	jle	_27
_9
	cmp	[ebp-56],0
	jge	_32
	mov	[ebp-56],0
_32
	cmp	[ebp-56],255
	jle	_33
	mov	[ebp-56],255
_33
	sub	esp,16
	mov	ebx,[ebp-56]
	imul	ebx,65793
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixel
	jmp	_18
_18
	add	[ebp-24],1
_16
	cmp	[ebp-24],637
	jle	_17
_5
	add	[ebp-20],1
_14
	cmp	[ebp-20],477
	jle	_15
_4
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_11	.db	"image3.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

