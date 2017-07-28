
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
	sub	esp,8
	mov	[esp],_vapppath
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_3
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsystemproperty
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	mov	eax,_vapppath
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_4
	sub	esp,8
	mov	[esp],_vapppath
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fcurrentdir
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
_4
	sub	esp,20
	mov	eax,_vapppath
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
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
	call	__bbStrCompare
	cmp	eax,0
	jz	_6
	sub	esp,20
	mov	eax,_vapppath
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
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vapppath
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_6
	sub	esp,8
	mov	eax,_vapppath
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fchangedir
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vapppath	.dd	0
_3	.db	"appdir",0
_5	.db	"bin\",0
_7	.db	"\",0
_8	.db	"\",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

