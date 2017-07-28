
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
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_9
_10
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawalphaimage
	add	[ebp-8],10
_9
	cmp	[ebp-8],100
	jle	_10
_3
	call	_fmousewait
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
_fdrawalphaimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	cmp	[ebp+32],0
	jnz	_11
	mov	ebx,[ebp+20]
	mov	[ebp+32],ebx
_11
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	call	_fgraphicswidth
	mov	[ebp-12],eax
	call	_fgraphicswidth
	mov	[ebp-16],eax
	mov	ebx,[ebp+24]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-24],ebx
	cmp	[ebp-20],0
	jge	_12
	mov	ebx,[ebp-20]
	add	[ebp-4],ebx
	mov	[ebp-20],0
_12
	cmp	[ebp-24],0
	jge	_13
	mov	ebx,[ebp-24]
	add	[ebp-8],ebx
	mov	[ebp-24],0
_13
	mov	ebx,[ebp-20]
	add	ebx,[ebp-4]
	cmp	ebx,[ebp-12]
	jle	_14
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-20]
	mov	[ebp-4],ebx
_14
	mov	ebx,[ebp-24]
	add	ebx,[ebp-8]
	cmp	ebx,[ebp-16]
	jle	_15
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-24]
	mov	[ebp-8],ebx
_15
	cmp	[ebp-4],0
	setle	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_16
	mov	eax,0
	jmp	_4_leave
_16
	mov	ebx,[ebp-20]
	add	ebx,[ebp-4]
	sub	ebx,1
	mov	[ebp-28],ebx
	mov	ebx,[ebp-24]
	add	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-32],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-40],eax
	call	_fgraphicsbuffer
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_flockbuffer
	mov	ebx,[ebp-24]
	mov	[ebp-48],ebx
	jmp	_17
_18
	mov	ebx,[ebp-20]
	mov	[ebp-52],ebx
	jmp	_19
_20
	sub	esp,12
	mov	ebx,[ebp-48]
	sub	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-52]
	sub	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-56],eax
	cmp	[ebp-56],1
	jle	_21
	sub	esp,12
	mov	ebx,[ebp-48]
	sub	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	eax,[ebp-52]
	sub	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-60],eax
	sub	esp,12
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-64],eax
	mov	[ebp-68],128
	mov	[ebp-72],0
	jmp	_23
_22
	mov	ebx,[ebp-60]
	shr	ebx,byte 1
	mov	esi,8355711
	and	ebx,esi
	mov	[ebp-60],ebx
	mov	ebx,[ebp-64]
	shr	ebx,byte 1
	mov	esi,8355711
	and	ebx,esi
	mov	[ebp-64],ebx
	mov	ebx,[ebp-56]
	mov	esi,[ebp-68]
	and	ebx,esi
	and	ebx,ebx
	jz	_24
	mov	ebx,[ebp-60]
	add	[ebp-72],ebx
	jmp	_25
_24
	mov	ebx,[ebp-64]
	add	[ebp-72],ebx
_25
	mov	ebx,[ebp-68]
	shr	ebx,byte 1
	mov	[ebp-68],ebx
_23
	cmp	[ebp-68],1
	jg	_22
_7
	sub	esp,16
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fwritepixelfast
_21
	add	[ebp-52],1
_19
	mov	ebx,[ebp-28]
	cmp	[ebp-52],ebx
	jle	_20
_6
	add	[ebp-48],1
_17
	mov	ebx,[ebp-32]
	cmp	[ebp-48],ebx
	jle	_18
_5
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_8	.db	"test.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

