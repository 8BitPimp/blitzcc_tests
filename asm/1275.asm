
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	mov	[_vapptime],0
	sub	esp,8
	mov	[esp],_vapptext
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vappnum],0
	mov	[_vtexttime],0
	mov	[_vappdir],0
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	jmp	_7
_6
	call	_fapplettitle
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_6
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fapplettitle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	eax,_vapptext
	mov	[esp],eax
	call	__bbStrLoad
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
	call	_fapptitle
	call	_fcls
	sub	esp,20
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vapptext
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vapptext
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[_vapptime],1
	cmp	[_vapptime],100
	jnz	_10
	cmp	[_vappnum],0
	jnz	_11
	sub	esp,8
	mov	[esp],_vapptext
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
	mov	[_vapptime],0
	mov	[_vappnum],1
	jmp	_13
_11
	cmp	[_vappnum],1
	jnz	_14
	sub	esp,8
	mov	[esp],_vapptext
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
	mov	[_vapptime],0
	mov	[_vappnum],2
	jmp	_16
_14
	cmp	[_vappnum],2
	jnz	_17
	sub	esp,8
	mov	[esp],_vapptext
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
	mov	[_vapptime],0
	mov	[_vappnum],0
_17
_16
_13
_10
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_vapptext
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],500
	mov	[esp],0
	call	_ftext
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vapptime	.dd	0
	.align	4
_vapptext	.dd	0
_5	.db	"If you like you could",0
	.align	4
_vappnum	.dd	0
	.align	4
_vtexttime	.dd	0
	.align	4
_vappdir	.dd	0
_8	.db	"",0
_9	.db	" ",0
_12	.db	"Mess with this code and",0
_15	.db	"Add more messages",0
_18	.db	"If you like you could",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

