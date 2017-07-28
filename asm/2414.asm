
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	sub	esp,12
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],300
	mov	[esp],400
	call	_fgraphics
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],1
	mov	[esp],200
	call	_fcreateimage
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-24],eax
	call	_fmillisecs
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-32],0
	jmp	_29
_30
	mov	[ebp-36],0
	jmp	_31
_32
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-40],eax
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-44],eax
	mov	ebx,[ebp-40]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-48],ebx
	mov	ebx,[ebp-40]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-52],ebx
	mov	ebx,[ebp-40]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-56],ebx
	mov	ebx,[ebp-44]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-60],ebx
	mov	ebx,[ebp-44]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-64],ebx
	mov	ebx,[ebp-44]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-68],ebx
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fsoftlight
	mov	[ebp-72],eax
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fsoftlight
	mov	[ebp-76],eax
	sub	esp,8
	mov	eax,[ebp-56]
	mov	[esp],eax
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	call	_fsoftlight
	mov	[ebp-80],eax
	mov	ebx,[ebp-72]
	shl	ebx,byte 16
	mov	esi,[ebp-76]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-80]
	mov	[ebp-84],ebx
	sub	esp,16
	mov	ebx,[ebp-84]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-36],1
_31
	cmp	[ebp-36],149
	jle	_32
_4
	add	[ebp-32],1
_29
	cmp	[ebp-32],199
	jle	_30
_3
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_funlockbuffer
	call	_fmillisecs
	sub	eax,[ebp-28]
	mov	[ebp-88],eax
	jmp	_34
_33
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],200
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	[esp+8],150
	mov	[esp+12],0
	mov	[esp+4],100
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,32
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_34
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_33
_5
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
_faverage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	shr	eax,byte 1
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fmultiply
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	imul	eax,[ebp+24]
	shr	eax,byte 8
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fscreen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,255
	sub	ebx,[ebp+20]
	mov	esi,255
	sub	esi,[ebp+24]
	imul	ebx,esi
	shr	ebx,byte 8
	mov	eax,255
	sub	eax,ebx
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdarken
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jge	_36
	mov	eax,[ebp+20]
	jmp	_9_leave
	jmp	_37
_36
	mov	eax,[ebp+24]
	jmp	_9_leave
_37
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_flighten
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_38
	mov	eax,[ebp+20]
	jmp	_10_leave
	jmp	_39
_38
	mov	eax,[ebp+24]
	jmp	_10_leave
_39
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
_fdifference
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	sub	eax,[ebp+24]
	mov	[esp],eax
	call	__bbAbs
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fnegation
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,255
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,255
	sub	ebx,[ebp+20]
	sub	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-4]
	sub	eax,ebx
	jmp	_12_leave
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
_fexclusion
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	mov	ebx,[ebp+20]
	imul	ebx,[ebp+24]
	shr	ebx,byte 7
	sub	eax,ebx
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_foverlay
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],128
	jge	_40
	mov	eax,[ebp+20]
	imul	eax,[ebp+24]
	shr	eax,byte 7
	jmp	_14_leave
	jmp	_41
_40
	mov	ebx,255
	sub	ebx,[ebp+20]
	mov	esi,255
	sub	esi,[ebp+24]
	imul	ebx,esi
	shr	ebx,byte 7
	mov	eax,255
	sub	eax,ebx
	jmp	_14_leave
_41
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fhardlight
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+24],128
	jge	_42
	mov	eax,[ebp+20]
	imul	eax,[ebp+24]
	shr	eax,byte 7
	jmp	_15_leave
	jmp	_43
_42
	mov	ebx,255
	sub	ebx,[ebp+24]
	mov	esi,255
	sub	esi,[ebp+20]
	imul	ebx,esi
	shr	ebx,byte 7
	mov	eax,255
	sub	eax,ebx
	jmp	_15_leave
_43
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsoftlight
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	imul	ebx,[ebp+24]
	shr	ebx,byte 8
	mov	[ebp-4],ebx
	mov	ebx,255
	sub	ebx,[ebp+20]
	mov	esi,255
	sub	esi,[ebp+24]
	imul	ebx,esi
	shr	ebx,byte 8
	mov	eax,255
	sub	eax,ebx
	sub	eax,[ebp-4]
	imul	eax,[ebp+20]
	shr	eax,byte 8
	add	eax,[ebp-4]
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcolordodge
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],255
	jnz	_44
	mov	eax,255
	jmp	_17_leave
	jmp	_45
