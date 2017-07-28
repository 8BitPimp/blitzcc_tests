
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],3
	mov	[ebp-8],90
	mov	[ebp-12],90
	mov	[ebp-16],10
	mov	[ebp-20],5
	mov	[ebp-24],100
	mov	[ebp-28],1
	mov	[ebp-32],4
	mov	[ebp-36],1092616192
	mov	ebx,[ebp-24]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],100
	sub	[ebp-16],1
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	mov	[ebp-52],ebx
	mov	[ebp-56],1
	jmp	_48
_49
	mov	ebx,[ebp-52]
	shl	ebx,byte 1
	mov	[ebp-52],ebx
	add	[ebp-56],1
_48
	mov	ebx,[ebp-20]
	cmp	[ebp-56],ebx
	jle	_49
_3
	sub	esp,4
	mov	eax,_aax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aax
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aaan
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aaan
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aaan
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aaanvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aaanvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aaanvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aaxvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aaxvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aaxvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aayvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aayvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aayvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aasize
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aasize
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aasize
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aalife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aalife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aalife
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aadist
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-52]
	mov	esi,_aadist
	add	esi,12
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,_aadist
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aadist
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-56],0
	jmp	_50
_51
_52
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aay]
	mov	[ebx],eax
	mov	ebx,320
	mov	esi,[ebp-20]
	shl	esi,byte 3
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-132],eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 3
	add	esi,320
	push	esi
	fild	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	mov	[ebp-132],eax
	mov	ebx,240
	mov	esi,[ebp-20]
	shl	esi,byte 3
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-132]
	and	eax,esi
	mov	[ebp-132],eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 3
	add	esi,240
	push	esi
	fild	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_52
_5
	sub	esp,8
	mov	[esp],1135869952
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aaan]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1117782016
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aaanvel]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1086324736
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aaxvel]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1086324736
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aayvel]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp-20]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aasize]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aalife]
	mov	[esi],ebx
	mov	[ebp-60],0
	jmp	_53
_54
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	[esp],1098907648
	mov	[esp+4],0
	call	_frnd
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	[esi],ebx
	add	[ebp-60],1
_53
	cmp	[ebp-60],5
	jle	_54
_6
	add	[ebp-56],1
_50
	mov	ebx,[ebp-16]
	cmp	[ebp-56],ebx
	jle	_51
_4
	sub	[ebp-24],1
	sub	esp,4
	mov	eax,_abx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_abx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aby
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_aby
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aby
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abhit
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_abhit
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abhit
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abxvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_abxvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abxvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abyvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_abyvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abyvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ablife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_ablife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ablife
	mov	[esp],eax
	call	__bbDimArray
	sub	[ebp-40],1
	sub	esp,4
	mov	eax,_asx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-40]
	mov	esi,_asx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-40]
	mov	esi,_asy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asxvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-40]
	mov	esi,_asxvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asxvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asyvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-40]
	mov	esi,_asyvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asyvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aslife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-40]
	mov	esi,_aslife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aslife
	mov	[esp],eax
	call	__bbDimArray
	sub	[ebp-44],1
	sub	esp,4
	mov	eax,_ahx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-44]
	mov	esi,_ahx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-44]
	mov	esi,_ahy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahsca
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-44]
	mov	esi,_ahsca
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahsca
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahlife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-44]
	mov	esi,_ahlife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahlife
	mov	[esp],eax
	call	__bbDimArray
	sub	[ebp-48],1
	sub	esp,4
	mov	eax,_atx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-48]
	mov	esi,_atx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aty
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-48]
	mov	esi,_aty
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aty
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atxvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-48]
	mov	esi,_atxvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atxvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atyvel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-48]
	mov	esi,_atyvel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atyvel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atlife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-48]
	mov	esi,_atlife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atlife
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],480
	mov	[esp+8],1
	mov	[esp],640
	call	_fcreateimage
	mov	[ebp-64],eax
	sub	esp,12
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-56],0
	jmp	_55
