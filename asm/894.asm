
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,4
	mov	eax,_aurlencodearray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_aurlencodearray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aurlencodearray
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,3
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,4
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,6
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,8
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,9
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,10
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,11
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,12
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,13
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,14
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,15
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,16
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,17
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,18
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,19
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,20
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,21
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,22
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,23
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,24
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,25
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,26
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,27
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,28
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,29
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,30
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,31
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,32
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,33
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,34
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,35
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,36
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,37
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,38
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,39
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,40
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,41
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,42
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,43
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,44
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_51
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,45
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,46
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,47
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,48
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,49
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,50
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,51
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,52
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,53
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,54
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,55
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,56
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,57
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,58
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,59
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,60
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,61
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,62
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,63
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,64
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_71
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,65
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_72
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,66
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_73
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,67
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,68
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,69
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,70
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,71
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,72
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,73
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,74
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_81
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,75
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,76
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_83
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,77
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_84
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,78
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,79
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_86
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,80
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_87
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,81
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_88
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,82
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_89
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,83
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_90
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,84
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_91
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,85
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_92
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,86
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_93
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,87
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_94
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,88
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_95
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,89
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_96
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,90
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_97
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,91
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_98
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,92
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_99
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,93
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_100
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,94
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_101
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,95
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_102
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,96
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_103
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,97
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_104
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,98
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_105
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,99
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_106
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,100
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_107
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,101
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_108
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,102
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_109
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,103
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_110
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,104
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_111
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,105
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_112
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,106
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_113
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,107
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_114
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,108
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_115
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,109
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_116
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,110
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_117
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,111
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_118
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,112
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_119
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,113
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_120
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,114
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_121
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,115
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_122
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,116
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_123
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,117
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_124
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,118
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_125
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,119
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_126
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,120
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_127
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,121
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_128
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,122
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_129
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,123
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_130
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,124
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_131
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,125
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_132
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,126
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_133
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,127
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_134
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,128
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_135
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,129
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_136
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,130
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_137
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,131
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_138
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,132
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_139
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,133
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_140
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,134
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_141
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,135
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_142
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,136
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_143
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,137
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_144
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,138
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_145
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,139
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_146
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,140
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_147
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,141
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_148
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,142
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_149
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,143
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_150
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,144
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_151
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,145
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_152
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,146
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_153
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,147
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_154
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,148
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_155
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,149
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_156
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,150
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_157
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,151
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_158
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,152
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_159
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,153
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_160
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,154
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_161
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,155
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_162
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,156
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_163
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,157
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_164
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,158
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_165
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,159
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_166
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,160
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_167
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,161
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_168
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,162
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_169
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,163
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_170
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,164
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_171
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,165
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_172
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,166
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_173
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,167
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_174
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,168
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_175
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,169
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_176
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,170
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_177
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,171
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_178
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,172
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_179
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,173
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_180
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,174
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_181
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,175
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_182
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,176
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_183
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,177
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_184
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,178
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_185
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,179
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_186
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,180
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_187
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,181
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_188
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,182
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_189
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,183
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_190
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,184
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_191
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,185
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_192
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,186
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_193
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,187
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_194
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,188
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_195
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,189
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_196
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,190
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_197
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,191
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_198
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,192
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_199
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,193
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_200
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,194
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_201
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,195
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_202
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,196
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_203
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,197
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_204
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,198
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_205
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,199
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_206
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,200
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_207
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,201
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_208
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,202
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_209
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,203
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_210
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,204
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_211
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,205
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_212
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,206
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_213
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,207
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_214
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,208
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_215
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,209
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_216
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,210
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_217
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,211
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_218
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,212
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_219
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,213
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_220
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,214
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_221
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,215
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_222
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,216
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_223
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,217
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_224
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,218
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_225
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,219
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_226
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,220
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_227
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,221
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_228
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,222
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_229
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,223
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_230
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,224
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_231
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,225
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_232
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,226
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_233
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,227
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_234
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,228
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_235
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,229
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_236
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,230
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_237
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,231
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_238
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,232
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_239
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,233
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_240
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,234
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_241
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,235
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_242
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,236
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_243
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,237
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_244
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,238
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_245
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,239
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_246
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,240
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_247
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,241
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_248
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,242
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_249
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,243
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_250
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,244
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_251
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,245
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_252
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,246
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_253
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,247
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_254
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,248
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_255
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,249
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_256
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,250
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_257
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,251
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_258
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,252
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_259
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,253
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_260
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,254
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_261
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,255
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_262
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_furlencode
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_263
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_264
_265
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
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
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fasc
	mov	[ebp-16],eax
	cmp	[ebp-16],48
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-16],57
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],65
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	cmp	[ebp-16],90
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-20]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],97
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	cmp	[ebp-16],122
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-20]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],43
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],45
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],46
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],95
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_266
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_267
_266
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_aurlencodearray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_267
	add	[ebp-8],1
