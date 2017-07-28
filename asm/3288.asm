
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,112
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
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
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
	mov	[_vcamera],eax
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-112],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-112]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,12
	mov	[esp+4],1045220557
	mov	[esp+8],1128792064
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1008981770
	mov	[esp+12],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vdlight],eax
	sub	esp,16
	mov	[esp+8],1128267776
	mov	[esp+12],1128267776
	mov	[esp+4],1128267776
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],-998637568
	mov	[esp+16],1
	mov	[esp+8],1148846080
	mov	[esp+4],1112014848
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[_vdlight]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
	call	_finitializeinteractionmode
	call	_fbuildghost
	call	_finitializeghost
	sub	esp,8
	mov	[esp],128
	mov	[esp+4],0
	call	_fcreateterrain
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1103888384
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,12
	mov	[esp+4],6553
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fterraindetail
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fterrainshading
	mov	[ebp-12],0
	jmp	_24
_25
	mov	[ebp-16],0
	jmp	_26
_27
	sub	esp,8
	mov	[esp],30
	mov	[esp+4],33
	call	_frand
	mov	[ebp-20],eax
	mov	ebx,998277249
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmodifyterrain
	add	[ebp-16],1
_26
	cmp	[ebp-16],127
	jle	_27
_4
	add	[ebp-12],1
_24
	cmp	[ebp-12],127
	jle	_25
_3
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1124073472
	mov	[esp+4],1124073472
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1124073472
	mov	[esp+4],1124073472
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,20
	mov	[esp+12],1115684864
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1115684864
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,_acolor_r
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acolor_r
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolor_r
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acolor_g
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acolor_g
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolor_g
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acolor_b
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acolor_b
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolor_b
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_acolor_r]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_acolor_g]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_acolor_b]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_acolor_r]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_acolor_g]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_acolor_b]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_acolor_r]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_acolor_g]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_acolor_b]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_acolor_r]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_acolor_g]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_acolor_b]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_acolor_r]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_acolor_g]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_acolor_b]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_acolor_r]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_acolor_g]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_acolor_b]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aedge_verttopi
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,19
	mov	esi,_aedge_verttopi
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aedge_verttopi
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aedge_vertbottomi
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,19
	mov	esi,_aedge_vertbottomi
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aedge_vertbottomi
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_acolor_r]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_acolor_g]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_acolor_b]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	[ebp-48],1
	jmp	_28
_29
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
	mov	[ebp-60],-1028390912
	jmp	_30
_31
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-64],eax
	sub	esp,16
	mov	[esp+8],1008981770
	mov	[esp+12],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-64]
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
	mov	[ebp-112],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-112]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-112],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-112]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	ebx,30
	add	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,36
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-112],eax
	sub	esp,8
	mov	ebx,[ebp-64]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-112]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-68],eax
	sub	esp,16
	mov	[esp+8],1008981770
	mov	[esp+12],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-68]
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
	mov	[ebp-112],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-112]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-112],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-112]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	ebx,[ebp-60]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	ebx,30
	add	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,36
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[ebp-112],eax
	sub	esp,8
	mov	ebx,[ebp-68]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-112]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddvertex
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_ffreeentity
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
_30
	mov	eax,[ebp-60]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_31
_6
	mov	[ebp-72],-1
	mov	[ebp-76],1
	jmp	_32
_33
	add	[ebp-72],1
	mov	ebx,[ebp-72]
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_verttopi]
	mov	[esi],ebx
	add	[ebp-72],1
	mov	ebx,[ebp-72]
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_vertbottomi]
	mov	[esi],ebx
	add	[ebp-76],1
_32
	cmp	[ebp-76],19
	jle	_33
_7
	mov	[ebp-80],1
	jmp	_34
_35
	mov	ebx,[ebp-80]
	shl	ebx,byte 2
	add	ebx,[_aedge_verttopi]
	mov	ebx,[ebx]
	mov	[ebp-84],ebx
	mov	ebx,[ebp-80]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aedge_verttopi]
	mov	ebx,[ebx]
	mov	[ebp-88],ebx
	mov	ebx,[ebp-80]
	shl	ebx,byte 2
	add	ebx,[_aedge_vertbottomi]
	mov	ebx,[ebx]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-80]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aedge_vertbottomi]
	mov	ebx,[ebx]
	mov	[ebp-96],ebx
	sub	esp,16
	mov	ebx,[ebp-88]
	mov	[esp+8],ebx
	mov	esi,[ebp-92]
	mov	[esp+12],esi
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-88]
	mov	[esp+8],ebx
	mov	esi,[ebp-96]
	mov	[esp+12],esi
	mov	esi,[ebp-92]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-80],1
_34
	cmp	[ebp-80],18
	jle	_35
_8
	mov	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_acolor_r]
	mov	ebx,[ebx]
	mov	[ebp-100],ebx
	mov	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_acolor_g]
	mov	ebx,[ebx]
	mov	[ebp-104],ebx
	mov	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_acolor_b]
	mov	ebx,[ebx]
	mov	[ebp-108],ebx
	cmp	[ebp-48],1
	jnz	_36
	mov	[ebp-76],1
	jmp	_37
_38
	sub	esp,24
	mov	ebx,[ebp-108]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1045220557
	mov	esi,[ebp-104]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_verttopi]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_vertbottomi]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-76],1
_37
	cmp	[ebp-76],19
	jle	_38
_9
	jmp	_39
_36
	cmp	[ebp-48],1
	setg	al
	movzx	eax,al
	mov	[ebp-112],eax
	cmp	[ebp-48],6
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-112]
	and	eax,ebx
	and	eax,eax
	jz	_40
	mov	[ebp-76],1
	jmp	_41
