
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,12
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vtilewidth],8
	mov	[_vtileheight],8
	mov	ebx,[_vtilewidth]
	mov	[_vplayerwidth],ebx
	mov	ebx,[_vtileheight]
	mov	[_vplayerheight],ebx
	mov	[_vmapwidth],512
	mov	[_vmapheight],512
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
	mov	[_vmapx],256
	mov	[_vmapy],256
	call	_fgraphicswidth
	mov	ecx,[_vtilewidth]
	cdq
	idiv	ecx
	sar	eax,byte 1
	add	eax,[_vmapx]
	mov	[_vplayerx],eax
	call	_fgraphicsheight
	mov	ecx,[_vtileheight]
	cdq
	idiv	ecx
	sar	eax,byte 1
	add	eax,[_vmapy]
	mov	[_vplayery],eax
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_25
_24
	add	[ebp-8],3
	jmp	_27
_26
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_28
	cmp	[ebp-12],2
	jge	_29
	add	[ebp-12],1
	jmp	_30
_29
	sub	[ebp-12],1
_30
_28
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,8
	jge	_31
	mov	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	esi,1
	mov	[ebx],esi
_31
	add	[ebp-4],1
_27
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	jle	_26
_4
	mov	[ebp-4],0
_25
	mov	ebx,[_vmapheight]
	sub	ebx,5
	cmp	[ebp-8],ebx
	jle	_24
_3
	mov	[ebp-16],0
	jmp	_32
_33
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vmapwidth]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vmapheight]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],30
	call	_frand
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	neg	ebx
	mov	[ebp-32],ebx
	jmp	_34
_35
	mov	ebx,[ebp-28]
	neg	ebx
	mov	[ebp-36],ebx
	jmp	_36
_37
	mov	eax,[ebp-32]
	imul	eax,[ebp-32]
	mov	ebx,[ebp-36]
	imul	ebx,[ebp-36]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1061997773
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	imul	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_38
	mov	ebx,[ebp-20]
	add	ebx,[ebp-36]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-24]
	add	ebx,[ebp-32]
	mov	[ebp-44],ebx
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,8
	jge	_39
	cmp	[ebp-40],0
	setge	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	mov	[ebp-48],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	mov	[ebp-48],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-44],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_40
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_40
_39
_38
	add	[ebp-36],1
_36
	mov	ebx,[ebp-28]
	cmp	[ebp-36],ebx
	jle	_37
_7
	add	[ebp-32],1
_34
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jle	_35
_6
	add	[ebp-16],1
_32
	cmp	[ebp-16],200
	jle	_33
_5
	mov	[ebp-8],0
	jmp	_41
_42
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vmapwidth]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_41
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_42
_8
	mov	[ebp-4],0
	jmp	_43
_44
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vmapheight]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-4],1
_43
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	jle	_44
_9
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],100
	call	_fcreateai
	sub	esp,4
	mov	[esp],15
	call	_fcreatetimer
	mov	[_vmytimer],eax
	jmp	_46
_45
	sub	esp,4
	mov	eax,[_vmytimer]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	call	_fdoai
	call	_fdrawmap
	mov	eax,[_vplayery]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vplayerx]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_47
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	[_vplayery],1
	sub	[_vmapy],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_47
	mov	eax,[_vplayery]
	add	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vplayerx]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_48
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[_vplayery],1
	add	[_vmapy],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_48
	mov	eax,[_vplayerx]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vplayery]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_49
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	[_vplayerx],1
	sub	[_vmapx],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_49
	mov	eax,[_vplayerx]
	add	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vplayery]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_50
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[_vplayerx],1
	add	[_vmapx],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_50
	sub	esp,4
	mov	[esp],1
	call	_fflip
_46
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_45
_10
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
_fdoai
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tai
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_53
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	call	_fmillisecs
	cmp	ebx,eax
	jge	_54
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_55
	mov	[ebp-8],0
	jmp	_57
_56
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapwidth]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapheight]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-16],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_58
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	[ebp-8],1
_58
_57
	cmp	[ebp-8],0
	jz	_56
