
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,136
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
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	mov	[ebp-128],ebx
	sub	esp,12
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[ebp-4],800
	mov	[ebp-8],600
	mov	[ebp-12],32
	mov	[ebp-16],2
	mov	[ebp-20],10
	mov	[ebp-24],3
	mov	[ebp-28],200
	mov	[ebp-32],1
	mov	[ebp-36],1
	mov	[ebp-40],1065353216
	mov	[ebp-44],0
	mov	[ebp-48],1056964608
	mov	[ebp-52],1015868267
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_ax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_ay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_az
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_az
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_az
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_avx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_avx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_avy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_avy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_avz
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_avz
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avz
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amass
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_amass
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amass
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aro
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_aro
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aro
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_agr
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_agr
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agr
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abl
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_abl
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abl
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_aname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aoldx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_aoldx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoldx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aoldy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_aoldy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoldy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adeg
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_adeg
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adeg
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amu
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_amu
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amu
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asemi
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_asemi
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asemi
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aeccen
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_aeccen
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aeccen
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apla
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_apla
	add	esi,12
	mov	[esi],ebx
	mov	ebx,11
	mov	esi,_apla
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apla
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-60],0
	jmp	_24
_25
	mov	[ebp-64],0
	jmp	_26
_27
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-64]
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	mov	[ebp-132],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aname]
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_apla
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_apla]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 1
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,3
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_avx]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,5
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_avy]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,6
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_avz]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1092616192
	mov	[ebp-132],eax
	sub	esp,4
	mov	[ebp-136],eax
	sub	esp,4
	mov	ebx,_apla
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 3
	add	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_apla]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrToInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,4
	mov	[ebp-136],eax
	sub	esp,4
	mov	ebx,_apla
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,7
	add	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_apla]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrToFloat
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_amass]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,9
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aro]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,10
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_agr]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_apla
	add	eax,12
	mov	eax,[eax]
	imul	eax,11
	add	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_apla]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_abl]
	mov	[ebx],eax
	add	[ebp-64],1
_26
	cmp	[ebp-64],11
	jle	_27
_4
	add	[ebp-60],1
_24
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-60],ebx
	jle	_25
_3
_l_2planetdata
	mov	[ebp-68],1
	jmp	_28
_29
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_amass]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_amass]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_amass]
	mov	[esi],ebx
	add	[ebp-68],1
_28
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-68],ebx
	jle	_29
_5
	mov	ebx,[ebp-40]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_amass]
	mov	[esi],ebx
	mov	[ebp-68],1
	jmp	_30
_31
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_amass]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_amu]
	mov	[ebx],esi
	add	[ebp-68],1
_30
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-68],ebx
	jle	_31
_6
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_33
_32
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	[ebp-68],0
	jmp	_34
_35
	mov	ebx,[ebp-32]
	and	ebx,ebx
	jz	_36
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],32
	mov	[esp],32
	call	_fcolor
	jmp	_37
_36
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_37
	sub	esp,20
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_aoldy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	edi,[ebp-24]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_aoldx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-68],1
_34
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-68],ebx
	jle	_35
_8
	call	_l_2newv
	call	_l_2newp
	sub	esp,20
	mov	[esp+12],42
	mov	[esp+16],1
	mov	[esp+8],150
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1136041984
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],30
	mov	[esp],0
	call	_ftext
	mov	[ebp-72],0
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_42
	add	[ebp-28],1
	cmp	[ebp-28],250
	jle	_43
	mov	[ebp-28],250
_43
_42
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_44
	sub	[ebp-28],1
	cmp	[ebp-28],1
	jge	_45
	mov	[ebp-28],1
_45
_44
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_46
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	eax,[ebp-48]
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
	jz	_47
	mov	[ebp-48],1056964608
