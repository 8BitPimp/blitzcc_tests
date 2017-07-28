
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],1
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_8
_9
	mov	[ebp-20],0
	jmp	_10
_11
	sub	esp,28
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],16777215
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-28]
	xor	eax,ebx
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-20],1
_10
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jle	_11
_4
	add	[ebp-16],1
_8
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_9
_3
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	sub	esp,4
	mov	[esp],1
	call	_fseedrnd
	mov	[ebp-16],0
	jmp	_12
_13
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_14
_15
	sub	esp,8
	mov	[esp],16777215
	mov	[esp+4],1
	call	_frand
	mov	[ebp-24],eax
	call	_fgraphicsheight
	cmp	[ebp-20],eax
	setl	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-32]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,28
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,[ebp-24]
	xor	eax,ebx
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
_16
	add	[ebp-20],1
_14
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jle	_15
_6
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-16],1
_12
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_13
_5
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_7	.db	"your image file goes here",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

