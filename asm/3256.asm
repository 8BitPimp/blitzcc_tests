
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],625
	mov	[esp],1000
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1120403456
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,4
	mov	eax,_athingmesh
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1000
	mov	esi,_athingmesh
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_athingmesh
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],1
	jmp	_12
_13
	add	[_vthingscount],1
	mov	ebx,[_vthingscount]
	mov	[ebp-12],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,24
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp],-1049624576
	mov	[esp+4],1097859072
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],-1049624576
	mov	[esp+4],1097859072
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],-1049624576
	mov	[esp+4],1097859072
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-8],1
_12
	cmp	[ebp-8],1000
	jle	_13
_3
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	_flightrange
	sub	esp,16
	mov	[esp+8],1130364928
	mov	[esp+12],1130364928
	mov	[esp+4],1130364928
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-24],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1059061760
	mov	[esp+4],-1082130432
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1059061760
	mov	[esp+4],1065353216
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],1064960000
	mov	[esp+4],1
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1088421888
	mov	[esp+4],-1082130432
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	[esp+12],1058816000
	mov	[esp+8],0
	mov	[esp+4],2
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1088421888
	mov	[esp+4],1065353216
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],1065353216
	mov	[esp+20],0
	mov	[esp+12],1058816000
	mov	[esp+8],1064960000
	mov	[esp+4],3
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],3
	mov	[esp+4],2
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],304
	mov	[esp+12],1
	mov	[esp+4],1024
	mov	[esp],1024
	call	_fcreatetexture
	mov	[ebp-28],eax
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fclscolor
	call	_fcls
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],1
	call	_ftextureblend
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,20
	mov	[esp+12],-1048576000
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-32],1
_14
	call	_fmousexspeed
	mov	[ebp-36],eax
	call	_fmouseyspeed
	mov	[ebp-40],eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-44]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,20
	mov	ebx,[ebp-36]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	cmp	eax,1
	jnz	_15
	cmp	[ebp-32],1
	jnz	_16
	mov	[ebp-32],2
	jmp	_17
_16
	cmp	[ebp-32],2
	jnz	_18
	mov	[ebp-32],1
_18
_17
_15
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpositionrotateentitylikeotherentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,1
	jnz	_19
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
_19
	cmp	[ebp-32],1
	jnz	_20
	mov	[ebp-12],1
	jmp	_21
_22
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	add	[ebp-12],1
_21
	mov	ebx,[_vthingscount]
	cmp	[ebp-12],ebx
	jle	_22
_5
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fctext
	jmp	_24
_20
	cmp	[ebp-32],2
	jnz	_25
	mov	[ebp-12],1
	jmp	_26
_27
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	add	[ebp-12],1
_26
	mov	ebx,[_vthingscount]
	cmp	[ebp-12],ebx
	jle	_27
_6
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	call	_fgraphicsheight
	mov	[esp+12],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+8],ebx
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	mov	[ebp-12],1
	jmp	_28
_29
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	add	[ebp-12],1
_28
	mov	ebx,[_vthingscount]
	cmp	[ebp-12],ebx
	jle	_29
_7
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fctext
_25
_24
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_14
_4
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
_fctext
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpositionentitylikeotherentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
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
_frotateentitylikeotherentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
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
_fpositionrotateentitylikeotherentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vthingscount	.dd	0
	.align	4
_athingmesh	.dd	0
	.dd	1
	.dd	1
	.dd	0
_23	.db	"RenderMode = Scene",0
_30	.db	"RenderMode = ScreenMesh+ScreenTexture",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
