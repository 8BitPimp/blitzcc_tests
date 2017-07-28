
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],13
	mov	[esp],200
	call	_fgraphics
	sub	esp,12
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fapptitle
_14
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrToInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffindsquareroot
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fcls
	sub	esp,48
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_16
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
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_14
_3
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
_ffindsquareroot
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	sub	esp,4
	mov	eax,_5
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-16],eax
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	[ebp-8],1
	mov	[ebp-12],0
	mov	[ebp-20],1
	mov	[ebp-24],1
_20
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fnextprime
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jnz	_21
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[ebp-16]
	mov	[esi],ebx
	jmp	_6
	jmp	_22
_21
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbMod
	cmp	eax,0
	jnz	_23
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[ebp-16]
	mov	[esi],ebx
	add	[ebp-12],1
	mov	eax,[ebp-4]
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	mov	[ebp-8],1
_23
_22
	jmp	_20
_6
	mov	[ebp-28],0
	jmp	_24
_25
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-32],ebx
	jmp	_26
_27
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[ebp-16]
	mov	eax,[eax]
	cmp	eax,-1
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	cmp	ebx,-1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	and	eax,eax
	jz	_28
	jmp	_29
_28
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[ebp-16]
	mov	esi,[esi]
	cmp	ebx,esi
	jnz	_30
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	mov	[ebp-20],ebx
	mov	ebx,-1
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[ebp-16]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[ebp-16]
	mov	[esi],ebx
	jmp	_8
	jmp	_31
_30
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jnz	_32
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	mov	[ebp-24],ebx
	mov	ebx,-1
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[ebp-16]
	mov	[esi],ebx
_32
_31
_29
	add	[ebp-32],1
_26
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jle	_27
_8
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jnz	_33
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jz	_34
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[ebp-16]
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	mov	[ebp-24],ebx
_34
_33
	add	[ebp-28],1
_24
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jle	_25
_7
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_toutput
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-20]
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,[ebp-36]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-40],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	[esp+4],_5
	mov	eax,ebx
	call	__bbVecFree
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-36]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fnextprime
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-8],0
	jmp	_36
_35
	add	[ebp+20],1
	mov	[ebp-8],1
	mov	[ebp-4],2
	jmp	_37
_38
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	__bbMod
	cmp	eax,0
	jnz	_39
	mov	[ebp-8],0
	jmp	_11
_39
	add	[ebp-4],1
_37
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	cmp	[ebp-4],ebx
	jle	_38
_11
_36
	cmp	[ebp-8],0
	jz	_35
_10
	mov	eax,[ebp+20]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_12	.db	"sqr function",0
_13	.db	"",0
	.align	4
_vleft_output	.dd	0
	.align	4
_vright_output	.dd	0
_15	.db	"number: ",0
_16	.db	"*sqr(",0
_17	.db	")",0
	.align	4
_toutput	.dd	5
_18	.dd	0
	.dd	_18
	.dd	_18
	.dd	0
	.dd	-1
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_5	.dd	6
	.dd	51
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

