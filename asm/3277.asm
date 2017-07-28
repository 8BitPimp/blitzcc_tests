
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
	mov	[_vscale1],1084227584
	mov	ebx,[_vscale1]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vscale2],ebx
	mov	[_vscale3],1101004800
	mov	[_vwidth],800
	mov	[_vheight],600
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vmw],100
	mov	[_vmh],100
	call	_fgraphicswidth
	mov	ecx,[_vmw]
	cdq
	idiv	ecx
	mov	[_vtw],eax
	call	_fgraphicsheight
	mov	ecx,[_vmh]
	cdq
	idiv	ecx
	mov	[_vth],eax
	mov	[_vminroomsize],5
	mov	[_vmaxroomsize],15
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmw]
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmh]
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1133903872
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,12
	mov	[esp+4],1069547520
	mov	[esp+8],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_aentmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmw]
	mov	esi,_aentmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmh]
	mov	esi,_aentmap
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_aentmap
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aentmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[_vtimer],eax
	mov	[_vtexw],256
	mov	[_vtexh],256
	sub	esp,4
	mov	eax,_atex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_atex
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atex
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_44
_45
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[_vtexh]
	mov	[esp+4],esi
	mov	eax,[_vtexw]
	mov	[esp],eax
	call	_fcreatetexture
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atex]
	mov	[ebx],eax
	sub	esp,12
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_atex]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],200
	call	_fclscolor
	call	_fcls
	mov	[ebp-8],1000
	cmp	[ebp-4],2
	jnz	_46
	mov	[ebp-8],3000
_46
	mov	[ebp-12],0
	jmp	_47
_48
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vtexw]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vtexh]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,28
	mov	[esp],1
	mov	[esp+4],5
	call	_frand
	mov	[esp+8],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],5
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_foval
	add	[ebp-12],1
_47
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_48
_4
	add	[ebp-4],1
_44
	cmp	[ebp-4],10
	jle	_45
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fremakelevel
	call	_fplaceplayer
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],1
	mov	[esp],200
	call	_fcreateimage
	mov	[_vminmap],eax
	call	_fmakeminimap
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_50
_49
	sub	esp,4
	mov	eax,[_vtimer]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	cmp	eax,1
	jnz	_51
	call	_fremakelevel
	call	_fmakeminimap
	call	_fplaceplayer
_51
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	call	_fgameinput
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vwidth]
	sub	esi,200
	mov	[esp+4],esi
	mov	eax,[_vminmap]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	ebx,[_vscale1]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	ebx,[_vscale1]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,20
	mov	eax,[_vwidth]
	sub	eax,200
	mov	ebx,200
	sub	ebx,[ebp-28]
	add	eax,ebx
	sub	eax,5
	mov	[esp],eax
	mov	[esp+12],10
	mov	[esp+16],0
	mov	[esp+8],10
	mov	ebx,200
	sub	ebx,[ebp-32]
	sub	ebx,5
	mov	[esp+4],ebx
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
_50
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_49
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
_fremakelevel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_53
_54
	mov	[ebp-8],0
	jmp	_55
_56
	sub	esp,4
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_55
	mov	ebx,[_vmw]
	cmp	[ebp-8],ebx
	jle	_56
_8
	add	[ebp-4],1
_53
	mov	ebx,[_vmh]
	cmp	[ebp-4],ebx
	jle	_54
_7
	call	_fmakemap
	call	_fmakeents
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],3
	mov	[esp+4],3
	mov	[esp],1
	call	_fcollisions
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakeents
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_57
_58
	mov	[ebp-8],0
	jmp	_59
_60
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_61
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1120403456
	mov	[esp+12],0
	mov	[esp+4],1125842944
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[_vscale3]
	mov	[esp+8],edi
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1120403456
	mov	[esp+12],0
	mov	[esp+4],1125842944
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
_61
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_62
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vscale3]
	mov	[esp+8],esi
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1120403456
	mov	[esp+12],0
	mov	[esp+4],1132396544
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
_62
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_63
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1120403456
	mov	[esp+12],0
	mov	[esp+4],1113325568
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[_vscale3]
	mov	[esp+8],edi
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1120403456
	mov	[esp+12],0
	mov	[esp+4],1113325568
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
_63
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_64
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1092616192
	mov	[esp+12],1065353216
	mov	[esp+4],1125842944
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
	mov	ebx,_aentmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aentmap]
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebx],eax
	sub	esp,20
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vscale1]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vscale1]
	mov	[esp+4],ebx
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[_vscale3]
	mov	[esp+8],edi
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	esi,_aentmap
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],1120403456
	mov	[esp+12],0
	mov	[esp+4],1125842944
	call	_fentitycolor
	sub	esp,12
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],3
	mov	[esp+8],0
	call	_fentitytype
	sub	esp,16
	mov	eax,_aentmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aentmap
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aentmap]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_atex]
	mov	esi,[esi]
	mov	[esp+4],esi
	call	_fentitytexture
