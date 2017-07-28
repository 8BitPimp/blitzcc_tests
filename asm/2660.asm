
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	mov	eax,_aokdn
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_aokdn
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aokdn
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_akeymap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_akeymap
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeymap
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,49
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,50
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,51
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,52
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,53
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,54
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,55
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,56
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,57
	mov	esi,10
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,48
	mov	esi,11
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,45
	mov	esi,12
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,61
	mov	esi,13
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,14
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,15
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,113
	mov	esi,16
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,119
	mov	esi,17
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,101
	mov	esi,18
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,114
	mov	esi,19
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,116
	mov	esi,20
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,121
	mov	esi,21
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,117
	mov	esi,22
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,105
	mov	esi,23
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,111
	mov	esi,24
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,112
	mov	esi,25
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,91
	mov	esi,26
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,93
	mov	esi,27
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,13
	mov	esi,28
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,97
	mov	esi,30
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,115
	mov	esi,31
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,32
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,102
	mov	esi,33
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,103
	mov	esi,34
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,104
	mov	esi,35
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,106
	mov	esi,36
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,107
	mov	esi,37
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,108
	mov	esi,38
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,59
	mov	esi,39
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,39
	mov	esi,40
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,96
	mov	esi,41
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,35
	mov	esi,43
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,122
	mov	esi,44
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,120
	mov	esi,45
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,99
	mov	esi,46
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,118
	mov	esi,47
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,98
	mov	esi,48
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,110
	mov	esi,49
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,109
	mov	esi,50
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,44
	mov	esi,51
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,46
	mov	esi,52
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,47
	mov	esi,53
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,32
	mov	esi,57
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,92
	mov	esi,86
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,201
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,207
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,209
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,210
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,211
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,199
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,28
	mov	esi,200
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,29
	mov	esi,208
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,31
	mov	esi,203
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	mov	ebx,30
	mov	esi,205
	shl	esi,byte 2
	add	esi,[_akeymap]
	mov	[esi],ebx
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fxgetkey
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
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_5
_6
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_akeymap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_7
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_8
	mov	[ebp-12],1
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aokdn]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_9
	mov	ebx,[ebp-4]
	mov	[_vkeytime],ebx
	mov	[ebp-16],1
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_akeymap]
	mov	ebx,[ebx]
	mov	[_vlastkey],ebx
	mov	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aokdn]
	mov	[esi],ebx
_9
	jmp	_10
_8
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aokdn]
	mov	[esi],ebx
_10
_7
	add	[ebp-8],1
_5
	cmp	[ebp-8],255
	jle	_6
_4
	cmp	[ebp-12],0
	jnz	_11
	mov	[_vlastkey],0
	mov	[_vkeytime],0
_11
	mov	ebx,[_vlastkey]
	mov	[_vxlastkey],ebx
	cmp	[ebp-16],0
	jnz	_12
	cmp	[_vkeytime],0
	jle	_13
	mov	ebx,[ebp-4]
	sub	ebx,[_vkeytime]
	cmp	ebx,300
	jge	_14
	mov	eax,0
	jmp	_3_leave
_14
_13
_12
	cmp	[_vkeytime],0
	jle	_15
	mov	ebx,[ebp-4]
	sub	ebx,[_vkeytime]
	cmp	ebx,300
	jl	_16
	mov	[_vkeytime],0
_16
_15
	cmp	[_vlastkey],0
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[_vkeytime],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_17
	mov	ebx,[ebp-4]
	sub	ebx,300
	add	ebx,40
	mov	[_vkeytime],ebx
_17
	mov	ebx,[_vlastkey]
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jle	_18
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],54
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_19
	mov	[ebp-24],1
	jmp	_20
_19
	mov	[ebp-24],0
_20
	mov	ebx,[ebp-24]
	and	ebx,ebx
	jz	_21
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_22
	sub	esp,8
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_22
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_25
	mov	[ebp-20],34
_25
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_27
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_27
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_30
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_30
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_33
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_33
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_36
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_36
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_39
	sub	esp,8
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_39
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_42
	sub	esp,8
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_42
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_45
	sub	esp,8
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_45
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_48
	sub	esp,8
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_48
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_51
	sub	esp,8
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_51
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_54
	sub	esp,8
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_54
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_57
	sub	esp,8
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_57
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_60
	sub	esp,8
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_60
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_63
	sub	esp,8
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_63
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_66
	sub	esp,8
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_66
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_69
	sub	esp,8
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_69
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_73
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_72
	sub	esp,8
	mov	eax,_74
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_72
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_75
	sub	esp,8
	mov	eax,_77
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_75
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_78
	sub	esp,8
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_78
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_81
	sub	esp,8
	mov	eax,_83
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_81
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_84
	sub	esp,8
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_84
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	call	_fupper
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
_21
_18
	mov	eax,[ebp-20]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aokdn	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_akeymap	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vlastkey	.dd	0
	.align	4
_vkeytime	.dd	0
	.align	4
_vxlastkey	.dd	0
_23	.db	"1",0
_24	.db	"!",0
_26	.db	"2",0
_28	.db	"3",0
_29	.db	"£",0
_31	.db	"4",0
_32	.db	"$",0
_34	.db	"5",0
_35	.db	"%",0
_37	.db	"6",0
_38	.db	"^",0
_40	.db	"7",0
_41	.db	"&",0
_43	.db	"8",0
_44	.db	"*",0
_46	.db	"9",0
_47	.db	"(",0
_49	.db	"0",0
_50	.db	")",0
_52	.db	"`",0
_53	.db	"¬",0
_55	.db	"-",0
_56	.db	"_",0
_58	.db	"=",0
_59	.db	"+",0
_61	.db	"[",0
_62	.db	"{",0
_64	.db	"]",0
_65	.db	"}",0
_67	.db	";",0
_68	.db	":",0
_70	.db	"'",0
_71	.db	"@",0
_73	.db	"#",0
_74	.db	"~",0
_76	.db	",",0
_77	.db	"<",0
_79	.db	".",0
_80	.db	">",0
_82	.db	"/",0
_83	.db	"?",0
_85	.db	"\",0
_86	.db	"|",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

