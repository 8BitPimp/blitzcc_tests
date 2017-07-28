
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,84
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcopyfile
	mov	ebx,eax
	sub	esp,4
	mov	eax,_aln
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_aln
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aln
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_41
_40
	sub	esp,8
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aln]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-16],1
_41
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_40
_3
	sub	[ebp-16],1
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-20],0
_42
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-72],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-20],1
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_42
_4
	sub	[ebp-20],1
	sub	esp,4
	mov	eax,__DATA
	add	eax,80
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-28],0
_44
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-72],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-28],1
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_44
_5
	sub	[ebp-28],1
	sub	esp,4
	mov	eax,_af_plus
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-20]
	mov	esi,_af_plus
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af_plus
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_af_minus
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-28]
	mov	esi,_af_minus
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af_minus
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-32],0
	jmp	_46
_47
	sub	esp,8
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_af_plus]
	mov	[esp],eax
	mov	[ebp-72],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-32],1
_46
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_47
_6
	sub	esp,4
	mov	eax,__DATA
	add	eax,80
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-32],0
	jmp	_48
_49
	sub	esp,8
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_af_minus]
	mov	[esp],eax
	mov	[ebp-72],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-32],1
_48
	mov	ebx,[ebp-28]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_49
_7
_l_2frm_plus
_l_2frm_minus
	mov	[ebp-32],0
	jmp	_50
_51
	mov	[ebp-36],1
	jmp	_53
_52
	add	[ebp-36],1
_53
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_aln]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	[ebp-80],eax
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	[ebp-84],eax
	sub	esp,4
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aln]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-84]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-80]
	mov	[esp],esi
	mov	[ebp-80],eax
	sub	esp,4
	mov	[esp],9
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	mov	eax,esi
	call	__bbStrCompare
	mov	esi,eax
	mov	eax,[ebp-76]
	cmp	esi,0
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-72]
	or	eax,esi
	and	eax,eax
	jnz	_52
_9
	sub	[ebp-36],1
	cmp	[ebp-36],0
	jle	_55
	sub	esp,20
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_aln]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-72]
	sub	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_55
	jmp	_57
_56
	sub	esp,20
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_aln]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-72]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_57
	sub	esp,20
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_aln]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	[ebp-80],eax
	sub	esp,8
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	[ebp-80],eax
	sub	esp,4
	mov	[esp],9
	mov	eax,esi
	call	_fchr
	mov	esi,eax
	mov	eax,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-76]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	and	eax,eax
	jnz	_56
_10
	add	[ebp-32],1
_50
	mov	ebx,[ebp-16]
	cmp	[ebp-32],ebx
	jle	_51
_8
	mov	[ebp-32],0
	jmp	_59
_60
	mov	ebx,[ebp-44]
	add	[ebp-40],ebx
	mov	[ebp-44],0
	mov	[ebp-48],0
	jmp	_61
_62
	sub	esp,16
	mov	eax,[ebp-48]
	shl	eax,byte 2
	add	eax,[_af_minus]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	cmp	ebx,1
	jnz	_63
	sub	[ebp-40],1
	jmp	_12
_63
	add	[ebp-48],1
_61
	mov	ebx,[ebp-28]
	sub	ebx,1
	cmp	[ebp-48],ebx
	jle	_62
_12
	mov	[ebp-48],0
	jmp	_64
_65
	sub	esp,16
	mov	eax,[ebp-48]
	shl	eax,byte 2
	add	eax,[_af_plus]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	cmp	ebx,1
	jnz	_66
	mov	[ebp-44],1
	sub	esp,16
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-52],ebx
	sub	esp,16
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-56],ebx
	cmp	[ebp-52],0
	setnz	al
	movzx	eax,al
	mov	[ebp-72],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-76]
	sub	ebx,6
	cmp	[ebp-52],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	mov	[ebp-72],eax
	cmp	[ebp-56],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[ebp-72],eax
	mov	esi,[ebp-52]
	add	esi,4
	cmp	[ebp-56],esi
	mov	eax,esi
	setge	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-72]
	or	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_69
	mov	[ebp-44],0
_69
	cmp	[ebp-52],0
	setnz	al
	movzx	eax,al
	mov	[ebp-72],eax
	mov	ebx,[ebp-52]
	add	ebx,4
	cmp	[ebp-56],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_70
	mov	[ebp-44],1
	mov	ebx,[ebp-52]
	add	ebx,4
	mov	[ebp-60],ebx
	jmp	_71
_72
	sub	esp,20
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_aln]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-72],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	[ebp-80],eax
	sub	esp,4
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	[ebp-80],eax
	sub	esp,4
	mov	[esp],9
	mov	eax,esi
	call	_fchr
	mov	esi,eax
	mov	eax,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-76]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	mov	[ebp-72],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	[ebp-80],eax
	sub	esp,4
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	[ebp-80],eax
	sub	esp,4
	mov	esi,_75
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-76]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_73
	mov	[ebp-44],0
_73
	add	[ebp-60],1
_71
	mov	ebx,[ebp-56]
	cmp	[ebp-60],ebx
	jle	_72
_14
_70
	jmp	_13
_66
	add	[ebp-48],1
_64
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-48],ebx
	jle	_65
_13
	sub	esp,24
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,28
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-32],1
_59
	mov	ebx,[ebp-16]
	cmp	[ebp-32],ebx
	jle	_60
_11
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-68],eax
	mov	[ebp-32],0
	jmp	_76
_77
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aln]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-32],1
_76
	mov	ebx,[ebp-16]
	cmp	[ebp-32],ebx
	jle	_77
_15
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,40
	mov	eax,_78
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,[ebp-64]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_37	.db	"auto_scr_format.bb",0
_38	.db	"  ",0
_39	.db	".fbk",0
	.align	4
_aln	.dd	0
	.dd	3
	.dd	1
	.dd	0
_43	.db	"",0
_45	.db	"",0
	.align	4
_af_plus	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_af_minus	.dd	0
	.dd	3
	.dd	1
	.dd	0
_54	.db	" ",0
_58	.db	" ",0
_67	.db	"Then",0
_68	.db	";",0
_74	.db	" ",0
_75	.db	";",0
_78	.db	"ok, formatted ",0
_79	.db	" (",0
_80	.db	" Lines of code.)",0
_81	.db	"Key",0
_16	.db	"If",0
_17	.db	"While",0
_18	.db	"For ",0
_19	.db	"Repeat",0
_20	.db	"Function",0
_21	.db	"Type",0
_22	.db	"Else",0
_23	.db	"Select",0
_24	.db	"Case",0
_25	.db	"",0
_26	.db	"EndIf",0
_27	.db	"Wend",0
_28	.db	"Until",0
_29	.db	"Forever",0
_30	.db	"End Function",0
_31	.db	"End Type",0
_32	.db	"Else",0
_33	.db	"Next",0
_34	.db	"End Select",0
_35	.db	"Case",0
_36	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_16
	.dd	4
	.dd	_17
	.dd	4
	.dd	_18
	.dd	4
	.dd	_19
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	4
	.dd	_24
	.dd	4
	.dd	_25
	.dd	4
	.dd	_26
	.dd	4
	.dd	_27
	.dd	4
	.dd	_28
	.dd	4
	.dd	_29
	.dd	4
	.dd	_30
	.dd	4
	.dd	_31
	.dd	4
	.dd	_32
	.dd	4
	.dd	_33
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	4
	.dd	_36
	.dd	0

