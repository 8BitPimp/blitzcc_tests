
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_amaze
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_amaze
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amaze
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaze
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],55
	mov	[ebp-8],35
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakemaze
	mov	[ebp-12],1
	jmp	_26
_27
	mov	[ebp-16],1
	jmp	_28
_29
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_30
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-12]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	mov	[esp],eax
	call	_frect
_30
	add	[ebp-16],1
_28
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_29
_4
	add	[ebp-12],1
_26
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_27
_3
	call	_fwaitkey
	mov	[ebp-4],15
	mov	[ebp-8],45
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakemaze
	call	_fcls
	mov	[ebp-12],1
	jmp	_31
_32
	mov	[ebp-16],1
	jmp	_33
_34
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_35
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-12]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	mov	[esp],eax
	call	_frect
_35
	add	[ebp-16],1
_33
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_34
_6
	add	[ebp-12],1
_31
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_32
_5
	call	_fwaitkey
	mov	[ebp-4],301
	mov	[ebp-8],201
	sub	esp,16
	mov	[esp+8],4
	mov	[esp+12],9
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakemaze
	call	_fcls
	mov	[ebp-12],1
	jmp	_36
_37
	mov	[ebp-16],1
	jmp	_38
_39
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_40
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	shl	eax,byte 1
	mov	[esp],eax
	call	_frect
_40
	add	[ebp-16],1
_38
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_39
_8
	add	[ebp-12],1
_36
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_37
_7
	call	_fwaitkey
	mov	[ebp-4],301
	mov	[ebp-8],201
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],10
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakemaze
	call	_fcls
	mov	[ebp-12],1
	jmp	_41
_42
	mov	[ebp-16],1
	jmp	_43
_44
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	cmp	ebx,1
	jl	_45
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	shl	eax,byte 1
	mov	[esp],eax
	call	_frect
_45
	add	[ebp-16],1
_43
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_44
_10
	add	[ebp-12],1
_41
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_42
_9
	call	_fwaitkey
	mov	[ebp-4],301
	mov	[ebp-8],201
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakemaze
	call	_fcls
	mov	[ebp-12],1
	jmp	_46
_47
	mov	[ebp-16],1
	jmp	_48
_49
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	cmp	ebx,1
	jl	_50
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	shl	eax,byte 1
	mov	[esp],eax
	call	_frect
_50
	add	[ebp-16],1
_48
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_49
_12
	add	[ebp-12],1
_46
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_47
_11
	call	_fwaitkey
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
_fmakemaze
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,108
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
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-68],eax
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-72],eax
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-76],eax
	mov	ebx,[ebp+20]
	mov	[ebp-96],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-100],ebx
	cmp	[ebp+28],1
	jnz	_51
	mov	eax,[ebp-100]
	mov	ebx,1
	and	eax,ebx
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-108],eax
	mov	ebx,[ebp-96]
	mov	esi,1
	and	ebx,esi
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	or	eax,ebx
	and	eax,eax
	jz	_52
	sub	esp,8
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_52
_51
	cmp	[ebp+32],1
	jge	_54
	sub	esp,8
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_54
	mov	ebx,1
	mov	esi,0
	add	esi,[ebp-68]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,4
	add	esi,[ebp-72]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,8
	add	esi,[ebp-68]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,12
	add	esi,[ebp-72]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaze
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-96]
	add	ebx,1
	mov	esi,_amaze
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-100]
	add	ebx,1
	mov	esi,_amaze
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amaze
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],1
	jmp	_56
_57
	mov	ebx,1
	mov	esi,_amaze
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amaze]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amaze
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-100]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amaze]
	mov	[esi],ebx
	add	[ebp-4],1
_56
	mov	ebx,[ebp-96]
	cmp	[ebp-4],ebx
	jle	_57
_17
	mov	[ebp-8],1
	jmp	_58
_59
	mov	ebx,1
	mov	esi,_amaze
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amaze]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amaze
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-96]
	shl	esi,byte 2
	add	esi,[_amaze]
	mov	[esi],ebx
	add	[ebp-8],1
_58
	mov	ebx,[ebp-100]
	cmp	[ebp-8],ebx
	jle	_59
_18
	mov	ebx,[ebp-96]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-100]
	mov	[ebp-28],ebx
	mov	[ebp-16],1
	mov	[ebp-12],1
	add	[ebp+28],1
	mov	ebx,[ebp-96]
	imul	ebx,[ebp-100]
	mov	[ebp-84],ebx
	mov	ebx,[ebp-96]
	add	ebx,[ebp+28]
	add	ebx,1
	mov	[ebp-88],ebx
	mov	ebx,[ebp-100]
	add	ebx,[ebp+28]
	add	ebx,1
	mov	[ebp-92],ebx
_60
_61
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-92]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-16],eax
	mov	eax,[ebp-12]
	mov	ecx,[ebp+28]
	cdq
	idiv	ecx
	imul	eax,[ebp+28]
	sub	eax,1
	mov	[ebp-12],eax
	mov	eax,[ebp-16]
	mov	ecx,[ebp+28]
	cdq
	idiv	ecx
	imul	eax,[ebp+28]
	sub	eax,1
	mov	[ebp-16],eax
	mov	ebx,[ebp-96]
	cmp	[ebp-12],ebx
	jle	_62
	mov	ebx,[ebp-96]
	mov	[ebp-12],ebx
_62
	mov	ebx,[ebp-100]
	cmp	[ebp-16],ebx
	jle	_63
	mov	ebx,[ebp-100]
	mov	[ebp-16],ebx
_63
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_64
	jmp	_20
_64
	jmp	_61
_20
	add	[ebp-80],1
	mov	ebx,[ebp-84]
	cmp	[ebp-80],ebx
	jle	_65
	jmp	_19