_47
_46
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_48
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	eax,[ebp-48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1103626240
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_49
	mov	[ebp-48],1103626240
_49
_48
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_50
	mov	ebx,1
	sub	ebx,[ebp-32]
	mov	[ebp-32],ebx
	call	_fcls
_50
	sub	esp,4
	mov	[esp],59
	call	_fkeydown
	and	eax,eax
	jz	_51
	mov	[ebp-28],200
	call	_fcls
_51
	sub	esp,4
	mov	[esp],60
	call	_fkeydown
	and	eax,eax
	jz	_52
	mov	[ebp-28],5
	call	_fcls
_52
	sub	esp,4
	mov	[esp],61
	call	_fkeydown
	and	eax,eax
	jz	_53
	mov	ebx,1073741824
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_amass]
	mov	[esi],ebx
_53
	sub	esp,4
	mov	[esp],62
	call	_fkeydown
	and	eax,eax
	jz	_54
	mov	ebx,1056964608
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_amass]
	mov	[esi],ebx
_54
	sub	esp,4
	mov	[esp],63
	call	_fkeydown
	and	eax,eax
	jz	_55
	mov	ebx,1045220557
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_amass]
	mov	[esi],ebx
_55
	sub	esp,4
	mov	[esp],1
	call	_fflip
_33
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_32
_7
	call	_fend
_l_2newv
	mov	[ebp-68],0
	jmp	_56
_57
	mov	[ebp-76],0
	mov	[ebp-80],0
	mov	[ebp-84],0
	mov	[ebp-88],0
	jmp	_58
_59
	mov	ebx,[ebp-68]
	cmp	[ebp-88],ebx
	jnz	_60
	jmp	_l_2skip
_60
	mov	ebx,[ebp-88]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	mov	ebx,[ebp-88]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	mov	ebx,[ebp-88]
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_az]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-100],ebx
	sub	esp,4
	mov	eax,[ebp-100]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-100]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-96]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-96]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-92]
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
	mov	[ebp-104],eax
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-104]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-104]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	shl	esi,byte 2
	add	esi,[_amass]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-108]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-112],ebx
	mov	ebx,[ebp-112]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-112]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-96]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-112]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-100]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
_l_2skip
	add	[ebp-88],1
_58
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-88],ebx
	jle	_59
_10
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_avx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_avx]
	mov	[ebx],esi
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_avy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_avy]
	mov	[ebx],esi
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_avz]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_avz]
	mov	[ebx],esi
	add	[ebp-68],1
_56
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-68],ebx
	jle	_57
_9
	ret
_l_2newp
	mov	[ebp-68],0
	jmp	_61
_62
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_avx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_avy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	[ebx],esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_avz]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_az]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	[ebx],esi
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-120],ebx
	cmp	[ebp-68],0
	setz	al
	movzx	eax,al
	mov	[ebp-132],eax
	cmp	[ebp-36],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	and	eax,ebx
	and	eax,eax
	jz	_63
	mov	ebx,[ebp-116]
	mov	[ebp-124],ebx
	mov	ebx,[ebp-120]
	mov	[ebp-128],ebx
_63
	mov	ebx,[ebp-116]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-124]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-116],ebx
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-128]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-120],ebx
	mov	ebx,[ebp-116]
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_aoldx]
	mov	[esi],ebx
	mov	ebx,[ebp-120]
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_aoldy]
	mov	[esi],ebx
	sub	esp,12
	mov	ebx,[ebp-68]
	shl	ebx,byte 2
	add	ebx,[_agr]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_abl]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-68]
	shl	eax,byte 2
	add	eax,[_aro]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-120]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	edi,[ebp-24]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp-116]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-68],1
_61
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-68],ebx
	jle	_62
_11
	ret
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_22	.db	"Realistic 2D-Model of the solar system 1.0",0
_23	.db	"",0
	.align	4
