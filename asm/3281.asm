
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics3d
	sub	esp,12
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[_vmesh_agua],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentityfx
	sub	esp,8
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	mov	[esp+4],1050253722
	call	_fentityshininess
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],64
	call	_floadtexture
	mov	[_vt_cube_map],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[_vt_cube_map]
	mov	[esp+4],esi
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],25
	mov	[esp+12],124
	mov	[esp+8],124
	mov	[esp+4],256
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimtexture
	mov	[_vt_espuma],eax
	sub	esp,12
	mov	[esp+4],1017370378
	mov	[esp+8],1017370378
	mov	eax,[_vt_espuma]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,8
	mov	eax,[_vt_espuma]
	mov	[esp],eax
	mov	[esp+4],3
	call	_ftextureblend
	sub	esp,12
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[_vt_rio],eax
	sub	esp,8
	mov	eax,[_vt_rio]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	mov	[ebp-4],1031127695
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[_vt_rio]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcam],eax
	sub	esp,20
	mov	[esp+12],1101004800
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],1092616192
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],1126170624
	mov	[esp+12],1132396544
	mov	[esp+4],1125515264
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,16
	mov	[esp+8],1126170624
	mov	[esp+12],1128792064
	mov	[esp+4],1125515264
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcamerafogcolor
	sub	esp,8
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcamerafogmode
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1167867904
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcamerafogrange
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1203982336
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_tbarco
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcreatecube
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],1090519040
	mov	[esp+16],0
	mov	[esp+8],1082130432
	mov	[esp+4],1082130432
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-16],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],1128792064
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpointentity
	call	_fcrear_botones
	jmp	_25
_24
	call	_fupdate_mouse
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_26
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	jmp	_27
_26
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
_27
	call	_fwave_mesh
	sub	esp,12
	mov	ebx,[_vmesh_agua]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpointentity
	mov	ebx,[_vmdr]
	and	ebx,ebx
	jz	_28
	call	_fflushmouse
	call	_fflushmouse
_28
	mov	ebx,[_vmdr]
	and	ebx,ebx
	jz	_29
	sub	esp,16
	mov	ebx,[_vmys]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1119040307
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vmzs]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vmxs]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1028443341
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],500
	mov	[esp+4],400
	call	_fmovemouse
_29
	sub	esp,12
	mov	ebx,[_vmesh_agua]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpointentity
	call	_fupdate_barcos
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
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
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],70
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],90
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],110
	mov	[esp],10
	call	_ftext
	call	_fwater_conf
	sub	esp,4
	mov	[esp],1
	call	_fflip
_25
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_24
_5
	call	_fend
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwave_mesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	sub	esp,8
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[_vt_e_frame]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],23
	call	__bbMod
	mov	[_vt_e_frame],eax
	sub	esp,16
	mov	ebx,[_vt_e_frame]
	mov	[esp+8],ebx
	mov	[esp+12],3
	mov	esi,[_vt_espuma]
	mov	[esp+4],esi
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcounttriangles
	mov	[ebp-12],eax
	mov	[ebp-16],1084227584
	mov	[ebp-20],1065353216
	mov	[ebp-24],1093664768
	mov	[ebp-28],0
	mov	[ebp-32],1065353216
	mov	[ebp-36],1084227584
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[esp+4],_tboton
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_40
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_41
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
_41
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_43
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
_43
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_45
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
_45
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_47
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
_47
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_49
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
_49
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_51
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_51
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_53
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
_53
	sub	esp,12
	mov	eax,[ebp-40]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_55
	mov	ebx,[ebp-40]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
_55
	sub	esp,4
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_40
_7
	mov	[ebp-36],1077936128
	mov	[ebp-52],0
	jmp	_57
_58
	cmp	[ebp-28],1
	jnz	_59
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	mov	[ebp-68],1
	jmp	_60
_61
	mov	ebx,[ebp-68]
	imul	ebx,30
	mov	[ebp-72],ebx
	sub	esp,4
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-48]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	eax,[ebp-72]
	push	eax
	fild	[esp]
	pop	eax
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	sub	esp,4
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-80]
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	add	[ebp-68],1
_60
	mov	ebx,[ebp-48]
	cmp	[ebp-68],ebx
	jle	_61
