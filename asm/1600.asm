
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
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vpic],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vpic]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,_apix
	mov	[esp],eax
	call	__bbUndimArray
	call	_fgraphicswidth
	mov	ebx,_apix
	add	ebx,12
	mov	[ebx],eax
	call	_fgraphicsheight
	mov	ebx,_apix
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,_apix
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_8
_9
	mov	[ebp-8],0
	jmp	_10
_11
	sub	esp,12
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	sar	eax,byte 1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,_apix
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_apix]
	mov	[ebx],eax
	add	[ebp-8],1
_10
	call	_fgraphicswidth
	cmp	[ebp-8],eax
	jle	_11
_4
	add	[ebp-4],1
_8
	call	_fgraphicsheight
	cmp	[ebp-4],eax
	jle	_9
_3
	call	_fcls
	mov	[ebp-4],0
	jmp	_12
_13
	mov	[ebp-8],0
	jmp	_14
_15
	sub	esp,16
	mov	ebx,_apix
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_apix]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-8],1
_14
	call	_fgraphicswidth
	cmp	[ebp-8],eax
	jle	_15
_6
	add	[ebp-4],1
_12
	call	_fgraphicsheight
	cmp	[ebp-4],eax
	jle	_13
_5
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vpic	.dd	0
_7	.db	"mona.JPG",0
	.align	4
_apix	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

