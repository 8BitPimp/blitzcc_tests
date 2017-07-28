
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
_fpoweroftwo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	esi,-65536
	and	ebx,esi
	cmp	ebx,0
	jz	_5
	mov	[ebp-4],31
	jmp	_6
_5
	mov	[ebp-4],15
_6
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	jmp	_7
_8
	mov	ebx,1
	mov	ecx,[ebp-8]
	shl	ebx,cl
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	esi,[ebp-12]
	and	ebx,esi
	cmp	ebx,[ebp-12]
	jnz	_9
	mov	eax,[ebp-12]
	jmp	_3_leave
_9
	add	[ebp-8],-1
_7
	cmp	[ebp-8],0
	jge	_8
_4
	mov	eax,0
	jmp	_3_leave
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

