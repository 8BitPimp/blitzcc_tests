
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1123024896
	mov	[esp+12],1108082688
	mov	[esp+4],1128136704
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1084227584
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1041235968
	mov	[esp+4],1114636288
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	call	_fgraphicswidth
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-36]
	imul	eax,ebx
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	mov	eax,esi
	call	_fgraphicsheight
	mov	esi,eax
	mov	eax,[ebp-36]
	imul	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	fdivp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vhalf_screen_diagonal],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatecirclefade
	mov	[ebp-16],eax
	mov	[ebp-20],0
	mov	[ebp-24],1065353216
	mov	[ebp-28],1014350479
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-32],eax
	jmp	_10
_9
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,20
	mov	[esp+12],1060320051
	mov	[esp+16],0
	mov	[esp+8],1058642330
	mov	[esp+4],1056964608
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],28
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-36]
	or	eax,ebx
	and	eax,eax
	jz	_11
	cmp	[ebp-20],0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
_11
	mov	ebx,[ebp-20]
	and	ebx,ebx
	jz	_12
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	eax,[ebp-24]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	[ebp-24],0
_13
	jmp	_14
_12
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	[ebp-24],1065353216
_15
_14
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fupdatecirclefade
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_9
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
_fcreatecirclefade
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	mov	[ebp-12],1077936128
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-72],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-72]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivrp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-32],eax
	mov	ebx,[_vhalf_screen_diagonal]
	mov	[ebp-36],ebx
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-40],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-44],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-48],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-52],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-56],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-60],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-64],eax
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-68],eax
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-40]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-44]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-52]
	mov	[esp+8],ebx
	mov	esi,[ebp-44]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-40]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-68]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1073741824
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	call	_fcreatemaskedcircletexture
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentitytexture
	mov	ebx,eax
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcreatemaskedcircletexture
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],3
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],1
	call	_fcolor
	sub	esp,20
	mov	[esp+12],256
	mov	[esp+16],1
	mov	[esp+8],256
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-8],0
	jmp	_17
_18
	mov	[ebp-12],0
	jmp	_19
_20
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-16],eax
	cmp	[ebp-16],-16711423
	jnz	_21
	sub	esp,24
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	[esp+8],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
_21
	add	[ebp-12],1
_19
	cmp	[ebp-12],255
	jle	_20
_7
	add	[ebp-8],1
_17
	cmp	[ebp-8],255
	jle	_18
_6
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-4]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdatecirclefade
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-4],eax
	mov	ebx,[_vhalf_screen_diagonal]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+4],5
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],6
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+4],7
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+4],9
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],10
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+4],11
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vhalf_screen_diagonal	.dd	0
_16	.db	"Press SPACE or ENTER to play the circular fade.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