_44
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 8
	mov	ecx,255
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],255
	jle	_46
	mov	eax,255
	jmp	_17_leave
	jmp	_47
_46
	mov	eax,[ebp-4]
	jmp	_17_leave
_47
_45
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finversecolordodge
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],255
	jnz	_48
	mov	eax,255
	jmp	_18_leave
	jmp	_49
_48
	sub	esp,4
	mov	eax,[ebp+24]
	shl	eax,byte 8
	mov	ecx,255
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],255
	jle	_50
	mov	eax,255
	jmp	_18_leave
	jmp	_51
_50
	mov	eax,[ebp-4]
	jmp	_18_leave
_51
_49
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsoftcolordodge
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	add	ebx,[ebp+24]
	cmp	ebx,256
	jge	_52
	cmp	[ebp+24],255
	jnz	_53
	mov	eax,255
	jmp	_19_leave
	jmp	_54
_53
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 7
	mov	ecx,255
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],255
	jle	_55
	mov	eax,255
	jmp	_19_leave
	jmp	_56
_55
	mov	eax,[ebp-4]
	jmp	_19_leave
_56
_54
	jmp	_57
_52
	sub	esp,4
	mov	eax,255
	sub	eax,[ebp+24]
	shl	eax,byte 7
	mov	ecx,[ebp+20]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jge	_58
	mov	eax,0
	jmp	_19_leave
	jmp	_59
_58
	mov	eax,[ebp-4]
	jmp	_19_leave
_59
_57
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcolorburn
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],0
	jnz	_60
	mov	eax,0
	jmp	_20_leave
	jmp	_61
_60
	sub	esp,4
	mov	eax,255
	sub	eax,[ebp+20]
	shl	eax,byte 8
	mov	ecx,[ebp+24]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jge	_62
	mov	eax,0
	jmp	_20_leave
	jmp	_63
_62
	mov	eax,[ebp-4]
	jmp	_20_leave
_63
_61
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finversecolorburn
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],0
	jnz	_64
	mov	eax,0
	jmp	_21_leave
	jmp	_65
_64
	sub	esp,4
	mov	eax,255
	sub	eax,[ebp+24]
	shl	eax,byte 8
	mov	ecx,[ebp+20]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jge	_66
	mov	eax,0
	jmp	_21_leave
	jmp	_67
_66
	mov	eax,[ebp-4]
	jmp	_21_leave
_67
_65
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsoftcolorburn
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	add	ebx,[ebp+24]
	cmp	ebx,256
	jge	_68
	cmp	[ebp+20],255
	jnz	_69
	mov	eax,255
	jmp	_22_leave
	jmp	_70
_69
	sub	esp,4
	mov	eax,[ebp+24]
	shl	eax,byte 7
	mov	ecx,255
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],255
	jle	_71
	mov	eax,255
	jmp	_22_leave
	jmp	_72
_71
	mov	eax,[ebp-4]
	jmp	_22_leave
_72
_70
	jmp	_73
_68
	sub	esp,4
	mov	eax,255
	sub	eax,[ebp+20]
	shl	eax,byte 7
	mov	ecx,[ebp+24]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jge	_74
	mov	eax,0
	jmp	_22_leave
	jmp	_75
_74
	mov	eax,[ebp-4]
	jmp	_22_leave
_75
_73
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_freflect
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],255
	jnz	_76
	mov	eax,255
	jmp	_23_leave
	jmp	_77
_76
	sub	esp,4
	mov	eax,[ebp+20]
	imul	eax,[ebp+20]
	mov	ecx,255
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],255
	jle	_78
	mov	eax,255
	jmp	_23_leave
	jmp	_79
_78
	mov	eax,[ebp-4]
	jmp	_23_leave
_79
_77
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fglow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],255
	jnz	_80
	mov	eax,255
	jmp	_24_leave
	jmp	_81
_80
	sub	esp,4
	mov	eax,[ebp+24]
	imul	eax,[ebp+24]
	mov	ecx,255
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],255
	jle	_82
	mov	eax,255
	jmp	_24_leave
	jmp	_83
_82
	mov	eax,[ebp-4]
	jmp	_24_leave
_83
_81
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_25	.db	"Image Blend Functions",0
_26	.db	"",0
_27	.db	"baseimage.jpg",0
_28	.db	"blendimage.jpg",0
_35	.db	"ms",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

