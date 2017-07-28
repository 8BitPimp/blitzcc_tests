
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
	sub	esp,12
	mov	[esp],0
	call	_ffact
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffact
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	[ebp-8],1
	jmp	_5
_6
	mov	ebx,[ebp+20]
	sub	ebx,[ebp-8]
	imul	ebx,[ebp-4]
	mov	[ebp-4],ebx
	add	[ebp-8],1
_5
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_6
_4
	cmp	[ebp+20],0
	jnz	_7
	mov	eax,1
	jmp	_3_leave
	jmp	_8
_7
	mov	eax,[ebp-4]
	jmp	_3_leave
_8
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

