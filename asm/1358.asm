
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	sub	esp,4
	mov	eax,_apallette256
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_apallette256
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_apallette256
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apallette256
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fargb
	mov	[_vblack],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fargb
	mov	[_vwhite],eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgeticoinfo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_49
	sub	esp,8
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_49
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-12],eax
	cmp	[ebp-12],1
	jz	_51
	sub	esp,8
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_51
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-16],eax
	sub	esp,28
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	[ebp-24],1
	jmp	_55
_56
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-52],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-56],eax
	sub	esp,84
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-24],1
_55
	mov	ebx,[ebp-16]
	cmp	[ebp-24],ebx
	jle	_56
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_floadicoimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,124
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
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_63
	sub	esp,8
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_63
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-12],eax
	cmp	[ebp-12],1
	jz	_65
	sub	esp,8
	mov	eax,_66
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_65
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-16],eax
	mov	[ebp-20],1
	jmp	_67
_68
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,_ticoinfo
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-20]
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	add	[ebp-20],1
_67
	mov	ebx,[ebp-16]
	cmp	[ebp-20],ebx
	jle	_68
_6
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],_ticoinfo
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_69
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jnz	_70
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fseekfile
	mov	ebx,[ebp-44]
	mov	[ebp-56],ebx
	cmp	[ebp-56],4
	jz	_72
	cmp	[ebp-56],8
	jz	_73
	cmp	[ebp-56],24
	jz	_74
	jmp	_71
_72
	mov	[ebp-60],0
	jmp	_75
_76
	mov	[ebp-64],0
	jmp	_77
_78
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	ebx,[ebp-68]
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-64]
	add	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	[esi],ebx
	add	[ebp-64],1
_77
	cmp	[ebp-64],2
	jle	_78
_10
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-72],eax
	add	[ebp-60],1
_75
	cmp	[ebp-60],15
	jle	_76
_9
	cmp	[ebp+28],0
	jnz	_79
	sub	esp,12
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_80
_81
	mov	[ebp-84],1
	jmp	_82
_83
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	ebx,[ebp-68]
	shr	ebx,byte 4
	mov	[ebp-88],ebx
	mov	ebx,[ebp-68]
	mov	esi,15
	and	ebx,esi
	mov	[ebp-92],ebx
	sub	esp,28
	mov	ebx,_apallette256
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-88]
	shl	ebx,byte 2
	add	ebx,[_apallette256]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_apallette256
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,[ebp-88]
	shl	eax,byte 2
	add	eax,[_apallette256]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fargb
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-80]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	sub	eax,1
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,28
	mov	ebx,_apallette256
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-92]
	shl	ebx,byte 2
	add	ebx,[_apallette256]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-92]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_apallette256
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,[ebp-92]
	shl	eax,byte 2
	add	eax,[_apallette256]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fargb
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-80]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-84],2
_82
	mov	ebx,[ebp-32]
	cmp	[ebp-84],ebx
	jle	_83
_12
	add	[ebp-80],-1
_80
	cmp	[ebp-80],1
	jge	_81
_11
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	jmp	_84
_79
	sub	esp,16
	mov	[esp],1073741824
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	add	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fseekfile
	sub	esp,12
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	cmp	[ebp-32],32
	jnz	_85
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_86
_87
	mov	[ebp-84],0
	jmp	_88
_89
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_90
_91
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_92
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_93
_92
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_93
	add	[ebp-96],1
	add	[ebp-100],-1
_90
	cmp	[ebp-100],1
	jge	_91
_15
	add	[ebp-84],1
_88
	cmp	[ebp-84],3
	jle	_89
_14
	add	[ebp-80],-1
_86
	cmp	[ebp-80],1
	jge	_87
_13
	jmp	_94
_85
	cmp	[ebp-32],16
	jnz	_95
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_96
_97
	mov	[ebp-84],0
	jmp	_98
_99
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_100
_101
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_102
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_103
_102
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_103
	add	[ebp-96],1
	add	[ebp-100],-1
