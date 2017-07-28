
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadmaskedtexture
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
	mov	ebx,[ebp+24]
	mov	esi,2
	and	ebx,esi
	and	ebx,ebx
	jz	_8
	mov	ebx,[ebp+24]
	mov	esi,2
	xor	ebx,esi
	mov	[ebp+24],ebx
_8
	mov	ebx,[ebp+24]
	mov	esi,4
	and	ebx,esi
	and	ebx,ebx
	jz	_9
	mov	ebx,[ebp+24]
	mov	esi,4
	xor	ebx,esi
	mov	[ebp+24],ebx
_9
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	esi,2
	or	ebx,esi
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadtexture
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_10
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	mov	[ebp-16],eax
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	esi,4
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	esi,[ebp-16]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	add	eax,1
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-24],eax
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-32],0
	jmp	_11
_12
	mov	[ebp-36],0
	jmp	_13
_14
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-40],eax
	mov	ebx,[ebp-40]
	shr	ebx,byte 24
	mov	esi,255
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp+28]
	cmp	[ebp-44],ebx
	jge	_15
	mov	[ebp-44],0
	jmp	_16
_15
	mov	ebx,[ebp-44]
	sub	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
_16
	mov	ebx,[ebp-40]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-48],ebx
	mov	ebx,[ebp-40]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-52],ebx
	mov	ebx,[ebp-40]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-56],ebx
	mov	ebx,[ebp-56]
	mov	esi,[ebp-52]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-48]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,[ebp-44]
	shl	esi,byte 24
	or	ebx,esi
	mov	[ebp-40],ebx
	sub	esp,16
	mov	ebx,[ebp-40]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-36],1
_13
	mov	ebx,[ebp-16]
	cmp	[ebp-36],ebx
	jle	_14
_5
	add	[ebp-32],1
_11
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jle	_12
_4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreetexture
	jmp	_17
_10
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	[esp+4],64
	mov	[esp],64
	call	_fcreatetexture
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	mov	[ebp-16],eax
	mov	[ebp-32],0
	jmp	_18
_19
	sub	esp,8
	mov	eax,[ebp-32]
	sar	eax,byte 3
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[ebp-60],eax
	mov	[ebp-36],0
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp-36]
	sar	eax,byte 3
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[ebp-64],eax
	sub	esp,4
	mov	eax,[ebp-60]
	add	eax,[ebp-64]
	mov	[esp],eax
	call	__bbSgn
	neg	eax
	mov	[ebp-68],eax
	sub	esp,16
	mov	ebx,[ebp-68]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-36],1
_20
	mov	ebx,[ebp-16]
	cmp	[ebp-36],ebx
	jle	_21
_7
	add	[ebp-32],1
_18
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jle	_19
_6
_17
	mov	eax,[ebp-20]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