_9
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1058642330
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-60],esi
	sub	esp,20
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	esi,[ebp-56]
	mov	[esp+16],esi
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	mov	[ebp-76],100
_59
	cmp	[ebp-28],2
	jnz	_62
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	eax,[ebp-52]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1008981770
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-80]
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	sub	esp,4
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,990057071
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-80]
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],1
	jmp	_63
_64
	sub	esp,4
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-80],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	mov	ebx,[ebp-68]
	imul	ebx,30
	mov	[ebp-72],ebx
	add	[ebp-68],1
_63
	mov	ebx,[ebp-48]
	cmp	[ebp-68],ebx
	jle	_64
_10
	sub	esp,20
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	esi,[ebp-56]
	mov	[esp+16],esi
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcoords
	mov	[ebp-76],100
	sub	esp,24
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-76]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],1132068864
	mov	edi,[ebp-32]
	mov	[esp+20],edi
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-76]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1120403456
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertexcolor
_62
	add	[ebp-52],1
_57
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-52],ebx
	jle	_58
_8
	sub	esp,4
	mov	eax,[_vmesh_agua]
	mov	[esp],eax
	call	_fupdatenormals
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcrear_botones
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1135869952
	mov	[esp+12],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_66
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1148846080
	mov	[esp+12],1092616192
	mov	[esp+8],1120403456
	sub	esp,4
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],2
	mov	[esp+24],1
	mov	[esp+16],1092616192
	mov	[esp+12],0
	mov	[esp+8],1065353216
	sub	esp,4
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],2
	mov	[esp+24],1
	mov	[esp+16],1092616192
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	sub	esp,4
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_71
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1092616192
	mov	[esp+12],0
	mov	[esp+8],1036831949
	sub	esp,4
	mov	eax,_74
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_73
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1092616192
	mov	[esp+12],0
	mov	[esp+8],1065353216
	sub	esp,4
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1120403456
	mov	[esp+12],0
	mov	[esp+8],1084227584
	sub	esp,4
	mov	eax,_78
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1120403456
	mov	[esp+12],0
	mov	[esp+8],1065353216
	sub	esp,4
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1120403456
	mov	[esp+12],0
	mov	[esp+8],1093664768
	sub	esp,4
	mov	eax,_82
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_81
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1092616192
	mov	[esp+12],0
	mov	[esp+8],1093664768
	sub	esp,4
	mov	eax,_84
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_83
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	sub	esp,28
	mov	[esp+20],1
	mov	[esp+24],1
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],1065353216
	sub	esp,4
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_boton
	mov	ebx,eax
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwater_conf
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],115
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tboton
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_87
	mov	[ebp-12],20
	mov	[ebp-16],200
	add	[ebp-4],20
	sub	esp,4
	mov	eax,[_vmy]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_88
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_89
	mov	ebx,[_vmzs]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],esi
_89
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_90
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vmzs]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_90
	jmp	_91
_88
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_91
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_92
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_92
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_93
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_93
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_87
_13
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnew_boton
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
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tboton
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp+44]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fupdate_mouse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	ebx,[_vmdl]
	mov	[_vl_mdl],ebx
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[_vmhl],eax
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	mov	[_vmhr],eax
	sub	esp,4
	mov	[esp],3
	call	_fmousehit
	mov	[_vmhc],eax
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmx],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmy],eax
	call	_fmousez
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmxs],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmys],eax
	call	_fmousezspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmzs],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[_vmdl],eax
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	mov	[_vmdr],eax
	sub	esp,4
	mov	[esp],3
	call	_fmousedown
	mov	[_vmdc],eax
	cmp	[_vmdl],0
	jnz	_94
	mov	ebx,[_vmx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vmx1],ebx
	mov	ebx,[_vmy]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vmy1],ebx
_94
	sub	esp,12
	mov	ebx,[_vmx]
	mov	[esp+4],ebx
	mov	esi,[_vmy]
	mov	[esp+8],esi
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcamerapick
	mov	[ebp-8],eax
	cmp	[_vmdr],1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vmdc],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_95
	sub	esp,8
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fmovemouse
_95
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdate_barcos
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tbarco
	call	__bbObjEachFirst
	and	eax,eax
	jz	_17
