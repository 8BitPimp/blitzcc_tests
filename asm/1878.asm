
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
	sub	esp,20
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	[esp],-1
	call	_fip_generator
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,28
	mov	[esp],0
	mov	[esp+4],999
	call	_frand
	mov	[esp+4],eax
	mov	[esp+8],7
	mov	[esp+12],0
	mov	[esp],-1
	mov	eax,ebx
	call	_fip_generator
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdebuglog
	mov	ebx,eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fip_generator
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
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],-1
	jz	_9
	jmp	_8
_9
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],999
	call	_frand
	mov	[ebp+20],eax
	jmp	_8
_8
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	cmp	[ebp-8],-1
	jz	_11
	jmp	_10
_11
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],999
	call	_frand
	mov	[ebp+24],eax
	jmp	_10
_10
	mov	ebx,[ebp+28]
	mov	[ebp-12],ebx
	cmp	[ebp-12],-1
	jz	_13
	jmp	_12
_13
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],999
	call	_frand
	mov	[ebp+28],eax
	jmp	_12
_12
	mov	ebx,[ebp+32]
	mov	[ebp-16],ebx
	cmp	[ebp-16],-1
	jz	_15
	jmp	_14
_15
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],999
	call	_frand
	mov	[ebp+32],eax
	jmp	_14
_14
	sub	esp,60
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
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
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
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
	ret	word 16
_16	.db	".",0
_17	.db	".",0
_18	.db	".",0
_19	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

