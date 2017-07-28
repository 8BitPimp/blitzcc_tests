
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfiledata
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_23
	sub	esp,8
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_23
	sub	esp,16
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpackdata
	mov	ebx,eax
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclearpackbank
	cmp	[ebp-8],0
	jnz	_27
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_27
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_freadfiledata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jnz	_29
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_30
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_31
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_32
	mov	[ebp-16],1
	jmp	_33
_34
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-16],1
_33
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_34
_4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-12]
	jmp	_3_leave
_32
_31
_30
_29
	sub	esp,16
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpackdata
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
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_36
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_37
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgetlabelnamevalid
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_38
	sub	esp,8
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_5_leave
_38
	sub	esp,20
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_42
	sub	esp,16
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritestringdata
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],16
	call	__bbMod
	mov	[ebp-24],eax
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-24]
	shr	ebx,byte 4
	mov	[ebp-28],ebx
	mov	[ebp-20],0
	jmp	_43
_44
	sub	esp,16
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritestringdata
	mov	ebx,eax
	mov	[ebp-16],0
	jmp	_46
_47
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 4
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritebytedata
	cmp	[ebp-16],15
	jge	_48
	sub	esp,16
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritestringdata
	mov	ebx,eax
_48
	add	[ebp-16],1
_46
	cmp	[ebp-16],15
	jle	_47
_7
	add	[ebp-20],1
_43
	mov	ebx,[ebp-28]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_44
_6
	mov	ebx,[ebp-24]
	and	ebx,ebx
	jz	_50
	sub	esp,16
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritestringdata
	mov	ebx,eax
	mov	[ebp-20],0
	jmp	_52
_53
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	esi,[ebp-20]
	add	esi,1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpeekbyte
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritebytedata
	sub	esp,16
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritestringdata
	mov	ebx,eax
	add	[ebp-20],1
_52
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	jle	_53
_8
_50
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],-1
	call	_fwritebyte
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_5_leave
_42
_37
_36
	sub	esp,8
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fclearpackbank
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_56
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffreebank
_56
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_funpackdata
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
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_57
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-12],eax
_59
	call	__bbReadInt
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jge	_60
	jmp	_11
_60
	add	[ebp-8],1
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_59
_11
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	cmp	[ebp-8],0
	jnz	_61
	sub	esp,8
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
_61
	mov	eax,[ebp-8]
	jmp	_10_leave
_57
	sub	esp,8
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fwritestringdata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_64
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],13
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],10
	call	_fwritebyte
_64
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_65
	mov	[ebp-4],1
	jmp	_66
_67
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	add	[ebp-4],1
_66
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_67
_13
_65
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwritebytedata
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
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_flen
	mov	[ebp-8],eax
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_68
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-4],ebx
	jmp	_69
_70
	sub	esp,20
	mov	[esp],1092616192
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffloor
	mov	ebx,eax
	push	ebx
	fistp	[esp]
	pop	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	sub	esp,8
	mov	[esp],1092616192
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbFMod
	mov	ebx,eax
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritebytevalue
	add	[ebp-4],-1
_69
	cmp	[ebp-4],1
	jge	_70
_15
	sub	esp,16
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],10
	call	__bbMod
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebytevalue
	mov	ebx,eax
	jmp	_71
_68
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwritebytevalue
_71
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
_fwritebytevalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	add	[ebp+24],48
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fwritebyte
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
_fgetlabelnamevalid
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_73
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_72
	mov	eax,0
	jmp	_17_leave
_72
	mov	[ebp-4],0
	jmp	_74
_75
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	and	ebx,ebx
	jz	_76
	mov	eax,0
	jmp	_17_leave
_76
	add	[ebp-4],1
_74
	cmp	[ebp-4],47
	jle	_75
_18
	mov	[ebp-4],58
	jmp	_77
_78
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	and	ebx,ebx
	jz	_79
	mov	eax,0
	jmp	_17_leave
_79
	add	[ebp-4],1
_77
	cmp	[ebp-4],64
	jle	_78
_19
	mov	[ebp-4],91
	jmp	_80
_81
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	and	ebx,ebx
	jz	_82
	mov	eax,0
	jmp	_17_leave
_82
	add	[ebp-4],1
_80
	cmp	[ebp-4],94
	jle	_81
_20
	sub	esp,16
	mov	[esp],96
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	and	ebx,ebx
	jz	_83
	mov	eax,0
	jmp	_17_leave
_83
	mov	[ebp-4],122
	jmp	_84
_85
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	and	ebx,ebx
	jz	_86
	mov	eax,0
	jmp	_17_leave
_86
	add	[ebp-4],1
_84
	cmp	[ebp-4],255
	jle	_85
_21
	mov	eax,1
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_22	.db	"C:\WINDOWS\Media\tada.wav",0
_24	.db	"Data was not read.",0
_25	.db	"Test Pack.bb",0
_26	.db	"DataPack",0
_28	.db	"Data was not packed to file.",0
_35	.db	"Error Reading File ",0
_39	.db	"",0
_40	.db	"Invalid Data Label Name",0
_41	.db	".",0
_45	.db	"Data ",0
_49	.db	",",0
_51	.db	"Data ",0
_54	.db	",",0
_55	.db	"Memory Bank Error",0
_58	.db	"",0
_62	.db	"No data written",0
_63	.db	"Invalid Filename",0
_73	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