_100
	cmp	[ebp-100],1
	jge	_101
_18
	add	[ebp-84],1
_98
	cmp	[ebp-84],1
	jle	_99
_17
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-108],eax
	add	[ebp-80],-1
_96
	cmp	[ebp-80],1
	jge	_97
_16
	jmp	_104
_95
	cmp	[ebp-32],48
	jnz	_105
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_106
_107
	mov	[ebp-84],0
	jmp	_108
_109
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_110
_111
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_112
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_113
_112
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_113
	add	[ebp-96],1
	add	[ebp-100],-1
_110
	cmp	[ebp-100],1
	jge	_111
_21
	add	[ebp-84],1
_108
	cmp	[ebp-84],5
	jle	_109
_20
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-108],eax
	add	[ebp-80],-1
_106
	cmp	[ebp-80],1
	jge	_107
_19
_105
_104
_94
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
_84
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-76]
	jmp	_5_leave
	jmp	_71
_73
	mov	[ebp-60],0
	jmp	_114
_115
	mov	[ebp-64],0
	jmp	_116
_117
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	ebx,[ebp-68]
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-64]
	add	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	[esi],ebx
	add	[ebp-64],1
_116
	cmp	[ebp-64],2
	jle	_117
_23
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-72],eax
	add	[ebp-60],1
_114
	cmp	[ebp-60],255
	jle	_115
_22
	cmp	[ebp+28],0
	jnz	_118
	sub	esp,12
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_119
_120
	mov	[ebp-84],1
	jmp	_121
_122
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	sub	esp,28
	mov	ebx,_apallette256
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_apallette256]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_apallette256
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,[ebp-68]
	shl	eax,byte 2
	add	eax,[_apallette256]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fargb
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-80]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	sub	eax,1
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-84],1
_121
	mov	ebx,[ebp-32]
	cmp	[ebp-84],ebx
	jle	_122
_25
	add	[ebp-80],-1
_119
	cmp	[ebp-80],1
	jge	_120
_24
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	jmp	_123
_118
	sub	esp,16
	mov	[esp],1073741824
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	add	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fseekfile
	sub	esp,12
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	cmp	[ebp-32],32
	jnz	_124
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_125
_126
	mov	[ebp-84],0
	jmp	_127
_128
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_129
_130
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_131
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_132
_131
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_132
	add	[ebp-96],1
	add	[ebp-100],-1
_129
	cmp	[ebp-100],1
	jge	_130
_28
	add	[ebp-84],1
_127
	cmp	[ebp-84],3
	jle	_128
_27
	add	[ebp-80],-1
_125
	cmp	[ebp-80],1
	jge	_126
_26
	jmp	_133
_124
	cmp	[ebp-32],16
	jnz	_134
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_135
_136
	mov	[ebp-84],0
	jmp	_137
_138
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_139
_140
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_141
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_142
_141
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_142
	add	[ebp-96],1
	add	[ebp-100],-1
_139
	cmp	[ebp-100],1
	jge	_140
_31
	add	[ebp-84],1
_137
	cmp	[ebp-84],1
	jle	_138
_30
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-108],eax
	add	[ebp-80],-1
_135
	cmp	[ebp-80],1
	jge	_136
_29
	jmp	_143
_134
	cmp	[ebp-32],48
	jnz	_144
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_145
_146
	mov	[ebp-84],0
	jmp	_147
_148
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_149
_150
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_151
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_152
_151
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_152
	add	[ebp-96],1
	add	[ebp-100],-1
_149
	cmp	[ebp-100],1
	jge	_150
_34
	add	[ebp-84],1
_147
	cmp	[ebp-84],5
	jle	_148
_33
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-108],eax
	add	[ebp-80],-1
_145
	cmp	[ebp-80],1
	jge	_146
_32
_144
_143
_133
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
_123
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-76]
	jmp	_5_leave
	jmp	_71
_74
	cmp	[ebp+28],0
	jnz	_153
	sub	esp,12
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_154
_155
	mov	[ebp-84],1
	jmp	_156