_64
	add	[ebp-8],1
_59
	mov	ebx,[_vmw]
	cmp	[ebp-8],ebx
	jle	_60
_11
	add	[ebp-4],1
_57
	mov	ebx,[_vmh]
	cmp	[ebp-4],ebx
	jle	_58
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnewmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_65
_66
	mov	[ebp-8],0
	jmp	_67
_68
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_67
	mov	ebx,[_vmw]
	cmp	[ebp-8],ebx
	jle	_68
_14
	add	[ebp-4],1
_65
	mov	ebx,[_vmh]
	cmp	[ebp-4],ebx
	jle	_66
_13
	call	_fmakemap
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
_fmakemap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	ebx,[_vmh]
	sar	ebx,byte 1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vmw]
	sar	esi,byte 1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,3
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],20000
	mov	[esp+4],150000
	call	_frand
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_69
_70
	sub	esp,8
	mov	ebx,[_vmw]
	mov	esi,[_vmaxroomsize]
	add	esi,2
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[_vmaxroomsize]
	add	eax,2
	mov	[esp],eax
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vmh]
	mov	esi,[_vmaxroomsize]
	add	esi,2
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[_vmaxroomsize]
	add	eax,2
	mov	[esp],eax
	call	_frand
	mov	[ebp-16],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_71
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],4
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[_vminroomsize]
	mov	[esp],eax
	mov	ebx,[_vmaxroomsize]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[_vminroomsize]
	mov	[esp],eax
	mov	ebx,[_vmaxroomsize]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	mov	ebx,[ebp-20]
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jz	_73
	cmp	[ebp-32],1
	jz	_74
	cmp	[ebp-32],2
	jz	_75
	cmp	[ebp-32],3
	jz	_76
	jmp	_72
_73
	sub	esp,16
	mov	eax,[ebp-12]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	sub	esi,[ebp-28]
	mov	[esp+4],esi
	call	_ffits
	cmp	eax,1
	jnz	_77
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+24],ebx
	mov	esi,[ebp-16]
	mov	edi,[ebp-28]
	sar	edi,byte 1
	sub	esi,edi
	mov	[esp+28],esi
	mov	esi,[ebp-16]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	mov	edi,[ebp-28]
	sar	edi,byte 1
	sub	esi,edi
	mov	[esp+12],esi
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	sub	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmr
_77
	jmp	_72
_74
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	edi,[ebp-28]
	mov	[esp+12],edi
	mov	eax,[ebp-12]
	add	eax,1
	mov	[esp],eax
	call	_ffits
	cmp	eax,1
	jnz	_78
	sub	esp,32
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+24],esi
	mov	edi,[ebp-16]
	mov	[esp+28],edi
	mov	edi,[ebp-28]
	sar	edi,byte 1
	add	edi,[ebp-16]
	mov	[esp+20],edi
	mov	esi,[ebp-24]
	sar	esi,byte 1
	add	esi,[ebp-12]
	mov	[esp+16],esi
	mov	edi,[ebp-16]
	mov	[esp+12],edi
	mov	esi,[ebp-12]
	add	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	sar	eax,byte 1
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fmr
_78
	jmp	_72
_75
	sub	esp,16
	mov	eax,[ebp-12]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	add	esi,1
	mov	[esp+4],esi
	call	_ffits
	cmp	eax,1
	jnz	_79
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+24],ebx
	mov	esi,[ebp-28]
	sar	esi,byte 1
	add	esi,[ebp-16]
	mov	[esp+28],esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	esi,[ebp-28]
	sar	esi,byte 1
	add	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmr
_79
	jmp	_72
_76
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	edi,[ebp-28]
	mov	[esp+12],edi
	mov	eax,[ebp-12]
	sub	eax,[ebp-24]
	sub	eax,1
	mov	[esp],eax
	call	_ffits
	cmp	eax,1
	jnz	_80
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+16],ebx
	mov	esi,[ebp-12]
	sub	esi,[ebp-24]
	mov	[esp+24],esi
	mov	edi,[ebp-16]
	mov	[esp+28],edi
	mov	edi,[ebp-28]
	sar	edi,byte 1
	add	edi,[ebp-16]
	mov	[esp+20],edi
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	edi,[ebp-28]
	sar	edi,byte 1
	sub	esi,edi
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[esp],eax
	call	_fmr
_80
	jmp	_72
