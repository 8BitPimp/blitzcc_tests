
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
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
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
	sub	esp,36
	mov	[esp+28],1050253722
	mov	[esp+32],1065353216
	mov	[esp+24],1060320051
	call	_fbackbuffer
	mov	[esp+20],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+16],ebx
	mov	[esp+12],200
	mov	[esp+8],200
	mov	[esp+4],100
	mov	[esp],200
	call	_ffadeblock
	sub	esp,36
	mov	[esp+28],0
	mov	[esp+32],0
	mov	[esp+24],1069547520
	call	_fbackbuffer
	mov	[esp+20],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+16],ebx
	mov	[esp+12],100
	mov	[esp+8],100
	mov	[esp+4],10
	mov	[esp],10
	call	_ffadeblock
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_9
_8
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
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
_ffadeblock
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,4
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_flockbuffer
	mov	eax,[ebp+52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_10
	mov	ebx,[ebp+44]
	mov	[ebp+52],ebx
_10
	mov	eax,[ebp+48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	ebx,[ebp+44]
	mov	[ebp+48],ebx
_11
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	jmp	_12
_13
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	jmp	_14
_15
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	cmp	[ebp-16],255
	jle	_16
	mov	[ebp-16],255
_16
	cmp	[ebp-20],255
	jle	_17
	mov	[ebp-20],255
_17
	cmp	[ebp-24],255
	jle	_18
	mov	[ebp-24],255
_18
	mov	ebx,[ebp-16]
	shl	ebx,byte 16
	mov	esi,[ebp-20]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-24]
	mov	[ebp-12],ebx
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp+40]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_14
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	[ebp-8],ebx
	jle	_15
_6
	add	[ebp-4],1
_12
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	[ebp-4],ebx
	jle	_13
_5
	sub	esp,4
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
_7	.db	"c:\blitz3d\media\test.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

