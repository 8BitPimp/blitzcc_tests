
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
_fkeyimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	call	_fgraphicswidth
	mov	[ebp-12],eax
	call	_fgraphicsheight
	mov	[ebp-16],eax
	mov	ebx,[ebp+24]
	mov	esi,16579836
	and	ebx,esi
	mov	[ebp+24],ebx
	mov	[ebp-20],0
	jmp	_10
_11
	mov	[ebp-24],0
	jmp	_12
_13
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	mov	esi,16579836
	and	ebx,esi
	cmp	ebx,[ebp+24]
	jz	_14
	mov	ebx,[ebp-28]
	mov	esi,-16777216
	or	ebx,esi
	mov	[ebp-28],ebx
	jmp	_15
_14
	mov	[ebp-28],0
_15
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_12
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_13
_5
	add	[ebp-20],1
_10
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_11
_4
	mov	[ebp-20],1
	jmp	_16
_17
	mov	[ebp-24],1
	jmp	_18
_19
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	cmp	[ebp-28],0
	jnz	_20
	mov	[ebp-32],0
	mov	[ebp-36],-1
	jmp	_21
_22
	mov	[ebp-40],-1
	jmp	_23
_24
	sub	esp,12
	mov	ebx,[ebp-20]
	add	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	add	eax,[ebp-40]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	mov	esi,16777215
	and	ebx,esi
	and	ebx,ebx
	jz	_25
	mov	ebx,[ebp-32]
	mov	esi,16711422
	and	ebx,esi
	shr	ebx,byte 1
	mov	esi,[ebp-28]
	mov	edi,16711422
	and	esi,edi
	shr	esi,byte 1
	add	ebx,esi
	mov	[ebp-32],ebx
_25
	add	[ebp-40],1
_23
	cmp	[ebp-40],1
	jle	_24
_9
	add	[ebp-36],1
_21
	cmp	[ebp-36],1
	jle	_22
_8
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-20]
	add	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	add	eax,[ebp-40]
	mov	[esp],eax
	call	_fwritepixelfast
_20
	add	[ebp-24],1
_18
	mov	ebx,[ebp-12]
	sub	ebx,2
	cmp	[ebp-24],ebx
	jle	_19
_7
	add	[ebp-20],1
_16
	mov	ebx,[ebp-16]
	sub	ebx,2
	cmp	[ebp-20],ebx
	jle	_17
_6
	sub	esp,4
	mov	eax,[ebp-8]
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
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

