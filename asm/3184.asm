
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
	mov	eax,_amuzzlevelocity
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_amuzzlevelocity
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amuzzlevelocity
	mov	[esp],eax
	call	__bbDimArray
	call	_fexample2d
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcalculatemuzzlevelocity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,36
	mov	eax,[ebp+60]
	mov	[esp],eax
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	call	_fgetvd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+64]
	mov	[esp],ebx
	mov	esi,[ebp+40]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fgetvd
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp+68]
	mov	[esp+24],esi
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+56]
	mov	[esp],ebx
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fgetvd
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	sub	esp,8
	mov	eax,[ebp+52]
	mov	[esp],eax
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	call	_fgetd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+48]
	mov	[esp],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fgetd
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	call	_fgetd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fgett
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
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
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_10
	mov	eax,0
	jmp	_3_leave
_10
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	mov	[esp+16],esi
	mov	esi,[ebp+56]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fgetvm
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_amuzzlevelocity]
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	mov	[esp+16],esi
	mov	esi,[ebp+60]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+48]
	mov	[esp],eax
	call	_fgetvm
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_amuzzlevelocity]
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,[ebp+40]
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	mov	[esp+16],esi
	mov	esi,[ebp+64]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+52]
	mov	[esp],eax
	call	_fgetvm
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_amuzzlevelocity]
	mov	[ebx],eax
	mov	ebx,[ebp-4]
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_amuzzlevelocity]
	mov	[esi],ebx
	mov	eax,1
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 52
	.align	16
_fgetvm
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+36]
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
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	jmp	_4_leave
_11
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fgetd
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	jmp	_5_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetvd
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	jmp	_6_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgett
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
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
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_12
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-20]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-12]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
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
	jz	_13
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_13
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	faddp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	fsubp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	fsubrp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_14
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_15
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_16
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
	and	eax,eax
	jz	_17
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_17
_16
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
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
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_18
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fexample2d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],512
	mov	[esp],512
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-56],1082130432
	mov	[ebp-76],0
	mov	[ebp-80],1092616192
	mov	[ebp-84],0
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1132462080
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1132462080
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1132462080
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1124073472
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1132462080
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-88],eax
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-36],0
	mov	[ebp-40],0
	sub	esp,8
	mov	[esp],256
	mov	[esp+4],256
	call	_fmovemouse
_19
	call	_fcls
	mov	ebx,[ebp-4]
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
	mov	[ebp-4],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	cmp	[ebp-84],1
	jnz	_20
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-88]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
_20
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_21
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-88]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,4
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_22
	mov	[ebp-84],1
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1008981770
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	call	_fmousey
	sub	eax,[ebp-88]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1008981770
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
_22
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
_23
	mov	eax,[ebp-60]
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
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
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
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	or	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1140817920
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
	mov	eax,[ebp-92]
	or	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1140817920
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
	mov	eax,[ebp-92]
	or	eax,ebx
	and	eax,eax
	jz	_24
	mov	[ebp-76],0
_24
	cmp	[ebp-76],0
	jle	_25
	sub	[ebp-76],1
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-72]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	eax,[ebp-60]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	jmp	_26
_25
	sub	esp,52
	mov	[esp+44],0
	mov	esi,[ebp-80]
	mov	[esp+48],esi
	mov	esi,[ebp-40]
	mov	[esp+40],esi
	mov	ebx,[ebp-36]
	mov	[esp+36],ebx
	mov	[esp+32],0
	mov	ebx,[ebp-88]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+28],ebx
	mov	esi,[ebp-28]
	mov	[esp+24],esi
	mov	[esp+20],0
	mov	esi,[ebp-16]
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcalculatemuzzlevelocity
	and	eax,eax
	jz	_27
	mov	ebx,[ebp-4]
	mov	[ebp-60],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-64],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_amuzzlevelocity]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_amuzzlevelocity]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_amuzzlevelocity]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
_27
_26
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-88]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_19
_9
	call	_fendgraphics
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_amuzzlevelocity	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