_157
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-112],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-116],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-120],eax
	sub	esp,28
	mov	ebx,[ebp-116]
	mov	[esp+4],ebx
	mov	esi,[ebp-112]
	mov	[esp+8],esi
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fargb
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-80]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	sub	eax,1
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-84],1
_156
	mov	ebx,[ebp-32]
	cmp	[ebp-84],ebx
	jle	_157
_36
	add	[ebp-80],-1
_154
	cmp	[ebp-80],1
	jge	_155
_35
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	jmp	_158
_153
	sub	esp,16
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	add	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fseekfile
	sub	esp,12
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-76],eax
	sub	esp,12
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	cmp	[ebp-32],32
	jnz	_159
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_160
_161
	mov	[ebp-84],0
	jmp	_162
_163
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_164
_165
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_166
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_167
_166
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_167
	add	[ebp-96],1
	add	[ebp-100],-1
_164
	cmp	[ebp-100],1
	jge	_165
_39
	add	[ebp-84],1
_162
	cmp	[ebp-84],3
	jle	_163
_38
	add	[ebp-80],-1
_160
	cmp	[ebp-80],1
	jge	_161
_37
	jmp	_168
_159
	cmp	[ebp-32],16
	jnz	_169
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_170
_171
	mov	[ebp-84],0
	jmp	_172
_173
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_174
_175
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_176
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_177
_176
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_177
	add	[ebp-96],1
	add	[ebp-100],-1
_174
	cmp	[ebp-100],1
	jge	_175
_42
	add	[ebp-84],1
_172
	cmp	[ebp-84],1
	jle	_173
_41
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-108],eax
	add	[ebp-80],-1
_170
	cmp	[ebp-80],1
	jge	_171
_40
	jmp	_178
_169
	cmp	[ebp-32],48
	jnz	_179
	mov	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-80],ebx
	jmp	_180
_181
	mov	[ebp-84],0
	jmp	_182
_183
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-68],eax
	mov	[ebp-96],0
	mov	[ebp-100],8
	jmp	_184
_185
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-100]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-68]
	and	ebx,eax
	mov	ecx,[ebp-100]
	sub	ecx,1
	shr	ebx,cl
	mov	[ebp-104],ebx
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_186
	sub	esp,16
	mov	ebx,[_vwhite]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_187
_186
	sub	esp,16
	mov	ebx,[_vblack]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-80]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	shl	eax,byte 3
	add	eax,[ebp-96]
	mov	[esp],eax
	call	_fwritepixelfast
_187
	add	[ebp-96],1
	add	[ebp-100],-1
_184
	cmp	[ebp-100],1
	jge	_185
_45
	add	[ebp-84],1
_182
	cmp	[ebp-84],5
	jle	_183
_44
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-108],eax
	add	[ebp-80],-1
_180
	cmp	[ebp-80],1
	jge	_181
_43
_179
_178
_168
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
_158
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-76]
	jmp	_5_leave
	jmp	_71
_71
_70
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_69
_7
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[ebp-124],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-124]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fargb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+28]
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	or	eax,ebx
	mov	ebx,-16777216
	or	eax,ebx
	jmp	_46_leave
	mov	eax,0
	jmp	_46_leave
_46_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_apallette256	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vblack	.dd	0
	.align	4
_vwhite	.dd	0
	.align	4
_ticoinfo	.dd	5
_47	.dd	0
	.dd	_47
	.dd	_47
	.dd	0
	.dd	-1
_48	.dd	0
	.dd	_48
	.dd	_48
	.dd	0
	.dd	-1
	.dd	9
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_50	.db	"file not found",0
_52	.db	"Not a valid .ico file",0
_53	.db	"Icon file has ",0
_54	.db	" icons.",0
_57	.db	" Icon#",0
_58	.db	":",0
_59	.db	"x",0
_60	.db	" - ",0
_61	.db	" bits per pixel   :",0
_62	.db	"",0
_64	.db	"file not found",0
_66	.db	"Not a valid .ico file",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

