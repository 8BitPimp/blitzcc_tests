
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,8
	mov	[esp],_vg
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
_l_2loop
	mov	[ebp-4],0
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-8],eax
	jmp	_8
_7
	add	[ebp-4],1
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-32],eax
_l_2loop1
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jnz	_9
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-16],eax
	jmp	_l_2loop1
_9
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jnz	_10
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-20],eax
	jmp	_l_2loop1
_10
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	jnz	_11
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-24],eax
	jmp	_l_2loop1
_11
	mov	ebx,[ebp-28]
	cmp	[ebp-24],ebx
	jnz	_12
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-28],eax
	jmp	_l_2loop1
_12
	mov	ebx,[ebp-32]
	cmp	[ebp-28],ebx
	jnz	_13
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],26
	call	_frand
	mov	[ebp-32],eax
	jmp	_l_2loop1
_13
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fgetletter
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgetletter
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fgetletter
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fgetletter
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fgetletter
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fgetletter
	sub	esp,8
	mov	eax,_vg
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	[esp],_vg
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
_8
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jnz	_7
_3
	jmp	_l_2loop
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetletter
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],1
	jnz	_15
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_17
_15
	cmp	[ebp+20],2
	jnz	_18
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_20
_18
	cmp	[ebp+20],3
	jnz	_21
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_23
_21
	cmp	[ebp+20],4
	jnz	_24
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_26
_24
	cmp	[ebp+20],5
	jnz	_27
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_29
_27
	cmp	[ebp+20],6
	jnz	_30
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_32
_30
	cmp	[ebp+20],7
	jnz	_33
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_35
_33
	cmp	[ebp+20],8
	jnz	_36
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_38
_36
	cmp	[ebp+20],9
	jnz	_39
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_41
_39
	cmp	[ebp+20],10
	jnz	_42
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_44
_42
	cmp	[ebp+20],11
	jnz	_45
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_47
_45
	cmp	[ebp+20],12
	jnz	_48
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_50
_48
	cmp	[ebp+20],13
	jnz	_51
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_53
_51
	cmp	[ebp+20],14
	jnz	_54
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_56
_54
	cmp	[ebp+20],15
	jnz	_57
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_59
_57
	cmp	[ebp+20],16
	jnz	_60
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_62
_60
	cmp	[ebp+20],17
	jnz	_63
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_65
_63
	cmp	[ebp+20],18
	jnz	_66
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_68
_66
	cmp	[ebp+20],19
	jnz	_69
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_71
_69
	cmp	[ebp+20],20
	jnz	_72
	sub	esp,8
	lea	eax,[ebp-4]
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
	call	__bbStrStore
	jmp	_74
_72
	cmp	[ebp+20],21
	jnz	_75
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_77
_75
	cmp	[ebp+20],22
	jnz	_78
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_80
_78
	cmp	[ebp+20],23
	jnz	_81
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_83
_81
	cmp	[ebp+20],24
	jnz	_84
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_86
_84
	cmp	[ebp+20],25
	jnz	_87
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_88
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_89
_87
	cmp	[ebp+20],26
	jnz	_90
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_91
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_90
_89
_86
_83
_80
_77
_74
_71
_68
_65
_62
_59
_56
_53
_50
_47
_44
_41
_38
_35
_32
_29
_26
_23
_20
_17
	sub	esp,20
	mov	eax,_vg
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vg
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	.align	4
_vg	.dd	0
_5	.db	"",0
_6	.db	"Words? - ",0
_14	.db	"",0
_16	.db	"a",0
_19	.db	"b",0
_22	.db	"c",0
_25	.db	"d",0
_28	.db	"e",0
_31	.db	"f",0
_34	.db	"g",0
_37	.db	"h",0
_40	.db	"i",0
_43	.db	"j",0
_46	.db	"k",0
_49	.db	"l",0
_52	.db	"m",0
_55	.db	"n",0
_58	.db	"o",0
_61	.db	"p",0
_64	.db	"q",0
_67	.db	"r",0
_70	.db	"s",0
_73	.db	"t",0
_76	.db	"u",0
_79	.db	"v",0
_82	.db	"w",0
_85	.db	"x",0
_88	.db	"y",0
_91	.db	"z",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

