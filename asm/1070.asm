
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	mov	[_vplayerx],1134559232
	mov	[_vplayery],1131413504
	mov	[_vplayerangle],1127481344
	mov	[_vplayerhealth],20
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_11
_12
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tenemy
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],640
	mov	[esp+4],1
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],480
	mov	[esp+4],1
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],360
	mov	[esp+4],1
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],8
	call	_frand
	mov	[ebp-24],eax
	add	[ebp-4],1
_11
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],20
	call	_frand
	cmp	[ebp-4],eax
	jle	_12
_3
_13
	sub	esp,4
	mov	[esp],12
	call	_fdelay
	cmp	[_vplayerhealth],0
	jg	_14
	call	_fend
_14
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-72],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-72]
	sub	eax,ebx
	imul	eax,3
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vplayerangle]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vplayerangle],ebx
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-72],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-72]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[_vplayerangle]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-72]
	fmulp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vplayerx]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vplayerx],esi
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-72],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-72]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[_vplayerangle]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-72]
	fmulp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vplayery]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vplayery],esi
	add	[ebp-28],1
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	mov	[ebp-72],eax
	cmp	[ebp-28],5
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_15
	mov	[ebp-28],0
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tbolt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[_vplayerx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[_vplayery]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[_vplayerangle]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],1
_15
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tenemy
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_16
	mov	ebx,[_vplayery]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[_vplayerx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	sub	esp,4
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	sub	esp,8
	mov	eax,[ebp-56]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fatan2
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,16
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],1061158912
	call	_fmax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],-1086324736
	call	_fmin
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	add	[ebp-68],1
	sub	esp,4
	mov	eax,[ebp-64]
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
	mov	[ebp-72],eax
	cmp	[ebp-68],24
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_17
	mov	[ebp-68],0
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tbolt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,8
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	call	_frnd
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],2
_17
	sub	esp,20
	mov	[esp+12],21
	mov	[esp+16],1
	mov	[esp+8],21
	mov	ebx,[ebp-16]
	sub	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,10
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1103101952
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1103101952
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	sub	ebx,40
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ftext
	cmp	[ebp-24],0
	jg	_18
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
_18
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_16
_5
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],_tbolt
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_19
	mov	[ebp-4],0
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_22
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,3
	sub	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,3
	sub	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	cmp	[ebp-48],2
	jnz	_23
	sub	esp,32
	mov	ebx,[_vplayery]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[esp+24],21
	mov	[esp+28],21
	mov	esi,[_vplayerx]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1092616192
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	[esp+12],3
	mov	[esp+8],3
	mov	ebx,[ebp-40]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	sub	eax,1
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_24
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	__bbObjDelete
	sub	[_vplayerhealth],1
	jmp	_7
_24
_23
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tenemy
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_25
	sub	esp,32
	mov	[esp+24],21
	mov	[esp+28],21
	mov	esi,[ebp-16]
	sub	esi,10
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	sub	ebx,10
	mov	[esp+16],ebx
	mov	[esp+12],3
	mov	[esp+8],3
	mov	esi,[ebp-40]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	sub	eax,1
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_26
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	__bbObjDelete
	sub	[ebp-24],1
	jmp	_8
_26
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_25
_8
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_27
	cmp	[ebp-36],0
	setl	al
	movzx	eax,al
	mov	[ebp-72],eax
	cmp	[ebp-36],640
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	mov	[ebp-72],eax
	cmp	[ebp-40],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	mov	[ebp-72],eax
	cmp	[ebp-40],480
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	and	eax,eax
	jz	_28
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	__bbObjDelete
	jmp	_7
_28
_27
_22
	add	[ebp-4],1
_20
	cmp	[ebp-4],6
	jle	_21
_7
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_29
	sub	esp,20
	mov	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
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
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fline
_29
	sub	esp,4
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_19
_6
	sub	esp,20
	mov	ebx,[_vplayery]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],21
	mov	[esp+16],1
	mov	[esp+8],21
	mov	eax,[_vplayerx]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	eax,[_vplayerangle]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1103101952
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vplayerx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[_vplayerangle]
	mov	[esp],eax
	call	_fcos
	mov	esi,1103101952
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vplayery]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vplayery]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vplayerx]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	ebx,[_vplayery]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1109393408
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vplayerhealth]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	eax,[_vplayerx]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_13
_4
	ret
_2_leave
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmin
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_34
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
_34
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fmax
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_35
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
_35
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vplayerx	.dd	0
	.align	4
_vplayery	.dd	0
	.align	4
_vplayerangle	.dd	0
	.align	4
_vplayerhealth	.dd	0
	.align	4
_tenemy	.dd	5
_30	.dd	0
	.dd	_30
	.dd	_30
	.dd	0
	.dd	-1
_31	.dd	0
	.dd	_31
	.dd	_31
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tbolt	.dd	5
_32	.dd	0
	.dd	_32
	.dd	_32
	.dd	0
	.dd	-1
_33	.dd	0
	.dd	_33
	.dd	_33
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

