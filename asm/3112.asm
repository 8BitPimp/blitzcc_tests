
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[_vmapwidth],39
	mov	[_vmapheight],29
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapwidth]
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapheight]
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	jmp	_27
_26
	sub	esp,4
	mov	[esp],100
	call	_fmakemap
	call	_fcls
	call	_fdrawmap
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],479
	mov	[esp+16],1
	mov	[esp+8],119
	mov	[esp+4],0
	mov	[esp],520
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-8],0
	jmp	_28
_29
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_30
	mov	[ebp-4],1
_30
	add	[ebp-8],1
_28
	cmp	[ebp-8],200
	jle	_29
_4
_27
	cmp	[ebp-4],0
	jz	_26
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
_fmakemap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	[ebp-4],0
	jmp	_32
_31
	mov	[ebp-8],0
	jmp	_33
_34
	mov	[ebp-12],0
	jmp	_35
_36
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-12],1
_35
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	jle	_36
_8
	add	[ebp-8],1
_33
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_34
_7
	mov	ebx,[_vmapwidth]
	sar	ebx,byte 1
	mov	[ebp-12],ebx
	mov	ebx,[_vmapheight]
	sar	ebx,byte 1
	mov	[ebp-8],ebx
	sub	esp,8
	mov	[esp],500
	mov	[esp+4],1
	call	_frand
	add	eax,500
	mov	[ebp+20],eax
	mov	[ebp-16],0
	jmp	_37
_38
	mov	[ebp-20],0
	jmp	_40
_39
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],1
	call	_frand
	mov	[ebp-24],eax
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
	cmp	[ebp-28],1
	jz	_42
	cmp	[ebp-28],2
	jz	_43
	cmp	[ebp-28],3
	jz	_44
	cmp	[ebp-28],4
	jz	_45
	cmp	[ebp-28],5
	jz	_46
	cmp	[ebp-28],6
	jz	_47
	cmp	[ebp-28],7
	jz	_48
	cmp	[ebp-28],8
	jz	_49
	jmp	_41
_42
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-36],ebx
	jmp	_41
_43
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-36],ebx
	jmp	_41
_44
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-36],ebx
	jmp	_41
_45
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-32],ebx
	jmp	_41
_46
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-32],ebx
	jmp	_41
_47
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-36],ebx
	jmp	_41
_48
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-36],ebx
	jmp	_41
_49
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-36],ebx
	jmp	_41
_41
	mov	eax,[_vmapwidth]
	cmp	[ebp-32],eax
	setl	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-32],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-36],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	cmp	[ebp-36],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_50
	mov	ebx,[ebp-32]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-36]
	mov	[ebp-8],ebx
	mov	[ebp-20],1
_50
_40
	cmp	[ebp-20],0
	jz	_39
_10
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fdrawbrush
	add	[ebp-16],1
_37
	mov	ebx,[ebp+20]
	cmp	[ebp-16],ebx
	jle	_38
_9
	mov	[ebp-4],1
	mov	[ebp-8],0
	jmp	_51
_52
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_53
	mov	[ebp-4],0
_53
	add	[ebp-8],1
_51
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_52
_12
	mov	[ebp-8],0
	jmp	_54
_55
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vmapwidth]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_56
	mov	[ebp-4],0
_56
	add	[ebp-8],1
_54
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_55
_13
	mov	[ebp-12],0
	jmp	_57
_58
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_59
	mov	[ebp-4],0
_59
	add	[ebp-12],1
_57
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	jle	_58
_14
	mov	[ebp-12],0
	jmp	_60
_61
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vmapheight]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_62
	mov	[ebp-4],0
_62
	add	[ebp-12],1
_60
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	jle	_61
_15
	mov	[ebp-8],0
	jmp	_63
_64
	mov	ebx,[_vmapwidth]
	sub	ebx,7
	mov	[ebp-12],ebx
	jmp	_65
_66
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_67
	mov	[ebp-4],0
_67
	add	[ebp-12],1
_65
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	jle	_66
_17
	add	[ebp-8],1
_63
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_64
_16
	mov	[ebp-40],0
	mov	[ebp-8],0
	jmp	_68
_69
	mov	ebx,[_vmapwidth]
	sub	ebx,8
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_70
	mov	[ebp-40],1
_70
	add	[ebp-8],1
_68
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_69
_18
	cmp	[ebp-40],0
	jnz	_71
	mov	[ebp-4],0
_71
	mov	[ebp-40],0
	mov	[ebp-8],0
	jmp	_72
_73
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_74
	mov	[ebp-40],1
_74
	add	[ebp-8],1
_72
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_73
_19
	cmp	[ebp-40],0
	jnz	_75
	mov	[ebp-4],0
_75
	mov	[ebp-40],0
	mov	[ebp-12],0
	jmp	_76
_77
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_78
	mov	[ebp-40],1
_78
	add	[ebp-12],1
_76
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	jle	_77
_20
	cmp	[ebp-40],0
	jnz	_79
	mov	[ebp-4],0
_79
	mov	[ebp-40],0
	mov	[ebp-12],0
	jmp	_80
_81
	mov	ebx,[_vmapheight]
	sub	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_82
	mov	[ebp-40],1
_82
	add	[ebp-12],1
_80
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	jle	_81
_21
	cmp	[ebp-40],0
	jnz	_83
	mov	[ebp-4],0
_83
_32
	cmp	[ebp-4],0
	jz	_31
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdrawbrush
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	sub	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	sub	ebx,1
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_84
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_84
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	sub	ebx,1
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_85
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_85
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	sub	ebx,1
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_86
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_86
	mov	ebx,[ebp+20]
	sub	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_87
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_87
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_88
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_88
	mov	ebx,[ebp+20]
	sub	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_89
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_89
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_90
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_90
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[ebp-8],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_91
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_91
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
_fdrawmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],0
	jmp	_92
_93
	mov	[ebp-8],0
	jmp	_94
_95
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_96
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
_96
	add	[ebp-8],1
_94
	mov	ebx,[_vmapwidth]
	cmp	[ebp-8],ebx
	jle	_95
_25
	add	[ebp-4],1
_92
	mov	ebx,[_vmapheight]
	cmp	[ebp-4],ebx
	jle	_93
_24
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmapwidth	.dd	0
	.align	4
_vmapheight	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

