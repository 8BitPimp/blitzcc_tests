
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],900
	mov	[esp],900
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],90
	sub	esp,4
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_agrid
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_agrid
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_apos
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_apos
	add	esi,16
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_apos
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apos
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadlevel
	mov	[ebp-4],1
	cmp	[ebp-4],1
	jz	_40
	cmp	[ebp-4],2
	jz	_41
	jmp	_39
_40
	call	_fmillisecs
	mov	[ebp-8],eax
_42
	call	_fupdatepos
	call	_fapplypos
	call	_fissolved
	and	eax,eax
	jz	_42
_4
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,28
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fdrawlevel
	jmp	_39
_41
_46
	call	_fcls
	call	_fdrawlevel
	call	_fupdatepos
	call	_fapplypos
	sub	esp,4
	mov	[esp],300
	call	_fdelay
	call	_fissolved
	and	eax,eax
	jz	_46
_5
	sub	esp,12
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fdrawlevel
	jmp	_39
_39
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
_floadlevel
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
	call	_freadfile
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_49
_50
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],1
	jmp	_51
_52
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	[ebx],eax
	mov	[ebp-20],1
	jmp	_53
_54
	mov	ebx,_apos
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-16]
	mov	esi,_apos
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_apos]
	mov	esi,1
	mov	[ebx],esi
	add	[ebp-20],1
_53
	cmp	[ebp-20],9
	jle	_54
_9
	add	[ebp-16],1
_51
	cmp	[ebp-16],9
	jle	_52
_8
	add	[ebp-8],1
_49
	cmp	[ebp-8],9
	jle	_50
_7
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdrawlevel
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
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],1
	jmp	_55
_56
	mov	[ebp-8],1
	jmp	_57
_58
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_59
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_59
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	imul	ebx,90
	sub	ebx,30
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	imul	eax,90
	sub	eax,30
	mov	[esp],eax
	call	_ftext
	add	[ebp-8],1
_57
	cmp	[ebp-8],9
	jle	_58
_12
	add	[ebp-4],1
_55
	cmp	[ebp-4],9
	jle	_56
_11
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	mov	[ebp-4],0
	jmp	_62
_63
	mov	[ebp-8],0
	jmp	_64
_65
	sub	esp,20
	mov	[esp+12],271
	mov	[esp+16],0
	mov	[esp+8],271
	mov	ebx,[ebp-8]
	imul	ebx,270
	add	ebx,55
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	imul	eax,270
	add	eax,40
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_64
	cmp	[ebp-8],2
	jle	_65
_14
	add	[ebp-4],1
_62
	cmp	[ebp-4],2
	jle	_63
_13
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
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
	ret	word 0
	.align	16
_fupdatepos
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-4],1
	jmp	_66
_67
	mov	[ebp-8],1
	jmp	_68
_69
	mov	[ebp-12],1
	jmp	_70
_71
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_72
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	esi,_apos
	add	esi,16
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,_apos
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_apos]
	mov	ebx,0
	mov	[esi],ebx
_72
	add	[ebp-12],1
_70
	cmp	[ebp-12],9
	jle	_71
_18
	add	[ebp-8],1
_68
	cmp	[ebp-8],9
	jle	_69
_17
	add	[ebp-4],1
_66
	cmp	[ebp-4],9
	jle	_67
_16
	mov	[ebp-8],1
	jmp	_73
_74
	mov	[ebp-4],1
	jmp	_75
_76
	mov	[ebp-12],1
	jmp	_77
_78
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_79
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	esi,_apos
	add	esi,16
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,_apos
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_apos]
	mov	ebx,0
	mov	[esi],ebx
_79
	add	[ebp-12],1
_77
	cmp	[ebp-12],9
	jle	_78
_21
	add	[ebp-4],1
_75
	cmp	[ebp-4],9
	jle	_76
_20
	add	[ebp-8],1
_73
	cmp	[ebp-8],9
	jle	_74
_19
	mov	[ebp-4],1
	jmp	_80
