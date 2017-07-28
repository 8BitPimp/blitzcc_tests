
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
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1000
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fblend_black
	call	_fmillisecs
	add	eax,1000
	mov	[ebp-8],eax
	jmp	_11
_10
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	[esp],1
	call	_fflip
_11
	call	_fmillisecs
	cmp	eax,[ebp-8]
	jl	_10
_3
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1000
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fblend_black
	jmp	_13
_12
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_12
_4
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
_fblend_black
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	call	_fbackbuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-16],eax
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flockbuffer
	cmp	[ebp+24],50000
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	cmp	[ebp+28],50000
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_14
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimagewidth
	mov	ebx,eax
	mov	eax,[ebp-64]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[ebp+24],eax
	call	_fgraphicsheight
	sar	eax,byte 1
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-64]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[ebp+28],eax
_14
	jmp	_16
_15
	call	_fcls
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,8
	mov	eax,[ebp-24]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],4
	call	__bbMod
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jnz	_17
	mov	[ebp-28],0
	mov	[ebp-32],0
_17
	cmp	[ebp-24],1
	jnz	_18
	mov	[ebp-28],1
	mov	[ebp-32],1
_18
	cmp	[ebp-24],2
	jnz	_19
	mov	[ebp-28],1
	mov	[ebp-32],0
_19
	cmp	[ebp-24],3
	jnz	_20
	mov	[ebp-28],0
	mov	[ebp-32],1
_20
	cmp	[ebp+32],0
	jnz	_21
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-36],eax
_21
	cmp	[ebp+32],1
	jnz	_22
	mov	ebx,[ebp+36]
	call	_fmillisecs
	sub	ebx,eax
	add	ebx,[ebp-20]
	mov	[ebp-36],ebx
_22
	mov	ebx,[ebp-32]
	mov	[ebp-40],ebx
	jmp	_23
_24
	mov	ebx,[ebp-28]
	mov	[ebp-44],ebx
	jmp	_25
_26
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-56],ebx
	mov	ebx,[ebp-48]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-60],ebx
	mov	eax,[ebp-52]
	imul	eax,[ebp-36]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	shl	eax,byte 16
	mov	[ebp-64],eax
	mov	ebx,[ebp-56]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	shl	ebx,byte 8
	add	eax,ebx
	mov	[ebp-64],eax
	mov	ebx,[ebp-60]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	add	eax,ebx
	mov	[ebp-48],eax
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-44],2
_25
	mov	ebx,[ebp-12]
	cmp	[ebp-44],ebx
	jle	_26
_8
	add	[ebp-40],2
_23
	mov	ebx,[ebp-16]
	cmp	[ebp-40],ebx
	jle	_24
_7
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	[esp],1
	call	_fflip
_16
	call	_fmillisecs
	sub	eax,[ebp-20]
	cmp	eax,[ebp+36]
	jl	_15
_6
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_funlockbuffer
	cmp	[ebp+32],0
	jnz	_27
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblock
_27
	cmp	[ebp+32],1
	jnz	_28
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-12]
	add	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frect
_28
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
_9	.db	"facing.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

