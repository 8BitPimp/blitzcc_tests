
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
	mov	eax,_ahighscorename
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_ahighscorename
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahighscorename
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahighscore
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_ahighscore
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahighscore
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahighscorelevel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_ahighscorelevel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahighscorelevel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahighname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,12
	mov	esi,_ahighname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahighname
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vhighnamechar],0
	mov	[_venteringhighscore],0
	mov	[_vhighscoredone],0
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],30
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fccloadfont
	mov	[_vfntcouriernew],eax
	mov	[_vshadowtextdepth],1
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhighscoreclear
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_24
_25
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_24
	cmp	[ebp-4],12
	jle	_25
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhighscoreresetvars
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vhighscoredone],0
	mov	[_venteringhighscore],0
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhighscoreenter
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	[ebp-4],25
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	imul	esi,12
	sub	ebx,esi
	sar	ebx,byte 1
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[_vfntcouriernew]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-16],1
	jmp	_27
_28
	sub	esp,12
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_29
	mov	ebx,[_vhighnamechar]
	cmp	[ebp-16],ebx
	jnz	_31
	sub	esp,20
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fccshadowtext
	jmp	_32
_31
	sub	esp,20
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fccshadowtext
_32
	jmp	_33
_29
	mov	ebx,[_vhighnamechar]
	cmp	[ebp-16],ebx
	jnz	_34
	sub	esp,20
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fccshadowtext
	jmp	_36
_34
	sub	esp,20
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fccshadowtext
_36
_33
	add	[ebp-16],1
_27
	cmp	[ebp-16],12
	jle	_28
_7
	call	_fgetkey
	mov	[ebp-24],eax
	cmp	[ebp-24],8
	jnz	_38
	sub	[_vhighnamechar],1
	cmp	[_vhighnamechar],1
	jge	_39
	mov	[_vhighnamechar],1
_39
	sub	esp,8
	mov	eax,[_vhighnamechar]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
_38
	cmp	[ebp-24],96
	setg	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-24],123
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-24],48
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	cmp	[ebp-24],57
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-40]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-24],32
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-24],64
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	cmp	[ebp-24],91
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-40]
	and	ebx,esi
	or	eax,ebx
	and	eax,eax
	jz	_41
	cmp	[_vhighnamechar],12
	jg	_42
	sub	esp,8
	mov	eax,[_vhighnamechar]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[_vhighnamechar],1
_42
_41
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_43
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],1
	jmp	_45
_46
	sub	esp,12
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_ahighname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_47
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_50
_47
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahighname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_50
	add	[ebp-20],1
_45
	cmp	[ebp-20],12
	jle	_46
_8
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fhighscoressort
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fhighscoressave
	mov	[_vhighscoredone],1
	mov	[_venteringhighscore],0
	mov	eax,1
	jmp	_6_leave
	jmp	_51
_43
	mov	eax,0
	jmp	_6_leave
_51
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fhighscoressave
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
	mov	[ebp-4],0
	jmp	_52
_53
	sub	esp,20
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],12
	call	_fccpadright
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ahighscorename]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_52
	cmp	[ebp-4],9
	jle	_53
_10
	sub	esp,8
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	mov	[ebp-4],0
	jmp	_55
_56
	mov	[ebp-12],1
	jmp	_57
_58
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ahighscorename]
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
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	sub	ebx,19
	mov	[esp+4],ebx
	call	_fwritebyte
	add	[ebp-12],1
_57
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-12],eax
	jle	_58
_12
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ahighscore]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ahighscorelevel]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	add	[ebp-4],1
_55
	cmp	[ebp-4],9
	jle	_56
_11
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	add	ebx,917648
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
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
_fhighscoresload
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
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_60
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,50000
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,45000
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,40000
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,3
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,35000
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,7
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,4
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,30000
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,25000
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,6
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,20000
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,15000
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,8
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,10000
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,9
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,5000
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fhighscoressave
	jmp	_71
_60
	mov	[ebp-8],0
	jmp	_72
_73
	mov	[ebp-12],1
	jmp	_74
_75
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-16],eax
	add	[ebp-16],19
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-12],1
_74
	cmp	[ebp-12],12
	jle	_75
_15
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ahighscore]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ahighscorelevel]
	mov	[ebx],eax
	add	[ebp-8],1
_72
	cmp	[ebp-8],9
	jle	_73
_14
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	sub	eax,917648
	mov	[ebp+20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
_71
	mov	eax,[ebp+20]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
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
_fhighscoressort
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,8
	mov	eax,10
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+24]
	mov	esi,10
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,10
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	mov	[ebp-8],0
	jmp	_77
_78
	mov	[ebp-12],0
	mov	[ebp-16],0
	jmp	_79
_80
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ahighscore]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ahighscore]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	cmp	[ebp-24],ebx
	jle	_81
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ahighscorename]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ahighscorename]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ahighscorelevel]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ahighscorelevel]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp-12]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ahighscore]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-12]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_ahighscorename]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-40]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	mov	esi,[ebp-12]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ahighscorelevel]
	mov	[esi],ebx
_81
	add	[ebp-12],1
	add	[ebp-16],1
_79
	mov	ebx,9
	sub	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_80
_18
	add	[ebp-8],1
_77
	cmp	[ebp-8],10
	jle	_78
_17
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fccshadowtext
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
	call	_fcolorred
	mov	[ebp-4],eax
	call	_fcolorgreen
	mov	[ebp-8],eax
	call	_fcolorblue
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	add	ebx,[_vshadowtextdepth]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,[_vshadowtextdepth]
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+28]
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
	ret	word 16
	.align	16
_fccpadright
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
	mov	ebx,[ebp+24]
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	ebx,eax
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jle	_82
	mov	[ebp-8],1
	jmp	_83
_84
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
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
	add	[ebp-8],1
_83
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_84
_21
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_82
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_20_leave
	sub	esp,4
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	jmp	_20_leave
_20_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fccloadfont
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_87
	sub	esp,16
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
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
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
	call	_fend
	jmp	_89
_87
	mov	eax,[ebp-4]
	jmp	_22_leave
_89
	mov	eax,0
	jmp	_22_leave
_22_leave
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
	ret	word 20
	.align	4
_ahighscorename	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_ahighscore	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ahighscorelevel	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ahighname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_vhighnamechar	.dd	0
	.align	4
_venteringhighscore	.dd	0
	.align	4
_vhighscoredone	.dd	0
	.align	4
_vfntcouriernew	.dd	0
_23	.db	"Courier New",0
	.align	4
_vshadowtextdepth	.dd	0
_26	.db	"",0
_30	.db	"",0
_35	.db	"_",0
_37	.db	".",0
_40	.db	"",0
_44	.db	"",0
_48	.db	"",0
_49	.db	" ",0
_54	.db	"hiscore.dat",0
_59	.db	"hiscore.dat",0
_61	.db	"JAKE",0
_62	.db	"HELEN",0
_63	.db	"CONAN",0
_64	.db	"CALLUM",0
_65	.db	"JASON",0
_66	.db	"DAMIEN",0
_67	.db	"PENNY",0
_68	.db	"TIM",0
_69	.db	"CHARLES",0
_70	.db	"ANDREW",0
_76	.db	"",0
_85	.db	" ",0
_86	.db	"",0
_88	.db	"Error loading font ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

