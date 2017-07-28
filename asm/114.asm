
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
	mov	[ebp-4],250
_4
	mov	[ebp-8],0
	mov	[ebp-12],0
	call	_fmillisecs
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_5
	mov	[ebp-20],1
	jmp	_6
_5
	mov	ebx,[ebp-20]
	and	ebx,ebx
	jz	_7
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-28]
	cmp	ebx,[ebp-4]
	jg	_8
	mov	[ebp-8],1
	mov	[ebp-28],0
	mov	[ebp-32],0
	jmp	_9
_8
	cmp	[ebp-32],0
	jnz	_10
	mov	ebx,[ebp-24]
	add	ebx,[ebp-4]
	mov	[ebp-32],ebx
_10
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
_9
	mov	[ebp-20],0
_7
_6
	cmp	[ebp-32],0
	setg	al
	movzx	eax,al
	mov	[ebp-44],eax
	mov	ebx,[ebp-32]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_11
	mov	[ebp-12],1
	mov	[ebp-32],0
_11
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_12
	add	[ebp-36],1
	sub	esp,24
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_13
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
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_12
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_14
	add	[ebp-40],1
	sub	esp,24
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_15
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
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_4
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_13	.db	" singleclick ",0
_15	.db	" Doubleclick! ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