_56
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1115684864
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1124073472
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	sub	esp,12
	mov	ebx,[ebp-68]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-56],1
_55
	cmp	[ebp-56],1200
	jle	_56
_7
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-72],1
	mov	[ebp-76],1134559232
	mov	[ebp-80],1131413504
	mov	[ebp-84],0
	mov	[ebp-88],0
	mov	[ebp-92],0
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[ebp-96],eax
	jmp	_58
_57
	sub	esp,4
	mov	eax,[ebp-96]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	cmp	eax,1
	jnz	_59
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	cmp	[ebp-4],0
	setge	al
	movzx	eax,al
	mov	[ebp-132],eax
	cmp	[ebp-100],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	and	eax,ebx
	and	eax,eax
	jz	_60
	mov	[ebp-56],0
	jmp	_61
_62
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_atlife]
	mov	eax,[eax]
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
	jz	_63
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,-1061158912
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atx]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	ebx,-1061158912
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aty]
	mov	[esi],ebx
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atxvel]
	mov	[esi],ebx
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atyvel]
	mov	[esi],ebx
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atlife]
	mov	[esi],ebx
	jmp	_9
_63
	add	[ebp-56],1
_61
	mov	ebx,[ebp-48]
	cmp	[ebp-56],ebx
	jle	_62
_9
_60
_59
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	cmp	eax,1
	jnz	_64
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-80],eax
_64
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_65
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1089470464
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
_65
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_66
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1089470464
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
_66
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-132],eax
	mov	[ebp-136],eax
	sub	esp,4
	mov	[esp],70
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-136]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_67
	call	_fend
_67
	mov	eax,[ebp-104]
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
	mov	[ebp-132],eax
	mov	[ebp-136],eax
	sub	esp,4
	mov	[esp],57
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-136]
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	and	ebx,eax
	cmp	[ebp-4],0
	setge	al
	movzx	eax,al
	and	ebx,eax
	cmp	[ebp-100],0
	setz	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_68
	mov	[ebp-56],0
	jmp	_69
_70
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_ablife]
	mov	eax,[eax]
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
	jz	_71
	sub	esp,8
	mov	[esp],1117782016
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-108],ebx
	mov	ebx,[ebp-76]
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abhit]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abxvel]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-108]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abyvel]
	mov	[esi],ebx
	mov	eax,[ebp-24]
	mov	ecx,[ebp-28]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ablife]
	mov	[ebx],eax
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-104],ebx
	jmp	_10
_71
	add	[ebp-56],1
_69
	mov	ebx,[ebp-24]
	cmp	[ebp-56],ebx
	jle	_70
_10
_68
	mov	eax,[ebp-104]
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
	and	eax,eax
	jz	_72
	mov	ebx,[ebp-104]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-104],ebx
_72
	mov	eax,[ebp-88]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1097859072
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_73
	mov	[ebp-88],1097859072
_73
	mov	eax,[ebp-92]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1097859072
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_74
	mov	[ebp-92],1097859072
_74
	mov	eax,[ebp-88]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1049624576
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_75
	mov	[ebp-88],-1049624576
_75
	mov	eax,[ebp-92]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1049624576
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_76
	mov	[ebp-92],-1049624576
_76
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	eax,[ebp-76]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_77
	mov	[ebp-76],1142947840
_77
	mov	eax,[ebp-76]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142947840
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_78
	mov	[ebp-76],0
_78
	mov	eax,[ebp-80]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_79
	mov	[ebp-80],1139802112
_79
	mov	eax,[ebp-80]
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
	jz	_80
	mov	[ebp-80],0
_80
	mov	[ebp-56],0
	jmp	_81
_82
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_ablife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_83
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abyvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abx]
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_84
	mov	ebx,1142947840
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
_84
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142947840
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_85
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
_85
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aby]
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_86
	mov	ebx,1139802112
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
_86
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aby]
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
	jz	_87
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
_87
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ablife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_ablife]
	mov	[esi],ebx
	mov	[ebp-60],0
	jmp	_88
