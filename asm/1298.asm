
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
_ftransparentbackground
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+44]
	mov	esi,[ebp+40]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp+36]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,-16777216
	or	ebx,esi
	mov	[ebp-12],ebx
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	jmp	_6
_7
	sub	esp,4
	mov	eax,[ebp-20]
	sub	eax,1
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 1
	add	ebx,[ebp+20]
	mov	[ebp-24],ebx
	jmp	_8
_9
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],4
_8
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_9
_5
	add	[ebp-16],1
_6
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_7
_4
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