_65
	mov	ebx,[ebp-12]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-56],ebx
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],3
	call	_frand
	mov	[ebp-36],eax
_66
	mov	[ebp-40],0
	mov	[ebp-104],0
	jmp	_67
_68
	mov	[ebp-44],1
	jmp	_69
_70
	mov	ebx,[ebp-104]
	shl	ebx,byte 2
	add	ebx,[ebp-68]
	mov	ebx,[ebx]
	imul	ebx,[ebp-44]
	add	ebx,[ebp-52]
	mov	[ebp-60],ebx
	mov	ebx,[ebp-104]
	shl	ebx,byte 2
	add	ebx,[ebp-72]
	mov	ebx,[ebx]
	imul	ebx,[ebp-44]
	add	ebx,[ebp-56]
	mov	[ebp-64],ebx
	cmp	[ebp-60],0
	setle	al
	movzx	eax,al
	mov	[ebp-108],eax
	cmp	[ebp-64],0
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	or	eax,ebx
	mov	[ebp-108],eax
	mov	ebx,[ebp-96]
	cmp	[ebp-60],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	or	eax,ebx
	mov	[ebp-108],eax
	mov	ebx,[ebp-100]
	cmp	[ebp-64],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	or	eax,ebx
	and	eax,eax
	jz	_71
	mov	[ebp-44],9999
	jmp	_23
_71
	mov	ebx,_amaze
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-64]
	add	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_72
	mov	[ebp-44],9999
	jmp	_23
_72
	mov	[ebp-48],1
	jmp	_73
_74
	mov	ebx,[ebp-104]
	add	ebx,1
	mov	esi,3
	and	ebx,esi
	shl	ebx,byte 2
	add	ebx,[ebp-68]
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp-60]
	mov	esi,[ebp-104]
	add	esi,1
	mov	edi,3
	and	esi,edi
	shl	esi,byte 2
	add	esi,[ebp-72]
	mov	esi,[esi]
	imul	esi,[ebp-48]
	add	esi,[ebp-64]
	mov	edi,_amaze
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_75
	mov	[ebp-44],9999
	jmp	_24
_75
	mov	ebx,[ebp-104]
	sub	ebx,1
	mov	esi,3
	and	ebx,esi
	shl	ebx,byte 2
	add	ebx,[ebp-68]
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp-60]
	mov	esi,[ebp-104]
	sub	esi,1
	mov	edi,3
	and	esi,edi
	shl	esi,byte 2
	add	esi,[ebp-72]
	mov	esi,[esi]
	imul	esi,[ebp-48]
	add	esi,[ebp-64]
	mov	edi,_amaze
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amaze]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_76
	mov	[ebp-44],9999
	jmp	_24
_76
	add	[ebp-48],1
_73
	mov	ebx,[ebp+32]
	cmp	[ebp-48],ebx
	jle	_74
_24
	add	[ebp-44],1
_69
	mov	ebx,[ebp+28]
	add	ebx,[ebp+32]
	cmp	[ebp-44],ebx
	jle	_70
_23
	cmp	[ebp-44],9999
	setl	al
	movzx	eax,al
	mov	ebx,[ebp-104]
	shl	ebx,byte 2
	add	ebx,[ebp-76]
	mov	[ebx],eax
	mov	ebx,[ebp-104]
	shl	ebx,byte 2
	add	ebx,[ebp-76]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_77
	mov	[ebp-40],1
_77
	add	[ebp-104],1
_67
	cmp	[ebp-104],3
	jle	_68
_22
	sub	esp,8
	mov	eax,[ebp-84]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_78
	jmp	_21
_78
	cmp	[ebp-40],0
	jnz	_79
	jmp	_21
_79
	sub	esp,8
	mov	[esp],-1
	mov	[esp+4],1
	call	_frand
	add	eax,[ebp-36]
	mov	ebx,3
	and	eax,ebx
	mov	[ebp-36],eax
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[ebp-76]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_80
	mov	[ebp-44],1
	jmp	_81
_82
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[ebp-68]
	mov	ebx,[ebx]
	add	[ebp-52],ebx
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[ebp-72]
	mov	ebx,[ebx]
	add	[ebp-56],ebx
	mov	ebx,1
	mov	esi,_amaze
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-56]
	add	esi,[ebp-52]
	shl	esi,byte 2
	add	esi,[_amaze]
	mov	[esi],ebx
	add	[ebp-44],1
_81
	mov	ebx,[ebp+28]
	cmp	[ebp-44],ebx
	jle	_82
_25
_80
	jmp	_66
_21
	jmp	_60
_19
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-108],eax
	sub	esp,8
	mov	ebx,[ebp-72]
	mov	[esp],ebx
	mov	[esp+4],_15
	mov	eax,ebx
	call	__bbVecFree
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[ebp-108],eax
	sub	esp,8
	mov	esi,[ebp-76]
	mov	[esp],esi
	mov	[esp+4],_16
	mov	eax,esi
	call	__bbVecFree
	mov	esi,eax
	mov	eax,[ebp-108]
	mov	[ebp-108],eax
	sub	esp,8
	mov	esi,[ebp-68]
	mov	[esp],esi
	mov	[esp+4],_14
	mov	eax,esi
	call	__bbVecFree
	mov	esi,eax
	mov	eax,[ebp-108]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_amaze	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_14	.dd	6
	.dd	4
	.dd	__bbIntType
	.align	4
_15	.dd	6
	.dd	4
	.dd	__bbIntType
	.align	4
_16	.dd	6
	.dd	5
	.dd	__bbIntType
_53	.db	"maze size must be odd for exact mazes",0
_55	.db	"open must be greater than 0",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