_89
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aalife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_90
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,_aadist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,6
	add	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aadist]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_91
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aaxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aaxvel]
	mov	[esi],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aayvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abyvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aayvel]
	mov	[esi],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aasize]
	mov	[esi],ebx
	mov	[ebp-112],0
	jmp	_92
_93
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	[esp],1098907648
	mov	[esp+4],0
	call	_frnd
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-112]
	add	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	[esi],ebx
	add	[ebp-112],1
_92
	cmp	[ebp-112],5
	jle	_93
_13
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aasize]
	mov	eax,[eax]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_94
	mov	ebx,0
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aalife]
	mov	[esi],ebx
_94
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aasize]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_95
	mov	[ebp-112],-1
_96
	add	[ebp-112],1
	mov	eax,[ebp-112]
	shl	eax,byte 2
	add	eax,[_aalife]
	mov	eax,[eax]
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
	mov	[ebp-132],eax
	mov	ebx,[ebp-52]
	cmp	[ebp-112],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_96
_14
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	mov	esi,[ebp-112]
	shl	esi,byte 2
	add	esi,[_aax]
	mov	[esi],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aay]
	mov	ebx,[ebx]
	mov	esi,[ebp-112]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	[esi],ebx
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	mov	esi,[ebp-112]
	shl	esi,byte 2
	add	esi,[_aasize]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,[ebp-112]
	shl	esi,byte 2
	add	esi,[_aalife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1086324736
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-112]
	shl	ebx,byte 2
	add	ebx,[_aaxvel]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1086324736
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-112]
	shl	ebx,byte 2
	add	ebx,[_aayvel]
	mov	[ebx],eax
	mov	[ebp-116],0
	jmp	_97
_98
	mov	ebx,[ebp-112]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	[esp],1098907648
	mov	[esp+4],0
	call	_frnd
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-116]
	add	esi,[ebp-112]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	[esi],ebx
	add	[ebp-116],1
_97
	cmp	[ebp-116],5
	jle	_98
_15
_95
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abyvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
	mov	eax,[ebp-24]
	mov	ecx,[ebp-28]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ablife]
	mov	[ebx],eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abhit]
	mov	ebx,[ebx]
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
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abhit]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abyvel]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	mov	[ebp-132],eax
	sub	esp,8
	mov	[esp],1127481344
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abxvel]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1064514355
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abxvel]
	mov	[esi],ebx
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abxvel]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1064514355
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abyvel]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abyvel]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	mov	[ebp-132],eax
	sub	esp,8
	mov	[esp],1127481344
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-116],0
	jmp	_99
_100
	mov	eax,[ebp-116]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_101
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abxvel]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1063675494
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asxvel]
	mov	[esi],ebx
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abxvel]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1063675494
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asyvel]
	mov	[esi],ebx
	mov	ebx,1112014848
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_16
_101
	add	[ebp-116],1
_99
	mov	ebx,[ebp-40]
	cmp	[ebp-116],ebx
	jle	_100
_16
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abyvel]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	mov	[ebp-132],eax
	sub	esp,8
	mov	[esp],1127481344
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-132]
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-116],0
	jmp	_102
_103
	mov	eax,[ebp-116]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_104
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abxvel]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1063675494
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asxvel]
	mov	[esi],ebx
	sub	esp,12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abxvel]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,1063675494
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-132]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_asyvel]
	mov	[esi],ebx
	mov	ebx,1112014848
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_17
_104
	add	[ebp-116],1
_102
	mov	ebx,[ebp-40]
	cmp	[ebp-116],ebx
	jle	_103
_17
	mov	[ebp-116],0
	jmp	_105
_106
	mov	eax,[ebp-116]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_107
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_ahx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_ahy]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_ahsca]
	mov	[esi],ebx
	mov	ebx,1103626240
	mov	esi,[ebp-116]
	shl	esi,byte 2
	add	esi,[_ahlife]
	mov	[esi],ebx
	jmp	_18
