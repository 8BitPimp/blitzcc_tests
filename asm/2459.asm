
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1024
	call	_fchoosescreenmode
	jmp	_12
_11
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,56
	call	_fgraphicswidth
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsdepth
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],0
	call	_fflip
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_11
_3
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],1
	call	_fclearworld
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
_fchoosescreenmode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],400
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fcountgfxmodes3d
	mov	[ebp-4],eax
	mov	[ebp-12],0
	call	_fgraphicswidth
	mov	[ebp-44],eax
	call	_fgraphicsheight
	mov	[ebp-48],eax
	mov	[ebp-52],1112014848
	mov	[ebp-56],20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	ebx,[ebp-56]
	sub	ebx,2
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-60],eax
	sub	esp,4
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-64],1
	jmp	_19
_20
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fgfxmodewidth
	cmp	eax,[ebp+24]
	jl	_21
	add	[ebp-12],1
	sub	esp,8
	lea	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,_ttmode
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fgfxmodewidth
	mov	ebx,[ebp-68]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fgfxmodeheight
	mov	ebx,[ebp-68]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fgfxmodedepth
	mov	ebx,[ebp-68]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp-68]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-68]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	add	[ebp-8],1
_21
	add	[ebp-64],1
_19
	mov	ebx,[ebp-4]
	cmp	[ebp-64],ebx
	jle	_20
_5
	mov	[ebp-12],1
_22
	call	_fcls
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_fviewport
	sub	esp,12
	mov	[esp+4],49
	mov	[esp+8],72
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1061997773
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
	sub	ebx,50
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	[ebp-52],1112014848
_23
	sub	esp,12
	mov	[esp+4],53
	mov	[esp+8],76
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,0
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],57
	mov	[esp+8],80
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1065353216
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],61
	mov	[esp+8],84
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],65
	mov	[esp+8],88
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1077936128
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],76
	mov	[esp+8],99
	mov	[esp],5
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],65
	mov	[esp+8],88
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],61
	mov	[esp+8],84
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1086324736
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-44]
	mov	[esp+8],edi
	mov	[esp],0
	call	_fline
	sub	esp,12
	mov	[esp+4],29
	mov	[esp+8],52
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],50
	mov	[esp+16],1
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],50
	mov	[esp+16],1
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-48]
	sub	ebx,50
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],69
	mov	[esp+8],112
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-48]
	sub	ebx,25
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],192
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-56]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	[esp+4],110
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],169
	mov	[esp+8],192
	mov	[esp],20
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-56]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	[esp+4],110
	mov	[esp],0
	call	_frect
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	sub	esi,120
	mov	[esp+12],esi
	mov	[esp+4],60
	mov	[esp],0
	call	_fviewport
	mov	[ebp-32],0
	mov	[ebp-36],101
	sub	esp,8
	lea	eax,[ebp-72]
	mov	[esp],eax
	mov	[esp+4],_ttmode
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_25
	mov	ebx,[ebp-56]
	add	[ebp-32],ebx
	mov	ebx,[ebp-72]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	jnz	_26
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	and	eax,eax
	jz	_27
	mov	ebx,1
	mov	esi,[ebp-72]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_27
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	and	eax,eax
	jz	_28
	mov	ebx,2
	mov	esi,[ebp-72]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_28
	jmp	_29
_26
	sub	esp,12
	mov	[esp+4],54
	mov	[esp+8],0
	mov	[esp],168
	call	_fcolor
_29
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-72]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],70
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],105
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-72]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],140
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-72]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],190
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],220
	call	_ftext
	mov	ebx,[ebp-72]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-76],ebx
	cmp	[ebp-76],1
	jz	_33
	cmp	[ebp-76],2
	jz	_34
	jmp	_32
_33
	sub	esp,8
	lea	eax,[ebp-80]
	mov	[esp],eax
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_32
_34
	sub	esp,8
	lea	eax,[ebp-80]
	mov	[esp],eax
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_32
_32
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	lea	eax,[ebp-80]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],300
	call	_ftext
	sub	esp,4
	lea	eax,[ebp-72]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_25
_7
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	and	eax,eax
	jz	_37
	cmp	[ebp-12],1
	jle	_38
	mov	ebx,[ebp-56]
	sub	[ebp-40],ebx
	sub	[ebp-12],1
_38
_37
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	and	eax,eax
	jz	_39
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jge	_40
	mov	ebx,[ebp-56]
	add	[ebp-40],ebx
	add	[ebp-12],1
_40
_39
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_41
	sub	esp,8
	lea	eax,[ebp-84]
	mov	[esp],eax
	mov	[esp+4],_ttmode
	call	__bbObjEachFirst
	and	eax,eax
	jz	_9
_42
	mov	ebx,[ebp-84]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	jnz	_43
	sub	esp,16
	mov	ebx,[ebp-84]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-84]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-84]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgraphics3d
	mov	eax,1
	jmp	_4_leave
_43
	sub	esp,4
	lea	eax,[ebp-84]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_42
_9
_41
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_22
_6
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[ebp-88],eax
	sub	esp,4
	mov	esi,[ebp-84]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-88]
	mov	[ebp-88],eax
	sub	esp,4
	mov	esi,[ebp-72]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-88]
	mov	[ebp-88],eax
	sub	esp,4
	mov	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[ebp-88],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-88]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_10	.db	"My App",0
_13	.db	" / ",0
_14	.db	" / ",0
	.align	4
_ttmode	.dd	5
_15	.dd	0
	.dd	_15
	.dd	_15
	.dd	0
	.dd	-1
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_17	.db	"",0
_18	.db	"arial",0
_24	.db	"Press <up><down> / <left><right>",0
_30	.db	"/",0
_31	.db	"Bits",0
_35	.db	"Screen",0
_36	.db	"Windowed",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

