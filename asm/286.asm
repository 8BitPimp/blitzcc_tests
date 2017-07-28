
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
_fworking_bar
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	ebx,[ebp+60]
	mov	[esp+4],ebx
	mov	esi,[ebp+64]
	mov	[esp+8],esi
	mov	eax,[ebp+56]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,12
	mov	ebx,[ebp+48]
	mov	[esp+4],ebx
	mov	esi,[ebp+52]
	mov	[esp+8],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	sub	ebx,4
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,2
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,2
	mov	[esp],eax
	call	_frect
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 48
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

