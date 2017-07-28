
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
_faddmeshtosurface
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,96
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
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-4],1
	mov	eax,[ebp+44]
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
	mov	[ebp-96],eax
	mov	ebx,[ebp+48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-96]
	and	eax,ebx
	mov	[ebp-96],eax
	mov	ebx,[ebp+52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-96]
	and	eax,ebx
	and	eax,eax
	jz	_7
	mov	[ebp-4],0
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	eax,0
	jle	_8
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-16],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_9
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-20],eax
	sub	esp,20
	mov	ebx,[ebp+40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp+52]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+48]
	mov	[esp+8],esi
	mov	ebx,[ebp+44]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	ebx,[ebp+64]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	ebx,[ebp+56]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	mov	[ebp-24],0
	jmp	_10
_11
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexred
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexgreen
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexblue
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,28
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-96],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-96]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-96],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexny
	mov	ebx,eax
	mov	eax,[ebp-96]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformnormal
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,28
	mov	ebx,[ebp-32]
	mov	[esp+20],ebx
	mov	esi,[ebp-36]
	mov	[esp+24],esi
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,20
	mov	ebx,[ebp-68]
	mov	[esp+12],ebx
	mov	esi,[ebp-72]
	mov	[esp+16],esi
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexnormal
	sub	esp,24
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	add	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-24],1
_10
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_11
_4
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ffreeentity
	jmp	_12
_9
	mov	[ebp-24],0
	jmp	_13
_14
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexred
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexgreen
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexblue
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,28
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+64]
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
	mov	[esp+12],ebx
	mov	esi,[ebp-32]
	mov	[esp+20],esi
	mov	edi,[ebp-36]
	mov	[esp+24],edi
	mov	edi,[ebp-28]
	mov	[esp+16],edi
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+60]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+56]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,20
	mov	ebx,[ebp-68]
	mov	[esp+12],ebx
	mov	esi,[ebp-72]
	mov	[esp+16],esi
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexnormal
	sub	esp,24
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	add	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-24],1
_13
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_14
_5
_12
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcounttriangles
	mov	[ebp-76],eax
	mov	[ebp-80],0
	jmp	_15
_16
	sub	esp,12
	mov	ebx,[ebp-80]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-84],eax
	sub	esp,12
	mov	ebx,[ebp-80]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-88],eax
	sub	esp,12
	mov	ebx,[ebp-80]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-92],eax
	sub	esp,16
	mov	ebx,[ebp-88]
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-92]
	add	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-84]
	add	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-80],1
_15
	mov	ebx,[ebp-76]
	sub	ebx,1
	cmp	[ebp-80],ebx
	jle	_16
_6
_8
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
