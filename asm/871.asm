
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	mov	[ebp-4],1110704128
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	_fcamerazoom
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecone
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1028390912
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	[esp],16
	call	_fcreatecone
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1028390912
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],0
	mov	[esp+4],1124073472
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1061997773
	call	_fentityalpha
	sub	esp,12
	mov	[esp+4],1092616192
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fupdateviewcone
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],3
	mov	[esp+8],1
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-28],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],3
	mov	[esp+8],1
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],3
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitypickmode
_6
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_7
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
_7
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_8
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1073741824
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
_8
	sub	esp,4
	mov	[esp],78
	call	_fkeydown
	and	eax,eax
	jz	_9
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1127415808
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_10
	mov	[ebp-4],1127415808
_10
	sub	esp,12
	mov	[esp+4],1092616192
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fupdateviewcone
_9
	sub	esp,4
	mov	[esp],74
	call	_fkeydown
	and	eax,eax
	jz	_11
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1097859072
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	mov	[ebp-4],1097859072
_12
	sub	esp,12
	mov	[esp+4],1092616192
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fupdateviewcone
_11
	call	_fmillisecs
	mov	ecx,20
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,24
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	call	_fmillisecs
	mov	ecx,50
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,24
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1086324736
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,24
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1123024896
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1086324736
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1123024896
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,24
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1131413504
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1086324736
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1131413504
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcanseeobject
	and	eax,eax
	jz	_13
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],400
	call	_ftext
	sub	esp,24
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,24
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-48],eax
	call	_fprojectedy
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,20
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-56],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-56]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fline
_13
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],400
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],400
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],400
	call	_ftext
	sub	esp,32
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],70
	mov	[esp],400
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_6
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
_fupdateviewcone
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftan
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fscaleentity
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcanseeobject
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-24]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-24]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	mov	[ebp-24],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-24]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_ftformedx
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	call	_ftformedy
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	call	_ftformedz
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_facos
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentityvisible
	jmp	_5_leave
_19
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_14	.db	"I see it :)",0
_15	.db	"Left/right to rotate observer",0
_16	.db	"+ / - to change view angle",0
_17	.db	"Yellow boxes obscurers the view",0
_18	.db	"View angle : ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