_107
	add	[ebp-116],1
_105
	mov	ebx,[ebp-44]
	cmp	[ebp-116],ebx
	jle	_106
_18
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abhit]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_108
	jmp	_12
_108
_91
_90
	add	[ebp-60],1
_88
	mov	ebx,[ebp-52]
	cmp	[ebp-60],ebx
	jle	_89
_12
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abhit]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_109
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_ablife]
	mov	[esi],ebx
_109
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_abyvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-56]
	shl	edi,byte 2
	add	edi,[_aby]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_abx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_83
	add	[ebp-56],1
_81
	mov	ebx,[ebp-24]
	cmp	[ebp-56],ebx
	jle	_82
_11
	mov	[ebp-56],0
	jmp	_110
_111
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_112
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asyvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asxvel]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asyvel]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aslife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-56]
	shl	edi,byte 2
	add	edi,[_asyvel]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_asx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_112
	add	[ebp-56],1
_110
	mov	ebx,[ebp-40]
	cmp	[ebp-56],ebx
	jle	_111
_19
	mov	[ebp-56],0
	jmp	_113
_114
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_ahlife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_115
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ahsca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_ahsca]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ahlife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_ahlife]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ahsca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_ahy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ahsca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	edi,[ebp-56]
	shl	edi,byte 2
	add	edi,[_ahsca]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_ahsca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_ahx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	fsubrp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
_115
	add	[ebp-56],1
_113
	mov	ebx,[ebp-44]
	cmp	[ebp-56],ebx
	jle	_114
_20
	mov	[ebp-56],0
	jmp	_116
_117
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_atlife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_118
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_atx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atx]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aty]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atyvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aty]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_atxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atxvel]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_atyvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063675494
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atyvel]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_atlife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atlife]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_atxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_atx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_atyvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1090519040
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-56]
	shl	edi,byte 2
	add	edi,[_aty]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aty]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_atx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_118
	add	[ebp-56],1
_116
	mov	ebx,[ebp-48]
	cmp	[ebp-56],ebx
	jle	_117
_21
	mov	[ebp-124],0
	mov	[ebp-56],0
	jmp	_119
_120
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aalife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_121
	add	[ebp-124],1
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aaxvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aax]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aayvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	[esi],ebx
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aax]
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_122
	mov	ebx,1142947840
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aax]
	mov	[esi],ebx
_122
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142947840
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_123
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aax]
	mov	[esi],ebx
_123
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aay]
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_124
	mov	ebx,1139802112
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	[esi],ebx
_124
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aay]
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
	jz	_125
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	[esi],ebx
_125
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aaan]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aaanvel]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aaan]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	mov	[ebp-60],0
	jmp	_126
_127
	sub	esp,20
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	add	ebx,1
	imul	ebx,60
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-60]
	add	ebx,1
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aadist]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-60]
	add	esi,1
	imul	esi,60
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp-60]
	add	esi,1
	mov	edi,_aadist
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-60]
	imul	esi,60
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	imul	ebx,60
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,_aadist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aadist]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	add	[ebp-60],1
_126
	cmp	[ebp-60],4
	jle	_127
_23
	sub	esp,20
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,_aadist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aadist]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1133903872
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,5
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aaan]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1133903872
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,_aadist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,5
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aadist]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	mov	[ebp-120],0
	mov	[ebp-60],0
	jmp	_128
_129
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-120],ebx
	add	[ebp-60],1
_128
	cmp	[ebp-60],5
	jle	_129
_24
	mov	ebx,[ebp-120]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,6
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	[esi],ebx
_121
	add	[ebp-56],1
_119
	mov	ebx,[ebp-52]
	cmp	[ebp-56],ebx
	jle	_120
_22
	cmp	[ebp-124],0
	setz	al
	movzx	eax,al
	mov	[ebp-132],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_130
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_131
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],320
	call	_ftext
