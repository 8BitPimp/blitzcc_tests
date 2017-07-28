
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],14
	mov	[esp+12],1
	mov	[esp+4],8
	mov	[esp],8
	call	_fcreatetexture
	mov	[ebp-16],eax
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],8
	mov	[esp+16],0
	mov	[esp+8],8
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-20],1
	jmp	_16
_17
	mov	[ebp-24],1
	jmp	_18
_19
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-24],1
_18
	cmp	[ebp-24],6
	jle	_19
_4
	add	[ebp-20],1
_16
	cmp	[ebp-20],6
	jle	_17
_3
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,_av
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,99
	mov	esi,_av
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_av
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_av
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_ar
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_ar
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-28],0
	jmp	_20
_21
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-32],ebx
	jmp	_22
_23
	mov	ebx,[ebp-28]
	mov	esi,_ar
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	mov	esi,_ar
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	add	[ebp-36],1
	mov	eax,[ebp-28]
	imul	eax,[ebp-32]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-88],eax
	mov	ebx,[ebp-28]
	add	ebx,[ebp-32]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	add	eax,ebx
	mov	[ebp-40],eax
	mov	ebx,6
	sub	ebx,[ebp-28]
	sub	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[ebp-44],ebx
	mov	[ebp-48],-1
	jmp	_24
_25
	mov	[ebp-52],-1
	jmp	_26
_27
	mov	[ebp-56],-1
	jmp	_28
_29
	mov	[ebp-60],-1
	jmp	_30
_31
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-64]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-64]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-40]
	add	esi,[ebp-64]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	esi,[ebp-64]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	sub	esp,28
	cmp	[ebp-60],1
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+20],eax
	mov	[esp+24],1065353216
	mov	[ebp-88],eax
	cmp	[ebp-56],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-88]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	add	[ebp-64],1
	add	[ebp-60],2
_30
	cmp	[ebp-60],1
	jle	_31
_10
	add	[ebp-56],2
_28
	cmp	[ebp-56],1
	jle	_29
_9
	sub	esp,16
	mov	ebx,[ebp-64]
	sub	ebx,3
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	sub	esi,2
	mov	[esp+12],esi
	mov	esi,[ebp-64]
	sub	esi,4
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-64]
	sub	ebx,3
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	sub	esi,2
	mov	[esp+12],esi
	mov	esi,[ebp-64]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-52],2
_26
	cmp	[ebp-52],1
	jle	_27
_8
	add	[ebp-48],2
_24
	cmp	[ebp-48],1
	jle	_25
_7
	add	[ebp-32],1
_22
	cmp	[ebp-32],3
	jle	_23
_6
	add	[ebp-28],1
_20
	cmp	[ebp-28],2
	jle	_21
_5
	mov	[ebp-68],1065353216
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-76],eax
_32
	mov	[ebp-40],0
	jmp	_33
_34
	sub	esp,4
	mov	eax,[ebp-40]
	add	eax,2
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_35
	mov	ebx,_ar
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,_ar
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	[ebp-36],0
	jmp	_36
_37
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-72]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-76]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	mov	ebx,[ebp-80]
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	mov	ebx,[ebp-84]
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	add	[ebp-36],1
_36
	mov	ebx,[ebp-64]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_37
_13
_35
	add	[ebp-40],1
_33
	cmp	[ebp-40],5
	jle	_34
_12
	mov	[ebp-40],0
	jmp	_38
_39
	sub	esp,4
	mov	eax,[ebp-40]
	add	eax,8
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_40
	sub	esp,20
	mov	ebx,[ebp-68]
	push	ebx
	fld	[esp]
	pop	ebx
	cmp	[ebp-40],1
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	cmp	[ebp-40],2
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	cmp	[ebp-40],0
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
_40
	add	[ebp-40],1
_38
	cmp	[ebp-40],2
	jle	_39
_14
	mov	[ebp-36],0
	jmp	_41
_42
	sub	esp,20
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-36],1
_41
	mov	ebx,[ebp-64]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_42
_15
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_32
_11
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_av	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ar	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

