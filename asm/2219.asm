
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
_ftristeepness
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
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-4],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertsteepness
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,28
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertsteepness
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,28
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	_ftrianglevertex
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertsteepness
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_6
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_6
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_7
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_7
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_8
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_8
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
	ret	word 8
	.align	16
_fvertdist
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
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
	ret	word 16
	.align	16
_fvertsteepness
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,24
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertdist
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-16]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
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
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
