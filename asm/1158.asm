
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,8
	mov	[esp],_vvtmp
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tvector
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,_anfire
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,500
	mov	esi,_anfire
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anfire
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_annull
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,500
	mov	esi,_annull
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_annull
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitffnet
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	[esp],_vvtmp
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tvector
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnlayer
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tnlayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	[ebp-8],1
	jmp	_58
_59
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fneuron
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-8],1
_58
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_59
_10
	mov	eax,[ebp-4]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	ret	word 8
	.align	16
_fneuron
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tneuron
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-8],1
	jmp	_60
_61
	sub	esp,8
	mov	[esp],1053609165
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	[ebx],eax
	add	[ebp-8],1
_60
	mov	ebx,[ebp+20]
	add	ebx,1
	cmp	[ebp-8],ebx
	jle	_61
_12
	sub	esp,8
	mov	[esp],1058642330
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,200004
	mov	[ebx],eax
	mov	eax,[ebp-4]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
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
	ret	word 4
	.align	16
_fneuralnet
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
	mov	ebx,_tneuralnet
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	and	ebx,ebx
	jz	_62
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fnlayer
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	add	ebx,4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fnlayer
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fnlayer
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	add	ebx,12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_flinklayers
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_flinklayers
_62
	mov	eax,[ebp-4]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
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
	ret	word 20
	.align	16
_flinklayers
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_63
_64
	cmp	[ebp+32],0
	jnz	_65
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	esi,0
	mov	[ebx],esi
_65
	mov	[ebp-8],1
	jmp	_66
_67
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,[ebp-8]
	shl	eax,byte 2
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-8],1
_66
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_67
_16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	esi,edi
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	add	[ebp-4],1
_63
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_64
_15
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_68
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_flinklayers
_68
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fpunishnet
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_69
_70
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anfire]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_71
	mov	[ebp-8],1
	jmp	_72
_73
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anfire]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1028443341
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	edi,[ebp-4]
	shl	edi,byte 2
	add	edi,[_anfire]
	mov	edi,[edi]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-8],1
_72
	cmp	[ebp-8],50000
	jle	_73
_19
_71
	add	[ebp-4],1
_69
	cmp	[ebp-4],500
	jle	_70
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frewardnet
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_74
_75
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anfire]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_76
	mov	[ebp-8],1
	jmp	_77
_78
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anfire]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1028443341
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	edi,[ebp-4]
	shl	edi,byte 2
	add	edi,[_anfire]
	mov	edi,[edi]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-8],1
_77
	cmp	[ebp-8],50000
	jle	_78
_22
_76
	add	[ebp-4],1
_74
	cmp	[ebp-4],500
	jle	_75
_21
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
_fffnetcycle
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
	call	_fclearhistory
	mov	[ebp-8],1
	jmp	_79
_80
	mov	[ebp-12],1
	jmp	_81
_82
	mov	[ebp-4],0
	mov	[ebp-16],1
	jmp	_83
_84
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	esi,[_vvtmp]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,16
	mov	edi,[edi]
	add	esi,edi
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	edi,[ebp-12]
	shl	edi,byte 2
	add	edi,esi
	mov	edi,[edi]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,edi
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	mov	ebx,[_vdebug]
	and	ebx,ebx
	jz	_85
	cmp	[ebp-16],1
	jnz	_86
	sub	esp,8
	mov	eax,_87
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	eax,_89
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,ebx
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	add	eax,200004
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_90
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdebuglog
	mov	ebx,eax
_86
	sub	esp,32
	mov	eax,_91
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_92
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,ebx
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
_85
	add	[ebp-16],1
_83
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_84
_26
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,ebx
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,200004
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fsigmoid
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vvtmp]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpushvector
	mov	ebx,eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,ebx
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,200004
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,[_vvtmp]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_93
	mov	[ebp-20],1
	jmp	_94
_95
	sub	esp,8
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_anfire]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_96
	sub	esp,8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,ebx
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_anfire]
	mov	[esp],eax
	call	__bbObjStore
	jmp	_27
_96
	add	[ebp-20],1
_94
	cmp	[ebp-20],500
	jle	_95
_27
	mov	ebx,[_vdebug]
	and	ebx,ebx
	jz	_97
	sub	esp,40
	mov	eax,_98
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_99
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_100
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
_97
	jmp	_101
_93
	mov	[ebp-20],1
	jmp	_102
_103
	sub	esp,8
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_annull]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_104
	sub	esp,8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,ebx
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_annull]
	mov	[esp],eax
	call	__bbObjStore
	jmp	_28
_104
	add	[ebp-20],1
_102
	cmp	[ebp-20],500
	jle	_103
_28
_101
	mov	ebx,[_vdebug]
	and	ebx,ebx
	jz	_105
	sub	esp,16
	mov	eax,_106
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[_vvtmp]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
_105
	add	[ebp-12],1
_81
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	[ebp-12],ebx
	jle	_82
_25
	add	[ebp-8],1
_79
	cmp	[ebp-8],3
	jle	_80
_24
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fclearhistory
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_107
_108
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anfire]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_annull]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	add	[ebp-4],1
_107
	cmp	[ebp-4],500
	jle	_108
