
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vrecordfile],0
	mov	[_vrecord_state],0
	mov	[_vleave_a_trail],1
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,16
	mov	[esp+8],1077936128
	mov	[esp+12],-1063256064
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],32
	mov	[esp],32
	call	_fcreatetexture
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-12],0
	jmp	_15
_16
	mov	[ebp-16],0
	jmp	_17
_18
	sub	esp,12
	mov	ebx,[ebp-12]
	imul	ebx,120
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	imul	esi,120
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	imul	eax,120
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frect
	add	[ebp-16],16
_17
	cmp	[ebp-16],31
	jle	_18
_4
	add	[ebp-12],16
_15
	cmp	[ebp-12],31
	jle	_16
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreetexture
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1084227584
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],-1063256064
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,16
	mov	[esp+8],1119092736
	mov	[esp+12],1125187584
	mov	[esp+4],1119092736
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],1053609165
	call	_fentityalpha
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],-1063256064
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1084227584
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	mov	[ebp-36],30
	mov	eax,1000
	mov	ecx,[ebp-36]
	cdq
	idiv	ecx
	mov	[ebp-40],eax
	call	_fmillisecs
	sub	eax,[ebp-40]
	mov	[ebp-44],eax
	jmp	_20
_19
_21
	call	_fmillisecs
	sub	eax,[ebp-44]
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	and	ebx,ebx
	jz	_21
_6
	mov	eax,[ebp-48]
	mov	ecx,[ebp-40]
	cdq
	idiv	ecx
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	mov	[ebp-60],1
	jmp	_22
_23
	mov	ebx,[ebp-52]
	cmp	[ebp-60],ebx
	jnz	_24
	call	_fcaptureworld
_24
	mov	ebx,[ebp-40]
	add	[ebp-44],ebx
	sub	esp,4
	mov	[esp],19
	call	_fkeyhit
	and	eax,eax
	jz	_25
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstartrecording
_25
	sub	esp,4
	mov	[esp],25
	call	_fkeyhit
	and	eax,eax
	jz	_27
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstartplayback
_27
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_29
	call	_fstoprecordingandplayback
_29
	cmp	[_vrecord_state],1
	jnz	_30
	sub	esp,4
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frecord
	jmp	_31
_30
	cmp	[_vrecord_state],2
	jnz	_32
	sub	esp,4
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fplayback
_32
_31
	mov	ebx,[_vleave_a_trail]
	and	ebx,ebx
	jz	_33
	sub	esp,8
	lea	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],_ttrail
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_34
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_35
	sub	esp,4
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	__bbObjDelete
	jmp	_36
_35
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,1004172302
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	sub	esp,8
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	call	_fentityalpha
_36
	sub	esp,4
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_34
_8
_33
	sub	esp,4
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_ffreelook
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	add	[ebp-60],1
_22
	mov	ebx,[ebp-52]
	cmp	[ebp-60],ebx
	jle	_23
_7
	sub	esp,4
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	cmp	[_vrecord_state],1
	jnz	_37
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	jmp	_39
_37
	cmp	[_vrecord_state],2
	jnz	_40
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
_40
_39
	sub	esp,4
	mov	[esp],1
	call	_fflip
_20
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_19
_5
	call	_fend
	ret
_2_leave
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frecord
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],0
	jnz	_44
	sub	esp,8
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_9_leave
_44
	cmp	[_vrecordfile],0
	jnz	_46
	mov	eax,0
	jmp	_9_leave
_46
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritefloat
	mov	ebx,eax
	mov	ebx,[_vleave_a_trail]
	and	ebx,ebx
	jz	_47
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],3
	call	_frand
	cmp	eax,1
	jnz	_48
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_ttrail
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+20]
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
	mov	[esp+16],0
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+20]
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
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,150
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_48
_47
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
	ret	word 4
	.align	16
