
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	mov	eax,_asortarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,30
	mov	esi,_asortarray
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_asortarray
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asortarray
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_12
_13
	sub	esp,20
	mov	[esp],100
	mov	[esp+4],1000
	call	_frand
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	mov	[esp],65
	mov	[esp+4],90
	call	_frand
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],65
	mov	[esp+4],90
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],65
	mov	[esp+4],90
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],65
	mov	[esp+4],90
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_12
	cmp	[ebp-4],30
	jle	_13
_3
	sub	esp,4
	mov	[esp],30
	call	_fbubblesort
	sub	esp,4
	mov	[esp],30
	call	_fsave_score
	sub	esp,4
	mov	[esp],30
	call	_fload_score
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],0
	jmp	_15
_16
	sub	esp,24
	mov	eax,_asortarray
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_15
	cmp	[ebp-8],30
	jle	_16
_4
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
_fsave_score
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
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_19
_20
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
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
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-8],1
_19
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_20
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
	ret	word 4
	.align	16
_fload_score
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
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_22
_23
	sub	esp,8
	mov	eax,_asortarray
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asortarray]
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
	mov	eax,_asortarray
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asortarray]
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
	add	[ebp-8],1
_22
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_23
_8
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbubblesort
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
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	jmp	_24
_25
	mov	[ebp-8],1
	jmp	_26
_27
	sub	esp,12
	mov	eax,[ebp-8]
	sub	eax,1
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jge	_28
	sub	esp,12
	mov	eax,[ebp-8]
	sub	eax,1
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	mov	eax,[ebp-8]
	sub	eax,1
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-8]
	sub	eax,1
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	sub	eax,1
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_asortarray
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_asortarray
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_asortarray
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asortarray]
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
_28
	add	[ebp-8],1
_26
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_27
_11
	add	[ebp-4],-1
_24
	cmp	[ebp-4],0
	jge	_25
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
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
	ret	word 4
	.align	4
_asortarray	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
_14	.db	"-=Hall of Fame=-",0
_17	.db	" Points by: ",0
_18	.db	"myhiscore.txt",0
_21	.db	"myhiscore.txt",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