_30
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdebughistory
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
	mov	ebx,[_vdebug]
	and	ebx,ebx
	jz	_109
	mov	[ebp-4],1
	jmp	_110
_111
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anfire]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_112
	add	[ebp-8],1
_112
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_annull]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_113
	add	[ebp-12],1
_113
	add	[ebp-4],1
_110
	cmp	[ebp-4],500
	jle	_111
_32
	sub	esp,8
	mov	eax,_114
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,8
	mov	eax,_115
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_116
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_117
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
_109
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsigmoid
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fexp
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	jmp	_33_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsetinput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vvtmp]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	[ebp+20],ebx
	jle	_118
	mov	ebx,[ebp+20]
	mov	esi,[_vvtmp]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_118
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	mov	esi,[_vvtmp]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp+24]
	mov	[ebx],esi
	mov	eax,0
	jmp	_34_leave
_34_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetinput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	mov	esi,[_vvtmp]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_35_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fclearnetio
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,[_vvtmp]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vvtmp]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_36_leave
_36_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finjecti
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+40]
	imul	ebx,[ebp+36]
	sub	ebx,[ebp+40]
	add	ebx,[ebp+28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,ebx
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,200004
	mov	ebx,[ebp+32]
	mov	[esi],ebx
	mov	eax,0
	jmp	_37_leave
_37_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fgetoutput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+28],0
	jnz	_119
	mov	eax,[ebp+24]
	shl	eax,byte 2
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	add	eax,200004
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_38_leave
_119
	mov	eax,0
	jmp	_38_leave
_38_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fvector
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
	mov	ebx,_tvector
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_39_leave
	mov	eax,0
	jmp	_39_leave
_39_leave
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
	ret	word 0
	.align	16
_fsetvector
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	eax,0
	jmp	_40_leave
_40_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fgetvector
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_41_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_41_leave
_41_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fscalevector
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_120
_121
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-4],1
_120
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_121
_43
	mov	eax,0
	jmp	_42_leave
_42_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fprojectvector
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+24]
	add	ebx,2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_122
	mov	eax,0
	jmp	_44_leave
_122
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	jmp	_123
_124
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	add	esi,2
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-4],1
_123
	mov	ebx,[ebp+24]
	add	ebx,1
	cmp	[ebp-4],ebx
	jle	_124
_45
	mov	eax,0
	jmp	_44_leave
_44_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpushvector
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,500
	jge	_125
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	jmp	_126
_125
	mov	eax,0
	jmp	_46_leave
_126
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,1
	jle	_127
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-4],ebx
	jmp	_128
_129
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-4],-1
_128
	cmp	[ebp-4],1
	jge	_129
_47
_127
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_46_leave
_46_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fvectordistance
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
	cmp	[ebp+28],-1
	jnz	_130
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp+28],ebx
_130
	mov	ebx,[ebp+28]
	mov	[ebp+28],ebx
	jmp	_131
_132
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	add	esi,edi
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	add	[ebp+28],-1
_131
	cmp	[ebp+28],1
	jge	_132
_49
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsqr
	jmp	_48_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_48_leave
_48_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_vdebug	.dd	0
	.align	4
_vvtmp	.dd	0
	.align	4
_anfire	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_annull	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_3	.dd	6
	.dd	501
	.dd	__bbFltType
	.align	4
_tvector	.dd	5
_50	.dd	0
	.dd	_50
	.dd	_50
	.dd	0
	.dd	-1
_51	.dd	0
	.dd	_51
	.dd	_51
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	_3
	.align	4
_4	.dd	6
	.dd	50002
	.dd	__bbFltType
	.align	4
_5	.dd	6
	.dd	50001
	.dd	_tneuron
	.align	4
_tneuron	.dd	5
_52	.dd	0
	.dd	_52
	.dd	_52
	.dd	0
	.dd	-1
_53	.dd	0
	.dd	_53
	.dd	_53
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	_4
	.dd	_5
	.align	4
_6	.dd	6
	.dd	501
	.dd	_tneuron
	.align	4
_tnlayer	.dd	5
_54	.dd	0
	.dd	_54
	.dd	_54
	.dd	0
	.dd	-1
_55	.dd	0
	.dd	_55
	.dd	_55
	.dd	0
	.dd	-1
	.dd	3
	.dd	_6
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_7	.dd	6
	.dd	6
	.dd	_tnlayer
	.align	4
_tneuralnet	.dd	5
_56	.dd	0
	.dd	_56
	.dd	_56
	.dd	0
	.dd	-1
_57	.dd	0
	.dd	_57
	.dd	_57
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	_7
_87	.db	"-------------------",0
_88	.db	"Layer >",0
_89	.db	"Input Neuron>",0
_90	.db	"Threashold>",0
_91	.db	"Weight ",0
_92	.db	">",0
_98	.db	"Neuron ",0
_99	.db	" on layer ",0
_100	.db	" fired",0
_106	.db	"Activation > ",0
_114	.db	"History Debug_____",0
_115	.db	"1 Cycle",0
_116	.db	" Neurons fired",0
_117	.db	" Inhibited neurons",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