_fstartrecording
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vrecordfile],0
	jz	_49
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_fclosefile
_49
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[_vrecordfile],eax
	mov	[_vrecord_state],1
	sub	esp,8
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fwriteline
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fstartplayback
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[_vrecordfile],eax
	mov	[_vrecord_state],2
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vrecordfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_51
	sub	esp,40
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp-4]
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
	mov	ebx,_54
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
	mov	ebx,_55
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
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
	call	_fend
_51
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fstoprecordingandplayback
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vrecord_state],1
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vrecord_state],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_57
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_fclosefile
	mov	[_vrecord_state],0
_57
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fplayback
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
	cmp	[ebp+20],0
	jnz	_58
	mov	eax,0
	jmp	_13_leave
_58
	cmp	[_vrecordfile],0
	jnz	_59
	mov	eax,0
	jmp	_13_leave
_59
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jnz	_60
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	mov	ebx,[_vleave_a_trail]
	and	ebx,ebx
	jz	_61
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],3
	call	_frand
	cmp	eax,1
	jnz	_62
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_ttrail
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
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
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,150
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_62
_61
	jmp	_63
_60
	sub	esp,4
	mov	eax,[_vrecordfile]
	mov	[esp],eax
	call	_fclosefile
	mov	[_vrecord_state],0
_63
	mov	eax,0
	jmp	_13_leave
_13_leave
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
	ret	word 4
	.align	16
_ffreelook
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	call	_fmouseyspeed
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1017370378
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vfl_pitch]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_pitch],ebx
	mov	ebx,[_vfl_pitch]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_pitch],ebx
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1017370378
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	fchs
	mov	ebx,[_vfl_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_yaw],ebx
	mov	ebx,[_vfl_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_yaw],ebx
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1039516303
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vfl_zspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_zspeed],ebx
	mov	ebx,[_vfl_zspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1066527621
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_zspeed],ebx
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],30
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1039516303
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vfl_xspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_xspeed],ebx
	mov	ebx,[_vfl_xspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1066527621
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_xspeed],ebx
	sub	esp,4
	mov	[esp],19
	call	_fkeydown
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],33
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1039516303
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vfl_yspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_yspeed],ebx
	mov	ebx,[_vfl_yspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1066527621
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_yspeed],ebx
	mov	ebx,[_vfl_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1066192077
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vfl_xspeed]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1075000115
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vfl_roll],ebx
	sub	esp,20
	mov	eax,[_vfl_roll]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vfl_xspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[_vfl_yspeed]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vfl_zspeed]
	mov	[esp+12],esi
	mov	esi,[_vfl_xspeed]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitypitch
	mov	ebx,[_vfl_pitch]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1028521984
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_64
	mov	[ebp-4],-1028521984
_64
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1118961664
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_65
	mov	[ebp-4],1118961664
_65
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	mov	ebx,[_vfl_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[_vfl_roll]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vrecordfile	.dd	0
	.align	4
_vrecord_state	.dd	0
	.align	4
_vleave_a_trail	.dd	0
	.align	4
_vfl_pitch	.dd	0
	.align	4
_vfl_yaw	.dd	0
	.align	4
_vfl_roll	.dd	0
	.align	4
_vfl_xspeed	.dd	0
	.align	4
_vfl_yspeed	.dd	0
	.align	4
_vfl_zspeed	.dd	0
	.align	4
_vcamera	.dd	0
_26	.db	"recording.rec",0
_28	.db	"recording.rec",0
_38	.db	"RECORDING",0
_41	.db	"PLAYBACK",0
	.align	4
_ttrail	.dd	5
_42	.dd	0
	.dd	_42
	.dd	_42
	.dd	0
	.dd	-1
_43	.dd	0
	.dd	_43
	.dd	_43
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
_45	.db	"Entity does not exist",0
_50	.db	"1.00",0
_52	.db	"1.00",0
_53	.db	"Wrong file version (file: ",0
_54	.db	". Rrecorder: ",0
_55	.db	"1.00",0
_56	.db	")",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

