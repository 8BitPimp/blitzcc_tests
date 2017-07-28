
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
	mov	eax,_aactionid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1024
	mov	esi,_aactionid
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aactionid
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_factionstop
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
	mov	[esp+4],_taction
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_23
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_factiondelete
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_23
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
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
_factionnew
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_taction
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
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
	ret	word 0
	.align	16
_factiondelete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_factioncopy
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_taction
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	[ebp-8],1
	jmp	_24
_25
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-8],1
_24
	cmp	[ebp-8],4
	jle	_25
_11
	mov	[ebp-8],1
	jmp	_26
_27
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,16
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-8],1
_26
	cmp	[ebp-8],4
	jle	_27
_12
	mov	[ebp-8],1
	jmp	_28
_29
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	add	eax,ebx
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	add	ebx,esi
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-8],1
_28
	cmp	[ebp-8],4
	jle	_29
_13
	mov	eax,[ebp-4]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
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
	ret	word 4
	.align	16
_factionmimic
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	[ebp-4],1
	jmp	_30
_31
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-4],1
_30
	cmp	[ebp-4],4
	jle	_31
_15
	mov	[ebp-4],1
	jmp	_32
_33
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,16
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	add	[ebp-4],1
_32
	cmp	[ebp-4],4
	jle	_33
_16
	mov	[ebp-4],1
	jmp	_34
_35
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	add	eax,ebx
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+24]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	add	ebx,esi
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_34
	cmp	[ebp-4],4
	jle	_35
_17
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_factioncreate
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
	mov	eax,ebx
	call	_factionnew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+44]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+48]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+52]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+56]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+60]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-4]
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+76]
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
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+72]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+64]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 60
	.align	16
_factioncall
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_37
	cmp	[ebp-4],2
	jz	_38
	jmp	_36
_37
	jmp	_36
_38
	jmp	_36
_36
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_aactionid	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_3	.dd	6
	.dd	5
	.dd	__bbIntType
	.align	4
_4	.dd	6
	.dd	5
	.dd	__bbFltType
	.align	4
_5	.dd	6
	.dd	5
	.dd	__bbStrType
	.align	4
_taction	.dd	5
_21	.dd	0
	.dd	_21
	.dd	_21
	.dd	0
	.dd	-1
_22	.dd	0
	.dd	_22
	.dd	_22
	.dd	0
	.dd	-1
	.dd	6
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	_3
	.dd	_4
	.dd	_5
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

