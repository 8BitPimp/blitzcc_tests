
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
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fhextodec
	sub	esp,16
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vrtot]
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
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vgtot]
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
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vbtot]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	ret
_2_leave
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
	ret	word 0
	.align	16
_fhextodec
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,20
	mov	[esp+4],2
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],4
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],6
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],3
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],5
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],7
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-28],eax
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_11
	mov	[ebp-28],10
_11
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_13
	mov	[ebp-28],11
_13
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_15
	mov	[ebp-28],12
_15
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_17
	mov	[ebp-28],13
_17
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_19
	mov	[ebp-28],14
_19
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_21
	mov	[ebp-28],15
_21
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-32],eax
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_23
	mov	[ebp-32],10
_23
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_25
	mov	[ebp-32],11
_25
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_27
	mov	[ebp-32],12
_27
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_29
	mov	[ebp-32],13
_29
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_31
	mov	[ebp-32],14
_31
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_33
	mov	[ebp-32],15
_33
	mov	ebx,[ebp-32]
	shl	ebx,byte 4
	mov	[ebp-32],ebx
	mov	ebx,[ebp-32]
	add	ebx,[ebp-28]
	mov	[_vrtot],ebx
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-36],eax
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_35
	mov	[ebp-36],10
_35
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_37
	mov	[ebp-36],11
_37
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_39
	mov	[ebp-36],12
_39
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_41
	mov	[ebp-36],13
_41
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_43
	mov	[ebp-36],14
_43
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_45
	mov	[ebp-36],15
_45
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-40],eax
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_47
	mov	[ebp-40],10
_47
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_49
	mov	[ebp-40],11
_49
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_51
	mov	[ebp-40],12
_51
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_53
	mov	[ebp-40],13
_53
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_55
	mov	[ebp-40],14
_55
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_57
	mov	[ebp-40],15
_57
	mov	ebx,[ebp-40]
	shl	ebx,byte 4
	mov	[ebp-40],ebx
	mov	ebx,[ebp-40]
	add	ebx,[ebp-36]
	mov	[_vgtot],ebx
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-44],eax
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_59
	mov	[ebp-44],10
_59
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_61
	mov	[ebp-44],11
_61
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_63
	mov	[ebp-44],12
_63
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_65
	mov	[ebp-44],13
_65
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_67
	mov	[ebp-44],14
_67
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_69
	mov	[ebp-44],15
_69
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-48],eax
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_72
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_71
	mov	[ebp-48],10
_71
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_73
	mov	[ebp-48],11
_73
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_75
	mov	[ebp-48],12
_75
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_77
	mov	[ebp-48],13
_77
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_79
	mov	[ebp-48],14
_79
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_81
	mov	[ebp-48],15
_81
	mov	ebx,[ebp-48]
	shl	ebx,byte 4
	mov	[ebp-48],ebx
	mov	ebx,[ebp-48]
	add	ebx,[ebp-44]
	mov	[_vbtot],ebx
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vrtot	.dd	0
	.align	4
_vgtot	.dd	0
	.align	4
_vbtot	.dd	0
_4	.db	"#10011A",0
_5	.db	"The Hex Value is ",0
_6	.db	" ",0
_7	.db	"In RGB the values are:",0
_8	.db	" R = ",0
_9	.db	" G = ",0
_10	.db	" B = ",0
_12	.db	"A",0
_14	.db	"B",0
_16	.db	"C",0
_18	.db	"D",0
_20	.db	"E",0
_22	.db	"F",0
_24	.db	"A",0
_26	.db	"B",0
_28	.db	"C",0
_30	.db	"D",0
_32	.db	"E",0
_34	.db	"F",0
_36	.db	"A",0
_38	.db	"B",0
_40	.db	"C",0
_42	.db	"D",0
_44	.db	"E",0
_46	.db	"F",0
_48	.db	"A",0
_50	.db	"B",0
_52	.db	"C",0
_54	.db	"D",0
_56	.db	"E",0
_58	.db	"F",0
_60	.db	"A",0
_62	.db	"B",0
_64	.db	"C",0
_66	.db	"D",0
_68	.db	"E",0
_70	.db	"F",0
_72	.db	"A",0
_74	.db	"B",0
_76	.db	"C",0
_78	.db	"D",0
_80	.db	"E",0
_82	.db	"F",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

