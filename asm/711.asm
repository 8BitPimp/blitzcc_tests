
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,4
	mov	eax,_axrotations
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_axrotations
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axrotations
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_axrottable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_axrottable
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axrottable
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayrotations
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_ayrotations
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayrotations
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayrottable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_ayrottable
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayrottable
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_achks
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_achks
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achks
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_arotatex
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatex
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatey
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_arotatey
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatey
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vscreenwidth],800
	mov	[_vscreenheight],600
	mov	ebx,[_vscreenwidth]
	sar	ebx,byte 1
	mov	[_vmiddlex],ebx
	mov	ebx,[_vscreenheight]
	sar	ebx,byte 1
	mov	[_vmiddley],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vscreenheight]
	mov	[esp+4],esi
	mov	eax,[_vscreenwidth]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,8
	mov	[esp],1028443341
	mov	[esp+4],1028443341
	call	_finitializerotations
	jmp	_27
_26
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	add	eax,0
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-8]
	add	eax,90
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	add	eax,180
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],10
	call	_frand
	cmp	eax,2
	jge	_28
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_28
	add	[ebp-8],4
	cmp	[ebp-8],360
	jl	_29
	sub	[ebp-8],360
_29
	sub	esp,4
	mov	[esp],15
	call	_fkeydown
	cmp	eax,0
	jnz	_30
	sub	esp,20
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vmiddlex]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vmiddley]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vmiddley]
	mov	[esp+4],esi
	mov	eax,[_vmiddlex]
	mov	[esp],eax
	call	_fline
_30
	jmp	_32
_31
	sub	esp,4
	mov	[esp],250
	call	_fdelay
_32
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jnz	_31
_4
	call	_frotate
	sub	esp,32
	call	_ffrontbuffer
	mov	[esp+24],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+28],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	ebx,[_vscreenheight]
	mov	[esp+12],ebx
	mov	esi,[_vscreenwidth]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	sub	esp,4
	mov	[esp],1
	call	_fvwait
_27
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_26
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
_frotate
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
	mov	ebx,[_vstatex]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axrottable]
	mov	ebx,[ebx]
	mov	esi,[_vstatex]
	shl	esi,byte 2
	add	esi,[_axrottable]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[_vrx],ebx
	mov	ebx,[_vstatey]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ayrottable]
	mov	ebx,[ebx]
	mov	esi,[_vstatey]
	shl	esi,byte 2
	add	esi,[_ayrottable]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[_vry],ebx
	mov	[ebp-4],0
	jmp	_33
_34
	cmp	[ebp-4],0
	jz	_35
	mov	ebx,[_vmiddlex]
	sub	ebx,1
	mov	esi,[_vstatex]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_axrottable]
	mov	esi,[esi]
	sub	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axrotations]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatex]
	mov	[esi],ebx
	jmp	_36
_35
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatex]
	mov	[esi],ebx
_36
	add	[ebp-4],1
_33
	mov	ebx,[_vrx]
	cmp	[ebp-4],ebx
	jle	_34
_6
	mov	[ebp-4],0
	jmp	_37
_38
	mov	ebx,[_vrx]
	cmp	[ebp-4],ebx
	jnz	_39
	mov	ebx,[_vscreenwidth]
	sub	ebx,1
	mov	esi,[ebp-4]
	add	esi,[_vrx]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_arotatex]
	mov	[esi],ebx
	jmp	_40
_39
	mov	ebx,[_vstatex]
	shl	ebx,byte 2
	add	ebx,[_axrottable]
	mov	ebx,[ebx]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axrotations]
	mov	ebx,[ebx]
	add	ebx,[_vmiddlex]
	mov	esi,[ebp-4]
	add	esi,[_vrx]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_arotatex]
	mov	[esi],ebx
_40
	add	[ebp-4],1
_37
	mov	ebx,[_vrx]
	cmp	[ebp-4],ebx
	jle	_38
_7
	mov	[ebp-8],0
	jmp	_41
_42
	cmp	[ebp-8],0
	jz	_43
	mov	ebx,[_vmiddley]
	sub	ebx,1
	mov	esi,[_vstatey]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ayrottable]
	mov	esi,[esi]
	sub	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ayrotations]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_arotatey]
	mov	[esi],ebx
	jmp	_44
_43
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_arotatey]
	mov	[esi],ebx
_44
	add	[ebp-8],1
_41
	mov	ebx,[_vry]
	cmp	[ebp-8],ebx
	jle	_42
_8
	mov	[ebp-8],0
	jmp	_45
