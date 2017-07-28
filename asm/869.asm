
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
_fgenerateshadow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_6
_7
	mov	[ebp-8],0
	jmp	_8
_9
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	call	_fcolorred
	cmp	eax,[ebp+24]
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fcolorgreen
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,[ebp+28]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fcolorblue
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,255
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	cmp	eax,0
	jnz	_10
	sub	esp,12
	call	_fcolorred
	mov	[esp+4],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fcolorred
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+8],ebx
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fcolorred
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fplot
_10
	add	[ebp-8],1
_8
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_9
_5
	add	[ebp-4],1
_6
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_7
_4
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp+20]
	jmp	_3_leave
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

