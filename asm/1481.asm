
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],1101004800
	mov	[esp+12],-1041235968
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-16],eax
	call	_fmillisecs
	mov	[ebp-20],eax
	mov	[ebp-24],1
	jmp	_14
_15
	sub	esp,8
	mov	[esp],0
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,32
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_flinepick
	add	[ebp-24],1
_14
	cmp	[ebp-24],2500
	jle	_15
_3
	call	_fmillisecs
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	sub	ebx,[ebp-20]
	mov	[ebp-36],ebx
	call	_fmillisecs
	mov	[ebp-20],eax
	mov	[ebp-24],1
	jmp	_16
_17
	sub	esp,8
	mov	[esp],0
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertexcoords2
	sub	esp,32
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertextexcoords2
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_flinepick
	add	[ebp-24],1
_16
	cmp	[ebp-24],2500
	jle	_17
_4
	call	_fupdatemeshes
	call	_fmillisecs
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	sub	ebx,[ebp-20]
	mov	[ebp-40],ebx
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
_18
	cmp	[ebp-44],1
	jnz	_19
	mov	[ebp-24],1
	jmp	_20
_21
	sub	esp,8
	mov	[esp],0
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertexcoords2
	sub	esp,32
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertextexcoords2
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_flinepick
	add	[ebp-24],1
_20
	cmp	[ebp-24],1000
	jle	_21
_6
	call	_fupdatemeshes
	jmp	_22
_19
	mov	[ebp-24],1
	jmp	_23
_24
	sub	esp,8
	mov	[esp],0
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountvertices
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,32
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,28
	mov	[esp+20],1065353216
	mov	[esp+24],0
	mov	[esp+16],1065353216
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_flinepick
	add	[ebp-24],1
_23
	cmp	[ebp-24],1000
	jle	_24
_7
_22
	sub	esp,20
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-52]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmoveentity
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vdst]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
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
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],32
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_28
	sub	esp,8
	mov	eax,[ebp-44]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[ebp-44],eax
_28
	cmp	[ebp-44],0
	jnz	_29
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_31
_29
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
_31
	sub	esp,32
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],62
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_18
_5
	call	_fend
	ret
_2_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvertexcoords2
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
	mov	ebx,_tvertexupd
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
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	eax,0
	jmp	_8_leave
_8_leave
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
_fvertextexcoords2
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
	mov	ebx,_tvertexupd
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
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
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	[esi],ebx
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	ret	word 24
	.align	16
_fvertexcolor2
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
	mov	ebx,_tvertexupd
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,3
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
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
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,48
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,52
	mov	[esi],ebx
	mov	eax,0
	jmp	_10_leave
_10_leave
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
	ret	word 24
	.align	16
_fupdatemeshes
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
	mov	[ebp-8],1
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tvertexupd
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_36
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-12],1
	jz	_38
	cmp	[ebp-12],2
	jz	_39
	cmp	[ebp-12],3
	jz	_40
	jmp	_37
_38
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertexcoords
	jmp	_37
_39
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertextexcoords
	jmp	_37
_40
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,52
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,44
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fvertexcolor
	jmp	_37
_37
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_36
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vdst	.dd	0
_25	.db	"Normal update:",0
_26	.db	"Speed update:",0
_27	.db	"Hit space to toggle mode",0
_30	.db	"Normal",0
_32	.db	"Speed",0
_33	.db	"Current mode:",0
	.align	4
_tvertexupd	.dd	5
_34	.dd	0
	.dd	_34
	.dd	_34
	.dd	0
	.dd	-1
_35	.dd	0
	.dd	_35
	.dd	_35
	.dd	0
	.dd	-1
	.dd	14
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
