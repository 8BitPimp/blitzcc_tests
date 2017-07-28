
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
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fget_id3v1_info
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_20
	sub	esp,16
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fget_id3v1_titel
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fget_id3v1_interpreter
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fget_id3v1_album
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fget_id3v1_year
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fget_id3v1_comment
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fget_id3v1_category
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	jmp	_27
_20
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_27
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
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
_fget_id3v1_info
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],127
	call	_fcreatebank
	mov	[ebp-8],eax
	cmp	[ebp-4],0
	jnz	_29
	mov	eax,0
	jmp	_3_leave
_29
	mov	[ebp-12],1
	jmp	_30
_31
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadbyte
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-12],1
_30
	cmp	[ebp-12],3
	jle	_31
_4
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_32
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_3_leave
_32
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilesize
	mov	ebx,eax
	mov	eax,[ebp-24]
	sub	ebx,128
	mov	[esp+4],ebx
	call	_fseekfile
	mov	[ebp-12],0
	jmp	_34
_35
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[esp+8],eax
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
_34
	cmp	[ebp-12],126
	jle	_35
_5
	mov	[ebp-12],0
	jmp	_36
_37
	sub	esp,28
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-12],1
_36
	cmp	[ebp-12],2
	jle	_37
_6
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_38
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,0
	jmp	_3_leave
_38
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-8]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp+20]
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
_fget_id3v1_titel
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
	mov	[ebp-4],3
	jmp	_40
_41
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_42
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_43
_42
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_44
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_7_leave
	jmp	_45
_44
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	jmp	_7_leave
_45
_43
	add	[ebp-4],1
_40
	cmp	[ebp-4],33
	jle	_41
_8
	sub	esp,4
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	jmp	_7_leave
_7_leave
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
	ret	word 4
	.align	16
_fget_id3v1_interpreter
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
	mov	[ebp-4],33
	jmp	_48
_49
	cmp	[ebp-8],0
	jz	_50
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_51
_50
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_52
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	jmp	_53
_52
	sub	esp,4
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_53
_51
	add	[ebp-4],1
_48
	cmp	[ebp-4],62
	jle	_49
_10
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
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
	ret	word 4
	.align	16
_fget_id3v1_album
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
	mov	[ebp-4],63
	jmp	_56
_57
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_58
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_59
_58
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_60
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_11_leave
	jmp	_61
_60
	sub	esp,4
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	jmp	_11_leave
_61
_59
	add	[ebp-4],1
_56
	cmp	[ebp-4],93
	jle	_57
_12
	sub	esp,4
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	jmp	_11_leave
_11_leave
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
	ret	word 4
	.align	16
_fget_id3v1_year
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
	mov	[ebp-4],93
	jmp	_64
_65
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_66
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_67
_66
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_68
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_13_leave
	jmp	_69
_68
	mov	eax,0
	jmp	_13_leave
_69
_67
	add	[ebp-4],1
_64
	cmp	[ebp-4],97
	jle	_65
_14
	mov	eax,0
	jmp	_13_leave
_13_leave
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
	ret	word 4
	.align	16
_fget_id3v1_comment
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
	mov	[ebp-4],97
	jmp	_70
_71
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_72
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_73
_72
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_74
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_15_leave
	jmp	_75
_74
	sub	esp,4
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	jmp	_15_leave
_75
_73
	add	[ebp-4],1
_70
	cmp	[ebp-4],127
	jle	_71
_16
	sub	esp,4
	mov	eax,_77
	mov	[esp],eax
	call	__bbStrConst
	jmp	_15_leave
_15_leave
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
	ret	word 4
	.align	16
