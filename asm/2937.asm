
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
	mov	[esp],42
	call	_fcreatearray
	mov	[_va],eax
	sub	esp,16
	mov	[esp+4],31
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	eax,[_va]
	mov	[esp],eax
	call	_farrayset
	mov	[esp],eax
	call	__bbStrRelease
	sub	esp,12
	mov	eax,[_va]
	mov	[esp],eax
	mov	[esp+4],31
	call	_farrayget
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,[_va]
	mov	[esp],eax
	call	_farraysize
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fexamplefunction
	sub	esp,12
	mov	eax,[_va]
	mov	[esp],eax
	mov	[esp+4],23
	call	_farrayget
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
	sub	esp,16
	mov	[esp+4],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	eax,[_va]
	mov	[esp],eax
	call	_farrayset
	mov	[esp],eax
	call	__bbStrRelease
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreatearray
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_ttarray
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-8],0
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_flen
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	mov	[ebp-8],1
	jmp	_19
_20
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_ttelement
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,32
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjToHandle
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_frset
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-8],1
_19
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_20
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjToHandle
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdeletearray
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
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	[ebp-8],0
_21
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	sub	esp,16
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_ttelement
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjDelete
	add	[ebp-8],1
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jnz	_22
	jmp	_6
_22
	jmp	_21
_6
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ftarray_getelementobject
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_ttelement
	call	__bbObjFromHandle
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_farraysize
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_ttarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_farrayget
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ftarray_getelementobject
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_farrayset
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ftarray_getelementobject
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	jmp	_10_leave
_10_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fexamplefunction
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_farrayget
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,16
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_farraysize
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	[esp+4],23
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	eax,[_va]
	mov	[esp],eax
	call	_farrayset
	mov	[esp],eax
	call	__bbStrRelease
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_va	.dd	0
_12	.db	"Value at index 31",0
_13	.db	"Done...",0
_14	.db	"Hello world",0
	.align	4
_ttarray	.dd	5
_15	.dd	0
	.dd	_15
	.dd	_15
	.dd	0
	.dd	-1
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbStrType
	.align	4
_ttelement	.dd	5
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
_18	.dd	0
	.dd	_18
	.dd	_18
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbStrType
_23	.db	"",0
_24	.db	"",0
_25	.db	"Array[0] = ",0
_26	.db	"ArraySize = ",0
_27	.db	"Hello world",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

