
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
_fresizeimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-12],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+24]
	add	eax,1
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-24],0
	jmp	_6
_7
	sub	esp,36
	mov	eax,[ebp-8]
	imul	eax,[ebp-24]
	mov	ecx,[ebp+24]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	ebx,[ebp-12]
	mov	[esp+24],ebx
	mov	esi,[ebp+32]
	mov	[esp+28],esi
	mov	[esp+20],1
	mov	[esp+16],0
	mov	[esp+8],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblockrect
	add	[ebp-24],1
_6
	mov	ebx,[ebp+24]
	cmp	[ebp-24],ebx
	jle	_7
_4
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-28],0
	jmp	_8
_9
	sub	esp,36
	mov	eax,[ebp-12]
	imul	eax,[ebp-28]
	mov	ecx,[ebp+28]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[esp+24],1
	mov	[esp+28],0
	mov	esi,[ebp+24]
	mov	[esp+20],esi
	mov	[esp+12],0
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fdrawblockrect
	add	[ebp-28],1
_8
	mov	ebx,[ebp+28]
	cmp	[ebp-28],ebx
	jle	_9
_5
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-20]
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

