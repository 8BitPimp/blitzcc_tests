
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
_finitialisequerying
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],41110
	call	_fcreateudpstream
	mov	[_vlistenstream],eax
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
_fendquerying
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[_vlistenstream]
	mov	[esp],eax
	call	_fcloseudpstream
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fquerygames
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreateudpstream
	mov	[_vsearchstream],eax
	mov	[ebp-4],1
	jmp	_18
_19
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fhostip
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbin
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],1
	jmp	_20
_21
	sub	esp,24
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-24]
	sub	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fstring
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fintip
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[_vsearchstream]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],41112
	mov	eax,[_vsearchstream]
	mov	[esp],eax
	call	_fsendudpmsg
	add	[ebp-20],1
_20
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_21
_7
	add	[ebp-4],1
_18
	sub	esp,8
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fcounthostips
	cmp	[ebp-4],eax
	jle	_19
_6
	sub	esp,4
	mov	eax,[_vsearchstream]
	mov	[esp],eax
	call	_fcloseudpstream
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_flistenforgames
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
	call	_fmillisecs
	mov	[ebp-4],eax
_25
	sub	esp,4
	mov	eax,[_vlistenstream]
	mov	[esp],eax
	call	_frecvudpmsg
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_26
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_tnetgames
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_27
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[ebp-8]
	jnz	_28
	mov	[ebp-12],1
	jmp	_10
_28
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_27
_10
	cmp	[ebp-12],0
	jnz	_29
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_tnetgames
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-8]
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vlistenstream]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdottedip
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_30
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjDelete
_30
_29
_26
	call	_fmillisecs
	sub	eax,[ebp-4]
	cmp	eax,1000
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_25
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetupserver
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],41112
	call	_fcreateudpstream
	mov	[_vserverstream],eax
	sub	esp,4
	mov	[esp],41113
	call	_fcreateudpstream
	mov	[_vgameinfostream],eax
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcloseserver
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[_vserverstream]
	mov	[esp],eax
	call	_fcloseudpstream
	sub	esp,4
	mov	eax,[_vgameinfostream]
	mov	[esp],eax
	call	_fcloseudpstream
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakevisible
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[_vserverstream],0
	jnz	_32
	sub	esp,4
	mov	[esp],41112
	call	_fcreateudpstream
	mov	[_vserverstream],eax
_32
	cmp	[_vgameinfostream],0
	jnz	_33
	sub	esp,4
	mov	[esp],41113
	call	_fcreateudpstream
	mov	[_vgameinfostream],eax
_33
	mov	ebx,[_vserverstream]
	mov	esi,[_vgameinfostream]
	and	ebx,esi
	and	ebx,ebx
	jz	_34
	sub	esp,4
	mov	eax,[_vserverstream]
	mov	[esp],eax
	call	_frecvudpmsg
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_35
	sub	esp,12
	mov	eax,[_vserverstream]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_36
	sub	esp,8
	mov	eax,[_vgameinfostream]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],41110
	mov	eax,[_vgameinfostream]
	mov	[esp],eax
	call	_fsendudpmsg
_36
_35
_34
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fintip
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
	mov	[ebp-4],0
	mov	[ebp-8],1
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	jmp	_38
_39
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	imul	eax,[ebp-8]
	add	[ebp-4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[ebp-8],ebx
	add	[ebp-12],-1
_38
	cmp	[ebp-12],1
	jge	_39
_15
	mov	eax,[ebp-4]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vserverstream	.dd	0
	.align	4
_vgameinfostream	.dd	0
	.align	4
_vsearchstream	.dd	0
	.align	4
_vlistenstream	.dd	0
	.align	4
_tnetgames	.dd	5
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbStrType
_22	.db	"1",0
_23	.db	"Join Networked Game",0
_24	.db	"",0
_31	.db	"127.0.0.1",0
_37	.db	"Join Networked Game",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