_81
	mov	ebx,[ebp-4]
	mov	[ebp-16],ebx
	cmp	[ebp-16],1
	jz	_83
	cmp	[ebp-16],2
	jz	_83
	cmp	[ebp-16],3
	jz	_83
	cmp	[ebp-16],4
	jz	_84
	cmp	[ebp-16],5
	jz	_84
	cmp	[ebp-16],6
	jz	_84
	cmp	[ebp-16],7
	jz	_85
	cmp	[ebp-16],8
	jz	_85
	cmp	[ebp-16],9
	jz	_85
	jmp	_82
_83
	mov	[ebp-20],1
	jmp	_82
_84
	mov	[ebp-20],4
	jmp	_82
_85
	mov	[ebp-20],7
	jmp	_82
_82
	mov	[ebp-8],1
	jmp	_86
_87
	mov	ebx,[ebp-8]
	mov	[ebp-24],ebx
	cmp	[ebp-24],1
	jz	_89
	cmp	[ebp-24],2
	jz	_89
	cmp	[ebp-24],3
	jz	_89
	cmp	[ebp-24],4
	jz	_90
	cmp	[ebp-24],5
	jz	_90
	cmp	[ebp-24],6
	jz	_90
	cmp	[ebp-24],7
	jz	_91
	cmp	[ebp-24],8
	jz	_91
	cmp	[ebp-24],9
	jz	_91
	jmp	_88
_89
	mov	[ebp-28],1
	jmp	_88
_90
	mov	[ebp-28],4
	jmp	_88
_91
	mov	[ebp-28],7
	jmp	_88
_88
	mov	ebx,[ebp-28]
	mov	[ebp-12],ebx
	jmp	_92
_93
	mov	ebx,[ebp-20]
	mov	[ebp-32],ebx
	jmp	_94
_95
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_96
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	esi,_apos
	add	esi,16
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,_apos
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_apos]
	mov	ebx,0
	mov	[esi],ebx
_96
	add	[ebp-32],1
_94
	mov	ebx,[ebp-20]
	add	ebx,2
	cmp	[ebp-32],ebx
	jle	_95
_27
	add	[ebp-12],1
_92
	mov	ebx,[ebp-28]
	add	ebx,2
	cmp	[ebp-12],ebx
	jle	_93
_26
	add	[ebp-8],1
_86
	cmp	[ebp-8],9
	jle	_87
_24
	add	[ebp-4],1
_80
	cmp	[ebp-4],9
	jle	_81
_22
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fapplypos
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
	mov	[ebp-4],1
	jmp	_97
_98
	mov	[ebp-8],1
	jmp	_99
_100
	mov	[ebp-12],0
	mov	[ebp-16],1
	jmp	_101
_102
	mov	ebx,_apos
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_apos
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_apos]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_103
	add	[ebp-12],1
	mov	ebx,[ebp-16]
	mov	[ebp-20],ebx
_103
	add	[ebp-16],1
_101
	cmp	[ebp-16],9
	jle	_102
_31
	cmp	[ebp-12],1
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_104
	mov	ebx,[ebp-20]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	[esi],ebx
_104
	add	[ebp-8],1
_99
	cmp	[ebp-8],9
	jle	_100
_30
	add	[ebp-4],1
_97
	cmp	[ebp-4],9
	jle	_98
_29
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fissolved
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_105
_106
	mov	[ebp-8],1
	jmp	_107
_108
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_109
	mov	eax,0
	jmp	_32_leave
_109
	add	[ebp-8],1
_107
	cmp	[ebp-8],9
	jle	_108
_34
	add	[ebp-4],1
_105
	cmp	[ebp-4],9
	jle	_106
_33
	mov	eax,1
	jmp	_32_leave
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_35	.db	"Sudoku solver",0
_36	.db	"",0
_37	.db	"Arial Black",0
	.align	4
_agrid	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_apos	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
_38	.db	"Level1.txt",0
_43	.db	"SOLVED in ",0
_44	.db	" ms.",0
_45	.db	"",0
_47	.db	"SOLVED.",0
_48	.db	"",0
_60	.db	"0",0
_61	.db	" ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

