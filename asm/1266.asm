
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
_fgrayscale
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_flockbuffer
	mov	ebx,[ebp+28]
	mov	[ebp-4],ebx
	jmp	_6
_7
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	jmp	_8
_9
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
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
	mov	ebx,1050253722
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1058474557
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-20]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,1038174126
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-28]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-28]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,-16777216
	or	ebx,esi
	mov	[ebp-12],ebx
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_8
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_9
_5
	add	[ebp-4],1
_6
	mov	ebx,[ebp+28]
	add	ebx,[ebp+36]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_7
_4
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