_13
_55
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_59
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-20],ebx
_59
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_60
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	mov	[ebp-20],ebx
_60
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_61
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-24],ebx
_61
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_62
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	[ebp-24],ebx
_62
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_63
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,0
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_63
	mov	eax,_amap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-24]
	add	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_64
	mov	[ebp-8],0
	jmp	_66
_65
	mov	[ebp-16],-1
	jmp	_67
_68
	mov	[ebp-12],-1
	jmp	_69
_70
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_71
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-16]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,[ebp-12]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,0
	jnz	_72
	mov	[ebp-8],1
_72
_71
	add	[ebp-12],1
_69
	cmp	[ebp-12],1
	jle	_70
_16
	add	[ebp-16],1
_67
	cmp	[ebp-16],1
	jle	_68
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_73
	call	_fend
_73
_66
	cmp	[ebp-8],0
	jz	_65
_14
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-16]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,[ebp-12]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,3
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-16]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_64
	call	_fmillisecs
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,40
	mov	ebx,[ebx]
	call	_fmillisecs
	cmp	ebx,eax
	jge	_74
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	[esp+24],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,36
	mov	esi,[esi]
	mov	[esp+28],esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	[esp+12],12
	mov	[esp+8],12
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	sub	esi,3
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	sub	eax,3
	mov	[esp],eax
	call	_frectsoverlap
	cmp	eax,1
	jnz	_75
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapwidth]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapheight]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
_75
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],2000
	mov	[esp+4],5000
	call	_frand
	mov	[ebp-28],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-28]
	add	ebx,eax
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
_74
_54
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_53
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreateai
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_76
_77
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tai
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapwidth]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapheight]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,3
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapwidth]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],3
	mov	ebx,[_vmapheight]
	sub	ebx,6
	mov	[esp+4],ebx
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1000
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	call	_fmillisecs
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,36
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],2000
	mov	[esp+4],5000
	call	_frand
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-12]
	add	ebx,eax
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,40
	mov	[esi],ebx
	add	[ebp-4],1
_76
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_77
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdrawmap
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
	mov	[ebp-4],0
	jmp	_78
_79
	mov	[ebp-8],0
	jmp	_80
_81
	mov	ebx,[_vmapx]
	add	ebx,[ebp-8]
	mov	[ebp-12],ebx
	mov	ebx,[_vmapy]
	add	ebx,[ebp-4]
	mov	[ebp-16],ebx
	cmp	[ebp-12],0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_82
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_83
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtileheight]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtilewidth]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtileheight]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtilewidth]
	mov	[esp],eax
	call	_frect
_83
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_84
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtileheight]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtilewidth]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtileheight]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtilewidth]
	mov	[esp],eax
	call	_frect
_84
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_85
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtileheight]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtilewidth]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtileheight]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtilewidth]
	mov	[esp],eax
	call	_frect
_85
_82
	add	[ebp-8],1
_80
	call	_fgraphicswidth
	mov	ecx,[_vtilewidth]
	cdq
	idiv	ecx
	cmp	[ebp-8],eax
	jle	_81
_21
	add	[ebp-4],1
_78
	call	_fgraphicsheight
	mov	ecx,[_vtileheight]
	cdq
	idiv	ecx
	cmp	[ebp-4],eax
	jle	_79
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
_22	.db	"Use cursor keys to move the map",0
_23	.db	"",0
	.align	4
_vtilewidth	.dd	0
	.align	4
_vtileheight	.dd	0
	.align	4
_vplayerwidth	.dd	0
	.align	4
_vplayerheight	.dd	0
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
_vmapx	.dd	0
	.align	4
_vmapy	.dd	0
	.align	4
_vplayerx	.dd	0
	.align	4
_vplayery	.dd	0
	.align	4
_vmytimer	.dd	0
	.align	4
_tai	.dd	5
_51	.dd	0
	.dd	_51
	.dd	_51
	.dd	0
	.dd	-1
_52	.dd	0
	.dd	_52
	.dd	_52
	.dd	0
	.dd	-1
	.dd	11
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
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