_130
	cmp	[ebp-100],0
	setz	al
	movzx	eax,al
	mov	[ebp-132],eax
	cmp	[ebp-128],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	and	eax,ebx
	and	eax,eax
	jz	_132
	mov	[ebp-56],0
	jmp	_133
_134
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aalife]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_135
	sub	esp,12
	mov	eax,[ebp-76]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,_aadist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,6
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aadist]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_136
	sub	[ebp-4],1
	mov	ebx,[ebp-8]
	mov	[ebp-100],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aaxvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-88]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aaxvel]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aayvel]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aayvel]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aasize]
	mov	[esi],ebx
	mov	[ebp-60],0
	jmp	_137
_138
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	[esp],1098907648
	mov	[esp+4],0
	call	_frnd
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	[esi],ebx
	add	[ebp-60],1
_137
	cmp	[ebp-60],5
	jle	_138
_26
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aasize]
	mov	eax,[eax]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_139
	mov	ebx,0
	mov	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_aalife]
	mov	[esi],ebx
_139
	mov	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_aasize]
	mov	eax,[eax]
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
	and	eax,eax
	jz	_140
	mov	[ebp-60],-1
_141
	add	[ebp-60],1
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aalife]
	mov	eax,[eax]
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
	mov	[ebp-132],eax
	mov	ebx,[ebp-52]
	cmp	[ebp-60],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	or	eax,ebx
	and	eax,eax
	jz	_141
_27
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aax]
	mov	ebx,[ebx]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aax]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aay]
	mov	ebx,[ebx]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aay]
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aasize]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aalife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1086324736
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aaxvel]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1086324736
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aayvel]
	mov	[ebx],eax
	mov	[ebp-112],0
	jmp	_142
_143
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_aasize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	[esp],1098907648
	mov	[esp+4],0
	call	_frnd
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aadist
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-112]
	add	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aadist]
	mov	[esi],ebx
	add	[ebp-112],1
_142
	cmp	[ebp-112],5
	jle	_143
_28
_140
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_144
_145
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_146
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_29
_146
	add	[ebp-60],1
_144
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_145
_29
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_147
_148
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_149
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_30
_149
	add	[ebp-60],1
_147
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_148
_30
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_150
_151
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_152
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_31
_152
	add	[ebp-60],1
_150
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_151
_31
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_153
_154
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_155
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_32
_155
	add	[ebp-60],1
_153
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_154
_32
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_156
_157
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_158
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_33
_158
	add	[ebp-60],1
_156
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_157
_33
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_159
_160
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_161
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_34
_161
	add	[ebp-60],1
_159
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_160
_34
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_162
_163
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_164
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_35
_164
	add	[ebp-60],1
_162
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_163
_35
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_165
_166
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_167
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_36
_167
	add	[ebp-60],1
_165
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_166
_36
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_168
_169
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_170
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_37
_170
	add	[ebp-60],1
_168
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_169
_37
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_171
_172
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_173
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_38
_173
	add	[ebp-60],1
_171
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_172
_38
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_174
_175
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_176
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_39
_176
	add	[ebp-60],1
_174
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_175
_39
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_177
_178
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_179
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_40
_179
	add	[ebp-60],1
_177
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_178
_40
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_180
_181
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_182
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_41
_182
	add	[ebp-60],1
_180
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_181
_41
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_183
_184
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_185
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_42
_185
	add	[ebp-60],1
_183
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_184
_42
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_186
_187
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_188
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_43
_188
	add	[ebp-60],1
_186
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_187
_43
	sub	esp,8
	mov	[esp],1163984896
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-120],eax
	mov	[ebp-60],0
	jmp	_189
_190
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_aslife]
	mov	eax,[eax]
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
	jz	_191
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asxvel]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_asyvel]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_aslife]
	mov	[esi],ebx
	jmp	_44
_191
	add	[ebp-60],1
_189
	mov	ebx,[ebp-40]
	cmp	[ebp-60],ebx
	jle	_190
_44
	mov	[ebp-60],0
	jmp	_192
