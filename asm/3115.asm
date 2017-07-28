
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,39
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,29
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	jmp	_15
_14
	call	_fcls
	call	_fmakemap
	call	_fdrawmap
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-4],0
	jmp	_16
_17
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_18
	call	_fend
_18
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	add	[ebp-4],1
_16
	cmp	[ebp-4],1000
	jle	_17
_4
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_14
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],0
	jmp	_19
_20
	mov	[ebp-8],0
	jmp	_21
_22
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_23
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
_23
	add	[ebp-8],1
_21
	cmp	[ebp-8],39
	jle	_22
_7
	add	[ebp-4],1
_19
	cmp	[ebp-4],29
	jle	_20
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakemap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],0
	jmp	_24
_25
	mov	[ebp-8],0
	jmp	_26
_27
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_26
	cmp	[ebp-8],39
	jle	_27
_10
	add	[ebp-4],1
_24
	cmp	[ebp-4],29
	jle	_25
_9
	jmp	_29
_28
	sub	esp,8
	mov	[esp],60
	mov	[esp+4],200
	call	_frand
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_30
_31
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	ebx,304
	add	ebx,[ebp-24]
	mov	[ebp-8],ebx
	mov	ebx,224
	add	ebx,[ebp-28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-8]
	sar	ebx,byte 4
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	sar	ebx,byte 4
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fdrawbrush
	add	[ebp-20],1
_30
	mov	ebx,[ebp-16]
	cmp	[ebp-20],ebx
	jle	_31
_12
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],50
	call	_frand
	add	[ebp-12],eax
_29
	cmp	[ebp-12],359
	jl	_28
_11
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawbrush
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	sub	ebx,1
	mov	[ebp-8],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	sub	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[ebp-8],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_amap	.dd	0
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

