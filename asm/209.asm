
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
	sub	esp,4
	mov	[esp],50
	call	_ftestdraw3d
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
_fplot3d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedz
	push	eax
	fistp	[esp]
	pop	eax
	and	eax,eax
	jz	_20
	sub	esp,8
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fprojectedy
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fplot
_20
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fline3d
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
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fprojectedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_fprojectedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	esi,[ebp+40]
	mov	[esp+12],esi
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedz
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
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
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_21
	sub	esp,16
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fprojectedy
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_21
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fsegments3d
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
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+32],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+36],ebx
	mov	ebx,[ebp+28]
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
	mov	[ebp+40],ebx
	mov	[ebp-16],1
	jmp	_22
_23
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	call	_fprojectedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	call	_fprojectedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	esi,[ebp+40]
	mov	[esp+12],esi
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedz
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
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
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_24
	sub	esp,16
	call	_fprojectedx
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fprojectedy
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_24
	mov	ebx,[ebp+32]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+36]
	mov	[ebp+24],ebx
	mov	ebx,[ebp+40]
	mov	[ebp+28],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+32],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+36],ebx
	mov	ebx,[ebp+28]
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
	mov	[ebp+40],ebx
	add	[ebp-16],1
_22
	mov	ebx,[ebp+48]
	cmp	[ebp-16],ebx
	jle	_23
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_ftestdraw3d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],-1027080192
	mov	[esp+16],0
	mov	[esp+8],1112014848
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1106247680
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_25
_26
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	[ebp-20],eax
	sub	esp,28
	mov	[esp],-1041235968
	mov	[esp+4],1106247680
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1035468800
	mov	[esp+4],1112014848
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],-1035468800
	mov	[esp+4],1112014848
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
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
	mov	[esp+12],ebx
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
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
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-16],1
_25
	cmp	[ebp-16],15
	jle	_26
_8
	mov	[ebp-16],1
	jmp	_27
_28
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_tentity3d
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1069547520
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
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
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1069547520
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],20
	mov	[esp+4],1
	call	_frand
	add	eax,50
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	add	[ebp-16],1
_27
	mov	ebx,[ebp+20]
	cmp	[ebp-16],ebx
	jle	_28
_9
	mov	[ebp-16],1
	jmp	_29
_30
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_tpoint3d
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],-1035468800
	mov	[esp+4],1112014848
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1035468800
	mov	[esp+4],1112014848
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1065353216
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	add	[ebp-16],1
_29
	mov	ebx,[ebp+20]
	cmp	[ebp-16],ebx
	jle	_30
_10
	mov	[ebp-32],0
	jmp	_32
_31
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1050253722
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1050253722
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmousezspeed
	imul	eax,5
	push	eax
	fild	[esp]
	pop	eax
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	sub	esp,8
	mov	[esp],400
	mov	[esp+4],300
	call	_fmovemouse
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_33
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_34
_33
	sub	esp,28
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
_34
	mov	[ebp-36],0
	mov	[ebp-40],0
	mov	[ebp-44],0
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],_tentity3d
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_35
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
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
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
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
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
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
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_36
	sub	esp,8
	mov	[esp],-1069547520
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
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
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1069547520
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],20
	mov	[esp+4],1
	call	_frand
	add	eax,50
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
_36
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_35
_12
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],_tpoint3d
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_37
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
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
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_38
	sub	esp,4
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbFAbs
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	jmp	_39
_38
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1035468800
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_40
	sub	esp,4
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
_40
_39
	sub	esp,4
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_37
_13
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,8
	mov	eax,[ebp-32]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-32],eax
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],_tentity3d
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_41
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_tentity3d
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjLast
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jz	_42
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_43
_42
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_tentity3d
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjStore
_43
	sub	esp,12
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	esi,255
	sub	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,255
	sub	eax,[ebp-32]
	mov	[esp],eax
	call	_fcolor
	sub	esp,28
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	esi,[ebp-4]
	mov	[esp+24],esi
	mov	esi,[ebp-48]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fline3d
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_41
_14
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],_tpoint3d
	call	__bbObjEachFirst
	and	eax,eax
	jz	_15
_44
	sub	esp,20
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	[esp],eax
	mov	[esp+4],255
	mov	[esp+8],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fplot3d
	sub	esp,4
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_44
_15
	sub	esp,12
	mov	ebx,255
	sub	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	[esp+8],255
	mov	eax,255
	sub	eax,[ebp-32]
	mov	[esp],eax
	call	_fcolor
	sub	esp,40
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+20],eax
	mov	ebx,[ebp-4]
	mov	[esp+24],ebx
	mov	[esp+28],10
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+8],0
	mov	[esp+4],0
	mov	[esp],0
	call	_fsegments3d
	sub	esp,4
	mov	[esp],1
	call	_fflip
_32
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_31
_11
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_tentity3d	.dd	5
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.align	4
_tpoint3d	.dd	5
_18	.dd	0
	.dd	_18
	.dd	_18
	.dd	0
	.dd	-1
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
	.dd	4
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