_46
	mov	ebx,[_vry]
	cmp	[ebp-8],ebx
	jnz	_47
	mov	ebx,[_vscreenheight]
	sub	ebx,1
	mov	esi,[ebp-8]
	add	esi,[_vry]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_arotatey]
	mov	[esi],ebx
	jmp	_48
_47
	mov	ebx,[_vstatey]
	shl	ebx,byte 2
	add	ebx,[_ayrottable]
	mov	ebx,[ebx]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ayrotations]
	mov	ebx,[ebx]
	add	ebx,[_vmiddley]
	mov	esi,[ebp-8]
	add	esi,[_vry]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_arotatey]
	mov	[esi],ebx
_48
	add	[ebp-8],1
_45
	mov	ebx,[_vry]
	cmp	[ebp-8],ebx
	jle	_46
_9
	mov	ebx,[_vry]
	cmp	[_vrx],ebx
	jle	_49
	mov	ebx,[_vrx]
	mov	[ebp-4],ebx
	jmp	_50
_49
	mov	ebx,[_vry]
	mov	[ebp-4],ebx
_50
	mov	[ebp-12],0
	jmp	_51
_52
	mov	[ebp-16],0
	jmp	_53
_54
	mov	ebx,[_vry]
	cmp	[_vrx],ebx
	jle	_55
	mov	ebx,[_vry]
	sub	ebx,[_vrx]
	mov	[ebp-8],ebx
	jmp	_56
_55
	mov	[ebp-8],0
_56
	mov	eax,[ebp-12]
	add	eax,[ebp-8]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vry]
	add	ebx,1
	shl	ebx,byte 1
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vrx]
	add	ebx,1
	shl	ebx,byte 1
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_57
	mov	eax,[ebp-12]
	add	eax,[ebp-8]
	add	eax,[ebp-16]
	mov	ebx,[_vry]
	add	ebx,[_vrx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-12]
	add	ebx,[ebp-8]
	sub	ebx,[ebp-16]
	mov	esi,[_vry]
	sub	esi,[_vrx]
	cmp	ebx,esi
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_58
	sub	esp,8
	mov	eax,[_vrx]
	shl	eax,byte 1
	add	eax,1
	sub	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpalarotate
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[_vry]
	shl	ebx,byte 1
	add	ebx,1
	sub	ebx,[ebp-12]
	sub	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpalarotate
_58
_57
	mov	ebx,[_vrx]
	cmp	[_vry],ebx
	jle	_59
	mov	ebx,[_vrx]
	sub	ebx,[_vry]
	mov	[ebp-8],ebx
	jmp	_60
_59
	mov	[ebp-8],0
_60
	mov	eax,[ebp-12]
	add	eax,[ebp-8]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vry]
	add	ebx,1
	shl	ebx,byte 1
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vrx]
	add	ebx,1
	shl	ebx,byte 1
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_61
	mov	eax,[ebp-12]
	add	eax,[ebp-8]
	add	eax,[ebp-16]
	mov	ebx,[_vry]
	add	ebx,[_vrx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-12]
	sub	ebx,[ebp-8]
	mov	esi,[_vry]
	sub	esi,[_vrx]
	cmp	ebx,esi
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_62
	sub	esp,8
	mov	eax,[ebp-12]
	add	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fpalarotate
	sub	esp,8
	mov	eax,[_vrx]
	shl	eax,byte 1
	add	eax,1
	sub	eax,[ebp-12]
	sub	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[_vry]
	shl	ebx,byte 1
	add	ebx,1
	sub	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fpalarotate
_62
_61
	add	[ebp-16],1
_53
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 1
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_54
_11
	add	[ebp-12],1
_51
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 1
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_52
_10
	add	[_vstatex],1
	mov	ebx,[_vrotsizex]
	cmp	[_vstatex],ebx
	jnz	_63
	mov	[_vstatex],0
_63
	add	[_vstatey],1
	mov	ebx,[_vrotsizey]
	cmp	[_vstatey],ebx
	jnz	_64
	mov	[_vstatey],0
_64
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpalarotate
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
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_arotatex]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_arotatey]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_arotatex]
	mov	ebx,[ebx]
	add	ebx,2
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_arotatey]
	mov	ebx,[ebx]
	add	ebx,2
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_arotatex]
	mov	ebx,[ebx]
	mov	esi,[ebp+24]
	sub	esi,[_vry]
	sub	ebx,esi
	add	ebx,[ebp+20]
	sub	ebx,[_vrx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_arotatey]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	sub	esi,[_vrx]
	add	ebx,esi
	add	ebx,[ebp+24]
	sub	ebx,[_vry]
	mov	[ebp-24],ebx
	cmp	[ebp-20],0
	jge	_65
	mov	ebx,[ebp-20]
	sub	[ebp-4],ebx
	mov	[ebp-20],0
