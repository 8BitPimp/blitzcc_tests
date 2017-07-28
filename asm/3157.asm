
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1
	call	_fseedrnd
	sub	esp,12
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vmapw],50
	mov	[_vmaph],50
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapw]
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmaph]
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapw]
	mov	esi,_acmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmaph]
	mov	esi,_acmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acmap
	mov	[esp],eax
	call	__bbDimArray
	call	_finitmap
	call	_fmillisecs
	mov	[ebp-4],eax
	call	_finitsurfaces
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-8],eax
	jmp	_36
_35
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	call	_fdrawmap
	call	_fdrawrects
	cmp	[ebp-12],180
	jle	_37
	call	_finitmap
	call	_fmillisecs
	mov	[ebp-4],eax
	call	_finitsurfaces
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-4],eax
	mov	[ebp-12],0
_37
	add	[ebp-12],1
	sub	esp,40
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	call	_fgraphicswidth
	sub	eax,196
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_36
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_35
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
_finitsurfaces
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
	sub	esp,4
	mov	eax,_tr
	mov	[esp],eax
	call	__bbObjDeleteEach
	mov	[ebp-4],0
	jmp	_42
_43
	mov	[ebp-8],0
	jmp	_44
_45
	mov	ebx,0
	mov	esi,_acmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_acmap]
	mov	[esi],ebx
	add	[ebp-8],1
_44
	mov	ebx,[_vmapw]
	cmp	[ebp-8],ebx
	jle	_45
_6
	add	[ebp-4],1
_42
	mov	ebx,[_vmaph]
	cmp	[ebp-4],ebx
	jle	_43
_5
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	ebx,[_vmapw]
	mov	[ebp-20],ebx
	mov	[ebp-24],0
	mov	[ebp-28],0
	jmp	_47
_46
	mov	[ebp-32],1
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-40],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_48
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-40],ebx
	jmp	_49
_50
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-36],ebx
	jmp	_51
_52
	mov	ebx,[ebp-24]
	add	ebx,[ebp-36]
	mov	[ebp-44],ebx
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	mov	[ebp-48],ebx
	sub	esp,32
	mov	ebx,[_vmapw]
	add	ebx,1
	mov	[esp+24],ebx
	mov	esi,[_vmaph]
	add	esi,1
	mov	[esp+28],esi
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],1
	mov	[esp+8],1
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_frectsoverlap
	cmp	eax,1
	jnz	_53
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_54
	mov	[ebp-32],0
	jmp	_9
_54
	mov	ebx,_acmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_acmap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_55
	mov	[ebp-32],0
	jmp	_9
_55
	jmp	_56
_53
	mov	[ebp-32],0
	jmp	_9
_56
	add	[ebp-36],1
_51
	mov	ebx,[ebp-20]
	cmp	[ebp-36],ebx
	jle	_52
_9
	add	[ebp-40],1
_49
	mov	ebx,[ebp-20]
	cmp	[ebp-40],ebx
	jle	_50
_8
	cmp	[ebp-32],1
	jnz	_57
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-40],ebx
	jmp	_58
_59
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-36],ebx
	jmp	_60
_61
	mov	ebx,[ebp-24]
	add	ebx,[ebp-36]
	mov	[ebp-44],ebx
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	mov	[ebp-48],ebx
	mov	ebx,1
	mov	esi,_acmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-48]
	add	esi,[ebp-44]
	shl	esi,byte 2
	add	esi,[_acmap]
	mov	[esi],ebx
	add	[ebp-36],1
_60
	mov	ebx,[ebp-20]
	cmp	[ebp-36],ebx
	jle	_61
_11
	add	[ebp-40],1
_58
	mov	ebx,[ebp-20]
	cmp	[ebp-40],ebx
	jle	_59
_10
	sub	esp,8
	lea	eax,[ebp-52]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_tr
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-20]
	mov	esi,[ebp-52]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	sub	ebx,[ebp-20]
	mov	esi,[ebp-52]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	shl	ebx,byte 1
	mov	esi,[ebp-52]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	shl	ebx,byte 1
	mov	esi,[ebp-52]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_57
_48
	add	[ebp-24],1
	mov	ebx,[_vmapw]
	cmp	[ebp-24],ebx
	jle	_62
	add	[ebp-28],1
	mov	[ebp-24],0
_62
	mov	eax,[_vmapw]
	cmp	[ebp-24],eax
	setge	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[_vmaph]
	cmp	[ebp-28],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_63
	mov	[ebp-24],0
	mov	[ebp-28],0
	sub	[ebp-20],1
_63
	cmp	[ebp-20],0
	jge	_64
	mov	[ebp-16],1
_64
_47
	cmp	[ebp-16],0
	jz	_46
_7
	mov	[ebp-4],0
	jmp	_65
_66
	mov	[ebp-8],0
	jmp	_67
_68
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_69
	sub	esp,8
	lea	eax,[ebp-56]
	mov	[esp],eax
	mov	[esp+4],_tr
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_70
	mov	eax,[ebp-56]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	cmp	eax,[ebp-8]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_71
	mov	[ebp-60],0
	sub	esp,8
	lea	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],_tr
	call	__bbObjEachFirst
	and	eax,eax
	jz	_15
_72
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-56]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_73
	mov	[ebp-60],1
