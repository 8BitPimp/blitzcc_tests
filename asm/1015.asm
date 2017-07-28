
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_8
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	[esp+24],4
	mov	[esp+28],35
	mov	[esp+20],480
	mov	[esp+16],640
	call	_fmousey
	mov	[esp+12],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+4],240
	mov	[esp],320
	call	_fdrawarrow
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_8
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawarrow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,4
	mov	eax,[ebp+20]
	sub	eax,[ebp+28]
	mov	[esp],eax
	call	__bbAbs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+24]
	sub	eax,[ebp+32]
	mov	[esp],eax
	call	__bbAbs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
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
	mov	[ebp-68],eax
	mov	ebx,[ebp-8]
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
	mov	eax,[ebp-68]
	or	eax,ebx
	and	eax,eax
	jz	_9
	mov	eax,[ebp-4]
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
	mov	[ebp-68],eax
	mov	ebx,[ebp-8]
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
	mov	eax,[ebp-68]
	and	eax,ebx
	and	eax,eax
	jz	_10
	mov	[ebp-12],0
	jmp	_11
_10
	mov	eax,[ebp-4]
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
	jz	_12
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	[ebp-64],0
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jge	_13
	mov	[ebp-20],1065353216
	jmp	_14
_13
	mov	[ebp-20],-1082130432
_14
	jmp	_15
_12
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jge	_16
	mov	[ebp-64],1065353216
	jmp	_17
_16
	mov	[ebp-64],-1082130432
_17
	mov	[ebp-20],0
_15
_11
	jmp	_18
_9
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jge	_20
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	jmp	_21
_20
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-64],esi
_21
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jge	_22
	mov	[ebp-20],1065353216
	jmp	_23
_22
	mov	[ebp-20],-1082130432
_23
	jmp	_24
_19
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jge	_25
	mov	[ebp-64],1065353216
	jmp	_26
_25
	mov	[ebp-64],-1082130432
_26
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jge	_27
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	jmp	_28
_27
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-20],esi
_28
_24
_18
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp+48]
	cmp	[ebp-12],ebx
	jle	_29
	mov	[ebp-32],0
	jmp	_30
_31
	sub	esp,20
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	shr	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+44]
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	edi,[ebp+44]
	mov	[esp+8],edi
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp+44]
	shr	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-64]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-28]
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
	mov	[ebp-28],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp+44]
	shr	esi,byte 1
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_32
	jmp	_5
_32
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+44]
	shr	ebx,byte 1
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	jmp	_5
_33
	mov	ebx,[ebp+40]
	mov	esi,[ebp+44]
	shr	esi,byte 1
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_34
	jmp	_5
_34
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+44]
	shr	ebx,byte 1
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_35
	jmp	_5
_35
	mov	ebx,[ebp-32]
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
	mov	[ebp-32],ebx
_30
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	sub	ebx,[ebp+48]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_31
_5
_29
	sub	esp,8
	mov	eax,[ebp+32]
	sub	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+48]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	sub	esp,4
	mov	eax,[ebp-36]
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
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+48]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	sub	esp,4
	mov	eax,[ebp-36]
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
	call	_fsin
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+48]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	sub	esp,4
	mov	eax,[ebp-36]
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
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+48]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	sub	esp,4
	mov	eax,[ebp-36]
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
	call	_fsin
	mov	esi,[ebp+48]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	sub	esp,32
	mov	ebx,[ebp+36]
	mov	[esp+24],ebx
	mov	esi,[ebp+40]
	mov	[esp+28],esi
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fdrawtriangle
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fdrawtriangle
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
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jg	_36
	mov	ebx,[ebp+40]
	cmp	[ebp+32],ebx
	jg	_37
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+36]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-24],ebx
	jmp	_38
_37
	mov	ebx,[ebp+40]
	cmp	[ebp+24],ebx
	jg	_39
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+36]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-24],ebx
	jmp	_40
_39
	mov	ebx,[ebp+36]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-24],ebx
_40
_38
	jmp	_41
_36
	mov	ebx,[ebp+40]
	cmp	[ebp+32],ebx
	jg	_42
	mov	ebx,[ebp+40]
	cmp	[ebp+24],ebx
	jg	_43
	mov	ebx,[ebp+28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+36]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-24],ebx
	jmp	_44
_43
	mov	ebx,[ebp+28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+36]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-24],ebx
_44
	jmp	_45
_42
	mov	ebx,[ebp+36]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-24],ebx
_45
_41
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-4]
	cmp	ebx,0
	jnz	_46
	mov	[ebp-28],0
	jmp	_47
_46
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-8]
	cmp	ebx,0
	jnz	_48
	mov	[ebp-28],0
	jmp	_49
_48
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	sub	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_49
_47
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-44],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	cmp	[ebp-44],0
	jge	_50
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	__bbFAbs
	fmulp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-36],esi
	mov	[ebp-44],0
_50
	mov	eax,[ebp-48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+48]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_51
	mov	ebx,[ebp+48]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
_51
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	jmp	_52
_53
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp+44]
	cmp	[ebp-52],ebx
	jle	_54
	mov	ebx,[ebp+44]
	mov	[ebp-52],ebx
	jmp	_55
_54
	cmp	[ebp-52],0
	jge	_56
	mov	[ebp-52],0
_56
_55
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_57
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-4]
	cmp	ebx,0
	jnz	_58
	mov	[ebp-32],0
	jmp	_59
_58
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-8]
	cmp	ebx,0
	jnz	_60
	mov	[ebp-32],0
	jmp	_61
_60
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	sub	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
_61
_59
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp+44]
	cmp	[ebp-56],ebx
	jle	_62
	mov	ebx,[ebp+44]
	mov	[ebp-56],ebx
	jmp	_63
_62
	cmp	[ebp-56],0
	jge	_64
	mov	[ebp-56],0
_64
_63
	jmp	_65
_57
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-12]
	cmp	ebx,0
	jnz	_66
	mov	[ebp-32],0
	jmp	_67
_66
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-16]
	cmp	ebx,0
	jnz	_68
	mov	[ebp-32],0
	jmp	_69
_68
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	sub	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
_69
_67
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp+44]
	cmp	[ebp-56],ebx
	jle	_70
	mov	ebx,[ebp+44]
	mov	[ebp-56],ebx
	jmp	_71
_70
	cmp	[ebp-56],0
	jge	_72
	mov	[ebp-56],0
_72
_71
_65
	mov	ebx,[ebp-56]
	cmp	[ebp-52],ebx
	jz	_73
	sub	esp,16
	mov	ebx,[ebp-56]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fline
_73
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
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
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
_52
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_53
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
