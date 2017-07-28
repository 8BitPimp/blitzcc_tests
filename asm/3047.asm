
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
_fcreatepolysphere
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],39600
	setle	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp+20],8
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	imul	eax,[ebp+20]
	mov	[ebp-12],eax
	cmp	[ebp+20],39600
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	imul	ebx,39600
	add	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp+20],8
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	shl	ebx,byte 3
	add	eax,ebx
	mov	[ebp+20],eax
	mov	[ebp-4],3
	jmp	_7
_8
	mov	ebx,[ebp-4]
	imul	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	sub	ebx,1
	imul	ebx,[ebp-8]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_9
	sub	[ebp-4],1
	jmp	_4
_9
	add	[ebp-4],1
_7
	cmp	[ebp-4],100
	jle	_8
_4
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fcreatesphere
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreatepolycylinder
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],200
	setle	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[ebp+20],8
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	imul	eax,[ebp+20]
	mov	[ebp-4],eax
	cmp	[ebp+20],200
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	imul	ebx,200
	add	eax,ebx
	mov	[ebp-4],eax
	cmp	[ebp+20],8
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	shl	ebx,byte 3
	add	eax,ebx
	mov	[ebp+20],eax
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp+20],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatecylinder
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcreatepolycone
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],100
	setle	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[ebp+20],8
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	imul	eax,[ebp+20]
	mov	[ebp-4],eax
	cmp	[ebp+20],100
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	imul	ebx,100
	add	eax,ebx
	mov	[ebp-4],eax
	cmp	[ebp+20],8
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	shl	ebx,byte 3
	add	eax,ebx
	mov	[ebp+20],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatecone
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

