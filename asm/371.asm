
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
_fgcd
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	cmp	[ebp+20],0
	jg	_10
	cmp	[ebp+20],0
	jnz	_11
	mov	eax,[ebp+24]
	jmp	_3_leave
	jmp	_12
_11
	mov	ebx,[ebp+20]
	neg	ebx
	mov	[ebp+20],ebx
_12
_10
	cmp	[ebp+24],0
	jg	_13
	cmp	[ebp+24],0
	jnz	_14
	mov	eax,[ebp+20]
	jmp	_3_leave
	jmp	_15
_14
	mov	ebx,[ebp+24]
	neg	ebx
	mov	[ebp+24],ebx
_15
_13
	jmp	_17
_16
	mov	ebx,[ebp+20]
	shr	ebx,byte 1
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	shr	ebx,byte 1
	mov	[ebp+24],ebx
	add	[ebp-4],1
_17
	mov	ebx,[ebp+20]
	mov	esi,[ebp+24]
	or	ebx,esi
	mov	esi,1
	and	ebx,esi
	cmp	ebx,0
	jz	_16
_4
	jmp	_19
_18
	mov	ebx,[ebp+20]
	shr	ebx,byte 1
	mov	[ebp+20],ebx
_19
	mov	ebx,[ebp+20]
	mov	esi,1
	and	ebx,esi
	cmp	ebx,0
	jz	_18
_5
	jmp	_21
_20
	mov	ebx,[ebp+24]
	shr	ebx,byte 1
	mov	[ebp+24],ebx
_21
	mov	ebx,[ebp+24]
	mov	esi,1
	and	ebx,esi
	cmp	ebx,0
	jz	_20
_6
	jmp	_23
_22
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_24
	mov	ebx,[ebp+24]
	sub	[ebp+20],ebx
_25
	mov	ebx,[ebp+20]
	shr	ebx,byte 1
	mov	[ebp+20],ebx
	mov	ebx,[ebp+20]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_25
_8
	jmp	_26
_24
	mov	ebx,[ebp+20]
	sub	[ebp+24],ebx
_27
	mov	ebx,[ebp+24]
	shr	ebx,byte 1
	mov	[ebp+24],ebx
	mov	ebx,[ebp+24]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_27
_9
_26
_23
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jnz	_22
_7
	mov	eax,[ebp+20]
	mov	ecx,[ebp-4]
	shl	eax,cl
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
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

