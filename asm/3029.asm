
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[_vgwidth],800
	mov	[_vgheight],600
	mov	[_vgcolors],32
	mov	[_vgmode],2
	sub	esp,16
	mov	ebx,[_vgcolors]
	mov	[esp+8],ebx
	mov	esi,[_vgmode]
	mov	[esp+12],esi
	mov	esi,[_vgheight]
	mov	[esp+4],esi
	mov	eax,[_vgwidth]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1176256512
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1000593162
	mov	[esp+12],1000593162
	mov	[esp+4],1000593162
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vdebugfeet],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vdebugeyes],eax
	sub	esp,28
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],1071225242
	mov	[esp+12],1048576000
	mov	[esp+4],0
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[_vdebugfeet]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1063675494
	mov	[esp+12],1040187392
	mov	[esp+4],1048576000
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1063675494
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,28
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugfeet]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	ebx,[_vdebugfeet]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	mov	[_vmxspeed],0
	mov	[_vmyspeed],0
	mov	[_vdebugfeetyaw],0
	mov	[_vdebugeyespitch],0
	mov	[_vcameramode],0
	mov	[_vcameramode],2
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,28
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	ebx,[_vdebugeyes]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-12],1
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],1056964608
	mov	[esp+4],-1090519040
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],-1090519040
	mov	[esp+4],-1090519040
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],1065353216
	mov	[esp+16],1065353216
	mov	[esp+12],0
	mov	[esp+8],-1090519040
	mov	[esp+4],1056964608
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],3
	mov	[esp+4],2
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[ebp-24],eax
	sub	esp,12
	mov	[esp+4],1056964608
	mov	[esp+8],1056964608
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fspriteviewmode
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1082130432
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],128
	mov	[esp],128
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
	mov	[esp+4],125
	mov	[esp+8],125
	mov	[esp],125
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],128
	mov	[esp+16],1
	mov	[esp+8],128
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],1
	call	_fcolor
	sub	esp,20
	mov	[esp+12],40
	mov	[esp+16],1
	mov	[esp+8],20
	mov	[esp+4],20
	mov	[esp],33
	call	_foval
	sub	esp,20
	mov	[esp+12],40
	mov	[esp+16],1
	mov	[esp+8],20
	mov	[esp+4],20
	mov	[esp],73
	call	_foval
	sub	esp,8
	mov	[esp],60
	mov	[esp+4],75
	call	_fplot
	sub	esp,8
	mov	[esp],66
	mov	[esp+4],75
	call	_fplot
	sub	esp,16
	mov	[esp+8],43
	mov	[esp+12],95
	mov	[esp+4],95
	mov	[esp],63
	call	_fline
	sub	esp,16
	mov	[esp+8],33
	mov	[esp+12],80
	mov	[esp+4],95
	mov	[esp],43
	call	_fline
	sub	esp,16
	mov	[esp+8],84
	mov	[esp+12],95
	mov	[esp+4],95
	mov	[esp],64
	call	_fline
	sub	esp,16
	mov	[esp+8],94
	mov	[esp+12],80
	mov	[esp+4],95
	mov	[esp],84
	call	_fline
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],-998244352
	mov	[esp+16],0
	mov	[esp+8],1149239296
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],1123680256
	mov	[esp+8],1123680256
	mov	[esp],1123680256
	call	_fambientlight
_6
	call	_fmillisecs
	mov	[ebp-36],eax
	call	_fcls
	call	_fcameramodeselect
	call	_fdebugupdate
	cmp	[ebp-12],1
	jnz	_7
	sub	esp,28
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
	jmp	_8
_7
	cmp	[ebp-12],2
	jnz	_9
	jmp	_10
_9
	cmp	[ebp-12],3
	jnz	_11
	sub	esp,28
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[_vcamera]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
	jmp	_12
