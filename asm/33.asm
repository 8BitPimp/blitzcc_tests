
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
_froman
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	shl	eax,byte 1
	sub	eax,1
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_10
_11
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	mov	[ebp-24],ebx
	cmp	[ebp-24],1
	jz	_13
	cmp	[ebp-24],2
	jz	_13
	cmp	[ebp-24],3
	jz	_13
	cmp	[ebp-24],4
	jz	_14
	cmp	[ebp-24],5
	jz	_15
	cmp	[ebp-24],6
	jz	_16
	cmp	[ebp-24],7
	jz	_16
	cmp	[ebp-24],8
	jz	_16
	cmp	[ebp-24],9
	jz	_17
	jmp	_12
_13
	sub	esp,36
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrStore
	jmp	_12
_14
	sub	esp,36
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	esi,[ebp-12]
	add	esi,1
	mov	[esp+4],esi
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrStore
	jmp	_12
_15
	sub	esp,28
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrStore
	jmp	_12
_16
	sub	esp,36
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,20
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	esi,[ebp-20]
	sub	esi,5
	mov	[esp+4],esi
	call	_fstring
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrStore
	jmp	_12
_17
	sub	esp,36
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	esi,[ebp-12]
	add	esi,2
	mov	[esp+4],esi
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrStore
	jmp	_12
_12
	sub	[ebp-12],2
	add	[ebp-16],1
_10
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-16],eax
	jle	_11
_4
	sub	esp,4
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fprintroman
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
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstringheight
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstringwidth
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_flocate
	mov	[ebp-12],1
	jmp	_21
_22
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
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
	sub	esp,16
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jle	_24
	mov	ebx,[ebp-8]
	add	[ebp+24],ebx
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	mov	[ebp-24],1
	jmp	_26
_27
	sub	esp,8
	mov	eax,[ebp-8]
	mov	ecx,5
	cdq
	idiv	ecx
	mov	ebx,[ebp+24]
	sub	ebx,[ebp-8]
	add	ebx,eax
	mov	[esp],ebx
	mov	eax,[ebp-24]
	sub	eax,1
	imul	eax,[ebp-4]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	esi,[ebp+28]
	sub	esi,eax
	mov	[esp+4],esi
	mov	eax,ebx
	call	_flocate
	mov	ebx,eax
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	add	[ebp-24],1
_26
	mov	ebx,[ebp-20]
	cmp	[ebp-24],ebx
	jle	_27
_8
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_flocate
	jmp	_29
_24
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	add	[ebp+24],eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwrite
_29
	add	[ebp-12],1
_21
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-12],eax
	jle	_22
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_9	.db	"IVXLCDMNPQRSTUWYZ",0
_18	.db	"",0
_19	.db	"M",0
_20	.db	"M",0
_23	.db	"NPQRSTUWYZ",0
_25	.db	"M",0
_28	.db	"�",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

