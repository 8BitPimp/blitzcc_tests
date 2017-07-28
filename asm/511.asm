
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],300
	mov	[esp+8],1
	mov	[esp],400
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,_abuffer
	mov	[esp],eax
	call	__bbUndimArray
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	ebx,_abuffer
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	ebx,_abuffer
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,_abuffer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apicture
	mov	[esp],eax
	call	__bbUndimArray
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	ebx,_apicture
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	ebx,_apicture
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,_apicture
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],70
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],150
	mov	[esp],200
	call	_ftext
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_17
_18
	mov	[ebp-16],0
	jmp	_19
_20
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,_abuffer
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_abuffer]
	mov	[ebx],eax
	add	[ebp-16],1
_19
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	cmp	[ebp-16],eax
	jle	_20
_4
	add	[ebp-12],1
_17
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	cmp	[ebp-12],eax
	jle	_18
_3
	mov	[ebp-12],0
	jmp	_21
_22
	mov	[ebp-16],0
	jmp	_23
_24
	sub	esp,4
	mov	eax,_abuffer
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_abuffer]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetr
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,_abuffer
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_abuffer]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetg
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,_abuffer
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_abuffer]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetb
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-12]
	add	eax,3
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_abuffer]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetr
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-12]
	add	eax,3
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_abuffer]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetg
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-12]
	add	eax,3
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_abuffer]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgetb
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbAbs
	sub	eax,[ebp-32]
	add	eax,128
	mov	[ebp-44],eax
	cmp	[ebp-44],255
	jle	_25
	mov	[ebp-44],255
_25
	cmp	[ebp-44],0
	jge	_26
	mov	[ebp-44],0
_26
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbAbs
	sub	eax,[ebp-36]
	add	eax,128
	mov	[ebp-48],eax
	cmp	[ebp-48],255
	jle	_27
	mov	[ebp-48],255
_27
	cmp	[ebp-48],0
	jge	_28
	mov	[ebp-48],0
_28
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	__bbAbs
	sub	eax,[ebp-40]
	add	eax,128
	mov	[ebp-52],eax
	cmp	[ebp-52],255
	jle	_29
	mov	[ebp-52],255
_29
	cmp	[ebp-52],0
	jge	_30
	mov	[ebp-52],0
_30
	sub	esp,12
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fgetrgb
	mov	ebx,_apicture
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apicture]
	mov	[ebx],eax
	add	[ebp-16],1
_23
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_24
_6
	add	[ebp-12],1
_21
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,3
	cmp	[ebp-12],eax
	jle	_22
_5
	mov	[ebp-12],0
	jmp	_31
_32
	mov	[ebp-16],0
	jmp	_33
_34
	sub	esp,16
	mov	ebx,_apicture
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apicture]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_33
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_34
_8
	add	[ebp-12],1
_31
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,3
	cmp	[ebp-12],eax
	jle	_32
_7
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,3
	mov	[ebp-12],eax
	jmp	_35
_36
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-16],eax
	jmp	_37
_38
	sub	esp,16
	mov	ebx,_abuffer
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_abuffer]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_37
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	cmp	[ebp-16],eax
	jle	_38
_10
	add	[ebp-12],1
_35
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	cmp	[ebp-12],eax
	jle	_36
_9
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,_abuffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_abuffer
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_abuffer
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abuffer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apicture
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_apicture
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_apicture
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apicture
	mov	[esp],eax
	call	__bbDimArray
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
	mov	eax,[ebp-4]
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
	.align	16
_fgetr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,16711680
	and	eax,ebx
	sar	eax,byte 16
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetg
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,65280
	and	eax,ebx
	sar	eax,byte 8
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,255
	and	eax,ebx
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgetrgb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shl	eax,byte 16
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	add	eax,ebx
	add	eax,[ebp+28]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_abuffer	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_apicture	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_15	.db	"Verdana",0
_16	.db	"BlitzBASIC",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

