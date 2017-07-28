
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,4
	mov	eax,_aa_string
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aa_string
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa_string
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsplitstring
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,16
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],0
	jmp	_11
_12
	sub	esp,24
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aa_string]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_11
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_12
_3
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsplitstring
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
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_17
	sub	esp,4
	mov	eax,_aa_string
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_aa_string
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa_string
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aa_string]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_17
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],0
	mov	[ebp-12],1
	mov	[ebp-16],1
_19
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_20
	add	[ebp-8],1
	mov	ebx,[ebp-4]
	add	[ebp-16],ebx
_20
	cmp	[ebp-16],0
	jnz	_19
_5
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_21
	mov	ebx,[ebp-8]
	cmp	[ebp+28],ebx
	jge	_22
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
_22
_21
	sub	esp,4
	mov	eax,_aa_string
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-8]
	mov	esi,_aa_string
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa_string
	mov	[esp],eax
	call	__bbDimArray
	sub	[ebp+28],1
	mov	[ebp-8],0
	jmp	_24
_23
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jnz	_25
	jmp	_6
_25
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	sub	esi,[ebp-12]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aa_string]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-16]
	add	ebx,[ebp-4]
	mov	[ebp-12],ebx
	add	[ebp-8],1
_24
	mov	ebx,[ebp+28]
	cmp	[ebp-8],ebx
	jnz	_23
_6
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aa_string]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	eax,[ebp-8]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_aa_string	.dd	0
	.dd	3
	.dd	1
	.dd	0
_7	.db	"aa<!>bb<!>cc<!>dd<!>ee<!>",0
_8	.db	"<!>",0
_9	.db	"Highest Index: ",0
_10	.db	"",0
_13	.db	"[",0
_14	.db	"]",0
_15	.db	"",0
_16	.db	"Press any key to exit.",0
_18	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

