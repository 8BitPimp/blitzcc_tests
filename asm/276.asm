
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
_fapply_cylwrap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-4],1
	jmp	_7
_8
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_9
_10
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp+24]
	mov	[ebp-28],ebx
	cmp	[ebp-28],1
	jz	_12
	cmp	[ebp-28],2
	jz	_13
	cmp	[ebp-28],3
	jz	_14
	jmp	_11
_12
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	fmulp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	jmp	_11
_13
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	sub	esp,4
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	fmulp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	jmp	_11
_14
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	sub	esp,4
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	fmulp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	jmp	_11
_11
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-12],1
_9
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_10
_5
	add	[ebp-4],1
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-4],eax
	jle	_8
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