_264
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_265
_4
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_268
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_furldecode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,24
	mov	eax,_269
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_270
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+8],ebx
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
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	mov	[ebp-4],255
	jmp	_271
_272
	sub	esp,24
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aurlencodearray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+8],ebx
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
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-4],-1
_271
	cmp	[ebp-4],0
	jge	_272
_6
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_5_leave
	sub	esp,4
	mov	eax,_273
	mov	[esp],eax
	call	__bbStrConst
	jmp	_5_leave
_5_leave
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
	.align	4
_aurlencodearray	.dd	0
	.dd	3
	.dd	1
	.dd	0
_7	.db	"%00",0
_8	.db	"%01",0
_9	.db	"%02",0
_10	.db	"%03",0
_11	.db	"%04",0
_12	.db	"%05",0
_13	.db	"%06",0
_14	.db	"%07",0
_15	.db	"%08",0
_16	.db	"%09",0
_17	.db	"%0A",0
_18	.db	"%0B",0
_19	.db	"%0C",0
_20	.db	"%0D",0
_21	.db	"%0E",0
_22	.db	"%0F",0
_23	.db	"%10",0
_24	.db	"%11",0
_25	.db	"%12",0
_26	.db	"%13",0
_27	.db	"%14",0
_28	.db	"%15",0
_29	.db	"%16",0
_30	.db	"%17",0
_31	.db	"%18",0
_32	.db	"%19",0
_33	.db	"%1A",0
_34	.db	"%1B",0
_35	.db	"%1C",0
_36	.db	"%1D",0
_37	.db	"%1E",0
_38	.db	"%1F",0
_39	.db	"+",0
_40	.db	"%21",0
_41	.db	"%22",0
_42	.db	"%23",0
_43	.db	"%24",0
_44	.db	"%25",0
_45	.db	"%26",0
_46	.db	"%27",0
_47	.db	"%28",0
_48	.db	"%29",0
_49	.db	"%2A",0
_50	.db	"%2B",0
_51	.db	"%2C",0
_52	.db	"%2D",0
_53	.db	"%2E",0
_54	.db	"%2F",0
_55	.db	"%30",0
_56	.db	"%31",0
_57	.db	"%32",0
_58	.db	"%33",0
_59	.db	"%34",0
_60	.db	"%35",0
_61	.db	"%36",0
_62	.db	"%37",0
_63	.db	"%38",0
_64	.db	"%39",0
_65	.db	"%3A",0
_66	.db	"%3B",0
_67	.db	"%3C",0
_68	.db	"%3D",0
_69	.db	"%3E",0
_70	.db	"%3F",0
_71	.db	"%40",0
_72	.db	"%41",0
_73	.db	"%42",0
_74	.db	"%43",0
_75	.db	"%44",0
_76	.db	"%45",0
_77	.db	"%46",0
_78	.db	"%47",0
_79	.db	"%48",0
_80	.db	"%49",0
_81	.db	"%4A",0
_82	.db	"%4B",0
_83	.db	"%4C",0
_84	.db	"%4D",0
_85	.db	"%4E",0
_86	.db	"%4F",0
_87	.db	"%50",0
_88	.db	"%51",0
_89	.db	"%52",0
_90	.db	"%53",0
_91	.db	"%54",0
_92	.db	"%55",0
_93	.db	"%56",0
_94	.db	"%57",0
_95	.db	"%58",0
_96	.db	"%59",0
_97	.db	"%5A",0
_98	.db	"%5B",0
_99	.db	"%5C",0
_100	.db	"%5D",0
_101	.db	"%5E",0
_102	.db	"%5F",0
_103	.db	"%60",0
_104	.db	"%61",0
_105	.db	"%62",0
_106	.db	"%63",0
_107	.db	"%64",0
_108	.db	"%65",0
_109	.db	"%66",0
_110	.db	"%67",0
_111	.db	"%68",0
_112	.db	"%69",0
_113	.db	"%6A",0
_114	.db	"%6B",0
_115	.db	"%6C",0
_116	.db	"%6D",0
_117	.db	"%6E",0
_118	.db	"%6F",0
_119	.db	"%70",0
_120	.db	"%71",0
_121	.db	"%72",0
_122	.db	"%73",0
_123	.db	"%74",0
_124	.db	"%75",0
_125	.db	"%76",0
_126	.db	"%77",0
_127	.db	"%78",0
_128	.db	"%79",0
_129	.db	"%7A",0
_130	.db	"%7B",0
_131	.db	"%7C",0
_132	.db	"%7D",0
_133	.db	"%7E",0
_134	.db	"%7F",0
_135	.db	"%80",0
_136	.db	"%81",0
_137	.db	"%82",0
_138	.db	"%83",0
_139	.db	"%84",0
_140	.db	"%85",0
_141	.db	"%86",0
_142	.db	"%87",0
_143	.db	"%88",0
_144	.db	"%89",0
_145	.db	"%8A",0
_146	.db	"%8B",0
_147	.db	"%8C",0
_148	.db	"%8D",0
_149	.db	"%8E",0
_150	.db	"%8F",0
_151	.db	"%90",0
_152	.db	"%91",0
_153	.db	"%92",0
_154	.db	"%93",0
_155	.db	"%94",0
_156	.db	"%95",0
_157	.db	"%96",0
_158	.db	"%97",0
_159	.db	"%98",0
_160	.db	"%99",0
_161	.db	"%9A",0
_162	.db	"%9B",0
_163	.db	"%9C",0
_164	.db	"%9D",0
_165	.db	"%9E",0
_166	.db	"%9F",0
_167	.db	"%A0",0
_168	.db	"%A1",0
_169	.db	"%A2",0
_170	.db	"%A3",0
_171	.db	"%A4",0
_172	.db	"%A5",0
_173	.db	"%A6",0
_174	.db	"%A7",0
_175	.db	"%A8",0
_176	.db	"%A9",0
_177	.db	"%AA",0
_178	.db	"%AB",0
_179	.db	"%AC",0
_180	.db	"%AD",0
_181	.db	"%AE",0
_182	.db	"%AF",0
_183	.db	"%B0",0
_184	.db	"%B1",0
_185	.db	"%B2",0
_186	.db	"%B3",0
_187	.db	"%B4",0
_188	.db	"%B5",0
_189	.db	"%B6",0
_190	.db	"%B7",0
_191	.db	"%B8",0
_192	.db	"%B9",0
_193	.db	"%BA",0
_194	.db	"%BB",0
_195	.db	"%BC",0
_196	.db	"%BD",0
_197	.db	"%BE",0
_198	.db	"%BF",0
_199	.db	"%C0",0
_200	.db	"%C1",0
_201	.db	"%C2",0
_202	.db	"%C3",0
_203	.db	"%C4",0
_204	.db	"%C5",0
_205	.db	"%C6",0
_206	.db	"%C7",0
_207	.db	"%C8",0
_208	.db	"%C9",0
_209	.db	"%CA",0
_210	.db	"%CB",0
_211	.db	"%CC",0
_212	.db	"%CD",0
_213	.db	"%CE",0
_214	.db	"%CF",0
_215	.db	"%D0",0
_216	.db	"%D1",0
_217	.db	"%D2",0
_218	.db	"%D3",0
_219	.db	"%D4",0
_220	.db	"%D5",0
_221	.db	"%D6",0
_222	.db	"%D7",0
_223	.db	"%D8",0
_224	.db	"%D9",0
_225	.db	"%DA",0
_226	.db	"%DB",0
_227	.db	"%DC",0
_228	.db	"%DD",0
_229	.db	"%DE",0
_230	.db	"%DF",0
_231	.db	"%E0",0
_232	.db	"%E1",0
_233	.db	"%E2",0
_234	.db	"%E3",0
_235	.db	"%E4",0
_236	.db	"%E5",0
_237	.db	"%E6",0
_238	.db	"%E7",0
_239	.db	"%E8",0
_240	.db	"%E9",0
_241	.db	"%EA",0
_242	.db	"%EB",0
_243	.db	"%EC",0
_244	.db	"%ED",0
_245	.db	"%EE",0
_246	.db	"%EF",0
_247	.db	"%F0",0
_248	.db	"%F1",0
_249	.db	"%F2",0
_250	.db	"%F3",0
_251	.db	"%F4",0
_252	.db	"%F5",0
_253	.db	"%F6",0
_254	.db	"%F7",0
_255	.db	"%F8",0
_256	.db	"%F9",0
_257	.db	"%FA",0
_258	.db	"%FB",0
_259	.db	"%FC",0
_260	.db	"%FD",0
_261	.db	"%FE",0
_262	.db	"%FF",0
_263	.db	"",0
_268	.db	"",0
_269	.db	"%20",0
_270	.db	"+",0
_273	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

