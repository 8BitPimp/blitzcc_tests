
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
	mov	[ebp-48],ebx
	sub	esp,4
	mov	eax,_3
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[_vwall],eax
	sub	esp,20
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	[esp+4],768
	mov	[esp],1024
	call	_finitgraphics
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],1092616192
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1119092736
	mov	[esp+4],1109393408
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],1114636288
	mov	[esp+12],1114636288
	mov	[esp+4],1114636288
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecone
	mov	[_vmodel],eax
	sub	esp,20
	mov	[esp+12],1073741824
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1082130432
	mov	[esp+4],0
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fentitytype
	mov	[_vy_acceleration],-1105618534
	mov	[ebp-4],64
	mov	[ebp-8],64
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	ebx,[ebp-8]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	sub	esi,2
	mov	[esp+8],esi
	mov	[esp+4],1
	mov	[esp],1
	call	_frect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],1045220557
	mov	[esp+8],1045220557
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fentitytexture
	mov	[ebp-16],0
	jmp	_9
_10
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_vwall]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1114636288
	mov	[esp+12],0
	mov	[esp+4],1120403456
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	add	[ebp-16],1
_9
	cmp	[ebp-16],6
	jle	_10
_4
	sub	esp,20
	mov	[esp+12],1098907648
	mov	[esp+16],0
	mov	[esp+8],1090519040
	mov	[esp+4],-1048576000
	mov	eax,0
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1107296256
	mov	[esp+16],0
	mov	[esp+8],1094713344
	mov	[esp+4],1065353216
	mov	eax,0
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1098907648
	mov	[esp+16],0
	mov	[esp+8],1090519040
	mov	[esp+4],1098907648
	mov	eax,4
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1107296256
	mov	[esp+16],0
	mov	[esp+8],1094713344
	mov	[esp+4],1065353216
	mov	eax,4
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],-1048051712
	mov	[esp+16],0
	mov	[esp+8],1090519040
	mov	[esp+4],0
	mov	eax,8
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1094713344
	mov	[esp+4],1098907648
	mov	eax,8
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1111752704
	mov	[esp+16],0
	mov	[esp+8],1090519040
	mov	[esp+4],0
	mov	eax,12
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1094713344
	mov	[esp+4],1098907648
	mov	eax,12
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1098907648
	mov	[esp+16],0
	mov	[esp+8],1098907648
	mov	[esp+4],-1054867456
	mov	eax,16
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1107296256
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1098907648
	mov	eax,16
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,16
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	[esp+12],1098907648
	mov	[esp+16],0
	mov	[esp+8],-1063256064
	mov	[esp+4],0
	mov	eax,20
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1107296256
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1098907648
	mov	eax,20
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1098907648
	mov	[esp+16],0
	mov	[esp+8],-1060110336
	mov	[esp+4],0
	mov	eax,24
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1098907648
	mov	[esp+16],0
	mov	[esp+8],1088421888
	mov	[esp+4],1088421888
	mov	eax,24
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1106247680
	mov	[esp+16],0
	mov	[esp+8],1119092736
	mov	[esp+4],0
	mov	eax,24
	add	eax,[_vwall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_12
_11
	sub	esp,20
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fcountcollisions
	mov	[ebp-36],eax
	cmp	[ebp-36],0
	jle	_13
	sub	esp,8
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	sub	esp,24
	mov	[esp+16],2
	mov	[esp+20],1036831949
	mov	esi,[ebp-48]
	mov	[esp+12],esi
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_faligntovector
	mov	[_vy_acceleration],-1105618534
	jmp	_15
_14
	mov	ebx,[_vy_acceleration]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy_acceleration],ebx
_15
	jmp	_16
_13
	mov	ebx,[_vy_acceleration]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy_acceleration],ebx
_16
	sub	esp,20
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp],32
	call	_fkeydown
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],30
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1045220557
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],17
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-52]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1045220557
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[_vmodel]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmoveentity
	mov	ebx,eax
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1053609165
	mov	[esp+4],0
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_ftranslateentity
_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vy_acceleration]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_ftranslateentity
	cmp	[ebp-36],0
	jnz	_18
	sub	esp,20
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	sub	esp,8
	mov	[esp],17
	call	_fkeydown
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-52]
	sub	eax,esi
	mov	[esp],eax
	call	__bbSgn
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	fchs
	mov	ebx,1028443341
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	edi,1028443341
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fturnentity
	jmp	_19
_18
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	sub	esp,20
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,1028443341
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	mov	edi,1028443341
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
	mov	eax,[_vmodel]
	mov	[esp],eax
	call	_fturnentity
_20
_19
	sub	esp,8
	call	_fgraphicswidth
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
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-52]
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
	sub	esp,28
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	mov	ebx,1097859072
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[_vmodel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],1
	mov	[esp+4],1097859072
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[_vmodel]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,64
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],60
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],2
	call	_fdelay
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_11
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
_finitgraphics
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,12
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_27
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	jmp	_29
_27
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
_29
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_7	.db	"Blitz3D Program",0
_8	.db	"",0
	.align	4
_vlight	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vmodel	.dd	0
	.align	4
_vy_acceleration	.dd	0
	.align	4
_3	.dd	6
	.dd	7
	.dd	__bbIntType
_vwall	.dd	0
_21	.db	"NX= ",0
_22	.db	" : NY= ",0
_23	.db	" : NZ= ",0
_24	.db	"Point1 = ",0
_25	.db	"Point2 = ",0
_26	.db	"Speed = ",0
_28	.db	"",0
_30	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

