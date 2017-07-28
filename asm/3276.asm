
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[_visprite_],-1
	sub	esp,4
	mov	eax,_asprite_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asprite_tex_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_tex_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_tex_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asprite_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asprite_blend_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_blend_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_blend_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asprite_piv
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_piv
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_piv
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asprite_order_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_order_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_order_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_x
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_x
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_y
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_y
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_y
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_angle
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_angle
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_angle
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_dir
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_dir
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_dir
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_dx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_dx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_dx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_t
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_t
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_t
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_tx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_tx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_tx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_ty
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_ty
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_ty
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_banim
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_banim
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_banim
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_path
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_path
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_path
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_face
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_face
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_face
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atex_filter
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_atex_filter
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atex_filter
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asprite_a
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_asprite_a
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asprite_a
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspr_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16384
	mov	esi,_aspr_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspr_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[_vsprpack],eax
	mov	[_viil],1070189836
	sub	esp,4
	mov	eax,_ap_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2600
	mov	esi,_ap_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ap_
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vipart_],0
	mov	ebx,1142947840
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdimresize],ebx
	sub	esp,28
	mov	[esp+20],11
	mov	[esp+24],0
	mov	[esp+16],1
	mov	[esp+12],0
	mov	[esp+8],1107296256
	mov	[esp+4],1107296256
	sub	esp,4
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage_
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ap_]
	mov	[ebx],eax
	mov	[ebp-8],1
	jmp	_35
_36
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ap_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity_
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ap_]
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	[esp+8],-989855744
	mov	[esp+4],-989855744
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ap_]
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ap_]
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	add	[ebp-8],1
_35
	cmp	[ebp-8],2599
	jle	_36
_3
	sub	esp,4
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ap_]
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadanimimage_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	add	[_visprite_],1
	sub	esp,8
	mov	[esp],_vpath
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[_vsprpack]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopymesh
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_aspr_path]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	mov	ebx,[ebp+32]
	mov	[esp+16],ebx
	mov	esi,[ebp+36]
	mov	[esp+20],esi
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+40]
	mov	[esp+4],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimtexture
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_tex_]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_tex_]
	mov	ebx,[ebx]
	mov	[ebp+44],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atex_filter]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_atex_filter]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_blend_]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	sub	esp,12
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_atex_filter]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_ftexturefilter
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_blend_]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentityblend_
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	mov	ebx,[ebp+24]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_tx]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_ty]
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_atex_filter]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_aspr_ty]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1124132454
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_tx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1124270080
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	mov	ebx,1
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_banim]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityalpha_
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	[esp+4],-1024
	call	_fentityorder_
	sub	esp,20
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	[esp+8],-989855744
	mov	[esp+4],-989855744
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	mov	eax,[_visprite_]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_floadimage_
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
	add	[_visprite_],1
	sub	esp,8
	mov	eax,[_vsprpack]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopymesh
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],_vpath
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_aspr_path]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_floadtexture
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_tex_]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atex_filter]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_atex_filter]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_blend_]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	call	_ftextureblend
	sub	esp,12
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_atex_filter]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_ftexturefilter
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_blend_]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentityblend_
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	mov	ebx,[ebp+24]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_tx]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_ty]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_aspr_ty]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1124125901
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_tx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1124270080
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_atex_filter]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_banim]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	[esp+4],-1024
	call	_fentityorder_
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asprite_blend_]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentityblend_
	sub	esp,20
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	[esp+8],-989855744
	mov	[esp+4],-989855744
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	mov	eax,[_visprite_]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fcopyentity_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	add	[_visprite_],1
	sub	esp,8
	mov	[esp],_vpath
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_path]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_aspr_path]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_path]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_asprite_tex_]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vsprpack]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopymesh
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_]
	mov	[ebx],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_asprite_blend_]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_blend_]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_atex_filter]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_atex_filter]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_blend_]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	sub	esp,12
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_atex_filter]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_ftexturefilter
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_asprite_blend_]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentityblend_
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_tx]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_tx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_ty]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_ty]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_banim]
	mov	ebx,[ebx]
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_banim]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[_visprite_]
	shl	ebx,byte 2
	add	ebx,[_aspr_ty]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1124047258
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	esi,[_visprite_]
	shl	esi,byte 2
	add	esi,[_aspr_tx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1124270080
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	eax,[_visprite_]
	mov	[esp],eax
	mov	[esp+4],-1024
	call	_fentityorder_
	sub	esp,20
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	[esp+8],-989855744
	mov	[esp+4],-989855744
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_visprite_]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	mov	eax,[_visprite_]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fentityblend_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_asprite_blend_]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentityblend
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fscalesprite_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1124060365
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1124270080
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fscalesprite2_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1124728832
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1124728832
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_frotatesprite_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityroll
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,28
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
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
	ret	word 12
	.align	16
