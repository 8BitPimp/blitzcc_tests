
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
_fbevelrect
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
	cmp	[ebp+40],0
	jnz	_4
	call	_fcolorred
	mov	[ebp-4],eax
	call	_fcolorgreen
	mov	[ebp-8],eax
	call	_fcolorblue
	mov	[ebp-12],eax
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-16],eax
	call	_fgraphicsbuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	ebx,[ebp+20]
	mov	[ebp-24],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-28],ebx
	mov	[ebp+20],0
	mov	[ebp+24],0
_4
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	sub	eax,[ebp+36]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	sub	eax,[ebp+36]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	sub	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+36]
	sar	eax,byte 1
	add	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+36]
	sar	ebx,byte 1
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	cmp	[ebp+40],0
	jnz	_5
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	add	[ebp+20],1
	add	[ebp+24],1
	sub	[ebp+28],2
	sub	[ebp+32],2
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	sub	eax,[ebp+36]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	sub	eax,[ebp+36]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	sub	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+36]
	sar	eax,byte 1
	add	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+36]
	sar	ebx,byte 1
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreeimage
_5
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