_11
	cmp	[ebp-12],4
	jnz	_13
	sub	esp,28
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
_13
_12
_10
_8
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,0
	jle	_14
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	jmp	_15
_14
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
_15
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
	sub	esp,32
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ftrisrendered
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fmillisecs
	sub	eax,[ebp-36]
	mov	[ebp-44],eax
	mov	eax,1000
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-40],eax
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jle	_6
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
_fcameramodeselect
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	[esp],15
	call	_fkeyhit
	cmp	eax,0
	jle	_18
	cmp	[_vcameramode],2
	jnz	_19
	mov	[_vcameramode],1
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityparent
	jmp	_20
_19
	cmp	[_vcameramode],1
	jnz	_21
	mov	[_vcameramode],2
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,28
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
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
	mov	[esp+16],0
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
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
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
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
	mov	[esp+16],0
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vdebugeyes]
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
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	ebx,[_vdebugeyes]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fentityparent
_21
_20
_18
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdebugupdate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[_vcameramode],2
	jnz	_22
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmxspeed],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmyspeed],eax
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
	mov	ebx,[_vmyspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vdebugeyespitch]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vdebugeyespitch],esi
	mov	eax,[_vdebugeyespitch]
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
	jz	_23
	mov	[_vdebugeyespitch],1118961664
_23
	mov	eax,[_vdebugeyespitch]
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
	jz	_24
	mov	[_vdebugeyespitch],-1028521984
_24
	mov	ebx,[_vmxspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vdebugfeetyaw]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vdebugfeetyaw],esi
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[_vdebugeyespitch]
	mov	[esp+4],ebx
	mov	eax,[_vdebugeyes]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vdebugfeetyaw]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	cmp	eax,0
	jle	_25
	mov	[ebp-4],1092616192
	jmp	_26
_25
	sub	esp,4
	mov	[esp],29
	call	_fkeydown
	cmp	eax,0
	jle	_27
	mov	[ebp-4],1036831949
	jmp	_28
_27
	mov	[ebp-4],1065353216
_28
_26
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	cmp	eax,0
	jle	_29
	sub	esp,16
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fmoveentity
_29
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	cmp	eax,0
	jle	_30
	sub	esp,16
	mov	ebx,-1110651699
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fmoveentity
_30
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	cmp	eax,0
	jle	_31
	sub	esp,16
	mov	ebx,-1110651699
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	[esp+12],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fmoveentity
_31
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	cmp	eax,0
	jle	_32
	sub	esp,16
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	[esp+12],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fmoveentity
_32
	sub	esp,4
	mov	[esp],16
	call	_fkeydown
	cmp	eax,0
	jle	_33
	sub	esp,16
	mov	ebx,-1110651699
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fmoveentity
_33
	sub	esp,4
	mov	[esp],18
	call	_fkeydown
	cmp	eax,0
	jle	_34
	sub	esp,16
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vdebugfeet]
	mov	[esp],eax
	call	_fmoveentity
_34
	sub	esp,4
	mov	[esp],201
	call	_fkeyhit
	cmp	eax,0
	jle	_35
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
_35
	sub	esp,4
	mov	[esp],209
	call	_fkeyhit
	cmp	eax,0
	jle	_36
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1110651699
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
_36
	sub	esp,4
	mov	[esp],44
	call	_fkeydown
	cmp	eax,0
	jle	_37
	sub	esp,20
	mov	[esp+12],-1082130432
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fturnentity
_37
	sub	esp,4
	mov	[esp],45
	call	_fkeydown
	cmp	eax,0
	jle	_38
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fturnentity
_38
	jmp	_39
_22
	cmp	[_vcameramode],1
	jnz	_40
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmxspeed],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmyspeed],eax
_40
_39
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vgwidth	.dd	0
	.align	4
_vgheight	.dd	0
	.align	4
_vgcolors	.dd	0
	.align	4
_vgmode	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vdebugfeet	.dd	0
	.align	4
_vdebugeyes	.dd	0
	.align	4
_vmxspeed	.dd	0
	.align	4
_vmyspeed	.dd	0
	.align	4
_vdebugfeetyaw	.dd	0
	.align	4
_vdebugeyespitch	.dd	0
	.align	4
_vcameramode	.dd	0
_16	.db	"Tris : ",0
_17	.db	"FPS = ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

