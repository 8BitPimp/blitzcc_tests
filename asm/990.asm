
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fgraphicswidth
	mov	[_vgrwidth],eax
	call	_fgraphicsheight
	mov	[_vgrheight],eax
	mov	ebx,[_vgrwidth]
	sar	ebx,byte 1
	mov	[_vgrhalfwidth],ebx
	mov	ebx,[_vgrheight]
	sar	ebx,byte 1
	mov	[_vgrhalfheight],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1148846080
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],1120403456
	mov	[esp+12],1114636288
	mov	[esp+4],1109393408
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,20
	mov	[esp+12],-1043857408
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,16
	mov	[esp+8],1107296256
	mov	[esp+12],1107296256
	mov	[esp+4],1107296256
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_fturnentity
	mov	[_vmfb],0
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vpointquads],eax
	sub	esp,8
	mov	eax,[_vpointquads]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[_vpqssurf],eax
	sub	esp,8
	mov	eax,[_vpointquads]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityfx
	mov	[ebp-8],15
	mov	ebx,[ebp-8]
	neg	ebx
	mov	[ebp-12],ebx
	jmp	_17
_18
	mov	ebx,[ebp-8]
	neg	ebx
	mov	[ebp-16],ebx
	jmp	_19
_20
	sub	esp,20
	mov	[esp+4],0
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_faddpoint
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,24
	mov	[esp],1123942400
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1124073472
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],1123942400
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esi,1124073472
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],1123942400
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esi,1124073472
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcolorpoint
	add	[ebp-16],1
_19
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_20
_4
	add	[ebp-12],1
_17
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_18
_3
_21
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fxcameracontrols
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fupdatepoints
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,1
	jnz	_21
_5
	ret
_2_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_faddpoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tpointprimitive
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_24
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_25
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,48
	mov	[esi],ebx
	jmp	_7
_25
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_24
_7
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_26
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tpointprimitive
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,44
	mov	[ebx],eax
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,36
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_faddtriangle
_26
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionpoint
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],255
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolorpoint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fpointsize
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1048576000
	call	_fpointbias
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpositionpoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fpointsize
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpointbias
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcolorpoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1065353216
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcolor
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fdeletepoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,36
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,44
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	mov	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,48
	mov	[esi],ebx
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fupdatepoints
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,8
	lea	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],_tpointprimitive
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_27
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_28
	sub	esp,16
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	call	_fprojectedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_fprojectedz
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_29
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp+20]
	mov	[esp+16],esi
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedz
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,24
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	edi,[ebp-52]
	mov	[esp+12],edi
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-64]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freverseproject
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,24
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	edi,[ebp-52]
	mov	[esp+12],edi
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-64]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freverseproject
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,24
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	edi,[ebp-52]
	mov	[esp+12],edi
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-64]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freverseproject
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,24
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	edi,[ebp-52]
	mov	[esp+12],edi
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-64]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freverseproject
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	[esp+16],esi
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,36
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-32]
	mov	[esp+12],ebx
	mov	esi,[ebp-36]
	mov	[esp+16],esi
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-44]
	mov	[esp+12],ebx
	mov	esi,[ebp-48]
	mov	[esp+16],esi
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,44
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vpqssurf]
	mov	[esp],eax
	call	_fvertexcoords
_29
_28
	sub	esp,4
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_27
_14
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_freverseproject
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgrhalfwidth]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgrhalfwidth]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[_vgrhalfheight]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	esi,[ebp+40]
	mov	[esp+16],esi
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftformpoint
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fxcameracontrols
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
	mov	[ebp-4],1048576000
	mov	[ebp-8],1065353216
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_30
	mov	[_vmfb],0
_30
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_31
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_31
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_32
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_32
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_33
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_33
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_34
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_34
	sub	esp,4
	mov	[esp],157
	call	_fkeydown
	and	eax,eax
	jz	_35
	sub	esp,16
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_35
	sub	esp,4
	mov	[esp],54
	call	_fkeydown
	and	eax,eax
	jz	_36
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_36
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vmfb],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_37
	mov	[_vmfb],1
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-20]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
_37
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vmfb],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_38
	mov	[_vmfb],0
_38
	cmp	[_vmfb],0
	jle	_39
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	ebx,[_vdest_cam_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdest_cam_yaw],ebx
	mov	ebx,[_vdest_cam_pitch]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdest_cam_pitch],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vdest_cam_yaw]
	mov	[esp+8],esi
	mov	ebx,[_vdest_cam_pitch]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-20]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
_39
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vgrwidth	.dd	0
	.align	4
_vgrheight	.dd	0
	.align	4
_vgrhalfwidth	.dd	0
	.align	4
_vgrhalfheight	.dd	0
	.align	4
_vlight	.dd	0
	.align	4
_vdest_cam_yaw	.dd	0
	.align	4
_vdest_cam_pitch	.dd	0
	.align	4
_vmfb	.dd	0
	.align	4
_vpointquads	.dd	0
	.align	4
_vpqssurf	.dd	0
	.align	4
_tpointprimitive	.dd	5
_22	.dd	0
	.dd	_22
	.dd	_22
	.dd	0
	.dd	-1
_23	.dd	0
	.dd	_23
	.dd	_23
	.dd	0
	.dd	-1
	.dd	13
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
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