_ax	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_az	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_avx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_avy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_avz	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_amass	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aro	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_agr	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_abl	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aoldx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aoldy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_adeg	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_amu	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asemi	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aeccen	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_apla	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
_38	.db	"Days:  ",0
_39	.db	"Years: ",0
_40	.db	"Time:  ",0
_41	.db	"Zoom:  ",0
_12	.db	"Sonne",0
_13	.db	"Merkur",0
_14	.db	"Venus",0
_15	.db	"Erde",0
_16	.db	"Mars",0
_17	.db	"Jupiter",0
_18	.db	"Saturn",0
_19	.db	"Uranus",0
_20	.db	"Neptun",0
_21	.db	"Pluto",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_12
	.dd	2
	.dd	0
	.dd	2
	.dd	0
	.dd	2
	.dd	0
	.dd	2
	.dd	0
	.dd	2
	.dd	0
	.dd	2
	.dd	0
	.dd	2
	.dd	1073666327
	.dd	1
	.dd	30
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	4
	.dd	_13
	.dd	2
	.dd	-1103752754
	.dd	2
	.dd	-1094333337
	.dd	2
	.dd	-1103074941
	.dd	2
	.dd	1017550450
	.dd	2
	.dd	-1141393851
	.dd	2
	.dd	-1144425797
	.dd	2
	.dd	1078737240
	.dd	1
	.dd	23
	.dd	1
	.dd	255
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	4
	.dd	_14
	.dd	2
	.dd	1043793158
	.dd	2
	.dd	-1088186559
	.dd	2
	.dd	-1097271125
	.dd	2
	.dd	1017085391
	.dd	2
	.dd	1000412494
	.dd	2
	.dd	981487902
	.dd	2
	.dd	1083988509
	.dd	1
	.dd	24
	.dd	1
	.dd	255
	.dd	1
	.dd	192
	.dd	1
	.dd	128
	.dd	4
	.dd	_15
	.dd	2
	.dd	-1096203587
	.dd	2
	.dd	1062832052
	.dd	2
	.dd	1052549935
	.dd	2
	.dd	-1132001219
	.dd	2
	.dd	-1146105666
	.dd	2
	.dd	-1156024442
	.dd	2
	.dd	1086280696
	.dd	1
	.dd	24
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	4
	.dd	_16
	.dd	2
	.dd	-1077224697
	.dd	2
	.dd	-1095053458
	.dd	2
	.dd	-1107369780
	.dd	2
	.dd	997880396
	.dd	2
	.dd	-1137168462
	.dd	2
	.dd	-1146332935
	.dd	2
	.dd	1087201346
	.dd	1
	.dd	23
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_17
	.dd	2
	.dd	1082508276
	.dd	2
	.dd	-1071482738
	.dd	2
	.dd	-1080536420
	.dd	2
	.dd	998674220
	.dd	2
	.dd	1003009784
	.dd	2
	.dd	992314243
	.dd	2
	.dd	1072911352
	.dd	1
	.dd	27
	.dd	1
	.dd	128
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	4
	.dd	_18
	.dd	2
	.dd	-1064053594
	.dd	2
	.dd	-1056715612
	.dd	2
	.dd	-1068694562
	.dd	2
	.dd	999836713
	.dd	2
	.dd	-1156013718
	.dd	2
	.dd	-1164427361
	.dd	2
	.dd	1085662036
	.dd	1
	.dd	26
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	128
	.dd	4
	.dd	_19
	.dd	2
	.dd	-1066508369
	.dd	2
	.dd	-1047948155
	.dd	2
	.dd	-1058056868
	.dd	2
	.dd	997932602
	.dd	2
	.dd	-1168264352
	.dd	2
	.dd	-1176586010
	.dd	2
	.dd	1091234169
	.dd	1
	.dd	25
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	4
	.dd	_20
	.dd	2
	.dd	1073018810
	.dd	2
	.dd	-1042325674
	.dd	2
	.dd	-1053319548
	.dd	2
	.dd	994860008
	.dd	2
	.dd	963945164
	.dd	2
	.dd	932624343
	.dd	2
	.dd	1065579708
	.dd	1
	.dd	26
	.dd	1
	.dd	0
	.dd	1
	.dd	128
	.dd	1
	.dd	255
	.dd	4
	.dd	_21
	.dd	2
	.dd	-1044786137
	.dd	2
	.dd	-1047251019
	.dd	2
	.dd	1067171447
	.dd	2
	.dd	990343017
	.dd	2
	.dd	-1155326837
	.dd	2
	.dd	-1162403263
	.dd	2
	.dd	1066024305
	.dd	1
	.dd	24
	.dd	1
	.dd	128
	.dd	1
	.dd	128
	.dd	1
	.dd	128
	.dd	0
