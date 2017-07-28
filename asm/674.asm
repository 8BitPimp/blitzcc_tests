
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreatelwoobject
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],1
	jmp	_28
_29
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-20],eax
	sub	esp,16
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_ffindstringlength
	add	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcountvertices
	add	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcounttriangles
	add	[ebp-8],eax
	add	[ebp-16],1
_28
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_29
_4
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-4]
	imul	ebx,12
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 3
	add	ebx,4
	mov	[ebp-36],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,4
	mov	[ebp-40],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	imul	eax,30
	add	[ebp-24],eax
	mov	ebx,[ebp-4]
	imul	ebx,10
	add	ebx,18
	mov	[ebp-44],ebx
	mov	ebx,70
	add	ebx,[ebp-32]
	add	ebx,[ebp-36]
	add	ebx,[ebp-40]
	add	ebx,[ebp-24]
	add	ebx,[ebp-44]
	add	ebx,[ebp-28]
	mov	[ebp-48],ebx
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-52],eax
	sub	esp,12
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	mov	[ebp-16],1
	jmp	_34
_35
	sub	esp,20
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelworstring
	add	[ebp-16],1
_34
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_35
_5
	sub	esp,12
	mov	[esp+4],18
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_fwritelwopointfloat
	sub	esp,12
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelworstring
	sub	esp,12
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	mov	[ebp-16],1
	jmp	_40
_41
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-20],eax
	mov	[ebp-56],0
	jmp	_42
_43
	sub	esp,24
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-80],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	[ebp-80],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritelwopointfloat
	mov	ebx,eax
	add	[ebp-56],1
_42
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-56],eax
	jle	_43
_7
	add	[ebp-16],1
_40
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_41
_6
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	mov	[ebp-16],1
	jmp	_46
_47
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-20],eax
	mov	[ebp-60],0
	jmp	_48
_49
	sub	esp,8
	mov	[esp],3
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,12
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-64],eax
	sub	esp,12
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-68],eax
	sub	esp,12
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[ebp-72],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_ffindvertindex
	mov	[ebp-64],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_ffindvertindex
	mov	[ebp-68],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_ffindvertindex
	mov	[ebp-72],eax
	sub	esp,8
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,8
	mov	eax,[ebp-72]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	add	[ebp-60],1
_48
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-60],eax
	jle	_49
_9
	add	[ebp-16],1
_46
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_47
_8
	mov	[ebp-12],0
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	mov	[ebp-16],1
	jmp	_52
_53
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-20],eax
	mov	[ebp-56],0
	jmp	_54
_55
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,8
	mov	eax,[ebp-16]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	add	[ebp-12],1
	add	[ebp-56],1
_54
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-56],eax
	jle	_55
_11
	add	[ebp-16],1
_52
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_53
_10
	mov	[ebp-16],1
	jmp	_56
_57
	sub	esp,16
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_ffindstringlength
	add	eax,22
	mov	[ebp-76],eax
	sub	esp,12
	mov	ebx,[ebp-76]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,20
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelworstring
	sub	esp,12
	mov	eax,_61
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelworstring
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,8
	mov	[esp],14
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,24
	mov	[esp],1065353216
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-80],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	[ebp-80],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-80]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritelwopointfloat
	mov	ebx,eax
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	add	[ebp-16],1
_56
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_57
_12
	sub	esp,12
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritelwostring
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,12
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelworstring
	mov	[ebp-12],0
	mov	[ebp-16],1
	jmp	_66
_67
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-20],eax
	mov	[ebp-56],0
	jmp	_68
_69
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fwritelwoshort
	sub	esp,20
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritelwofloat
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexv
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fwritelwofloat
	add	[ebp-12],1
	add	[ebp-56],1
_68
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-56],eax
	jle	_69
_14
	add	[ebp-16],1
_66
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-16],eax
	jle	_67
_13
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwritelwostring
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
	mov	[ebp-4],1
	jmp	_70
_71
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fasc
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritebyte
	add	[ebp-4],1
_70
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_71
_16
	cmp	[ebp+24],0
	jz	_72
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fwritemotorolaint
_72
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwritelwopointfloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fwritelwofloat
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fwritelwofloat
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fwritelwofloat
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritelwofloat
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
	mov	[esp],4
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fint_swapendian
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwritelwoshort
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,[ebp+20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritebyte
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ffindstringlength
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_73
	add	[ebp-4],1
_73
	mov	eax,[ebp-4]
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
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
	ret	word 4
	.align	16
_ffindvertindex
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
	mov	[ebp-16],ebx
	mov	[ebp-4],0
	mov	[ebp-8],1
	jmp	_74
_75
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_76
_77
	mov	eax,[ebp-16]
	cmp	[ebp+20],eax
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_78
	mov	eax,[ebp-4]
	jmp	_21_leave
_78
	add	[ebp-4],1
	add	[ebp-16],1
_76
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_77
_23
	add	[ebp-8],1
_74
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-8],eax
	jle	_75
_22
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwritelworstring
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
	mov	[ebp-4],1
	jmp	_79
_80
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwritebyte
	add	[ebp-4],1
_79
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_80
_25
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebyte
	sub	esp,16
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jz	_81
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebyte
_81
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwritemotorolaint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,[ebp+20]
	shr	ebx,byte 24
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	ebx,[ebp+20]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	ebx,[ebp+20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritebyte
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritebyte
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
_fint_swapendian
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],-16777216
	mov	[ebp-8],16711680
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,255
	and	eax,ebx
	shl	eax,byte 24
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,65280
	and	ebx,esi
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	and	ebx,esi
	shr	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	and	ebx,esi
	shr	ebx,byte 24
	or	eax,ebx
	jmp	_27_leave
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_30	.db	"Surface ",0
_31	.db	"FORM",0
_32	.db	"LWO2",0
_33	.db	"TAGS",0
_36	.db	"Surface ",0
_37	.db	"LAYR",0
_38	.db	"",0
_39	.db	"PNTS",0
_44	.db	"POLS",0
_45	.db	"FACE",0
_50	.db	"PTAG",0
_51	.db	"SURF",0
_58	.db	"Surface ",0
_59	.db	"SURF",0
_60	.db	"Surface ",0
_61	.db	"",0
_62	.db	"COLR",0
_63	.db	"VMAP",0
_64	.db	"TXUV",0
_65	.db	"UV Texture",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