_42
	sub	esp,24
	mov	ebx,[ebp-108]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1045220557
	mov	esi,[ebp-104]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_verttopi]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1045220557
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_vertbottomi]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-76],1
_41
	cmp	[ebp-76],19
	jle	_42
_10
	jmp	_43
_40
	cmp	[ebp-48],6
	jnz	_44
	mov	[ebp-76],1
	jmp	_45
_46
	sub	esp,24
	mov	ebx,[ebp-108]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	esi,[ebp-104]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_verttopi]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	sub	esp,24
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],1045220557
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_aedge_vertbottomi]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-76],1
_45
	cmp	[ebp-76],19
	jle	_46
_11
_44
_43
_39
	mov	ebx,[ebp-100]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-104]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-108]
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_ffreeentity
	add	[ebp-48],1
_28
	cmp	[ebp-48],6
	jle	_29
_5
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],51
	call	_fentityfx
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	sub	esp,20
	mov	[esp+12],1115684864
	mov	[esp+16],1
	mov	[esp+8],1077936128
	mov	[esp+4],1115684864
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],1
	mov	[esp+8],1083493581
	mov	[esp+4],1115684864
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fpositionentity
	mov	[_vghostrootyaw],0
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[_vmainlooptimer],eax
	call	_fmain
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
_fmain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
_47
	call	_fgetinput
	call	_fupdateinteractionmode
	cmp	[_vinteractionmode],1
	jnz	_48
	jmp	_49
_48
	cmp	[_vinteractionmode],2
	jnz	_50
	call	_fupdateghost
_50
_49
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	ebx,[_vghosteyes]
	mov	[esp+4],ebx
	call	_fpositionrotateentitylikeotherentity
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,1
	jnz	_51
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
_51
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	eax,[_vmainlooptimer]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fvwait
	sub	esp,4
	mov	[esp],0
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_47
_13
	mov	eax,0
	jmp	_12_leave
_12_leave
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
	jmp	_14_leave
_14_leave
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
	jmp	_15_leave
_15_leave
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
	jmp	_16_leave
_16_leave
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
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finitializeinteractionmode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vinteractionmode],2
	call	_fhidepointer
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdateinteractionmode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],15
	call	_fkeyhit
	cmp	eax,1
	jnz	_52
	cmp	[_vinteractionmode],1
	jnz	_53
	mov	[_vinteractionmode],2
	call	_fhidepointer
	jmp	_54
_53
	cmp	[_vinteractionmode],2
	jnz	_55
	mov	[_vinteractionmode],1
	call	_fshowpointer
_55
_54
_52
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbuildghost
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vghostroot],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vghosteyes],eax
	sub	esp,8
	mov	eax,[_vghosteyes]
	mov	[esp],eax
	mov	ebx,[_vghostroot]
	mov	[esp+4],ebx
	call	_fpositionrotateentitylikeotherentity
	sub	esp,12
	mov	ebx,[_vghostroot]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vghosteyes]
	mov	[esp],eax
	call	_fentityparent
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitializeghost
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	[esp+12],-1069547520
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fpositionentity
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdateghost
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	mov	ebx,[_vmxdiff]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vghostrootyaw]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vghostrootyaw],esi
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vghostrootyaw]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_frotateentity
	mov	ebx,[_vmydiff]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vghosteyespitch]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vghosteyespitch],esi
	mov	eax,[_vghosteyespitch]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1028521984
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_56
	mov	[_vghosteyespitch],-1028521984
	jmp	_57
_56
	mov	eax,[_vghosteyespitch]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1118961664
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_58
	mov	[_vghosteyespitch],1118961664
_58
_57
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[_vghosteyespitch]
	mov	[esp+4],ebx
	mov	eax,[_vghosteyes]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],29
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_59
	mov	[ebp-4],1036831949
	jmp	_60
_59
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],29
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_61
	mov	[ebp-4],1065353216
	jmp	_62
_61
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],29
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_63
	mov	[ebp-4],1008981770
_63
_62
_60
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_64
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_65
_64
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_66
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
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fmoveentity
_66
_65
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	cmp	eax,1
	jnz	_67
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
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_68
_67
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	cmp	eax,1
	jnz	_69
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fmoveentity
_69
_68
	sub	esp,4
	mov	[esp],16
	call	_fkeydown
	cmp	eax,1
	jnz	_70
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
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_71
_70
	sub	esp,4
	mov	[esp],18
	call	_fkeydown
	cmp	eax,1
	jnz	_72
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vghostroot]
	mov	[esp],eax
	call	_fmoveentity
_72
_71
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetinput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmousex
	mov	[_vmx],eax
	call	_fmousey
	mov	[_vmy],eax
	call	_fmousexspeed
	mov	[_vmxdiff],eax
	call	_fmouseyspeed
	mov	[_vmydiff],eax
	mov	eax,0
	jmp	_23_leave
_23_leave
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
_vmxdiff	.dd	0
	.align	4
_vmydiff	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vdlight	.dd	0
	.align	4
_vinteractionmode	.dd	0
	.align	4
_vghostroot	.dd	0
	.align	4
_vghostrootyaw	.dd	0
	.align	4
_vghosteyes	.dd	0
	.align	4
_vghosteyespitch	.dd	0
	.align	4
_vcolorscount	.dd	0
	.align	4
_acolor_r	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acolor_g	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acolor_b	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vedgesccount	.dd	0
	.align	4
_aedge_verttopi	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aedge_vertbottomi	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vmainlooptimer	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
