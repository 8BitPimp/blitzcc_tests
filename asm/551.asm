
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
	mov	[_vgotr],0
	mov	[_vgotg],0
	mov	[_vgotb],0
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetrgb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[_vgotr],ebx
	mov	ebx,[ebp-4]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[_vgotg],ebx
	mov	ebx,[ebp-4]
	mov	esi,255
	and	ebx,esi
	mov	[_vgotb],ebx
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwritergb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+40]
	mov	esi,[ebp+36]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp+32]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,-16777216
	or	ebx,esi
	mov	[ebp-4],ebx
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
_vgotr	.dd	0
	.align	4
_vgotg	.dd	0
	.align	4
_vgotb	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