_193
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_ahlife]
	mov	eax,[eax]
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
	jz	_194
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahy]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahsca]
	mov	[esi],ebx
	mov	ebx,1103626240
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahlife]
	mov	[esi],ebx
	jmp	_45
_194
	add	[ebp-60],1
_192
	mov	ebx,[ebp-44]
	cmp	[ebp-60],ebx
	jle	_193
_45
	mov	[ebp-60],0
	jmp	_195
_196
	mov	eax,[ebp-60]
	shl	eax,byte 2
	add	eax,[_ahlife]
	mov	eax,[eax]
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
	jz	_197
	mov	ebx,[ebp-76]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahx]
	mov	[esi],ebx
	mov	ebx,[ebp-80]
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahy]
	mov	[esi],ebx
	mov	ebx,1120403456
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahsca]
	mov	[esi],ebx
	mov	ebx,1103626240
	mov	esi,[ebp-60]
	shl	esi,byte 2
	add	esi,[_ahlife]
	mov	[esi],ebx
	jmp	_46
_197
	add	[ebp-60],1
_195
	mov	ebx,[ebp-44]
	cmp	[ebp-60],ebx
	jle	_196
_46
_136
_135
	add	[ebp-56],1
_133
	mov	ebx,[ebp-52]
	cmp	[ebp-56],ebx
	jle	_134
_25
_132
	cmp	[ebp-100],0
	setg	al
	movzx	eax,al
	mov	[ebp-132],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	and	eax,ebx
	and	eax,eax
	jz	_198
	sub	[ebp-100],1
	cmp	[ebp-100],0
	jnz	_199
	mov	[ebp-76],1134559232
	mov	[ebp-80],1131413504
	mov	[ebp-88],0
	mov	[ebp-92],0
	mov	[ebp-84],0
	mov	ebx,[ebp-12]
	mov	[ebp-128],ebx
_199
_198
	cmp	[ebp-128],0
	jle	_200
	sub	[ebp-128],1
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1095761920
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],26
	mov	[esp+16],0
	mov	[esp+8],26
	mov	eax,[ebp-76]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1095761920
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
_200
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	cmp	[ebp-4],0
	jl	_201
	sub	esp,32
	mov	eax,_202
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-132],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	mov	[esp+4],444
	mov	[esp],0
	call	_ftext
_201
	cmp	[ebp-4],0
	jge	_203
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_204
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],444
	mov	[esp],0
	call	_ftext
_203
	cmp	[ebp-4],0
	jle	_205
	mov	[ebp-56],0
	jmp	_206
_207
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	sub	esp,20
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	sub	esp,20
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,-1061158912
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,-1061158912
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	sub	esp,20
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,-1061158912
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,-1061158912
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1139441664
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	imul	ebx,22
	add	ebx,11
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	add	[ebp-56],1
_206
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-56],ebx
	jle	_207
_47
_205
	cmp	[ebp-4],0
	setge	al
	movzx	eax,al
	mov	[ebp-132],eax
	cmp	[ebp-100],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-132]
	and	eax,ebx
	and	eax,eax
	jz	_208
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	sub	esp,20
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	sub	esp,20
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,-1061158912
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,-1061158912
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
	sub	esp,20
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fsin
	mov	ebx,-1061158912
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fcos
	mov	esi,-1061158912
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	sub	esp,4
	mov	eax,[ebp-84]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fline
	mov	ebx,eax
_208
_58
	cmp	[ebp-72],1
	jz	_57
_8
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aax	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aaan	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aaanvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aaxvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aayvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aasize	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aalife	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aadist	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_abx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aby	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_abhit	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_abxvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_abyvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ablife	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asxvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asyvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aslife	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ahx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ahy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ahsca	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ahlife	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aty	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atxvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atyvel	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atlife	.dd	0
	.dd	2
	.dd	1
	.dd	0
_131	.db	"Game Over, Press Escape to Exit.",0
_202	.db	"Lives: ",0
_204	.db	"Lives: Dead",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

