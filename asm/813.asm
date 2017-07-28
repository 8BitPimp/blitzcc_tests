
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
_fgreyscale
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-8],0
	jmp	_6
_7
	mov	[ebp-12],0
	jmp	_8
_9
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	eax,[ebp-20]
	add	eax,[ebp-24]
	add	eax,[ebp-28]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-32],eax
	cmp	[ebp+32],0
	jnz	_10
	mov	ebx,[ebp-32]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-28],ebx
	jmp	_11
_10
	mov	ebx,[ebp+32]
	cmp	[ebp-32],ebx
	jge	_12
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],0
	jmp	_13
_12
	mov	[ebp-20],255
	mov	[ebp-24],255
	mov	[ebp-28],255
_13
_11
	mov	ebx,[ebp-20]
	shl	ebx,byte 16
	mov	esi,[ebp-24]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-28]
	mov	[ebp-16],ebx
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_8
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_9
_5
	add	[ebp-8],1
_6
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_7
_4
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

