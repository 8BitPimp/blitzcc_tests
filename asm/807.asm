
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
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
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,16
	mov	[esp+8],1121714176
	mov	[esp+12],1123024896
	mov	[esp+4],1117782016
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcamerafogmode
	sub	esp,16
	mov	[esp+8],1121714176
	mov	[esp+12],1123024896
	mov	[esp+4],1117782016
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerafogcolor
	sub	esp,12
	mov	[esp+4],1120403456
	mov	[esp+8],1128792064
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerafogrange
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1128923136
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadterrain
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],1084227584
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],-1012924416
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1012924416
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,12
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-16],eax
	sub	esp,12
	mov	[esp+4],1086324736
	mov	[esp+8],1086324736
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-20],eax
	sub	esp,32
	mov	[esp+24],0
	mov	[esp+28],0
	mov	[esp+20],1101004800
	mov	[esp+16],1101004800
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],-1054867456
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ffitmesh
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],17
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],50
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fpaintmesh
	sub	esp,4
	mov	eax,_agrass
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_agrass
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrass
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_agrassa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_agrassa
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrassa
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vgrasscount],0
	mov	[ebp-28],-250
	jmp	_12
_13
	mov	[ebp-32],-250
	jmp	_14
_15
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[_vgrasscount]
	shl	ebx,byte 2
	add	ebx,[_agrass]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	call	_frnd
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,8
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	call	_frnd
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fterrainy
	mov	[ebp-64],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-64]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[_vgrasscount]
	shl	eax,byte 2
	add	eax,[_agrass]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],-90
	mov	[esp+4],90
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[_vgrasscount]
	shl	ebx,byte 2
	add	ebx,[_agrassa]
	mov	[ebx],eax
	add	[_vgrasscount],1
	add	[ebp-32],10
_14
	cmp	[ebp-32],250
	jle	_15
_4
	add	[ebp-28],10
_12
	cmp	[ebp-28],250
	jle	_13
_3
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fhideentity
	jmp	_17
_16
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_18
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
_18
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_19
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1090519040
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
_19
	call	_fmousexspeed
	neg	eax
	sar	eax,byte 2
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	call	_fmouseyspeed
	sar	eax,byte 2
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-64]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,44
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fterrainy
	mov	ebx,eax
	mov	esi,1101004800
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],0
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	[esp],1097859072
	mov	[esp+4],1065353216
	call	_fwind
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[_vgrasscount]
	sub	ebx,1
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	[ebp-68],eax
	mov	eax,ebx
	call	_ftrisrendered
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_17
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_16
_5
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
_fwind
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
	mov	[ebp-4],0
	jmp	_22
_23
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_agrass]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_agrass]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,24
	mov	eax,[_vwindwave]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agrassa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],0
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agrassa]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[_vwindwave]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_agrassa]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agrass]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frotateentity
	mov	ebx,eax
	add	[ebp-4],1
_22
	mov	ebx,[_vgrasscount]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_23
_7
	sub	esp,8
	mov	eax,[_vwindwave]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1135869952
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vwindwave],eax
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vwindwave	.dd	0
	.align	4
_vgrasscount	.dd	0
_8	.db	"hmap.jpg",0
_9	.db	"floor.jpg",0
_10	.db	"smplquad.3ds",0
_11	.db	"grass5f.tga",0
	.align	4
_agrass	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_agrassa	.dd	0
	.dd	2
	.dd	1
	.dd	0
_20	.db	"Quads in Scene: ",0
_21	.db	"Tris rendered: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

