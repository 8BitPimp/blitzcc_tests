
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vfloorboard],eax
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1082130432
	mov	eax,[_vfloorboard]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vfloorboard]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1056964608
	mov	eax,[_vfloorboard]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_vfloorboard]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vfloor2],eax
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1065353216
	mov	eax,[_vfloor2]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vfloor2]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_vfloor2]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vwall],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vwall]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1090519040
	mov	eax,[_vwall]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,20
	mov	[esp+12],1066192077
	mov	[esp+16],0
	mov	[esp+8],1066192077
	mov	[esp+4],1066192077
	mov	eax,[_vwall]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_vwall]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1088421888
	mov	eax,[_vfloor2]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],1092616192
	mov	[esp+12],0
	mov	[esp+4],1056964608
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[_vfloorboard]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1082130432
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	mov	[_vnodeid],0
	call	_fsetupnodes
	call	_fsetuppaths
	mov	[_vcp],0
	jmp	_28
_27
	mov	[_vcp],0
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_29
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_30
	sub	esp,48
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[_vcp]
	mov	[esp+4],ebx
	mov	[esp],450
	call	_ftext
	add	[_vcp],12
_30
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_29
_4
	sub	esp,4
	mov	eax,[_vnodeid]
	mov	[esp],eax
	call	_fshowpaths
	sub	esp,4
	mov	[esp],77
	call	_fkeydown
	cmp	eax,1
	jnz	_33
	add	[_vnodeid],1
_34
	sub	esp,4
	mov	[esp],77
	call	_fkeydown
	cmp	eax,0
	jnz	_34
_5
_33
	sub	esp,4
	mov	[esp],75
	call	_fkeydown
	cmp	eax,1
	jnz	_35
	sub	[_vnodeid],1
_36
	sub	esp,4
	mov	[esp],75
	call	_fkeydown
	cmp	eax,0
	jnz	_36
_6
_35
	sub	esp,4
	mov	[esp],1
	call	_fflip
_28
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_27
_3
	call	_fend
_l_2nodelayout
	ret
_2_leave
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
_fsetupnodes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],-1071644672
	mov	[ebp-8],-1073741824
	mov	[ebp-16],0
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-20],0
	jmp	_39
_40
	mov	[ebp-24],0
	jmp	_41
_42
	call	__bbReadInt
	mov	[ebp-12],eax
	cmp	[ebp-12],1
	jnz	_43
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_tnodetype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[ebp-16],1
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
_43
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	add	[ebp-24],1
_41
	cmp	[ebp-24],5
	jle	_42
_9
	mov	[ebp-4],-1071644672
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	add	[ebp-20],1
_39
	cmp	[ebp-20],2
	jle	_40
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-28]
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
_fcheckfall
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-20],eax
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
_44
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1140457472
	call	_fentitypick
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jnz	_45
	mov	eax,0
	jmp	_10_leave
_45
	cmp	[ebp-24],0
	jz	_46
	sub	esp,20
	call	_fpickedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],0
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fpickedy
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	call	_fpickedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	eax,[ebp-28]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_47
	mov	eax,0
	jmp	_10_leave
_47
_46
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_48
	call	_fend
_48
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_44
_11
	mov	eax,1
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcheckpath
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_50
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_51
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jz	_52
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1140457472
	call	_fentitypick
	cmp	eax,[ebp-12]
	jnz	_53
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcheckfall
	cmp	eax,1
	jnz	_54
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_56
_54
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_56
	jmp	_58
_53
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_58
	jmp	_60
_52
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_60
_51
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_50
_13
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_12_leave
	sub	esp,4
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	jmp	_12_leave
_12_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fsetuppaths
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
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_15
_63
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_64
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcheckpath
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_64
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_63
_15
	mov	eax,0
	jmp	_14_leave
_14_leave
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
_fsourcex
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
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_17
_65
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_66
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_67
	sub	esp,24
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	jmp	_16_leave
_67
_66
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_65
_17
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_16_leave
_16_leave
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
	ret	word 4
	.align	16
_fsourcey
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
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_19
_68
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_69
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_70
	sub	esp,24
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedy
	jmp	_18_leave
_70
_69
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_68
_19
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_18_leave
_18_leave
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
	ret	word 4
	.align	16
_fsourcez
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
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_21
_71
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_72
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_73
	sub	esp,24
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedz
	jmp	_20_leave
_73
_72
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_71
_21
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_20_leave
_20_leave
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
	ret	word 4
	.align	16
_fdrawpaths
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsourcex
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsourcey
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsourcez
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_23
_74
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_75
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jz	_76
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_77
	sub	esp,4
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsourcex
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsourcey
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsourcez
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_79
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	jmp	_81
_79
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
_81
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
_77
_76
_75
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_74
_23
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fshowpaths
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
	mov	[esp+4],_tnodetype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_25
_82
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_83
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_84
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fdrawpaths
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_24_leave
_84
_83
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_82
_25
	mov	eax,0
	jmp	_24_leave
_24_leave
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
	ret	word 4
	.align	16
_flineofsight3d
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_85
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	[esp],0
	call	_ftformvector
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-36]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-36]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-36]
	fsubp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,4
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	xchg	ebx,eax
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_86
	sub	esp,28
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	edi,[ebp+36]
	mov	[esp+24],edi
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flinepick
	cmp	eax,[ebp+24]
	jnz	_87
	mov	eax,1
	jmp	_26_leave
_87
_86
_85
	mov	eax,0
	jmp	_26_leave
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
_vcamera	.dd	0
	.align	4
_vfloorboard	.dd	0
	.align	4
_vfloor2	.dd	0
	.align	4
_vwall	.dd	0
	.align	4
_vnodeid	.dd	0
	.align	4
_vcp	.dd	0
_31	.db	"[",0
_32	.db	"]",0
	.align	4
_tnodetype	.dd	5
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
_38	.dd	0
	.dd	_38
	.dd	_38
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbStrType
_49	.db	"",0
_55	.db	"1",0
_57	.db	"0",0
_59	.db	"-",0
_61	.db	"-",0
_62	.db	"",0
_78	.db	"-",0
_80	.db	"1",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	0

