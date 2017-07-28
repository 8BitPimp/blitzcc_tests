
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
_freturnedx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	esi,[ebp+36]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fyintercept
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	sub	esp,16
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	edi,[ebp+36]
	mov	[esp+12],edi
	mov	edi,[ebp+28]
	mov	[esp+4],edi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fslope
	fdivp	st(1)
	jmp	_3_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_freturnedy
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	esi,[ebp+36]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fslope
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-4],eax
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	esi,[ebp+36]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fyintercept
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fslope
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
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
	jz	_7
	mov	ebx,981668463
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
	jmp	_8
_7
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_8
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fyintercept
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fslope
	fchs
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

