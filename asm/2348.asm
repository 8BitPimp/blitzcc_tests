
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],-1026949120
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vntginit],0
	mov	[_vntgscalex],1065353216
	mov	[_vntgscaley],1065353216
	mov	[_vntgalpha],1065353216
	mov	[_vntgblend],3
	sub	esp,4
	mov	[esp],1148846080
	call	_fntginit2dalpha
	sub	esp,28
	mov	[esp+12],255
	mov	[esp+16],255
	mov	[esp+8],255
	mov	[esp+4],1109393408
	mov	[esp],1109393408
	call	_fntgcreaterect
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	[ebp-12],1065353216
	call	_fmillisecs
	mov	[ebp-16],eax
	jmp	_15
_14
	call	_fcls
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fntgsetrotation
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fntgsetscale
	sub	esp,8
	mov	eax,[ebp-12]
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
	call	_fsin
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fntgsetalpha
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
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdrawntg
	mov	ebx,eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1065353216
	call	_fntgsetscale
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],_trects
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_16
	sub	esp,4
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fntgsetrotation
	sub	esp,4
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fntgsetalpha
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawntg
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1032805417
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1139802112
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
	sub	esp,8
	mov	[esp],1056964608
	mov	[esp+4],1063675494
	call	_frnd
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,1139802112
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_17
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_18
	sub	esp,4
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjDelete
_18
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_16
_4
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_19
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_trects
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1135869952
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1069547520
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1069547520
	mov	[esp+4],1082130432
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	mov	ebx,255
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],255
	mov	[esp+8],255
	mov	[esp+4],1109393408
	mov	[esp],1109393408
	call	_fntgcreaterect
	mov	[esp+4],eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
_19
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1144258560
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	[ebp-12],0
_20
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	call	_fupdatentg
_l_2stt1
	call	_fmillisecs
	sub	eax,[ebp-16]
	cmp	eax,0
	jle	_21
_l_2stt
	mov	eax,1000
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-28]
	sub	ebx,[ebp-16]
	mov	ecx,ebx
	cdq
	idiv	ecx
	mov	[ebp-24],eax
	cmp	[ebp-24],58
	jle	_22
	jmp	_l_2stt
_22
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	jmp	_23
_21
	jmp	_l_2stt1
_23
	call	_fmillisecs
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],1
	call	_fflip
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_14
_3
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	ret
_2_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawntg
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vntgpixelwidth]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vntgox]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[_vntgpixelheight]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[_vntgoz]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	[esp+16],0
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vntgrotation]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	ebx,[_vntgscaley]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	ebx,[_vntgscalex]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vntgalpha]
	mov	[esp+4],ebx
	call	_fentityalpha
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vntgblend]
	mov	[esp+4],ebx
	call	_fentityblend
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fupdatentg
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
	mov	[esp+4],_tntgsprite
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_28
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_28
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
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
_fntgsetblend
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vntgblend],ebx
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fntgsetrotation
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vntgrotation],ebx
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fntgsetscale
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vntgscalex],ebx
	mov	ebx,[ebp+24]
	mov	[_vntgscaley],ebx
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
_fntgsetalpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vntgalpha],ebx
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fntgcreaterect
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_tntgsprite
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+24],ebx
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vntgpixelheight]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[_vntgheight]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[_vntgpixelwidth]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,0
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-12],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vntgpixelheight]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[_vntgheight]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[_vntgpixelwidth]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vntgpixelheight]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[_vntgheight]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[_vntgpixelwidth]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,28
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vntgpixelheight]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	esi,[_vntgheight]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[_vntgpixelwidth]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,0
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+4],edi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-24],eax
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	mov	eax,[ebp-4]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fntginit2dalpha
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
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vntgcam],eax
	mov	[_vntginit],1
	cmp	[_vntgcam],0
	jnz	_29
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_29
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[_vntgplane],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1028390912
	mov	eax,[_vntgplane]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],-1073741824
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vntgplane]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[_vntgcam]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vntgplane]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_vntgplane]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityalpha
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_vntgplane]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,12
	mov	[esp+4],1008981770
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	eax,[_vntgcam]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[_vntgcam]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1120403456
	mov	[esp+4],0
	mov	eax,[_vntgcam]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[_vntgcam]
	mov	[esp],eax
	mov	[esp+4],1077936128
	call	_fcamerazoom
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vntgcam]
	mov	[esp],eax
	call	_fcameraclsmode
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1065353216
	mov	eax,[_vntgcam]
	mov	[esp],eax
	call	_fcamerapick
	call	_fpickedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fpickedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_fpickedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vntgheight],eax
	sub	esp,12
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	ebx,[_vntgcam]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcamerapick
	mov	ebx,eax
	call	_fpickedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_fpickedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	ebx,[ebp-4]
	mov	[_vntgox],ebx
	mov	ebx,[ebp-8]
	mov	[_vntgoz],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vntgpixelwidth],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	call	_fgraphicsheight
	push	eax
	fild	[esp]
	pop	eax
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vntgpixelheight],ebx
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vntgox	.dd	0
	.align	4
_vntgoz	.dd	0
	.align	4
_vntgpixelwidth	.dd	0
	.align	4
_vntgpixelheight	.dd	0
	.align	4
_vntginit	.dd	0
	.align	4
_vntgplane	.dd	0
	.align	4
_vntgcam	.dd	0
	.align	4
_vntgheight	.dd	0
	.align	4
_vntgrotation	.dd	0
	.align	4
_vntgscalex	.dd	0
	.align	4
_vntgscaley	.dd	0
	.align	4
_vntgalpha	.dd	0
	.align	4
_vntgblend	.dd	0
	.align	4
_tntgsprite	.dd	5
_24	.dd	0
	.dd	_24
	.dd	_24
	.dd	0
	.dd	-1
_25	.dd	0
	.dd	_25
	.dd	_25
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_trects	.dd	5
_26	.dd	0
	.dd	_26
	.dd	_26
	.dd	0
	.dd	-1
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	_tntgsprite
_30	.db	"Camera does not exist.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