_65
	cmp	[ebp-24],0
	jge	_66
	mov	ebx,[ebp-24]
	sub	[ebp-8],ebx
	mov	[ebp-24],0
_66
	mov	ebx,[ebp-20]
	add	ebx,[ebp-12]
	sub	ebx,[ebp-4]
	cmp	ebx,[_vscreenwidth]
	jle	_67
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-20]
	add	ebx,[_vscreenwidth]
	mov	[ebp-12],ebx
_67
	mov	ebx,[ebp-24]
	add	ebx,[ebp-16]
	sub	ebx,[ebp-8]
	cmp	ebx,[_vscreenheight]
	jle	_68
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-24]
	add	ebx,[_vscreenheight]
	mov	[ebp-16],ebx
_68
	mov	eax,[ebp-12]
	cmp	[ebp-4],eax
	setl	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-16]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_69
	sub	esp,32
	call	_fbackbuffer
	mov	[esp+24],eax
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_ffrontbuffer
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+28],ebx
	mov	ebx,[ebp-24]
	mov	[esp+20],ebx
	mov	esi,[ebp-20]
	mov	[esp+16],esi
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcopyrect
_69
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finitializerotations
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],0
	mov	[ebp-32],0
	mov	[ebp-36],0
	mov	[ebp-40],0
	mov	[ebp-44],0
	mov	[ebp-48],0
	mov	[ebp-52],0
	mov	[ebp-56],0
	mov	[ebp-60],0
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vrotsizex],ebx
	mov	ebx,[_vmiddlex]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[_vrotsizex]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vrotsizey],ebx
	mov	ebx,[_vmiddley]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[_vrotsizey]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	sub	esp,4
	mov	eax,_axrotations
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmiddlex]
	add	ebx,2
	mov	esi,_axrotations
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axrotations
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_axrottable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vrotsizex]
	add	ebx,1
	mov	esi,_axrottable
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axrottable
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayrotations
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmiddley]
	add	ebx,2
	mov	esi,_ayrotations
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayrotations
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayrottable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vrotsizey]
	add	ebx,1
	mov	esi,_ayrottable
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayrottable
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,[_vmiddlex]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[_vmiddlex]
	cmp	[_vmiddley],ebx
	jle	_70
	mov	ebx,[_vmiddley]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
_70
	sub	esp,4
	mov	eax,_achks
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_achks
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achks
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-36],0
	mov	[ebp-12],0
	mov	[ebp-52],0
	mov	[ebp-20],0
	mov	[ebp-4],0
	jmp	_71
_72
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_achks]
	mov	[esi],ebx
	add	[ebp-4],1
_71
	mov	ebx,[_vmiddlex]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_72
_14
	mov	[ebp-4],0
	jmp	_73
_74
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axrottable]
	mov	[esi],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	sub	ebx,[ebp-20]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	add	[ebp-20],ebx
	mov	ebx,[_vmiddlex]
	cmp	[ebp-20],ebx
	jle	_75
	mov	ebx,[ebp-20]
	sub	ebx,[_vmiddlex]
	sub	[ebp-16],ebx
	mov	ebx,[_vmiddlex]
	mov	[ebp-20],ebx
_75
	mov	[ebp-8],0
	jmp	_76
_77
	mov	[ebp-40],0
	mov	[ebp-24],0
	jmp	_78
_79
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_80
	mov	[ebp-44],0
	mov	[ebp-48],1065353216
	mov	[ebp-32],0
	jmp	_82
_81
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-32]
	cmp	ebx,0
	jl	_83
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_84
	mov	ebx,[ebp-44]
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
	mov	[ebp-44],ebx
_84
	jmp	_85
_83
	mov	ebx,[ebp-32]
	sub	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_86
	mov	ebx,[ebp-44]
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
	mov	[ebp-44],ebx
_86
_85
	mov	ebx,[ebp-24]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_87
	mov	ebx,[ebp-44]
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
	mov	[ebp-44],ebx
_87
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	add	[ebp-32],1
_82
	mov	ebx,1094713344
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	faddp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	ebx,[ebp-24]
	add	ebx,[ebp-32]
	cmp	ebx,[_vmiddlex]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	ebx,eax
	and	ebx,ebx
	jnz	_81
_18
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_88
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-40],ebx
_88
_80
	add	[ebp-24],1
_78
	mov	ebx,[_vmiddlex]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_79
_17
	mov	ebx,0
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_achks]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-32],ebx
	jmp	_90
_89
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axrottable]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jz	_91
	mov	ebx,[ebp-32]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axrotations]
	mov	ebx,[ebx]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_axrotations]
	mov	[esi],ebx