_frotateentity_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
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
	ret	word 16
	.align	16
_fturnsprite_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityroll
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fturnentity_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fspriteviewmode_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],16384
	jge	_37
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	cmp	[ebp+24],eax
	setz	al
	movzx	eax,al
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_face]
	mov	[ebx],eax
_37
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdrawimage_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp+28]
	add	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1000593162
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_viil]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,1050253722
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	ebx,[ebp+24]
	add	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,1000593162
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[_viil]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_x]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_y]
	mov	[esi],ebx
	cmp	[ebp+32],-1
	jle	_38
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
_38
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fdrawimage2_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_39
	mov	ebx,[_viil]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,925353388
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_viil],ebx
	sub	esp,4
	mov	[esp],10
	call	_fdelay
_39
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_40
	mov	ebx,[_viil]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,925353388
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_viil],ebx
	sub	esp,4
	mov	[esp],10
	call	_fdelay
_40
	sub	esp,20
	mov	ebx,[ebp+28]
	add	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,999948917
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_viil]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vdimresize]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,1050253722
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+12],1065437102
	mov	[esp+16],0
	mov	ebx,[ebp+24]
	add	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,999948917
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[_viil]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[_vdimresize]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_x]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_y]
	mov	[esi],ebx
	cmp	[ebp+32],-1
	jle	_41
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
_41
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fanimsprite_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aspr_y]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_x]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawimage_
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdrawtexture_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentitytexture_
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	[esp+12],-1
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawimage_
	sub	esp,16
	mov	ebx,[ebp+48]
	mov	[esp+8],ebx
	mov	esi,[ebp+52]
	mov	[esp+12],esi
	mov	esi,[ebp+44]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentitycolor_
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityblend_
	sub	esp,12
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fscalesprite_
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fentityalpha_
	mov	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_banim]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
	.align	16
_fdrawanimtexture_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+44]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentitytexture_
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_asprite_tex_]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	esi,[ebp+44]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawimage_
	sub	esp,16
	mov	ebx,[ebp+52]
	mov	[esp+8],ebx
	mov	esi,[ebp+56]
	mov	[esp+12],esi
	mov	esi,[ebp+48]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentitycolor_
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityblend_
	sub	esp,12
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fscalesprite_
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fentityalpha_
	mov	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_banim]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 40
	.align	16
_fentitytexture_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	mov	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aspr_banim]
	mov	[esi],ebx
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fmidhandle_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgettexture_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetentitybrush
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fgetbrushtexture
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fentityorder_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentityorder
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fentityalpha_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentityalpha
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fentitycolor_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fentityfx_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentityfx
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fmovesprite_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_ftranslatesprite_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fentityparent_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ftextureblend_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_tex_]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ftextureblend
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fhideentity_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fshowentity_
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_asprite_]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_visprite_	.dd	0
	.align	4
_asprite_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asprite_tex_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asprite_blend_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asprite_piv	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asprite_order_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspr_x	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aspr_y	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aspr_angle	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspr_dir	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspr_dx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspr_t	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspr_tx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aspr_ty	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aspr_banim	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspr_path	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aspr_face	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_atex_filter	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asprite_a	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aspr_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vsprite2_	.dd	0
	.align	4
_vbasetuiles_	.dd	0
	.align	4
_vsprpack	.dd	0
_33	.db	"Data\SprMesh.b3d",0
	.align	4
_vpath	.dd	0
	.align	4
_viil	.dd	0
	.align	4
_ap_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vipart_	.dd	0
	.align	4
_vdimresize	.dd	0
_34	.db	"Images\Tuiles\Blank.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

