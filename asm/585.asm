
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
_fconvertrgb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_6
	cmp	[ebp-4],2
	jz	_7
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	mov	esi,[ebp+24]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp+28]
	or	ebx,esi
	mov	[ebp-8],ebx
	mov	eax,[ebp-8]
	jmp	_3_leave
	jmp	_5
_6
	mov	ebx,[ebp+20]
	sar	ebx,byte 3
	shl	ebx,byte 11
	mov	esi,[ebp+24]
	sar	esi,byte 2
	shl	esi,byte 5
	or	ebx,esi
	mov	esi,[ebp+28]
	sar	esi,byte 3
	or	ebx,esi
	mov	[ebp-8],ebx
	mov	eax,[ebp-8]
	jmp	_3_leave
	jmp	_5
_7
	mov	ebx,[ebp+20]
	sar	ebx,byte 3
	shl	ebx,byte 10
	mov	esi,[ebp+24]
	sar	esi,byte 3
	shl	esi,byte 5
	or	ebx,esi
	mov	esi,[ebp+28]
	sar	esi,byte 3
	or	ebx,esi
	mov	[ebp-8],ebx
	mov	eax,[ebp-8]
	jmp	_3_leave
	jmp	_5
_5
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

