
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],16000000
	cmp	[ebp-4],16000000
	jl	_10
	mov	[ebp-4],16000000
_10
	call	_fmillisecs
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,_aprime
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aprime
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aprime
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aprime]
	mov	[esi],ebx
	mov	[ebp-12],4
	jmp	_11
_12
	mov	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aprime]
	mov	[esi],ebx
	add	[ebp-12],2
_11
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_12
_3
	mov	[ebp-12],3
	jmp	_13
_14
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aprime]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_15
	mov	ebx,[ebp-12]
	add	ebx,[ebp-12]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-12]
	mov	[ebp-20],ebx
	jmp	_17
_16
	mov	ebx,1
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aprime]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	add	[ebp-20],ebx
_17
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_16
_5
_15
	add	[ebp-12],2
_13
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	cmp	[ebp-12],eax
	jle	_14
_4
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-24],eax
	mov	[ebp-12],1
	jmp	_18
_19
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aprime]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_20
	add	[ebp-28],1
_20
	add	[ebp-12],1
_18
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_19
_6
	mov	[ebp-32],0
	mov	[ebp-36],10
	cmp	[ebp-32],1
	jnz	_21
	mov	[ebp-40],1
	mov	[ebp-12],1
	jmp	_22
_23
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aprime]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_24
	add	[ebp-40],1
	mov	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jg	_25
	sub	esp,28
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
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
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_27
_25
	sub	esp,20
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-44]
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
	call	__bbStrStore
	mov	[ebp-40],1
_27
_24
	add	[ebp-12],1
_22
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_23
_7
	mov	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jge	_29
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
_29
_21
	sub	esp,32
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
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
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_2_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-48]
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
	ret	word 0
_8	.db	"Sieve of Eratosthenes",0
_9	.db	"",0
	.align	4
_aprime	.dd	0
	.dd	1
	.dd	1
	.dd	0
_26	.db	", ",0
_28	.db	"",0
_30	.db	"There are ",0
_31	.db	" primes between 1 and ",0
_32	.db	"",0
_33	.db	"ET = ",0
_34	.db	" milliseconds",0
_35	.db	"",0
_36	.db	"Press [Enter] to Exit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