_72
_71
	add	[ebp-8],1
_69
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_70
_16
	mov	[ebp-16],2
	jmp	_81
_82
	mov	[ebp-12],2
	jmp	_83
_84
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_85
	mov	eax,[ebp-12]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	or	eax,ebx
	and	eax,eax
	jz	_86
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_86
	mov	eax,[ebp-16]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	or	eax,ebx
	and	eax,eax
	jz	_87
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_87
	mov	[ebp-36],0
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	[ebp-40],ebx
	jmp	_88
_89
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-44],ebx
	jmp	_90
_91
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_92
	add	[ebp-36],1
_92
	add	[ebp-44],1
_90
	mov	ebx,[ebp-12]
	add	ebx,1
	cmp	[ebp-44],ebx
	jle	_91
_21
	add	[ebp-40],1
_88
	mov	ebx,[ebp-16]
	add	ebx,1
	cmp	[ebp-40],ebx
	jle	_89
_20
	cmp	[ebp-36],2
	jle	_93
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_93
_85
	add	[ebp-12],1
_83
	mov	ebx,[_vmw]
	sub	ebx,2
	cmp	[ebp-12],ebx
	jle	_84
_19
	add	[ebp-16],1
_81
	mov	ebx,[_vmh]
	sub	ebx,2
	cmp	[ebp-16],ebx
	jle	_82
_18
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
_fmr
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
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+40]
	sub	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	jmp	_94
_95
	mov	ebx,[ebp+44]
	mov	[ebp-16],ebx
	jmp	_96
_97
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-16],1
_96
	mov	ebx,[ebp+28]
	cmp	[ebp-16],ebx
	jle	_97
_24
	add	[ebp-12],1
_94
	mov	ebx,[ebp+40]
	cmp	[ebp-12],ebx
	jle	_95
_23
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	jmp	_98
_99
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+44]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-12],1
_98
	mov	ebx,[ebp+40]
	cmp	[ebp-12],ebx
	jle	_99
_25
	mov	ebx,[ebp+44]
	mov	[ebp-16],ebx
	jmp	_100
_101
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-16],1
_100
	mov	ebx,[ebp+28]
	cmp	[ebp-16],ebx
	jle	_101
_26
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	esi,[ebp+36]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+48]
	add	esi,[ebp+44]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_102
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_103
	mov	ebx,[ebp+24]
	add	ebx,2
	mov	[ebp-12],ebx
	jmp	_104
_105
	mov	ebx,[ebp+44]
	add	ebx,2
	mov	[ebp-16],ebx
	jmp	_106
_107
	mov	ebx,4
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-16],1
_106
	mov	ebx,[ebp+28]
	sub	ebx,2
	cmp	[ebp-16],ebx
	jle	_107
_28
	add	[ebp-12],1
_104
	mov	ebx,[ebp+40]
	sub	ebx,2
	cmp	[ebp-12],ebx
	jle	_105
_27
	jmp	_108
_103
	mov	ebx,[ebp+24]
	add	ebx,3
	mov	[ebp-12],ebx
	jmp	_109
_110
	mov	ebx,[ebp+44]
	add	ebx,3
	mov	[ebp-16],ebx
	jmp	_111
_112
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-16],1
_111
	mov	ebx,[ebp+28]
	sub	ebx,3
	cmp	[ebp-16],ebx
	jle	_112
_30
	add	[ebp-12],1
_109
	mov	ebx,[ebp+40]
	sub	ebx,3
	cmp	[ebp-12],ebx
	jle	_110
_29
_108
_102
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_ffits
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp+24],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	ebx,[_vmw]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	ebx,[_vmh]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_113
	mov	eax,0
	jmp	_31_leave
_113
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	jmp	_114
_115
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	jmp	_116
_117
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_118
	mov	eax,0
	jmp	_31_leave
_118
	add	[ebp-8],1
_116
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	[ebp-8],ebx
	jle	_117
_33
	add	[ebp-4],1
_114
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	[ebp-4],ebx
	jle	_115
_32
	mov	eax,1
	jmp	_31_leave
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fgameinput
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
	call	_fmousexspeed
	mov	[ebp-4],eax
	call	_fmouseyspeed
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	add	eax,[ebp-8]
	sar	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[_vdest_cam_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
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
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdest_cam_pitch],ebx
	mov	ebx,[_vdest_cam_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcam_yaw]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vcam_yaw]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vcam_yaw],esi
	mov	ebx,[_vdest_cam_pitch]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcam_pitch]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vcam_pitch]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vcam_pitch],esi
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vcam_yaw]
	mov	[esp+8],esi
	mov	ebx,[_vcam_pitch]
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	mov	ebx,[_vheight]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_119
	mov	[_vdest_cam_z],1065353216
