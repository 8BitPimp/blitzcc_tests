
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
	sub	esp,16
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	sar	ebx,byte 1
	add	eax,ebx
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimagewidth
	mov	ebx,eax
	mov	eax,[ebp-36]
	shl	ebx,byte 2
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	[ebp-16],ebx
	mov	[ebp-20],0
	jmp	_11
_12
	mov	[ebp-24],0
	jmp	_13
_14
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	sar	eax,byte 1
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	eax,ebx
	mov	[ebp-32],eax
	sub	esp,36
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixel
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	add	eax,0
	mov	[esp],eax
	call	_fwritepixel
	sub	esp,36
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixel
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	add	eax,1
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-24],1
_13
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-24],eax
	jle	_14
_4
	add	[ebp-20],1
_11
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_12
_3
	mov	[ebp-20],0
	jmp	_15
_16
	mov	[ebp-24],0
	jmp	_17
_18
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-24]
	mov	[ebp-32],ebx
	sub	esp,36
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixel
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-32]
	add	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	shl	eax,byte 1
	add	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-24],1
_17
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-24],eax
	jle	_18
_6
	add	[ebp-20],1
_15
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_16
_5
	mov	[ebp-20],0
	jmp	_19
_20
	mov	[ebp-24],0
	jmp	_21
_22
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	sar	eax,byte 1
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	sub	eax,ebx
	add	eax,[ebp-24]
	mov	[ebp-32],eax
	sub	esp,36
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixel
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	imul	eax,3
	add	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-24],1
_21
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-24],eax
	jle	_22
_8
	add	[ebp-20],1
_19
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_20
_7
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgrabimage
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	call	_fendgraphics
	call	_fend
	ret
_2_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_9	.db	"image.png",0
_10	.db	"slab1.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

