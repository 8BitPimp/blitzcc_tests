
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fconvert_filedate_to_expanded
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
	sub	esp,16
	mov	[esp+4],1
	mov	[esp+8],2
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+4],4
	mov	[esp+8],2
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+4],7
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	mov	[ebp-16],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_12
	sub	esp,64
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgetdayofweek
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fgetmonthalpha
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_3_leave
	jmp	_16
_12
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_3_leave
_16
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
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
	ret	word 8
	.align	16
_fgetmonthnumeric
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_19
_20
	sub	esp,20
	mov	ebx,[ebp-4]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],3
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_21
	mov	eax,[ebp-4]
	jmp	_4_leave
_21
	add	[ebp-4],1
_19
	cmp	[ebp-4],12
	jle	_20
_5
	mov	eax,0
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
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
	.align	16
_fgetmonthalpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+24],1
	jnz	_23
	sub	esp,12
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],3
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_6_leave
	jmp	_25
_23
	cmp	[ebp+24],2
	jnz	_26
	sub	esp,16
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],9
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	jmp	_6_leave
	jmp	_28
_26
	cmp	[ebp+24],3
	jnz	_29
	sub	esp,12
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_6_leave
	jmp	_31
_29
	sub	esp,12
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],9
	sub	esp,4
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_6_leave
_31
_28
_25
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetdayofweek
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdayofweekval
	mov	[ebp-4],eax
	cmp	[ebp+32],1
	jnz	_34
	sub	esp,12
	mov	ebx,[ebp-4]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],3
	sub	esp,4
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_7_leave
	jmp	_36
_34
	cmp	[ebp+32],2
	jnz	_37
	sub	esp,16
	mov	ebx,[ebp-4]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],9
	sub	esp,4
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	jmp	_7_leave
	jmp	_39
_37
	cmp	[ebp+32],3
	jnz	_40
	sub	esp,12
	mov	ebx,[ebp-4]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_7_leave
	jmp	_42
_40
	sub	esp,12
	mov	ebx,[ebp-4]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],9
	sub	esp,4
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_7_leave
_42
_39
_36
	sub	esp,4
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fgetdayofweekname
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+24],1
	jnz	_45
	sub	esp,12
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],3
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_8_leave
	jmp	_47
_45
	cmp	[ebp+24],2
	jnz	_48
	sub	esp,16
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],9
	sub	esp,4
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	jmp	_8_leave
	jmp	_50
_48
	sub	esp,12
	mov	ebx,[ebp+20]
	imul	ebx,9
	sub	ebx,8
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	jmp	_8_leave
_50
_47
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetdaysinmonth
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],2
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fleapyear
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_53
	mov	eax,29
	jmp	_9_leave
	jmp	_54
_53
	sub	esp,16
	mov	ebx,[ebp+20]
	shl	ebx,byte 1
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],2
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_9_leave
_54
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fleapyear
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],400
	call	__bbMod
	cmp	eax,0
	jnz	_56
	mov	eax,1
	jmp	_10_leave
_56
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],4
	call	__bbMod
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],100
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-8]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_57
	mov	eax,1
	jmp	_10_leave
_57
	mov	eax,0
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetdayofweekval
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
	mov	[ebp-16],ebx
	mov	eax,14
	sub	eax,[ebp+24]
	mov	ecx,12
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp-4]
	mov	[ebp-8],ebx
	mov	ebx,12
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	sub	ebx,2
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp-8]
	mov	esi,[ebp-8]
	sar	esi,byte 2
	add	ebx,esi
	mov	eax,[ebp-8]
	mov	ecx,100
	cdq
	idiv	ecx
	sub	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,400
	cdq
	idiv	ecx
	add	ebx,eax
	mov	eax,31
	imul	eax,[ebp-12]
	mov	ecx,12
	cdq
	idiv	ecx
	add	ebx,eax
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],7
	call	__bbMod
	add	eax,1
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_13	.db	" ",0
_14	.db	" ",0
_15	.db	" ",0
_17	.db	" ",0
_18	.db	"",0
_22	.db	"January  Febuary  March    April    May      June     July     August   SeptemberOctober  November December ",0
_24	.db	"January  Febuary  March    April    May      June     July     August   SeptemberOctober  November December ",0
_27	.db	"January  Febuary  March    April    May      June     July     August   SeptemberOctober  November December ",0
_30	.db	"January  Febuary  March    April    May      June     July     August   SeptemberOctober  November December ",0
_32	.db	"January  Febuary  March    April    May      June     July     August   SeptemberOctober  November December ",0
_33	.db	"",0
_35	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_38	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_41	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_43	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_44	.db	"",0
_46	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_49	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_51	.db	"Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ",0
_52	.db	"",0
_55	.db	"312831303130313130313031",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

