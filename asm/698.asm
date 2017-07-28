
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
_fbmpfont_load
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],96
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimimage
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_8
	mov	[ebp-4],0
_8
	mov	eax,[ebp-4]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbmpfont_print
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+40]
	and	ebx,ebx
	jz	_9
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-12],eax
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-4]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+32]
	and	ebx,ebx
	jz	_10
	mov	ebx,[ebp-16]
	sar	ebx,byte 1
	sub	[ebp+20],ebx
_10
	mov	ebx,[ebp+36]
	and	ebx,ebx
	jz	_11
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	sub	[ebp+24],ebx
_11
	mov	[ebp-20],1
	jmp	_12
_13
	sub	esp,32
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	sub	eax,32
	mov	[esp+12],eax
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[ebp-8]
	add	[ebp+20],ebx
	add	[ebp-20],1
_12
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_13
_5
_9
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fbmpfont_create
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
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	ebx,[ebp+32]
	imul	ebx,6
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+28]
	shl	eax,byte 4
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-12],0
	mov	ebx,[ebp+28]
	sar	ebx,byte 1
	mov	[ebp-16],ebx
	mov	ebx,[ebp+32]
	sar	ebx,byte 1
	mov	[ebp-20],ebx
	mov	[ebp-24],32
	jmp	_14
_15
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fchr
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftext
	mov	ebx,[ebp+28]
	add	[ebp-16],ebx
	mov	ebx,[ebp+28]
	shl	ebx,byte 4
	cmp	[ebp-16],ebx
	jle	_16
	mov	ebx,[ebp+28]
	sar	ebx,byte 1
	mov	[ebp-16],ebx
	mov	ebx,[ebp+32]
	add	[ebp-20],ebx
_16
	add	[ebp-24],1
_14
	cmp	[ebp-24],127
	jle	_15
_7
	sub	esp,16
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp+36]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

