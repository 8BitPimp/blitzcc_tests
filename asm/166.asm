
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
_fstring_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
_6
	cmp	[ebp-4],0
	jnz	_7
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-8],eax
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_8
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	jmp	_4
_8
	jmp	_10
_9
	call	_fgetkey
	mov	[ebp-4],eax
_10
	cmp	[ebp-4],0
	jz	_9
_5
	cmp	[ebp-4],13
	jnz	_11
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	jmp	_4
_11
	sub	esp,4
	mov	[esp],29
	call	_fkeydown
	mov	[ebp-12],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],157
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_12
	mov	[ebp-4],0
	jmp	_13
_12
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-4],7
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-4],26
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-4],32
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-4],9
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_14
	mov	[ebp-4],0
	jmp	_15
_14
	cmp	[ebp-4],8
	jnz	_16
	cmp	[ebp-8],0
	jle	_17
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_17
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_ftext
	mov	[ebp-4],0
	jmp	_18
_16
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_ftext
	mov	[ebp-4],0
_18
_15
_13
_7
	jmp	_6
_4
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_19	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