_73
	sub	esp,4
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_72
_15
	mov	[ebp-68],0
	sub	esp,8
	lea	eax,[ebp-72]
	mov	[esp],eax
	mov	[esp+4],_tr
	call	__bbObjEachFirst
	and	eax,eax
	jz	_16
_74
	mov	eax,[ebp-72]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-72]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-56]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-72]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_75
	mov	[ebp-68],1
_75
	sub	esp,4
	lea	eax,[ebp-72]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_74
_16
	mov	[ebp-76],0
	sub	esp,8
	lea	eax,[ebp-80]
	mov	[esp],eax
	mov	[esp+4],_tr
	call	__bbObjEachFirst
	and	eax,eax
	jz	_17
_76
	mov	eax,[ebp-80]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-80]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-56]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-80]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_77
	mov	[ebp-76],1
_77
	sub	esp,4
	lea	eax,[ebp-80]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_76
_17
	cmp	[ebp-60],1
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	cmp	[ebp-68],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	cmp	[ebp-76],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_78
	sub	esp,8
	lea	eax,[ebp-84]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_tr
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-84]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-84]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp-84]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp-84]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,8
	lea	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],_tr
	call	__bbObjEachFirst
	and	eax,eax
	jz	_18
_79
	mov	[ebp-88],0
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-56]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_80
	mov	[ebp-88],1
_80
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-56]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_81
	mov	[ebp-88],1
_81
	mov	eax,[ebp-64]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-56]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-56]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-64]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_82
	mov	[ebp-88],1
_82
	cmp	[ebp-88],1
	jnz	_83
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	__bbObjDelete
_83
	sub	esp,4
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_79
_18
	sub	esp,4
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	__bbObjDelete
_78
_71
	sub	esp,4
	lea	eax,[ebp-56]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_70
_14
_69
	add	[ebp-8],1
_67
	mov	ebx,[_vmapw]
	cmp	[ebp-8],ebx
	jle	_68
_13
	add	[ebp-4],1
_65
	mov	ebx,[_vmaph]
	cmp	[ebp-4],ebx
	jle	_66
_12
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-84]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-72]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-56]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawrects
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tr
	call	__bbObjEachFirst
	and	eax,eax
	jz	_20
_84
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,1
	imul	ebx,10
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,1
	imul	esi,10
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	imul	eax,10
	mov	[esp],eax
	call	_frect
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_84
_20
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	jmp	_85
_86
	mov	[ebp-8],0
	jmp	_87
_88
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jz	_90
	cmp	[ebp-12],1
	jz	_91
	jmp	_89
_90
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_89
_91
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
	jmp	_89
_89
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-4]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,10
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_87
	mov	ebx,[_vmapw]
	cmp	[ebp-8],ebx
	jle	_88
_23
	add	[ebp-4],1
_85
	mov	ebx,[_vmaph]
	cmp	[ebp-4],ebx
	jle	_86
_22
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitmap
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
	jmp	_92
_93
	mov	[ebp-8],0
	jmp	_94
_95
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_94
	mov	ebx,[_vmapw]
	cmp	[ebp-8],ebx
	jle	_95
_27
	add	[ebp-4],1
_92
	mov	ebx,[_vmaph]
	cmp	[ebp-4],ebx
	jle	_93
_26
	mov	[ebp-12],0
	jmp	_97
_96
	sub	esp,8
	mov	eax,[_vmapw]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[_vmaph]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],6
	call	_frand
	mov	[ebp-24],eax
	mov	ebx,[ebp-24]
	neg	ebx
	mov	[ebp-28],ebx
	jmp	_98
_99
	mov	ebx,[ebp-24]
	neg	ebx
	mov	[ebp-32],ebx
	jmp	_100
_101
	mov	ebx,[ebp-16]
	add	ebx,[ebp-32]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-20]
	add	ebx,[ebp-28]
	mov	[ebp-40],ebx
	cmp	[ebp-36],0
	setge	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-40],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	mov	ebx,[_vmapw]
	cmp	[ebp-36],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	mov	ebx,[_vmaph]
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_102
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-40]
	add	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,10
	jle	_103
	mov	[ebp-12],1
_103
_102
	add	[ebp-32],1
_100
	mov	ebx,[ebp-24]
	cmp	[ebp-32],ebx
	jle	_101
_30
	add	[ebp-28],1
_98
	mov	ebx,[ebp-24]
	cmp	[ebp-28],ebx
	jle	_99
_29
_97
	cmp	[ebp-12],0
	jz	_96
_28
	mov	[ebp-4],0
	jmp	_104
_105
	mov	[ebp-8],0
	jmp	_106
_107
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,5
	jge	_108
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_108
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,4
	jle	_109
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_109
	add	[ebp-8],1
_106
	mov	ebx,[_vmapw]
	cmp	[ebp-8],ebx
	jle	_107
_32
	add	[ebp-4],1
_104
	mov	ebx,[_vmaph]
	cmp	[ebp-4],ebx
	jle	_105
_31
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_33	.db	"Press escape to end.",0
_34	.db	"",0
	.align	4
_vmapw	.dd	0
	.align	4
_vmaph	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_acmap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_38	.db	"Took:",0
_39	.db	" ms",0
	.align	4
_tr	.dd	5
_40	.dd	0
	.dd	_40
	.dd	_40
	.dd	0
	.dd	-1
_41	.dd	0
	.dd	_41
	.dd	_41
	.dd	0
	.dd	-1
	.dd	4
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

