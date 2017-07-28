
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_ab
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atxv
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_atxv
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atxv
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],0
	mov	[esp+8],-1063256064
	mov	[esp+4],1084227584
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],1110704128
	mov	[esp+12],0
	mov	[esp+4],1110704128
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fentityfx
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],1
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],1
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],1
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funweld
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fupdatenormals
	jmp	_19
_18
	sub	esp,4
	mov	[esp],78
	call	_fkeyhit
	mov	[ebp-28],eax
	cmp	[ebp-16],2
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_20
	add	[ebp-16],1
_20
	sub	esp,4
	mov	[esp],74
	call	_fkeyhit
	mov	[ebp-28],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_21
	sub	[ebp-16],1
_21
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_22
	sub	esp,12
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcamerapick
	mov	ebx,eax
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_23
	call	_fpickedsurface
	mov	[ebp-20],eax
	call	_fpickedtriangle
	mov	[ebp-24],eax
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpainttriangle
_23
_22
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],5
	mov	[esp+16],0
	mov	[esp+8],5
	call	_fmousey
	mov	[esp+4],eax
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_foval
	mov	ebx,eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],25
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_19
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_18
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
_funweld
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
	mov	[ebp-4],1
	jmp	_29
_30
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_31
_32
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	[ebx],eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_ttris
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,44
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,48
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,52
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,56
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,64
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,68
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,72
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,80
	mov	[ebx],eax
	add	[ebp-12],1
_31
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_32
_6
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclearsurface
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_ttris
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_33
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-20],1
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,44
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,36
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,52
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-20],1
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,68
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,64
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,60
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,80
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,76
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-20],1
	sub	esp,16
	mov	ebx,[ebp-20]
	sub	ebx,2
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	sub	esi,3
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_33
_7
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_ttris
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_34
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_34
_8
	mov	[ebp-20],0
	add	[ebp-4],1
_29
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-4],eax
	jle	_30
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpainttriangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_ffindsurface
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_35
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fcreatesurface
	mov	[ebp-4],eax
_35
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_36
_37
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,24
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexu
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,24
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexv
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,24
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexu
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,24
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexv
	mov	ebx,eax
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	add	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	add	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-12],1
_36
	cmp	[ebp-12],2
	jle	_37
_10
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,3
	mov	[ebp-8],eax
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	add	esi,2
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fremovetri
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fupdatenormals
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fremovetri
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
	mov	[ebp-4],0
	jmp	_38
_39
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	[ebx],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jz	_40
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_ttris
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,40
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,44
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,48
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,52
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,56
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,64
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,68
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,72
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,76
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_atxv]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,80
	mov	[ebx],eax
_40
	add	[ebp-4],1
_38
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_39
_12
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fclearsurface
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_ttris
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_41
	sub	esp,28
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-12],1
	sub	esp,28
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,44
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,40
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,36
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,52
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,48
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-12],1
	sub	esp,28
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,68
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,64
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,60
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,56
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,80
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,76
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-12],1
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,2
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	sub	esi,3
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_41
_13
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_ttris
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_42
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_42
_14
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 8
	.align	4
_ab	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_atxv	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vmash	.dd	0
	.align	4
_vmashs	.dd	0
_15	.db	"shingle.bmp",0
_16	.db	"oldbric.bmp",0
_17	.db	"gothic3.bmp",0
_24	.db	"Brush: ",0
_25	.db	" of 2.",0
_26	.db	"Use + or - on Keypad to Change Brush",0
	.align	4
_ttris	.dd	5
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
_28	.dd	0
	.dd	_28
	.dd	_28
	.dd	0
	.dd	-1
	.dd	22
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
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
