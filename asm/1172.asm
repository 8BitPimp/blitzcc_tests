
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	sub	esp,12
	call	_fgraphicsheight
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-80],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	[_vscreenbk],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1
	call	_ftformfilter
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-8],0
	mov	[ebp-12],1
	mov	[ebp-16],1
	mov	[ebp-20],641
	mov	[ebp-24],1
	mov	[ebp-16],1
	mov	[ebp-28],0
	mov	[ebp-32],6
	mov	[ebp-36],0
	mov	[ebp-40],1
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vgfxbg],eax
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vgfxflare],eax
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fplaymusic
	mov	[ebp-60],eax
	jmp	_21
_20
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_22
	sub	[ebp-28],1
_22
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_23
	add	[ebp-28],1
_23
	call	_fcls
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],0
	mov	[esp+4],1
	mov	eax,[_vgfxbg]
	mov	[esp],eax
	call	_fdrawimage
	call	_fwobbleview
	sub	esp,16
	mov	ebx,[ebp-64]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],1
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],365
	mov	[esp],100
	call	_ftext
	sub	esp,32
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],395
	mov	[esp],15
	call	_ftext
	sub	esp,32
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	lea	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],410
	mov	[esp],15
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],435
	mov	[esp],65
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],450
	mov	[esp],40
	call	_ftext
	sub	esp,8
	mov	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1171963904
	call	__bbFMod
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-72],eax
	cmp	[ebp-72],5
	jnz	_29
	sub	esp,8
	mov	[esp],_vbullet
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_tt_bullet
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1128792064
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
_29
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-76],eax
	cmp	[ebp-72],10
	jnz	_30
	sub	esp,8
	mov	[esp],_vbullet
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_tt_bullet
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1128792064
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
_30
	call	_fupdategame
	call	_frendergame
	cmp	[ebp-24],1
	jnz	_31
	add	[ebp-12],1
_31
	cmp	[ebp-24],2
	jnz	_32
	sub	[ebp-12],1
_32
	cmp	[ebp-12],100
	jnz	_33
	mov	[ebp-24],2
_33
	cmp	[ebp-12],1
	jnz	_34
	mov	[ebp-24],1
_34
	sub	esp,28
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],20
	mov	[esp+24],10
	mov	[esp+16],50
	mov	[esp+8],135
	mov	ebx,100
	sub	ebx,[ebp-68]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsinscroll
	sub	esp,28
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+20],20
	mov	[esp+24],10
	mov	[esp+16],50
	mov	[esp+8],135
	mov	ebx,100
	sub	ebx,[ebp-68]
	sub	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsinscroll
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
	cmp	[ebp-28],0
	jge	_37
	mov	[ebp-28],0
_37
	mov	ebx,[ebp-32]
	add	[ebp-28],ebx
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_38
	sub	[ebp-32],1
_38
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_39
	add	[ebp-32],1
_39
_21
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_20
_3
	ret
_2_leave
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[ebp-80],eax
	sub	esp,4
	mov	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-80]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdategame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[esp],_vbullet
	mov	[esp+4],_tt_bullet
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_42
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[_vbullet]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[_vbullet]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[_vbullet]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[_vbullet]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_vbullet
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_42
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frendergame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[esp],_vbullet
	mov	[esp+4],_tt_bullet
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_43
	sub	esp,16
	mov	ebx,[_vbullet]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vbullet]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vgfxflare]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,_vbullet
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_43
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsinscroll
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_44
_45
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	imul	ebx,[ebp+40]
	add	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_ftext
	mov	ebx,[ebp+44]
	add	[ebp-8],ebx
	add	[ebp-4],1
_44
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_45
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
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
	ret	word 28
	.align	16
_fwobbleview
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
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fgraphicsheight
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	add	[_vunderw_a],4
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1107296256
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1114636288
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	cmp	[_vunderw_a],359
	jle	_46
	mov	[_vunderw_a],0
_46
	mov	[ebp-20],0
	jmp	_47
_48
	sub	esp,12
	mov	eax,[_vunderw_a]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1135869952
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,32
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	sub	esp,8
	mov	eax,[_vscreenbk]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-28],eax
	mov	eax,esi
	call	_fbackbuffer
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+28],esi
	mov	[esp+16],0
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp],0
	call	_fcopyrect
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_47
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_48
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vgfxbg	.dd	0
	.align	4
_vgfxflare	.dd	0
	.align	4
_vscreenbk	.dd	0
	.align	4
_vunderw_a	.dd	0
_12	.db	"Comic Sans MS",0
_13	.db	"Tower of Flames",0
_14	.db	"Frederic Hahn",0
	.align	4
_vbullet	.dd	0
_15	.db	"coolblue.png",0
_16	.db	"interface4.png",0
_17	.db	"amigagirl.png",0
_18	.db	"ice.png",0
_19	.db	"z-tower.xm",0
_24	.db	"NOW PLAYING",0
_25	.db	"TITLE: ",0
_26	.db	"ARTIST: ",0
_27	.db	"UP/DOWN TO CHANGE SONG",0
_28	.db	"LEFT/RIGHT TO CHANGE TEXT SPEED",0
_35	.db	" ............... CodeD aka (DJ) Krazy K Presents Amiga Tribute Vol. 1 ... Press up/down to change songs ... Press left/right to change text speed/direction Code: CodeD, Jeppe Neilson (SinScroll), Semar (bullet code), JFK (distort) Gfx: FrogDot (thx for the babe!), CodeD ... Mods for Charity ... your donations help children!!! ... Visit http://sites.gwala.net/tormented/amiga for more info and to order the CD ... greetings to: Ckob, Lenn, Noel Cower, JFK, DJ SeeNSay, LizardKing, FutureCrew, Paradox, Mark Sibly & The Blitz Basic Crew, The Anonymous Modder ... Gotta have mod??  Amiga Tribute Vol. 2 coming soon!!  Cybernoid 3D coming soon!! Quality apps like this and more from CrapSoft and Evolved Dev Studios ............................ ",0
_36	.db	" ............... CodeD aka (DJ) Krazy K Presents Amiga Tribute Vol. 1 ... Press up/down to change songs ... Press left/right to change text speed/direction Code: CodeD, Jeppe Neilson (SinScroll), Semar (bullet code), JFK (distort) Gfx: FrogDot (thx for the babe!), CodeD ... Mods for Charity ... your donations help children!!! ... Visit http://sites.gwala.net/tormented/amiga for more info and to order the CD ... greetings to: Ckob, Lenn, Noel Cower, JFK, DJ SeeNSay, LizardKing, FutureCrew, Paradox, Mark Sibly & The Blitz Basic Crew, The Anonymous Modder ... Gotta have mod??  Amiga Tribute Vol. 2 coming soon!!  Cybernoid 3D coming soon!! Quality apps like this and more from CrapSoft and Evolved Dev Studios ............................ ",0
	.align	4
_tt_bullet	.dd	5
_40	.dd	0
	.dd	_40
	.dd	_40
	.dd	0
	.dd	-1
_41	.dd	0
	.dd	_41
	.dd	_41
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

