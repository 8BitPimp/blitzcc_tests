
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_asudoku
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_asudoku
	add	esi,12
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_asudoku
	add	esi,16
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_asudoku
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asudoku
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asolution
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_asolution
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asolution
	mov	[esp],eax
	call	__bbDimArray
	jmp	_33
_32
	call	_fcls
	call	_fmillisecs
	mov	[ebp-4],eax
	call	_fsudoku_generate
	mov	[ebp-8],eax
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-4],eax
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
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-20],0
	jmp	_34
_35
	mov	[ebp-24],0
	jmp	_36
_37
	sub	esp,24
	mov	eax,_asudoku
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	ebx,_asudoku
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_asudoku]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,20
	imul	ebx,[ebp-20]
	add	ebx,20
	mov	[esp+4],ebx
	mov	eax,20
	imul	eax,[ebp-24]
	add	eax,20
	mov	[esp],eax
	call	_ftext
	add	[ebp-24],1
_36
	cmp	[ebp-24],8
	jle	_37
_5
	add	[ebp-20],1
_34
	cmp	[ebp-20],8
	jle	_35
_4
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],80
	mov	[esp],80
	call	_fcolor
	mov	[ebp-20],0
	jmp	_38
_39
	sub	esp,16
	mov	ebx,20
	imul	ebx,[ebp-20]
	sub	ebx,5
	mov	[esp+8],ebx
	mov	[esp+12],195
	mov	[esp+4],16
	mov	eax,20
	imul	eax,[ebp-20]
	sub	eax,5
	mov	[esp],eax
	call	_fline
	mov	[ebp-24],0
	jmp	_40
_41
	sub	esp,16
	mov	[esp+8],195
	mov	esi,20
	imul	esi,[ebp-24]
	sub	esi,4
	mov	[esp+12],esi
	mov	esi,20
	imul	esi,[ebp-24]
	sub	esi,4
	mov	[esp+4],esi
	mov	[esp],15
	call	_fline
	add	[ebp-24],1
_40
	cmp	[ebp-24],10
	jle	_41
_7
	add	[ebp-20],1
_38
	cmp	[ebp-20],10
	jle	_39
_6
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],150
	call	_fcolor
	mov	[ebp-20],0
	jmp	_42
_43
	cmp	[ebp-20],1
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp-20],4
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	mov	[ebp-28],eax
	cmp	[ebp-20],7
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	mov	[ebp-28],eax
	cmp	[ebp-20],10
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_44
	sub	esp,16
	mov	ebx,20
	imul	ebx,[ebp-20]
	sub	ebx,5
	mov	[esp+8],ebx
	mov	[esp+12],195
	mov	[esp+4],16
	mov	eax,20
	imul	eax,[ebp-20]
	sub	eax,5
	mov	[esp],eax
	call	_fline
_44
	mov	[ebp-24],0
	jmp	_45
_46
	cmp	[ebp-24],1
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp-24],4
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	mov	[ebp-28],eax
	cmp	[ebp-24],7
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	mov	[ebp-28],eax
	cmp	[ebp-24],10
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_47
	sub	esp,16
	mov	[esp+8],195
	mov	esi,20
	imul	esi,[ebp-24]
	sub	esi,4
	mov	[esp+12],esi
	mov	esi,20
	imul	esi,[ebp-24]
	sub	esi,4
	mov	[esp+4],esi
	mov	[esp],15
	call	_fline
_47
	add	[ebp-24],1
_45
	cmp	[ebp-24],10
	jle	_46
_9
	add	[ebp-20],1
_42
	cmp	[ebp-20],10
	jle	_43
_8
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],220
	mov	[esp],20
	call	_ftext
	sub	esp,32
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],235
	mov	[esp],20
	call	_ftext
	sub	esp,32
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],270
	mov	[esp],20
	call	_ftext
	sub	esp,40
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_51
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],285
	mov	[esp],20
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],320
	mov	[esp],20
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
_33
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_32
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
	.align	16
_fsudoku_generate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
_l_10retry
	add	[ebp-4],1
	mov	[ebp-8],0
	jmp	_54
_55
	mov	[ebp-12],0
	jmp	_56
_57
	mov	[ebp-16],1
	jmp	_58
_59
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,1
	mov	[ebx],esi
	add	[ebp-16],1
_58
	cmp	[ebp-16],9
	jle	_59
_13
	add	[ebp-12],1
_56
	cmp	[ebp-12],8
	jle	_57
