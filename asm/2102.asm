
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],0
	jmp	_9
_10
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_tcharacter
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-56]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-8],1
_9
	cmp	[ebp-8],35
	jle	_10
_3
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	cmp	[ebp-20],37
	setl	al
	movzx	eax,al
	mov	[ebp-56],eax
	cmp	[ebp-24],37
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-56]
	and	eax,ebx
	cmp	eax,0
	jnz	_14
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],5000
	call	_fdelay
	call	_fend
_14
	mov	[ebp-32],0
	mov	[ebp-36],0
	jmp	_17
_16
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_tcharacter
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_18
	sub	esp,12
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_19
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
_19
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_18
_5
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-44],ebx
	jle	_20
	mov	[ebp-48],1
_20
	sub	esp,8
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-32],esi
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-56]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-36],1
_17
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jz	_16
_4
	jmp	_23
_22
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-44],eax
	mov	ebx,[ebp-44]
	sub	[ebp-32],ebx
	mov	eax,[ebp-32]
	mov	ecx,[ebp-24]
	cdq
	idiv	ecx
	mov	[ebp-32],eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_tcharacter
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_24
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp-44]
	jnz	_25
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
_25
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_24
_7
	sub	esp,20
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_23
	cmp	[ebp-32],0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jz	_22
_6
	mov	ebx,[ebp-48]
	and	ebx,ebx
	jz	_26
	sub	esp,32
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	jmp	_29
_26
	sub	esp,8
	lea	eax,[ebp-52]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
_29
	sub	esp,4
	mov	[esp],5000
	call	_fdelay
	ret
_2_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-52]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_8	.db	"0123456789abcdefghijklmnopqrstuvwxyz",0
_11	.db	"Enter a number in any base: ",0
_12	.db	"Enter the base: ",0
_13	.db	"Enter the base to convert to: ",0
_15	.db	"Base must be less than 37!",0
_21	.db	"",0
_27	.db	" is not a valid base ",0
_28	.db	" number!",0
	.align	4
_tcharacter	.dd	5
_30	.dd	0
	.dd	_30
	.dd	_30
	.dd	0
	.dd	-1
_31	.dd	0
	.dd	_31
	.dd	_31
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbStrType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

