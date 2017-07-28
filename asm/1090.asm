
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1052770304
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,16
	mov	[esp+8],1121714176
	mov	[esp+12],1121714176
	mov	[esp+4],1121714176
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1088421888
	mov	[esp+16],0
	mov	[esp+8],1086324736
	mov	[esp+4],1088421888
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1088212173
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,36
	mov	[esp+28],1
	mov	[esp+32],1
	mov	[esp+24],1092616192
	mov	[esp+20],-1082130432
	mov	[esp+16],1065353216
	mov	[esp+12],1084227584
	mov	[esp+8],1084227584
	mov	[esp+4],40
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fcreatesunbeams
	mov	[ebp-16],eax
	sub	esp,20
	mov	[esp+12],1073741824
	mov	[esp+16],0
	mov	[esp+8],1082130432
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentityparent
	jmp	_13
_12
	sub	esp,8
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1127481344
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,20
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ftrisrendered
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_12
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
_fcreatesunbeams
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,84
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
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-4],eax
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],2
	call	_floadtexture
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_15
_16
	mov	[ebp-16],0
	jmp	_17
_18
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-28],ebx
	mov	ebx,[ebp-20]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-32],ebx
	mov	[ebp-36],128
	mov	eax,[ebp-36]
	cmp	[ebp-24],eax
	setg	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	ebx,[ebp-36]
	cmp	[ebp-28],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	or	eax,ebx
	mov	[ebp-84],eax
	mov	ebx,[ebp-36]
	cmp	[ebp-32],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	or	eax,ebx
	and	eax,eax
	jz	_19
	mov	ebx,[ebp+24]
	shl	ebx,byte 24
	mov	[ebp-40],ebx
	jmp	_20
_19
	mov	[ebp-40],0
_20
	mov	ebx,[ebp-24]
	imul	ebx,3
	mov	[ebp-24],ebx
	mov	ebx,[ebp-28]
	imul	ebx,3
	mov	[ebp-28],ebx
	mov	ebx,[ebp-32]
	imul	ebx,3
	mov	[ebp-32],ebx
	cmp	[ebp-24],255
	jle	_21
	mov	[ebp-24],255
_21
	cmp	[ebp-28],255
	jle	_22
	mov	[ebp-28],255
_22
	cmp	[ebp-32],255
	jle	_23
	mov	[ebp-32],255
_23
	mov	ebx,[ebp-40]
	mov	esi,[ebp-24]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,[ebp-28]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-32]
	or	ebx,esi
	mov	[ebp-44],ebx
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_17
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_18
_6
	add	[ebp-12],1
_15
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_16
_5
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcreatequad
	mov	[ebp-48],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-56],eax
	mov	ebx,[ebp+48]
	and	ebx,ebx
	jz	_24
	mov	[ebp-16],0
	jmp	_25
_26
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	esi,[ebp-64]
	mov	[esp+16],esi
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	[esp+8],-1082130432
	mov	[esp+4],-1082130432
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-68],eax
	sub	esp,28
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	edi,[ebp-64]
	mov	[esp+16],edi
	mov	esi,[ebp-60]
	mov	[esp+12],esi
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-72],eax
	sub	esp,28
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	edi,[ebp-64]
	mov	[esp+16],edi
	mov	esi,[ebp-60]
	mov	[esp+12],esi
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-76],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	esi,[ebp-64]
	mov	[esp+16],esi
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-80],eax
	sub	esp,24
	mov	[esp+16],1132396544
	mov	[esp+20],1065353216
	mov	[esp+12],1132396544
	mov	[esp+8],1132396544
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-72]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],1132396544
	mov	[esp+20],1065353216
	mov	[esp+12],1132396544
	mov	[esp+8],1132396544
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,16
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	mov	[esp+12],esi
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-80]
	mov	[esp+8],ebx
	mov	esi,[ebp-68]
	mov	[esp+12],esi
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-16],1
_25
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-16],ebx
	jle	_26
_7
_24
	mov	ebx,[ebp+52]
	and	ebx,ebx
	jz	_27
	mov	[ebp-16],0
	jmp	_28
_29
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	sub	esp,28
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	[esp+4],-1082130432
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-68],eax
	sub	esp,28
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
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
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],-1082130432
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-72],eax
	sub	esp,28
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
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
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-76],eax
	sub	esp,28
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1065353216
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	[esp+4],-1082130432
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-80],eax
	sub	esp,24
	mov	[esp+16],1132396544
	mov	[esp+20],1065353216
	mov	[esp+12],1132396544
	mov	[esp+8],1132396544
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-72]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	[esp+16],1132396544
	mov	[esp+20],1065353216
	mov	[esp+12],1132396544
	mov	[esp+8],1132396544
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,16
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	mov	[esp+12],esi
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-80]
	mov	[esp+8],ebx
	mov	esi,[ebp-68]
	mov	[esp+12],esi
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-16],1
_28
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-16],ebx
	jle	_29
_8
_27
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	[esp+4],19
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,12
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fentityparent
	mov	eax,[ebp-48]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
	.align	16
_fcreatequad
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
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],-1082130432
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-24],eax
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fupdatenormals
	mov	eax,[ebp-4]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_10	.db	"stone19.jpg",0
_11	.db	"churchwin3.jpg",0
_14	.db	"Tris Rendered: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