_91
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_axrotations]
	mov	eax,[eax]
	cmp	[ebp-28],eax
	setg	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axrottable]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_92
	mov	ebx,[ebp-28]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_axrotations]
	mov	[esi],ebx
	add	[ebp-12],1
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axrottable]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
_92
	sub	[ebp-32],1
_90
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axrottable]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jge	_89
_19
	add	[ebp-8],1
_76
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_77
_16
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axrottable]
	mov	esi,[esi]
	sub	ebx,esi
	cmp	[ebp-36],ebx
	jge	_93
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axrottable]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-36],ebx
_93
	add	[ebp-4],1
_73
	mov	ebx,[_vrotsizex]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_74
_15
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axrottable]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-36]
	add	ebx,2
	shl	ebx,byte 1
	mov	esi,_arotatex
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatex
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-36],0
	mov	[ebp-12],0
	mov	[ebp-52],0
	mov	[ebp-20],0
	mov	[ebp-4],0
	jmp	_94
_95
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_achks]
	mov	[esi],ebx
	add	[ebp-4],1
_94
	mov	ebx,[_vmiddley]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_95
_20
	mov	[ebp-4],0
	jmp	_96
_97
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayrottable]
	mov	[esi],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	add	[ebp-20],ebx
	mov	ebx,[_vmiddley]
	cmp	[ebp-20],ebx
	jle	_98
	mov	ebx,[ebp-20]
	sub	ebx,[_vmiddley]
	sub	[ebp-16],ebx
	mov	ebx,[_vmiddley]
	mov	[ebp-20],ebx
_98
	mov	[ebp-8],0
	jmp	_99
_100
	mov	[ebp-40],0
	mov	[ebp-24],0
	jmp	_101
_102
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_103
	mov	[ebp-44],0
	mov	[ebp-48],1065353216
	mov	[ebp-32],0
	jmp	_105
_104
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-32]
	cmp	ebx,0
	jl	_106
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_107
	mov	ebx,[ebp-44]
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
	mov	[ebp-44],ebx
_107
	jmp	_108
_106
	mov	ebx,[ebp-32]
	sub	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_109
	mov	ebx,[ebp-44]
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
	mov	[ebp-44],ebx
_109
_108
	mov	ebx,[ebp-24]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_achks]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_110
	mov	ebx,[ebp-44]
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
	mov	[ebp-44],ebx
_110
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	add	[ebp-32],1
_105
	mov	ebx,1094713344
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	faddp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	ebx,[ebp-24]
	add	ebx,[ebp-32]
	cmp	ebx,[_vmiddley]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	ebx,eax
	and	ebx,ebx
	jnz	_104
_24
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_111
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-40],ebx
_111
_103
	add	[ebp-24],1
_101
	mov	ebx,[_vmiddley]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_102
_23
	mov	ebx,0
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_achks]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-32],ebx
	jmp	_113
_112
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayrottable]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jz	_114
	mov	ebx,[ebp-32]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ayrotations]
	mov	ebx,[ebx]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ayrotations]
	mov	[esi],ebx
_114
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_ayrotations]
	mov	eax,[eax]
	cmp	[ebp-28],eax
	setg	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayrottable]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_115
	mov	ebx,[ebp-28]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ayrotations]
	mov	[esi],ebx
	add	[ebp-12],1
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayrottable]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
_115
	sub	[ebp-32],1
_113
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayrottable]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jge	_112
_25
	add	[ebp-8],1
_99
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_100
_22
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-60]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayrottable]
	mov	esi,[esi]
	sub	ebx,esi
	cmp	[ebp-36],ebx
	jge	_116
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayrottable]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-36],ebx
_116
	add	[ebp-4],1
_96
	mov	ebx,[_vrotsizey]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_97
_21
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayrottable]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatey
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-36]
	add	ebx,2
	shl	ebx,byte 1
	mov	esi,_arotatey
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatey
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_achks
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_achks
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achks
	mov	[esp],eax
	call	__bbDimArray
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vscreenwidth	.dd	0
	.align	4
_vscreenheight	.dd	0
	.align	4
_vmiddlex	.dd	0
	.align	4
_vmiddley	.dd	0
	.align	4
_vstatex	.dd	0
	.align	4
_vstatey	.dd	0
	.align	4
_vrotsizex	.dd	0
	.align	4
_vrotsizey	.dd	0
	.align	4
_vrx	.dd	0
	.align	4
_vry	.dd	0
	.align	4
_axrotations	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_axrottable	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ayrotations	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ayrottable	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_achks	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatex	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatey	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

