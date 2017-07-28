
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
_fdllsystemtime
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	sub	esp,44
	call	_fmillisecs
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	ecx,60
	cdq
	idiv	ecx
	mov	ecx,60
	cdq
	idiv	ecx
	mov	ecx,24
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[esp+4],2
	call	_flset
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
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,_6
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+8],esi
	call	_freplace
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freplace
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	call	_fmillisecs
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	ecx,60
	cdq
	idiv	ecx
	mov	ecx,60
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	ecx,1000
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	ecx,60
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	ecx,60
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,24
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-4]
	imul	ebx,24
	sub	eax,ebx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[esp+4],2
	call	_frset
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
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,_9
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+8],esi
	call	_freplace
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freplace
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	call	_fmillisecs
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	ecx,60
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	ecx,1000
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	ecx,60
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,60
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-4]
	imul	ebx,60
	sub	eax,ebx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[esp+4],2
	call	_frset
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
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,_12
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+8],esi
	call	_freplace
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freplace
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	call	_fmillisecs
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	ecx,1000
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,60
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-4]
	imul	ebx,60
	sub	eax,ebx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[esp+4],2
	call	_frset
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
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,_15
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+8],esi
	call	_freplace
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freplace
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	call	_fmillisecs
	mov	ecx,1000
	cdq
	idiv	ecx
	imul	eax,1000
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-4]
	sub	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	[esp],ebx
	mov	[esp+4],4
	mov	eax,ebx
	call	_frset
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,_18
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	[esp+8],esi
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_4	.db	"d",0
_5	.db	" ",0
_6	.db	"0",0
_7	.db	"h",0
_8	.db	" ",0
_9	.db	"0",0
_10	.db	"m",0
_11	.db	" ",0
_12	.db	"0",0
_13	.db	"s",0
_14	.db	" ",0
_15	.db	"0",0
_16	.db	"m",0
_17	.db	" ",0
_18	.db	"0",0
_19	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

