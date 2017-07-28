
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	jmp	_12
_11
	sub	esp,20
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,24
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_12
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	cmp	eax,0
	jz	_11
_3
	call	_fgrabbank
	mov	[ebp-4],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],1
	jmp	_13
_14
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffade
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-8],1
_13
	cmp	[ebp-8],32
	jle	_14
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	call	_fmousewait
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
_fgrabbank
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
	call	_fgraphicswidth
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	imul	eax,[ebp-8]
	shl	eax,byte 2
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-12],eax
	call	_fgraphicsbuffer
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_15
_16
	mov	[ebp-24],0
	jmp	_17
_18
	sub	esp,24
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[esp+8],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-28],4
	add	[ebp-24],1
_17
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_18
_7
	add	[ebp-20],1
_15
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_16
_6
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-12]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffade
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	call	_fgraphicswidth
	sub	eax,1
	mov	[ebp-4],eax
	call	_fgraphicsheight
	sub	eax,1
	mov	[ebp-8],eax
	call	_fgraphicsbuffer
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_19
_20
	mov	[ebp-20],0
	jmp	_21
_22
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-24],eax
	mov	ebx,[ebp-24]
	shr	ebx,byte 3
	mov	esi,2039583
	and	ebx,esi
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jnz	_23
	mov	ebx,[ebp-24]
	mov	[ebp-32],ebx
_23
	mov	ebx,[ebp-32]
	sub	[ebp-24],ebx
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-28],4
	add	[ebp-20],1
_21
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_22
_10
	add	[ebp-16],1
_19
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_20
_9
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

