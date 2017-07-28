
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
	sub	esp,4
	mov	eax,_aall_mine
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aall_mine
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aall_mine
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_ttest
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aall_mine]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,1000
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aall_mine]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_3
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,1071057469
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aall_mine]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_aall_mine]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbObjDelete
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
	.align	4
_vmine	.dd	0
	.align	4
_aall_mine	.dd	0
	.dd	5
	.dd	1
	.dd	0
_3	.db	"FOO",0
	.align	4
_ttest	.dd	5
_4	.dd	0
	.dd	_4
	.dd	_4
	.dd	0
	.dd	-1
_5	.dd	0
	.dd	_5
	.dd	_5
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

