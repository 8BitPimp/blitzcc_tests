
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
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_finitiate_type
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,24
	mov	[esp+8],36
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	sub	esp,4
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmyfunction
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,24
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
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
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fcls
	sub	esp,24
	mov	[esp+8],21
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmyfunction
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,24
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fcls
	call	_fend
	ret
_2_leave
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
	ret	word 0
	.align	16
_fmyfunction
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp+20]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_finitiate_type
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
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
	ret	word 0
_5	.db	"Bill",0
_6	.db	"Male",0
_7	.db	" - ",0
_8	.db	"",0
_9	.db	"Sex: ",0
_10	.db	"",0
_11	.db	"Press any key...",0
_12	.db	"Rachel",0
_13	.db	"Female",0
_14	.db	" - ",0
_15	.db	"",0
_16	.db	"Sex: ",0
_17	.db	"",0
_18	.db	"Press any key to quit...",0
	.align	4
_tplayer	.dd	5
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
_20	.dd	0
	.dd	_20
	.dd	_20
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	__bbStrType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