_12
	add	[ebp-8],1
_54
	cmp	[ebp-8],8
	jle	_55
_11
	mov	[ebp-12],0
	jmp	_60
_61
	mov	[ebp-8],0
	jmp	_62
_63
	mov	[ebp-20],0
	mov	[ebp-16],1
	jmp	_64
_65
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	ebx,[ebx]
	add	[ebp-20],ebx
	add	[ebp-16],1
_64
	cmp	[ebp-16],9
	jle	_65
_16
	cmp	[ebp-20],0
	jnz	_66
	jmp	_l_10retry
_66
	sub	esp,4
	mov	eax,_asolution
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_asolution
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asolution
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-24],0
	mov	[ebp-16],1
	jmp	_67
_68
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_69
	mov	ebx,[ebp-16]
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_asolution]
	mov	[esi],ebx
	add	[ebp-24],1
_69
	add	[ebp-16],1
_67
	cmp	[ebp-16],9
	jle	_68
_17
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-20]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_frand
	shl	eax,byte 2
	add	eax,[_asolution]
	mov	eax,[eax]
	mov	[ebp-28],eax
	mov	[ebp-32],0
	jmp	_70
_71
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-32],1
_70
	cmp	[ebp-32],8
	jle	_71
_18
	mov	[ebp-36],0
	jmp	_72
_73
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-8]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_72
	cmp	[ebp-36],8
	jle	_73
_19
	cmp	[ebp-8],2
	setle	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_74
	mov	[ebp-32],0
	jmp	_75
_76
	mov	[ebp-36],0
	jmp	_77
_78
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_77
	cmp	[ebp-36],2
	jle	_78
_21
	add	[ebp-32],1
_75
	cmp	[ebp-32],2
	jle	_76
_20
	jmp	_79
_74
	cmp	[ebp-8],3
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_80
	mov	[ebp-32],3
	jmp	_81
_82
	mov	[ebp-36],0
	jmp	_83
_84
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_83
	cmp	[ebp-36],2
	jle	_84
_23
	add	[ebp-32],1
_81
	cmp	[ebp-32],5
	jle	_82
_22
	jmp	_85
_80
	cmp	[ebp-8],6
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_86
	mov	[ebp-32],6
	jmp	_87
_88
	mov	[ebp-36],0
	jmp	_89
_90
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_89
	cmp	[ebp-36],2
	jle	_90
_25
	add	[ebp-32],1
_87
	cmp	[ebp-32],8
	jle	_88
_24
	jmp	_91
_86
	cmp	[ebp-8],2
	setle	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-12],3
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-12],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_92
	mov	[ebp-32],0
	jmp	_93
_94
	mov	[ebp-36],3
	jmp	_95
_96
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_95
	cmp	[ebp-36],5
	jle	_96
_27
	add	[ebp-32],1
_93
	cmp	[ebp-32],2
	jle	_94
_26
	jmp	_97
_92
	cmp	[ebp-8],3
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-12],3
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-12],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_98
	mov	[ebp-32],3
	jmp	_99
_100
	mov	[ebp-36],3
	jmp	_101
_102
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_101
	cmp	[ebp-36],5
	jle	_102
_29
	add	[ebp-32],1
_99
	cmp	[ebp-32],5
	jle	_100
_28
	jmp	_103
_98
	cmp	[ebp-8],6
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-12],3
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-12],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_104
	mov	[ebp-32],6
	jmp	_105
_106
	mov	[ebp-36],3
	jmp	_107
_108
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-36],1
_107
	cmp	[ebp-36],5
	jle	_108
_31
	add	[ebp-32],1
_105
	cmp	[ebp-32],8
	jle	_106
_30
_104
_103
_97
_91
_85
_79
	mov	ebx,_asudoku
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_asudoku
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_asudoku]
	mov	esi,[ebp-28]
	mov	[ebx],esi
	add	[ebp-8],1
_62
	cmp	[ebp-8],8
	jle	_63
_15
	add	[ebp-12],1
_60
	cmp	[ebp-12],8
	jle	_61
_14
	mov	eax,[ebp-4]
	jmp	_10_leave
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
_asudoku	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_asolution	.dd	0
	.dd	1
	.dd	1
	.dd	0
_48	.db	" tries",0
_49	.db	" ms",0
_50	.db	"Generated grids : ",0
_51	.db	"Average : ",0
_52	.db	" tries",0
_53	.db	"Press a key to generate a new grid",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

