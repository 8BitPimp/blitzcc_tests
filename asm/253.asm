
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],320
	mov	[esp+8],1
	mov	[esp],320
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,_acosinus
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,640
	mov	esi,_acosinus
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acosinus
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	mov	[ebp-12],0
	jmp	_12
_13
	sub	esp,4
	mov	eax,1135911999
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1134559232
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_acosinus]
	mov	[ebx],eax
	add	[ebp-12],1
_12
	cmp	[ebp-12],640
	jle	_13
_3
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_ar
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ag
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_ag
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ag
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_ab
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amrgb
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_amrgb
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amrgb
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-16],0
	jmp	_14
_15
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,[ebp-16]
	shl	esi,byte 2
	sub	ebx,esi
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	add	[ebp-16],1
_14
	cmp	[ebp-16],63
	jle	_15
_4
	mov	[ebp-16],0
	jmp	_16
_17
	mov	ebx,255
	mov	esi,[ebp-16]
	shl	esi,byte 2
	sub	ebx,esi
	mov	esi,[ebp-16]
	add	esi,64
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	mov	esi,[ebp-16]
	add	esi,64
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-16]
	add	esi,64
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	add	[ebp-16],1
_16
	cmp	[ebp-16],63
	jle	_17
_5
	mov	[ebp-16],0
	jmp	_18
_19
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	mov	esi,[ebp-16]
	add	esi,128
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,128
	mov	esi,[ebp-16]
	shl	esi,byte 1
	sub	ebx,esi
	mov	esi,[ebp-16]
	add	esi,128
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	esi,[ebp-16]
	add	esi,128
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	add	[ebp-16],1
_18
	cmp	[ebp-16],63
	jle	_19
_6
	mov	[ebp-16],0
	jmp	_20
_21
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	add	ebx,128
	mov	esi,[ebp-16]
	add	esi,192
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-16]
	add	esi,192
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,[ebp-16]
	shl	esi,byte 2
	sub	ebx,esi
	mov	esi,[ebp-16]
	add	esi,192
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	add	[ebp-16],1
_20
	cmp	[ebp-16],63
	jle	_21
_7
	mov	[ebp-16],0
	jmp	_22
_23
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	shl	ebx,byte 16
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ag]
	mov	esi,[esi]
	shl	esi,byte 8
	add	ebx,esi
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,16777215
	and	ebx,esi
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amrgb]
	mov	[esi],ebx
	add	[ebp-16],1
_22
	cmp	[ebp-16],255
	jle	_23
_8
	jmp	_25
_24
	call	_fgetkey
	mov	[ebp-20],eax
	call	_l_2qbplasma
	sub	esp,4
	mov	[esp],1
	call	_fflip
_25
	cmp	[ebp-20],27
	jnz	_24
_9
	call	_fend
_l_2qbplasma
	add	[ebp-24],2
	cmp	[ebp-24],320
	jl	_26
	mov	[ebp-24],0
_26
	add	[ebp-28],2
	cmp	[ebp-28],320
	jl	_27
	mov	[ebp-28],0
_27
	add	[ebp-32],3
	cmp	[ebp-32],320
	jl	_28
	mov	[ebp-32],0
_28
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-36],0
	jmp	_29
_30
	mov	ebx,[ebp-36]
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acosinus]
	mov	ebx,[ebx]
	mov	esi,[ebp-36]
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_acosinus]
	mov	esi,[esi]
	add	ebx,esi
	mov	[ebp-40],ebx
	mov	[ebp-44],0
	jmp	_31
_32
	mov	ebx,[ebp-44]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_acosinus]
	mov	ebx,[ebx]
	mov	esi,[ebp-44]
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_acosinus]
	mov	esi,[esi]
	add	ebx,esi
	add	ebx,[ebp-40]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-48],ebx
	sub	esp,16
	mov	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_amrgb]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-44],1
_31
	cmp	[ebp-44],319
	jle	_32
_11
	add	[ebp-36],1
_29
	cmp	[ebp-36],319
	jle	_30
_10
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	ret
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_acosinus	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ar	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ag	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ab	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_amrgb	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

