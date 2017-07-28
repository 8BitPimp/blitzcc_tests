
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_axp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_axp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_ayp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_axc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_axc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_ayc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_agamma
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_agamma
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agamma
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adelta
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_adelta
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adelta
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_ad
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_21
_22
	call	_fgraphicswidth
	sar	eax,byte 3
	add	eax,1
	imul	eax,[ebp-4]
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-32]
	sar	ebx,byte 3
	add	ebx,1
	sar	ebx,byte 1
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	[ebx],eax
	call	_fgraphicsheight
	sar	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	[ebx],eax
	add	[ebp-4],1
_21
	cmp	[ebp-4],7
	jle	_22
_3
	call	_finitcubics
	call	_fcalccubics
	call	_fcls
	call	_fdrawspline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-8],0
	jmp	_24
_23
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-32],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_25
	call	_fmousex
	mov	[ebp-12],eax
	call	_fmousey
	mov	[ebp-16],eax
	mov	[ebp-4],0
	jmp	_26
_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	eax,[ebp-20]
	sub	eax,3
	cmp	[ebp-12],eax
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-20]
	add	ebx,3
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	sub	ebx,3
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	add	ebx,3
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_28
	mov	ebx,[ebp-4]
	mov	[ebp-28],ebx
	mov	[ebp-8],1
	jmp	_5
_28
	add	[ebp-4],1
_26
	cmp	[ebp-4],7
	jle	_27
_5
_25
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_29
	mov	[ebp-8],0
_29
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_30
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	[ebx],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	[ebx],eax
	call	_fcalccubics
	call	_fcls
	call	_fdrawspline
	sub	esp,4
	mov	[esp],1
	call	_fflip
_30
_24
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_23
_4
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
_fdrawspline
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
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_axc]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcubiceval
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ayc]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcubiceval
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-12],0
	jmp	_33
_34
	mov	[ebp-16],1
	jmp	_35
_36
	mov	ebx,[ebp-4]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1103101952
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_axc]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fcubiceval
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_ayc]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fcubiceval
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,16
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	add	[ebp-16],1
_35
	cmp	[ebp-16],24
	jle	_36
_8
	add	[ebp-12],1
_33
	cmp	[ebp-12],6
	jle	_34
_7
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-12],0
	jmp	_37
_38
	sub	esp,20
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],6
	mov	[esp+16],1
	mov	[esp+8],6
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_axp]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-12],1
_37
	cmp	[ebp-12],7
	jle	_38
_9
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
_fcalccubics
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,1056964608
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_agamma]
	mov	[esi],ebx
	mov	[ebp-4],1
	jmp	_39
_40
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_agamma]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	[ebx],esi
	add	[ebp-4],1
_39
	cmp	[ebp-4],6
	jle	_40
_11
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_agamma]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	[ebx],esi
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	[ebx],esi
	mov	[ebp-4],1
	jmp	_41
_42
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_axp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	[ebx],esi
	add	[ebp-4],1
_41
	cmp	[ebp-4],6
	jle	_42
_12
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_axp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	[ebx],esi
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	ebx,[ebx]
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_ad]
	mov	[esi],ebx
	mov	[ebp-4],6
	jmp	_43
_44
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_adelta]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	[ebx],esi
	add	[ebp-4],-1
_43
	cmp	[ebp-4],0
	jge	_44
_13
	mov	[ebp-4],0
	jmp	_45
_46
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axc]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axc]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	shl	edi,byte 2
	add	edi,[_ad]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axc]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_axp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axc]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],esi
	add	[ebp-4],1
_45
	cmp	[ebp-4],6
	jle	_46
_14
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	[ebx],esi
	mov	[ebp-4],1
	jmp	_47
_48
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	[ebx],esi
	add	[ebp-4],1
_47
	cmp	[ebp-4],6
	jle	_48
_15
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	[ebx],esi
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_adelta]
	mov	ebx,[ebx]
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_ad]
	mov	[esi],ebx
	mov	[ebp-4],6
	jmp	_49
_50
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agamma]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_adelta]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	[ebx],esi
	add	[ebp-4],-1
_49
	cmp	[ebp-4],0
	jge	_50
_16
	mov	[ebp-4],0
	jmp	_51
_52
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayc]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayc]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp-4]
	shl	edi,byte 2
	add	edi,[_ad]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayc]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayc]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],esi
	add	[ebp-4],1
_51
	cmp	[ebp-4],6
	jle	_52
_17
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcubiceval
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
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	jmp	_18_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finitcubics
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_53
_54
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_axc]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tcubic
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ayc]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tcubic
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_53
	cmp	[ebp-4],7
	jle	_54
_20
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_axp	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ayp	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_axc	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_ayc	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_agamma	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_adelta	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ad	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_tcubic	.dd	5
_31	.dd	0
	.dd	_31
	.dd	_31
	.dd	0
	.dd	-1
_32	.dd	0
	.dd	_32
	.dd	_32
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

