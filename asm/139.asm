
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fcounthostips
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_7
	call	_fend
_7
	sub	esp,4
	mov	[esp],1
	call	_fhostip
	mov	[ebp-8],eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdottedip
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,_aoctets
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_aoctets
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aoctets
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
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
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fparseip
	and	eax,eax
	jz	_13
	mov	[ebp-16],3
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],_toctet
	call	__bbObjEachFirst
	and	eax,eax
	jz	_3
_14
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_aoctets]
	mov	[esi],ebx
	sub	esp,32
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aoctets]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	[ebp-16],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_14
_3
_13
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aoctets]
	mov	ebx,[ebx]
	shl	ebx,byte 24
	mov	[ebp-24],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aoctets]
	mov	ebx,[ebx]
	shl	ebx,byte 16
	mov	[ebp-28],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aoctets]
	mov	ebx,[ebx]
	shl	ebx,byte 8
	mov	[ebp-32],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aoctets]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-28]
	or	ebx,esi
	mov	esi,[ebp-32]
	or	ebx,esi
	mov	esi,[ebp-36]
	or	ebx,esi
	mov	[ebp-40],ebx
	sub	esp,32
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fparseip
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,6
	jle	_21
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-4],1
	mov	[ebp-8],1
	jmp	_22
_23
	sub	esp,16
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
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
	call	_finstr
	mov	ebx,eax
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jnz	_25
	cmp	[ebp-8],4
	jnz	_26
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-12],eax
	jmp	_27
_26
	mov	eax,0
	jmp	_4_leave
_27
_25
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_28
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sub	esi,[ebp-4]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	setge	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp-16],255
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_29
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_toctet
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-16]
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	jmp	_30
_29
	mov	eax,0
	jmp	_4_leave
_30
	jmp	_31
_28
	mov	eax,0
	jmp	_4_leave
_31
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-4],ebx
	add	[ebp-8],1
_22
	cmp	[ebp-8],4
	jle	_23
_5
	mov	[ebp-16],0
	mov	eax,1
	jmp	_4_leave
	jmp	_32
_21
	mov	eax,0
	jmp	_4_leave
_32
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_6	.db	"",0
	.align	4
_aoctets	.dd	0
	.dd	1
	.dd	1
	.dd	0
_8	.db	"Source Integer IP:",0
_9	.db	"Sourse Padded  IP:",0
_10	.db	"",0
_11	.db	"=---Converting---=",0
_12	.db	"",0
_15	.db	"Octet ",0
_16	.db	" =",0
_17	.db	"Converted:",0
_18	.db	" back to :",0
	.align	4
_toctet	.dd	5
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
	.dd	1
	.dd	__bbIntType
_24	.db	".",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