_96
	sub	esp,36
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],-1018691584
	mov	[esp+12],0
	mov	[esp+4],1120403456
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flinepick
	mov	[ebp-8],eax
	call	_fpickednx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_fpickedny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	call	_fpickednz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	call	_fpickedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	[ebp-32],973279855
	mov	[ebp-36],973279855
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_97
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	jmp	_98
_97
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_98
	mov	[ebp-40],1065336439
	mov	[ebp-44],1065336439
	mov	[ebp-48],1120403456
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],esi
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],esi
	mov	[ebp-52],0
	jmp	_99
_100
	mov	ebx,[ebp-52]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	shl	esi,byte 2
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	mov	ebx,[ebp-52]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	shl	esi,byte 2
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-52],1
_99
	cmp	[ebp-52],2
	jle	_100
_18
	sub	esp,24
	mov	[esp+16],2
	mov	[esp+20],1028443341
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_faligntovector
	mov	ebx,1045220557
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,1028443341
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,28
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_96
_17
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmx	.dd	0
	.align	4
_vmy	.dd	0
	.align	4
_vmhl	.dd	0
	.align	4
_vmhc	.dd	0
	.align	4
_vmhr	.dd	0
	.align	4
_vmdc	.dd	0
	.align	4
_vmdl	.dd	0
	.align	4
_vmdr	.dd	0
	.align	4
_vmxs	.dd	0
	.align	4
_vmys	.dd	0
	.align	4
_vmzs	.dd	0
	.align	4
_vmun	.dd	0
	.align	4
_vaccion	.dd	0
	.align	4
_vmx1	.dd	0
	.align	4
_vmy1	.dd	0
	.align	4
_vmzsv	.dd	0
	.align	4
_vmlcv	.dd	0
	.align	4
_vmrcv	.dd	0
	.align	4
_vmouse_over	.dd	0
	.align	4
_vlast_mouse_over	.dd	0
	.align	4
_vl_mdl	.dd	0
	.align	4
_vmesh_agua	.dd	0
_19	.db	"objetos\agua\aguacurva3.b3d",0
	.align	4
_vt_cube_map	.dd	0
_20	.db	"objetos\agua\cubemap2.jpg",0
	.align	4
_vt_espuma	.dd	0
_21	.db	"wateranim.bmp",0
	.align	4
_vt_e_frame	.dd	0
	.align	4
_vt_rio	.dd	0
_22	.db	"objetos\agua\waterhi2.jpg",0
	.align	4
_vcam	.dd	0
_23	.db	"puma26",0
_30	.db	"3D Waves by Santiago Gonzalez. www.indiesoft.com.ar",0
_31	.db	"SPACE - Wirefram",0
_32	.db	"MOUSE DOWN RIGHT : Mouse move camera",0
_33	.db	"Change the configuration of waves with the mouse",0
_34	.db	"Try Others .b3d water : aguacurva(1,2,3,4,5,6).b3d or aguarrecta(1 or 2).b3d",0
_35	.db	"i make diferents mesh to test results",0
	.align	4
_3	.dd	6
	.dd	4
	.dd	__bbFltType
	.align	4
_4	.dd	6
	.dd	4
	.dd	__bbFltType
	.align	4
_tbarco	.dd	5
_36	.dd	0
	.dd	_36
	.dd	_36
	.dd	0
	.dd	-1
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	_3
	.dd	_4
	.align	4
_tboton	.dd	5
_38	.dd	0
	.dd	_38
	.dd	_38
	.dd	0
	.dd	-1
_39	.dd	0
	.dd	_39
	.dd	_39
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbStrType
	.dd	__bbStrType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
_42	.db	"Vel",0
_44	.db	"Alt",0
_46	.db	"fdx",0
_48	.db	"fdy",0
_50	.db	"fdz",0
_52	.db	"Wtype",0
_54	.db	"Waves",0
_56	.db	"Alpha",0
_65	.db	"",0
_66	.db	"Direction",0
_67	.db	"",0
_68	.db	"WZize",0
_69	.db	"",0
_70	.db	"Wtype",0
_71	.db	"",0
_72	.db	"Waves",0
_73	.db	"",0
_74	.db	"Vel",0
_75	.db	"",0
_76	.db	"Alt",0
_77	.db	"",0
_78	.db	"fdx",0
_79	.db	"",0
_80	.db	"fdy",0
_81	.db	"",0
_82	.db	"fdz",0
_83	.db	"",0
_84	.db	"",0
_85	.db	"",0
_86	.db	"Alpha",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

