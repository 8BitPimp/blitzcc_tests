
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
_freplaceimage
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
	call	_fcolorred
	mov	[ebp-4],eax
	call	_fcolorgreen
	mov	[ebp-8],eax
	call	_fcolorblue
	mov	[ebp-12],eax
	call	_fgraphicsbuffer
	mov	[ebp-16],eax
	sub	esp,12
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fdrawimage
	mov	[ebp-20],0
	jmp	_6
_7
	mov	[ebp-24],0
	jmp	_8
_9
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fgetcolor
	call	_fcolorred
	cmp	eax,[ebp+20]
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcolorgreen
	mov	ebx,eax
	mov	eax,[ebp-32]
	cmp	ebx,[ebp+24]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	mov	[ebp-28],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcolorblue
	mov	ebx,eax
	mov	eax,[ebp-32]
	cmp	ebx,[ebp+28]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_10
	sub	esp,12
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	esi,[ebp+40]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fplot
_10
	add	[ebp-24],1
_8
	sub	esp,4
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fimageheight
	cmp	[ebp-24],eax
	jle	_9
_5
	add	[ebp-20],1
_6
	sub	esp,4
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fimagewidth
	cmp	[ebp-20],eax
	jle	_7
_4
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp+44]
	jmp	_3_leave
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