_fget_id3v1_category
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],126
	call	_fpeekbyte
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_79
	cmp	[ebp-8],1
	jz	_80
	cmp	[ebp-8],2
	jz	_81
	cmp	[ebp-8],3
	jz	_82
	cmp	[ebp-8],4
	jz	_83
	cmp	[ebp-8],5
	jz	_84
	cmp	[ebp-8],6
	jz	_85
	cmp	[ebp-8],7
	jz	_86
	cmp	[ebp-8],8
	jz	_87
	cmp	[ebp-8],9
	jz	_88
	cmp	[ebp-8],10
	jz	_89
	cmp	[ebp-8],11
	jz	_90
	cmp	[ebp-8],12
	jz	_91
	cmp	[ebp-8],13
	jz	_92
	cmp	[ebp-8],14
	jz	_93
	cmp	[ebp-8],15
	jz	_94
	cmp	[ebp-8],16
	jz	_95
	cmp	[ebp-8],17
	jz	_96
	cmp	[ebp-8],18
	jz	_97
	cmp	[ebp-8],19
	jz	_98
	cmp	[ebp-8],20
	jz	_99
	cmp	[ebp-8],21
	jz	_100
	cmp	[ebp-8],22
	jz	_101
	cmp	[ebp-8],23
	jz	_102
	cmp	[ebp-8],24
	jz	_103
	cmp	[ebp-8],25
	jz	_104
	cmp	[ebp-8],26
	jz	_105
	cmp	[ebp-8],27
	jz	_106
	cmp	[ebp-8],28
	jz	_107
	cmp	[ebp-8],29
	jz	_108
	cmp	[ebp-8],30
	jz	_109
	cmp	[ebp-8],31
	jz	_110
	cmp	[ebp-8],32
	jz	_111
	cmp	[ebp-8],33
	jz	_112
	cmp	[ebp-8],34
	jz	_113
	cmp	[ebp-8],35
	jz	_114
	cmp	[ebp-8],36
	jz	_115
	cmp	[ebp-8],37
	jz	_116
	cmp	[ebp-8],38
	jz	_117
	cmp	[ebp-8],39
	jz	_118
	cmp	[ebp-8],40
	jz	_119
	cmp	[ebp-8],41
	jz	_120
	cmp	[ebp-8],42
	jz	_121
	cmp	[ebp-8],43
	jz	_122
	cmp	[ebp-8],44
	jz	_123
	cmp	[ebp-8],45
	jz	_124
	cmp	[ebp-8],46
	jz	_125
	cmp	[ebp-8],47
	jz	_126
	cmp	[ebp-8],48
	jz	_127
	cmp	[ebp-8],49
	jz	_128
	cmp	[ebp-8],50
	jz	_129
	cmp	[ebp-8],51
	jz	_130
	cmp	[ebp-8],52
	jz	_131
	cmp	[ebp-8],53
	jz	_132
	cmp	[ebp-8],54
	jz	_133
	cmp	[ebp-8],55
	jz	_134
	cmp	[ebp-8],56
	jz	_135
	cmp	[ebp-8],57
	jz	_136
	cmp	[ebp-8],58
	jz	_137
	cmp	[ebp-8],59
	jz	_138
	cmp	[ebp-8],60
	jz	_139
	cmp	[ebp-8],61
	jz	_140
	cmp	[ebp-8],62
	jz	_141
	cmp	[ebp-8],63
	jz	_142
	cmp	[ebp-8],64
	jz	_143
	cmp	[ebp-8],65
	jz	_144
	cmp	[ebp-8],66
	jz	_145
	cmp	[ebp-8],67
	jz	_146
	cmp	[ebp-8],68
	jz	_147
	cmp	[ebp-8],69
	jz	_148
	cmp	[ebp-8],70
	jz	_149
	cmp	[ebp-8],71
	jz	_150
	cmp	[ebp-8],72
	jz	_151
	cmp	[ebp-8],73
	jz	_152
	cmp	[ebp-8],74
	jz	_153
	cmp	[ebp-8],75
	jz	_154
	cmp	[ebp-8],76
	jz	_155
	cmp	[ebp-8],77
	jz	_156
	cmp	[ebp-8],78
	jz	_157
	cmp	[ebp-8],79
	jz	_158
	cmp	[ebp-8],80
	jz	_159
	cmp	[ebp-8],81
	jz	_160
	cmp	[ebp-8],82
	jz	_161
	cmp	[ebp-8],83
	jz	_162
	cmp	[ebp-8],84
	jz	_163
	cmp	[ebp-8],85
	jz	_164
	cmp	[ebp-8],86
	jz	_165
	cmp	[ebp-8],87
	jz	_166
	cmp	[ebp-8],88
	jz	_167
	cmp	[ebp-8],89
	jz	_168
	cmp	[ebp-8],90
	jz	_169
	cmp	[ebp-8],91
	jz	_170
	cmp	[ebp-8],92
	jz	_171
	cmp	[ebp-8],93
	jz	_172
	cmp	[ebp-8],94
	jz	_173
	cmp	[ebp-8],95
	jz	_174
	cmp	[ebp-8],96
	jz	_175
	cmp	[ebp-8],97
	jz	_176
	cmp	[ebp-8],98
	jz	_177
	cmp	[ebp-8],99
	jz	_178
	cmp	[ebp-8],100
	jz	_179
	cmp	[ebp-8],101
	jz	_180
	cmp	[ebp-8],102
	jz	_181
	cmp	[ebp-8],103
	jz	_182
	cmp	[ebp-8],104
	jz	_183
	cmp	[ebp-8],105
	jz	_184
	cmp	[ebp-8],106
	jz	_185
	cmp	[ebp-8],107
	jz	_186
	cmp	[ebp-8],108
	jz	_187
	cmp	[ebp-8],109
	jz	_188
	cmp	[ebp-8],110
	jz	_189
	cmp	[ebp-8],111
	jz	_190
	cmp	[ebp-8],112
	jz	_191
	cmp	[ebp-8],113
	jz	_192
	cmp	[ebp-8],114
	jz	_193
	cmp	[ebp-8],115
	jz	_194
	cmp	[ebp-8],116
	jz	_195
	cmp	[ebp-8],117
	jz	_196
	cmp	[ebp-8],118
	jz	_197
	cmp	[ebp-8],119
	jz	_198
	cmp	[ebp-8],120
	jz	_199
	cmp	[ebp-8],121
	jz	_200
	cmp	[ebp-8],122
	jz	_201
	cmp	[ebp-8],123
	jz	_202
	cmp	[ebp-8],124
	jz	_203
	cmp	[ebp-8],125
	jz	_204
	jmp	_78
