
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,20
	mov	[esp+4],1065353216
	mov	[esp+8],-1082130432
	mov	[esp],-1082130432
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],1065353216
	mov	[esp+8],-1082130432
	mov	[esp],1065353216
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],1065353216
	mov	[esp+8],1065353216
	mov	[esp],0
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],1092616192
	mov	[esp+8],1065353216
	mov	[esp],0
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,24
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvector3d_linetriintersect
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_9
	sub	esp,48
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	jmp	_13
_9
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
_13
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	[esp+8],1092616192
	mov	[esp+12],1101004800
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvector3d_set
	sub	esp,24
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvector3d_linetriintersect
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_16
	sub	esp,48
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	jmp	_20
_16
	sub	esp,8
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
_20
	jmp	_23
_22
_23
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_22
_3
	sub	esp,4
	mov	eax,_tvector3d
	mov	[esp],eax
	call	__bbObjDeleteEach
	call	_fend
	ret
_2_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvector3d_create
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
	mov	ebx,_tvector3d
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvector3d_set
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
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
_fvector3d_set
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
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fvector3d_checksameclockdir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvector3d_trinormal
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+32]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+32]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_26
	mov	eax,0
	jmp	_6_leave
	jmp	_27
_26
	mov	eax,1
	jmp	_6_leave
_27
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fvector3d_trinormal
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,20
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-4]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,[ebp-8]
	push	edx
	fld	[esp]
	pop	edx
	fmulp	st(1)
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-12]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fvector3d_create
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,12
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-36]
	faddp	st(1)
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-36]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_28
	sub	esp,16
	mov	ebx,[ebp-28]
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
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvector3d_set
	jmp	_29
_28
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvector3d_set
_29
	mov	eax,[ebp-28]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fvector3d_linetriintersect
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
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvector3d_trinormal
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	mov	ebx,[ebp+32]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp+32]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp-28]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp+32]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp-28]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-36],esi
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_8_leave
_31
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+32]
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
	mov	[esp+8],esi
	mov	ebx,[ebp+36]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+32]
	mov	edi,[edi]
	add	edi,8
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	ebx,[ebp+36]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-44]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp+32]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_fvector3d_set
	sub	esp,16
	mov	ebx,[ebp+40]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvector3d_checksameclockdir
	cmp	eax,1
	jnz	_32
	sub	esp,16
	mov	ebx,[ebp+40]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fvector3d_checksameclockdir
	cmp	eax,1
	jnz	_33
	sub	esp,16
	mov	ebx,[ebp+40]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvector3d_checksameclockdir
	cmp	eax,1
	jnz	_34
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,1
	jmp	_8_leave
_34
_33
_32
_30
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
_10	.db	"Intersected at x:",0
_11	.db	" y:",0
_12	.db	" z:",0
_14	.db	"Does not intersect",0
_15	.db	"---------------------------------------------",0
_17	.db	"Intersected at x:",0
_18	.db	" y:",0
_19	.db	" z:",0
_21	.db	"Does not intersect",0
	.align	4
_tvector3d	.dd	5
_24	.dd	0
	.dd	_24
	.dd	_24
	.dd	0
	.dd	-1
_25	.dd	0
	.dd	_25
	.dd	_25
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

