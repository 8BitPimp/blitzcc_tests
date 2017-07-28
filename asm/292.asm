
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],480
	mov	[esp+8],1
	mov	[esp],640
	call	_fcreateimage
	mov	[_vbackground],eax
	sub	esp,12
	mov	eax,[_vbackground]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],240
	mov	[esp+16],1
	mov	[esp+8],640
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],240
	mov	[esp+16],1
	mov	[esp+8],640
	mov	[esp+4],240
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],1
	mov	[esp],10
	call	_fcreateimage
	mov	[_vwaveimage],eax
	sub	esp,12
	mov	eax,[_vwaveimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],1
	mov	[esp+8],1
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],1
	mov	[esp+8],1
	mov	[esp+4],100
	mov	[esp],0
	call	_frect
	sub	esp,4
	mov	eax,_asinustable1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2000
	mov	esi,_asinustable1
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asinustable1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asinustable2
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2000
	mov	esi,_asinustable2
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asinustable2
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],1
	jmp	_7
_8
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1110704128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asinustable1]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1097859072
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asinustable2]
	mov	[ebx],eax
	add	[ebp-4],1
_7
	cmp	[ebp-4],2000
	jle	_8
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_10
_9
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vbackground]
	mov	[esp],eax
	call	_fdrawblock
	call	_fwave
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_9
_4
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
_fwave
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_11
_12
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,[_vcount1]
	shl	ebx,byte 2
	add	ebx,[_asinustable1]
	mov	ebx,[ebx]
	add	ebx,140
	mov	esi,[ebp-4]
	add	esi,[_vcount2]
	shl	esi,byte 2
	add	esi,[_asinustable2]
	mov	esi,[esi]
	add	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[_vwaveimage]
	mov	[esp],eax
	call	_fdrawimage
	add	[ebp-4],2
	add	[ebp-8],1
_11
	cmp	[ebp-8],640
	jle	_12
_6
	sub	esp,8
	mov	eax,[_vcount1]
	add	eax,3
	mov	[esp],eax
	mov	[esp+4],360
	call	__bbMod
	mov	[_vcount1],eax
	sub	esp,8
	mov	eax,[_vcount2]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],360
	call	__bbMod
	mov	[_vcount2],eax
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vcount1	.dd	0
	.align	4
_vcount2	.dd	0
	.align	4
_vbackground	.dd	0
	.align	4
_vwaveimage	.dd	0
	.align	4
_asinustable1	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asinustable2	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

