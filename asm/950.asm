
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,30
	mov	esi,_agrid
	add	esi,12
	mov	[esi],ebx
	mov	ebx,30
	mov	esi,_agrid
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_11
_12
	mov	[ebp-8],0
	jmp	_13
_14
	sub	esp,8
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_ttileobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-8],1
_13
	cmp	[ebp-8],30
	jle	_14
_4
	add	[ebp-4],1
_11
	cmp	[ebp-4],30
	jle	_12
_3
	call	_fmyexamplegridroutine
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreategrid
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,28
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,28
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,28
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,28
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,16
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_faddtriangle
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fpaintgrid
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
	mov	eax,[_vtotaltexwidth]
	mov	ecx,[_vonetilewidth]
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	mov	eax,[_vtotaltexheight]
	mov	ecx,[_vonetileheight]
	cdq
	idiv	ecx
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-12],eax
	mov	eax,[ebp+28]
	sub	eax,[ebp-12]
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	add	eax,1
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_17
	mov	eax,-1
	jmp	_6_leave
_17
	cmp	[ebp-12],0
	jnz	_18
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
_18
	sub	esp,24
	mov	ebx,[_vonetileheight]
	imul	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vtotaltexheight]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	esi,[ebp-12]
	sub	esi,1
	imul	esi,[_vonetilewidth]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vtotaltexwidth]
	push	edi
	fild	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+24]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	ebx,[ebp-16]
	sub	ebx,1
	imul	ebx,[_vonetileheight]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vtotaltexheight]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	esi,[ebp-12]
	sub	esi,1
	imul	esi,[_vonetilewidth]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vtotaltexwidth]
	push	edi
	fild	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+24]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	ebx,[ebp-16]
	sub	ebx,1
	imul	ebx,[_vonetileheight]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vtotaltexheight]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	esi,[_vonetilewidth]
	imul	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vtotaltexwidth]
	push	edi
	fild	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+24]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	ebx,[_vonetileheight]
	imul	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vtotaltexheight]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	esi,[_vonetilewidth]
	imul	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vtotaltexwidth]
	push	edi
	fild	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+24]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertextexcoords
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmyexamplegridroutine
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],1
	mov	[esp],32
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],0
	mov	[esp],16
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],16
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],16
	mov	[esp],16
	call	_frect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],32
	mov	[esp],32
	call	_fcreatetexture
	mov	[_vmytexture],eax
	sub	esp,12
	mov	eax,[_vmytexture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[_vmytexture]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[_vtotaltexwidth],eax
	sub	esp,4
	mov	eax,[_vmytexture]
	mov	[esp],eax
	call	_ftextureheight
	mov	[_vtotaltexheight],eax
	mov	[_vonetilewidth],16
	mov	[_vonetileheight],16
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vmytexture]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	mov	[ebp-16],1
	jmp	_19
_20
	mov	[ebp-20],1
	jmp	_21
_22
	sub	esp,24
	mov	[esp+16],1107296256
	mov	[esp+20],1107296256
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcreategrid
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],3
	call	_frand
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpaintgrid
	add	[ebp-20],1
_21
	cmp	[ebp-20],30
	jle	_22
_9
	add	[ebp-16],1
_19
	cmp	[ebp-16],30
	jle	_20
_8
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],1128792064
	mov	[esp+16],0
	mov	[esp+8],1112014848
	mov	[esp+4],1137180672
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
_23
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_24
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fturnentity
_24
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_25
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fturnentity
_25
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_26
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmoveentity
_26
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_27
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fmoveentity
_27
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_23
_10
	call	_fend
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmytexture	.dd	0
	.align	4
_vtotaltexwidth	.dd	0
	.align	4
_vtotaltexheight	.dd	0
	.align	4
_vonetilewidth	.dd	0
	.align	4
_vonetileheight	.dd	0
	.align	4
_agrid	.dd	0
	.dd	5
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ttileobj	.dd	5
_15	.dd	0
	.dd	_15
	.dd	_15
	.dd	0
	.dd	-1
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