_119
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	cmp	eax,1
	jnz	_120
	mov	[_vdest_cam_z],-1082130432
_120
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_121
	mov	[_vdest_cam_x],1065353216
_121
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_122
	mov	[_vdest_cam_x],-1082130432
_122
	mov	ebx,[_vdest_cam_z]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcam_z]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vcam_z]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vcam_z],esi
	mov	ebx,[_vdest_cam_x]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcam_x]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vcam_x]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vcam_x],esi
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[_vcam_z]
	mov	[esp+12],esi
	mov	esi,[_vcam_x]
	mov	[esp+4],esi
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	mov	[_vdest_cam_x],0
	mov	[_vdest_cam_z],0
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ftranslateentity
	mov	eax,0
	jmp	_34_leave
_34_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fplaceplayer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_124
_123
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vmw]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vmh]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-16],eax
	mov	[ebp-20],0
	mov	[ebp-24],-3
	jmp	_125
_126
	mov	[ebp-28],-3
	jmp	_127
_128
	mov	eax,[ebp-12]
	add	eax,[ebp-28]
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-12]
	add	ebx,[ebp-28]
	cmp	ebx,[_vmw]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	mov	ebx,[ebp-16]
	add	ebx,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	mov	ebx,[ebp-16]
	add	ebx,[ebp-24]
	cmp	ebx,[_vmh]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_129
	mov	ebx,[ebp-16]
	add	ebx,[ebp-24]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	add	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,1
	jnz	_130
	add	[ebp-20],1
_130
_129
	add	[ebp-28],1
_127
	cmp	[ebp-28],3
	jle	_128
_38
	add	[ebp-24],1
_125
	cmp	[ebp-24],3
	jle	_126
_37
	cmp	[ebp-20],48
	jle	_131
	mov	[ebp-4],1
_131
	add	[ebp-8],1
	cmp	[ebp-8],10000
	jle	_132
	call	_fremakelevel
	mov	[ebp-8],0
_132
_124
	cmp	[ebp-4],0
	jz	_123
_36
	sub	esp,20
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vscale2]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[_vscale2]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	[esp+8],1090519040
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fresetentity
	mov	eax,0
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakeminimap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	eax,[_vminmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
	call	_fcls
	mov	[ebp-4],0
	jmp	_133
_134
	mov	[ebp-8],0
	jmp	_135
_136
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_137
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_138
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],150
	mov	[esp],150
	call	_fcolor
_138
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_139
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],250
	mov	[esp],250
	call	_fcolor
_139
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_140
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],50
	call	_fcolor
_140
	sub	esp,8
	mov	eax,[ebp-8]
	imul	eax,200
	mov	ecx,[_vmw]
	cdq
	idiv	ecx
	mov	ebx,200
	sub	ebx,eax
	mov	[esp],ebx
	mov	eax,[ebp-4]
	imul	eax,200
	mov	ecx,[_vmh]
	cdq
	idiv	ecx
	mov	esi,200
	sub	esi,eax
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fplot
	mov	ebx,eax
_137
	add	[ebp-8],1
_135
	mov	ebx,[_vmw]
	cmp	[ebp-8],ebx
	jle	_136
_41
	add	[ebp-4],1
_133
	mov	ebx,[_vmh]
	cmp	[ebp-4],ebx
	jle	_134
_40
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_39_leave
_39_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vscale1	.dd	0
	.align	4
_vscale2	.dd	0
	.align	4
_vscale3	.dd	0
	.align	4
_vwidth	.dd	0
	.align	4
_vheight	.dd	0
_42	.db	"Map generator",0
_43	.db	"",0
	.align	4
_vmw	.dd	0
	.align	4
_vmh	.dd	0
	.align	4
_vtw	.dd	0
	.align	4
_vth	.dd	0
	.align	4
_vminroomsize	.dd	0
	.align	4
_vmaxroomsize	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vcam_x	.dd	0
	.align	4
_vcam_z	.dd	0
	.align	4
_vcam_pitch	.dd	0
	.align	4
_vcam_yaw	.dd	0
	.align	4
_vdest_cam_x	.dd	0
	.align	4
_vdest_cam_z	.dd	0
	.align	4
_vdest_cam_pitch	.dd	0
	.align	4
_vdest_cam_yaw	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_aentmap	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_vtimer	.dd	0
	.align	4
_vtexw	.dd	0
	.align	4
_vtexh	.dd	0
	.align	4
_atex	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vminmap	.dd	0
_52	.db	"Press 1 - new level - mouse to turn - rmb/cursors move.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

