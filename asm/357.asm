
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],32
	sub	esp,4
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],256
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcreatesprite
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1142947840
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	[esp+4],1142947840
	mov	[esp+8],1142947840
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],-1
	call	_fentityorder
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1061158912
	call	_fentityalpha
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],1090519040
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1073741824
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],1090519040
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1073741824
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	[esp],12
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],0
	mov	[esp+8],1077936128
	mov	[esp+4],1077936128
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1120403456
	mov	[esp+12],1132396544
	mov	[esp+4],1120403456
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],1045220557
	call	_fentityshininess
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fcreatelight
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],1101004800
	call	_flightrange
	sub	esp,16
	mov	[esp+8],1084227584
	mov	[esp+12],1084227584
	mov	[esp+4],1084227584
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],32
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-36],eax
	sub	esp,20
	mov	[esp+12],1126170624
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1126170624
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],-1063256064
	mov	[esp+12],1101004800
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fcreatelight
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],1101004800
	call	_flightrange
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fcreatelight
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	[esp+4],1101004800
	call	_flightrange
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitytype
	jmp	_6
_5
	cmp	[ebp-40],3
	jnz	_7
	sub	esp,20
	mov	[esp+12],256
	mov	[esp+16],256
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-84],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],256
	mov	[esp+8],256
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-84],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcameraviewport
	mov	[ebp-40],0
_7
	add	[ebp-40],1
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-84],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-84]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1117782016
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1035993088
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_8
	mov	[ebp-44],-1035993088
_8
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120927744
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_9
	mov	[ebp-44],1120927744
_9
	mov	eax,[ebp-48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1035993088
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_10
	mov	[ebp-48],-1035993088
_10
	mov	eax,[ebp-48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120927744
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	[ebp-48],1120927744
_11
	sub	esp,20
	mov	ebx,[ebp-44]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1028915200
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1118568448
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-56]
	mov	[esp+12],esi
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fentitycollided
	and	eax,eax
	jz	_12
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	xchg	ebx,eax
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	ebx,-1081291571
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
	mov	[ebp-52],ebx
_13
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-84],eax
	sub	esp,8
	mov	[ebp-88],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	[esp+4],2
	mov	eax,ebx
	call	_fentitycollided
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
_12
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	sub	esp,8
	mov	[esp],-1073741824
	mov	[esp+4],1073741824
	call	_frnd
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
_14
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	sub	esp,8
	mov	[esp],-1073741824
	mov	[esp+4],1073741824
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
_15
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	ebx,-1035993088
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
_16
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	ebx,1120927744
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
_17
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	ebx,-1028390912
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_18
	add	[ebp-60],1
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-52],0
	mov	[ebp-56],0
_18
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	add	[ebp-64],1
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-52],0
	mov	[ebp-56],0
_19
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	ebx,[ebp-72]
	cmp	[ebp-68],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	ebx,eax
	and	ebx,ebx
	jz	_20
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-84]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	[ebp-76],1065353216
	jmp	_22
_21
	mov	[ebp-76],-1082130432
_22
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	[ebp-84],eax
	sub	esp,8
	mov	[esp],1058642330
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-84]
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-72],eax
	mov	[ebp-68],0
	sub	esp,8
	mov	[esp],1075000115
	mov	[esp+4],0
	call	_frnd
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
_20
	add	[ebp-68],1
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	ebx,-1035993088
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	[ebp-88],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	esi,1120927744
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	or	eax,ebx
	and	eax,eax
	jz	_23
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
_23
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-48],esi
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1064514355
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	sub	esp,28
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-84]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1067030938
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-88]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	esi,1067030938
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentitycolor
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-36]
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
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,40
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[ebp-84],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	esi,1022739087
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	esi,1025758986
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	[ebp-84],eax
	mov	eax,esi
	call	_fgraphicswidth
	mov	esi,eax
	mov	eax,[ebp-84]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_ftext
	mov	esi,eax
	sub	esp,24
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	ebx,1074580685
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	esi,1074580685
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	esi,1074580685
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_fcolor
	mov	esi,eax
	sub	esp,40
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_5
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
_4	.db	"Arial",0
_24	.db	"  -VS-  ",0
_25	.db	"  -VS-  ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
