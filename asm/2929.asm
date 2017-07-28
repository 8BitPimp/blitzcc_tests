
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
	mov	[ebp-4],4
	mov	[ebp-8],10
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 7
	mov	esi,[ebp-8]
	shl	esi,byte 1
	add	ebx,esi
	mov	[esp+4],ebx
	mov	[esp+8],16
	mov	[esp+12],2
	mov	eax,[ebp-4]
	shl	eax,byte 7
	mov	esi,[ebp-8]
	shl	esi,byte 1
	add	eax,esi
	mov	[esp],eax
	call	_fgraphics
	sub	esp,12
	mov	ebx,[ebp-4]
	shl	ebx,byte 7
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	shl	eax,byte 7
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-16],0
	jmp	_5
_6
	mov	[ebp-20],0
	jmp	_7
_8
	mov	ebx,[ebp-20]
	mov	esi,[ebp-16]
	xor	ebx,esi
	mov	[ebp-24],ebx
	sub	esp,20
	mov	eax,1067869798
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1140850688
	call	__bbFMod
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1149239296
	mov	eax,ebx
	call	__bbFMod
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1115684864
	mov	eax,ebx
	call	__bbFMod
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	imul	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	add	[ebp-20],1
_7
	mov	ebx,[ebp-4]
	shl	ebx,byte 7
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_8
_4
	add	[ebp-16],1
_5
	mov	ebx,[ebp-4]
	shl	ebx,byte 7
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_6
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	[esp],1
	call	_fflip
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
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

