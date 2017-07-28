
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[_vimg_w],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[_vimg_h],eax
	sub	esp,12
	mov	ebx,[_vimg_h]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vimg_w]
	add	eax,1
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_9
_10
	cmp	[ebp-12],0
	jle	_11
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-16],ebx
	jmp	_12
_11
	mov	[ebp-16],0
_12
	mov	ebx,[_vimg_h]
	cmp	[ebp-12],ebx
	jge	_13
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-20],ebx
	jmp	_14
_13
	mov	ebx,[_vimg_h]
	mov	[ebp-20],ebx
_14
	mov	[ebp-24],0
	jmp	_15
_16
	cmp	[ebp-24],0
	jle	_17
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	[ebp-28],ebx
	jmp	_18
_17
	mov	[ebp-28],0
_18
	mov	ebx,[_vimg_w]
	cmp	[ebp-24],ebx
	jge	_19
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[ebp-32],ebx
	jmp	_20
_19
	mov	ebx,[_vimg_w]
	mov	[ebp-32],ebx
_20
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-36],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-40],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-44],eax
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	sub	ebx,[ebp-44]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-36]
	sub	ebx,[ebp-40]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-52]
	add	ebx,255
	sar	ebx,byte 1
	mov	[ebp-60],ebx
	mov	ebx,[ebp-56]
	add	ebx,255
	sar	ebx,byte 1
	mov	[ebp-64],ebx
	mov	[ebp-68],255
	mov	ebx,[ebp-60]
	shl	ebx,byte 16
	mov	esi,[ebp-64]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-68]
	mov	[ebp-72],ebx
	sub	esp,24
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_15
	mov	ebx,[_vimg_w]
	cmp	[ebp-24],ebx
	jle	_16
_4
	add	[ebp-12],1
_9
	mov	ebx,[_vimg_h]
	cmp	[ebp-12],ebx
	jle	_10
_3
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	jmp	_22
_21
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
_22
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_21
_5
	sub	esp,16
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeimage
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"NormalMap",0
_7	.db	"",0
_8	.db	"heightmap.bmp",0
	.align	4
_vimg_w	.dd	0
	.align	4
_vimg_h	.dd	0
_23	.db	"normal_map.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

