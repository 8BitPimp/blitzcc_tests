
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
	mov	eax,_anames
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,21
	mov	esi,_anames
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anames
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ascores
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,21
	mov	esi,_ascores
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ascores
	mov	[esp],eax
	call	__bbDimArray
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
_freadhs
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_10
_11
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_anames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ascores]
	mov	[ebx],eax
	add	[ebp-8],1
_10
	cmp	[ebp-8],20
	jle	_11
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
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
_fwritehs
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_13
_14
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anames]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ascores]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-8],1
_13
	cmp	[ebp-8],20
	jle	_14
_6
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
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
_fsorths
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
_l_7sorths
	mov	[ebp-4],0
	mov	[ebp-8],1
	jmp	_15
_16
	mov	ebx,[ebp-8]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ascores]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ascores]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_17
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ascores]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anames]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-8]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ascores]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ascores]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_anames]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_anames]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-12]
	mov	esi,[ebp-8]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ascores]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_anames]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-4],1
_17
	add	[ebp-8],1
_15
	cmp	[ebp-8],20
	jle	_16
_8
	cmp	[ebp-4],1
	jnz	_18
	jmp	_l_7sorths
_18
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_anames	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_ascores	.dd	0
	.dd	1
	.dd	1
	.dd	0
_9	.db	"highscore.sco",0
_12	.db	"highscore.sco",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

