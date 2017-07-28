
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_8
_9
	mov	[ebp-8],0
	jmp	_10
_11
	sub	esp,28
	mov	[esp+20],128
	mov	[esp+24],0
	mov	[esp+16],255
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+8],200
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ffline
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],0
	mov	[esp+16],255
	mov	[esp+12],200
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffline
	add	[ebp-8],20
_10
	cmp	[ebp-8],200
	jle	_11
_4
	add	[ebp-4],20
_8
	cmp	[ebp-4],200
	jle	_9
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffline
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
	mov	ebx,[ebp+44]
	mov	esi,[ebp+40]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp+36]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,-16777216
	or	ebx,esi
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jnz	_12
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jle	_13
	mov	ebx,[ebp+32]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	[ebp+32],ebx
	mov	ebx,[ebp-8]
	mov	[ebp+24],ebx
_13
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	jmp	_14
_15
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	call	_fbackbuffer
	mov	[esp+12],eax
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_14
	mov	ebx,[ebp+32]
	cmp	[ebp-12],ebx
	jle	_15
_6
_12
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jnz	_16
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jle	_17
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp+28],ebx
	mov	ebx,[ebp-8]
	mov	[ebp+20],ebx
_17
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	jmp	_18
_19
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	call	_fbackbuffer
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_18
	mov	ebx,[ebp+28]
	cmp	[ebp-12],ebx
	jle	_19
_7
_16
	mov	eax,0
	jmp	_5_leave
_5_leave
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