_79
	sub	esp,4
	mov	eax,_205
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_80
	sub	esp,4
	mov	eax,_206
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_81
	sub	esp,4
	mov	eax,_207
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_82
	sub	esp,4
	mov	eax,_208
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_83
	sub	esp,4
	mov	eax,_209
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_84
	sub	esp,4
	mov	eax,_210
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_85
	sub	esp,4
	mov	eax,_211
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_86
	sub	esp,4
	mov	eax,_212
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_87
	sub	esp,4
	mov	eax,_213
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_88
	sub	esp,4
	mov	eax,_214
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_89
	sub	esp,4
	mov	eax,_215
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_90
	sub	esp,4
	mov	eax,_216
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_91
	sub	esp,4
	mov	eax,_217
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_92
	sub	esp,4
	mov	eax,_218
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_93
	sub	esp,4
	mov	eax,_219
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_94
	sub	esp,4
	mov	eax,_220
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_95
	sub	esp,4
	mov	eax,_221
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_96
	sub	esp,4
	mov	eax,_222
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_97
	sub	esp,4
	mov	eax,_223
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_98
	sub	esp,4
	mov	eax,_224
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_99
	sub	esp,4
	mov	eax,_225
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_100
	sub	esp,4
	mov	eax,_226
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_101
	sub	esp,4
	mov	eax,_227
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_102
	sub	esp,4
	mov	eax,_228
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_103
	sub	esp,4
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_104
	sub	esp,4
	mov	eax,_230
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_105
	sub	esp,4
	mov	eax,_231
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_106
	sub	esp,4
	mov	eax,_232
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_107
	sub	esp,4
	mov	eax,_233
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_108
	sub	esp,4
	mov	eax,_234
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_109
	sub	esp,4
	mov	eax,_235
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_110
	sub	esp,4
	mov	eax,_236
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_111
	sub	esp,4
	mov	eax,_237
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_112
	sub	esp,4
	mov	eax,_238
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_113
	sub	esp,4
	mov	eax,_239
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_114
	sub	esp,4
	mov	eax,_240
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_115
	sub	esp,4
	mov	eax,_241
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_116
	sub	esp,4
	mov	eax,_242
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_117
	sub	esp,4
	mov	eax,_243
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_118
	sub	esp,4
	mov	eax,_244
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_119
	sub	esp,4
	mov	eax,_245
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_120
	sub	esp,4
	mov	eax,_246
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_121
	sub	esp,4
	mov	eax,_247
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_122
	sub	esp,4
	mov	eax,_248
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_123
	sub	esp,4
	mov	eax,_249
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_124
	sub	esp,4
	mov	eax,_250
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_125
	sub	esp,4
	mov	eax,_251
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_126
	sub	esp,4
	mov	eax,_252
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_127
	sub	esp,4
	mov	eax,_253
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_128
	sub	esp,4
	mov	eax,_254
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_129
	sub	esp,4
	mov	eax,_255
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_130
	sub	esp,4
	mov	eax,_256
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_131
	sub	esp,4
	mov	eax,_257
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_132
	sub	esp,4
	mov	eax,_258
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_133
	sub	esp,4
	mov	eax,_259
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_134
	sub	esp,4
	mov	eax,_260
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_135
	sub	esp,4
	mov	eax,_261
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_136
	sub	esp,4
	mov	eax,_262
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_137
	sub	esp,4
	mov	eax,_263
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_138
	sub	esp,4
	mov	eax,_264
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_139
	sub	esp,4
	mov	eax,_265
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_140
	sub	esp,4
	mov	eax,_266
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_141
	sub	esp,4
	mov	eax,_267
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_142
	sub	esp,4
	mov	eax,_268
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_143
	sub	esp,4
	mov	eax,_269
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_144
	sub	esp,4
	mov	eax,_270
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_145
	sub	esp,4
	mov	eax,_271
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_146
	sub	esp,4
	mov	eax,_272
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_147
	sub	esp,4
	mov	eax,_273
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_148
	sub	esp,4
	mov	eax,_274
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_149
	sub	esp,4
	mov	eax,_275
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_150
	sub	esp,4
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_151
	sub	esp,4
	mov	eax,_277
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_152
	sub	esp,4
	mov	eax,_278
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_153
	sub	esp,4
	mov	eax,_279
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_154
	sub	esp,4
	mov	eax,_280
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_155
	sub	esp,4
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_156
	sub	esp,4
	mov	eax,_282
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_157
	sub	esp,4
	mov	eax,_283
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_158
	sub	esp,4
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_159
	sub	esp,4
	mov	eax,_285
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_160
	sub	esp,4
	mov	eax,_286
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_161
	sub	esp,4
	mov	eax,_287
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_162
	sub	esp,4
	mov	eax,_288
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_163
	sub	esp,4
	mov	eax,_289
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_164
	sub	esp,4
	mov	eax,_290
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_165
	sub	esp,4
	mov	eax,_291
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_166
	sub	esp,4
	mov	eax,_292
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_167
	sub	esp,4
	mov	eax,_293
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_168
	sub	esp,4
	mov	eax,_294
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_169
	sub	esp,4
	mov	eax,_295
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_170
	sub	esp,4
	mov	eax,_296
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_171
	sub	esp,4
	mov	eax,_297
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_172
	sub	esp,4
	mov	eax,_298
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_173
	sub	esp,4
	mov	eax,_299
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_174
	sub	esp,4
	mov	eax,_300
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_175
	sub	esp,4
	mov	eax,_301
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_176
	sub	esp,4
	mov	eax,_302
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_177
	sub	esp,4
	mov	eax,_303
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_178
	sub	esp,4
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_179
	sub	esp,4
	mov	eax,_305
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_180
	sub	esp,4
	mov	eax,_306
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_181
	sub	esp,4
	mov	eax,_307
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_182
	sub	esp,4
	mov	eax,_308
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_183
	sub	esp,4
	mov	eax,_309
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_184
	sub	esp,4
	mov	eax,_310
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_185
	sub	esp,4
	mov	eax,_311
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_186
	sub	esp,4
	mov	eax,_312
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_187
	sub	esp,4
	mov	eax,_313
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_188
	sub	esp,4
	mov	eax,_314
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_189
	sub	esp,4
	mov	eax,_315
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_190
	sub	esp,4
	mov	eax,_316
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_191
	sub	esp,4
	mov	eax,_317
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_192
	sub	esp,4
	mov	eax,_318
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_193
	sub	esp,4
	mov	eax,_319
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_194
	sub	esp,4
	mov	eax,_320
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_195
	sub	esp,4
	mov	eax,_321
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_196
	sub	esp,4
	mov	eax,_322
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_197
	sub	esp,4
	mov	eax,_323
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_198
	sub	esp,4
	mov	eax,_324
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_199
	sub	esp,4
	mov	eax,_325
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_200
	sub	esp,4
	mov	eax,_326
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_201
	sub	esp,4
	mov	eax,_327
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_202
	sub	esp,4
	mov	eax,_328
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_203
	sub	esp,4
	mov	eax,_329
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_204
	sub	esp,4
	mov	eax,_330
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
	jmp	_78
