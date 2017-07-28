
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	mov	eax,_astripe
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,300
	mov	esi,_astripe
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astripe
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],1
	mov	[esp],300
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_9
_10
	mov	[ebp-12],0
	jmp	_11
_12
	cmp	[ebp-16],1
	jnz	_13
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-16],0
	jmp	_14
_13
	sub	esp,12
	mov	[esp+4],175
	mov	[esp+8],175
	mov	[esp],175
	call	_fcolor
	mov	[ebp-16],1
_14
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],30
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	add	[ebp-12],20
_11
	cmp	[ebp-12],200
	jle	_12
_4
	add	[ebp-8],30
_9
	cmp	[ebp-8],300
	jle	_10
_3
	sub	esp,12
	mov	[esp+4],175
	mov	[esp+8],175
	mov	[esp],175
	call	_fcolor
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],0
	mov	[esp+8],300
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-8],0
	jmp	_15
_16
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],1
	mov	[esp],1
	call	_fcreateimage
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astripe]
	mov	[ebx],eax
	sub	esp,40
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astripe]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fimagebuffer
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+28],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],200
	mov	[esp+8],1
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcopyrect
	add	[ebp-8],1
_15
	cmp	[ebp-8],300
	jle	_16
_5
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	call	_fflushkeys
	mov	[ebp-20],0
	mov	[ebp-24],0
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-28],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],120
	mov	[esp],0
	call	_fclscolor
	jmp	_18
_17
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	mov	[ebp-32],0
	jmp	_19
_20
	sub	esp,16
	mov	ebx,1121714176
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,170
	add	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_astripe]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1088421888
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fsin
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1080326881
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1149657088
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	[ebp-24],0
_21
	add	[ebp-32],1
_19
	cmp	[ebp-32],300
	jle	_20
_7
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_17
_6
	mov	[ebp-36],0
	jmp	_22
_23
	sub	esp,4
	mov	eax,[ebp-36]
	shl	eax,byte 2
	add	eax,[_astripe]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeimage
	add	[ebp-36],1
_22
	cmp	[ebp-36],300
	jle	_23
_8
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_astripe	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

