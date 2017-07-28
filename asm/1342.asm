
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
	sub	esp,4
	mov	eax,_apallette256
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_apallette256
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_apallette256
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apallette256
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadpcximage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,96
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
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_9
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_9
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-40],eax
	mov	ebx,[ebp-36]
	sub	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-44],ebx
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-32]
	add	ebx,1
	mov	[ebp-48],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],65
	call	_fseekfile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-52],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-56],eax
	mov	ebx,[ebp-52]
	imul	ebx,[ebp-56]
	mov	[ebp-60],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,769
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-64],eax
	cmp	[ebp-64],12
	jnz	_11
	mov	[ebp-68],0
	jmp	_12
_13
	mov	[ebp-72],0
	jmp	_14
_15
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-76],eax
	mov	ebx,[ebp-76]
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-72]
	add	esi,[ebp-68]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	[esi],ebx
	add	[ebp-72],1
_14
	cmp	[ebp-72],2
	jle	_15
_5
	add	[ebp-68],1
_12
	cmp	[ebp-68],255
	jle	_13
_4
_11
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],128
	call	_fseekfile
	sub	esp,12
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-80],eax
	sub	esp,12
	mov	eax,[ebp-80]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-84],1
	mov	[ebp-88],1
	jmp	_17
_16
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-76],eax
	mov	ebx,[ebp-76]
	mov	esi,192
	and	ebx,esi
	cmp	ebx,192
	jnz	_18
	mov	ebx,[ebp-76]
	mov	esi,63
	and	ebx,esi
	mov	[ebp-92],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-76],eax
	mov	[ebp-64],1
	jmp	_19
_20
	sub	esp,28
	mov	ebx,_apallette256
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_apallette256]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_apallette256
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-76]
	shl	eax,byte 2
	add	eax,[_apallette256]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fargb
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-88]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	sub	eax,1
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-84],1
	mov	ebx,[ebp-60]
	cmp	[ebp-84],ebx
	jle	_21
	mov	[ebp-84],1
	add	[ebp-88],1
_21
	mov	ebx,[ebp-48]
	cmp	[ebp-88],ebx
	jle	_22
	jmp	_7
_22
	add	[ebp-64],1
_19
	mov	ebx,[ebp-92]
	cmp	[ebp-64],ebx
	jle	_20
_7
	jmp	_23
_18
	sub	esp,28
	mov	ebx,_apallette256
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_apallette256]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_apallette256
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-76]
	shl	esi,byte 2
	add	esi,[_apallette256]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_apallette256
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-76]
	shl	eax,byte 2
	add	eax,[_apallette256]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fargb
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-88]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	sub	eax,1
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-84],1
	mov	ebx,[ebp-60]
	cmp	[ebp-84],ebx
	jle	_24
	mov	[ebp-84],1
	add	[ebp-88],1
_24
	mov	ebx,[ebp-48]
	cmp	[ebp-88],ebx
	jle	_25
	jmp	_6
_25
_23
_17
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_16
_6
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-80]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-96],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fargb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+28]
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	or	eax,ebx
	mov	ebx,-16777216
	or	eax,ebx
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_apallette256	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_10	.db	"file not found",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