_78
	sub	esp,4
	mov	eax,_331
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_19	.db	"Music.mp3",0
_21	.db	"Titel:       ",0
_22	.db	"Interpreter: ",0
_23	.db	"Album:       ",0
_24	.db	"Year:        ",0
_25	.db	"Comment:     ",0
_26	.db	"Category:    ",0
_28	.db	"Cant read informations",0
_33	.db	"ID3",0
_39	.db	"TAG",0
_46	.db	"Unknown",0
_47	.db	"",0
_54	.db	"Unknown",0
_55	.db	"",0
_62	.db	"Unknown",0
_63	.db	"",0
_76	.db	"Unknown",0
_77	.db	"",0
_205	.db	"Unknown",0
_206	.db	"Blues",0
_207	.db	"Classic Rock",0
_208	.db	"Country",0
_209	.db	"Dance",0
_210	.db	"Disco",0
_211	.db	"Funk",0
_212	.db	"Grunge",0
_213	.db	"Hip-Hop",0
_214	.db	"Jazz",0
_215	.db	"Metal",0
_216	.db	"New Age",0
_217	.db	"Oldies",0
_218	.db	"Other",0
_219	.db	"Pop",0
_220	.db	"R&B",0
_221	.db	"Rap",0
_222	.db	"Reggae",0
_223	.db	"Rock",0
_224	.db	"Techno",0
_225	.db	"Industrial",0
_226	.db	"Alternative",0
_227	.db	"Ska",0
_228	.db	"Death Metal",0
_229	.db	"Pranks",0
_230	.db	"Soundtrack",0
_231	.db	"Euro-Techno",0
_232	.db	"Ambient",0
_233	.db	"Trip-Hop",0
_234	.db	"Vocal",0
_235	.db	"Jazz+Funk",0
_236	.db	"Fusion",0
_237	.db	"Trance",0
_238	.db	"Classical",0
_239	.db	"Instrumental",0
_240	.db	"Acid",0
_241	.db	"House",0
_242	.db	"Game",0
_243	.db	"Sound Clip",0
_244	.db	"Gospel",0
_245	.db	"Noise",0
_246	.db	"AlternRock",0
_247	.db	"Bass",0
_248	.db	"Soul",0
_249	.db	"Punk",0
_250	.db	"Space",0
_251	.db	"Meditative",0
_252	.db	"Instrumental Pop",0
_253	.db	"Instrumental Rock",0
_254	.db	"Ethnic",0
_255	.db	"Gothic",0
_256	.db	"Darkwave",0
_257	.db	"Techno-Industrial",0
_258	.db	"Electronic",0
_259	.db	"Pop-Folk",0
_260	.db	"Eurodance",0
_261	.db	"Dream",0
_262	.db	"Southern Rock",0
_263	.db	"Comedy",0
_264	.db	"Cult",0
_265	.db	"Gangsta",0
_266	.db	"Top 40",0
_267	.db	"Christian Rap",0
_268	.db	"Pop/Funk",0
_269	.db	"Jungle",0
_270	.db	"Native American",0
_271	.db	"Cabaret",0
_272	.db	"New Wave",0
_273	.db	"Psychadelic",0
_274	.db	"Rave",0
_275	.db	"Showtunes",0
_276	.db	"Trailer",0
_277	.db	"Lo-Fi",0
_278	.db	"Tribal",0
_279	.db	"Acid Punk",0
_280	.db	"Acid Jazz",0
_281	.db	"Polka",0
_282	.db	"Retro",0
_283	.db	"Musical",0
_284	.db	"Rock & Roll",0
_285	.db	"Hard Rock",0
_286	.db	"Folk",0
_287	.db	"Folk/Rock",0
_288	.db	"National Folk",0
_289	.db	"Swing",0
_290	.db	"Bebob",0
_291	.db	"Latin",0
_292	.db	"Revival",0
_293	.db	"Celtic",0
_294	.db	"Bluegrass",0
_295	.db	"Avantgarde",0
_296	.db	"Gothic Rock",0
_297	.db	"Progressive Rock",0
_298	.db	"Psychedelic Rock",0
_299	.db	"Symphonic Rock",0
_300	.db	"Slow Rock",0
_301	.db	"Big Band",0
_302	.db	"Chorus",0
_303	.db	"Easy Listening",0
_304	.db	"Acoustic",0
_305	.db	"Humour",0
_306	.db	"Speech",0
_307	.db	"Chanson",0
_308	.db	"Opera",0
_309	.db	"Chamber Music",0
_310	.db	"Sonata",0
_311	.db	"Symphony",0
_312	.db	"Booty Bass",0
_313	.db	"Primus",0
_314	.db	"Porn Groove",0
_315	.db	"Satire",0
_316	.db	"Slow Jam",0
_317	.db	"Club",0
_318	.db	"Tango",0
_319	.db	"Samba",0
_320	.db	"Folklore",0
_321	.db	"Ballad",0
_322	.db	"Power Ballad",0
_323	.db	"Rhythmic Soul",0
_324	.db	"Freestyle",0
_325	.db	"Duet",0
_326	.db	"Punk Rock",0
_327	.db	"Drum Solo",0
_328	.db	"A capella",0
_329	.db	"Euro-House",0
_330	.db	"Dance Hall",0
_331	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

