
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
	mov	[ebp-12],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_acoppermap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,12000
	mov	esi,_acoppermap
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acoppermap
	mov	[esp],eax
	call	__bbDimArray
	call	_fmakecoppermap
	mov	[ebp-4],300
	mov	[ebp-8],300
	jmp	_10
_9
	cmp	[ebp-12],600
	jge	_11
	add	[ebp-12],1
	sub	esp,24
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	mov	[esp+16],ebx
	mov	[esp+20],0
	mov	esi,600
	sub	esi,[ebp-12]
	mov	[esp+12],esi
	mov	ebx,600
	sub	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+4],240
	mov	[esp],320
	call	_fdrawoval
_11
	sub	[ebp-4],1
	sub	[ebp-8],1
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_9
_3
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
_fbound
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jle	_12
	mov	eax,[ebp+28]
	jmp	_4_leave
_12
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jge	_13
	mov	eax,[ebp+24]
	jmp	_4_leave
_13
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fdrawoval
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+28],1
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp+32],1
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_14
	mov	eax,0
	jmp	_5_leave
_14
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_acoppermap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp+36],ebx
	sub	esp,12
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fcolor
	mov	ebx,[ebp+40]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_16
	cmp	[ebp-8],1
	jz	_17
	jmp	_15
_16
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	jmp	_15
_17
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	jmp	_15
_15
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmidhandle
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fmakecoppermap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-4],1132396544
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1150681088
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	mov	[ebp-16],0
	jmp	_18
_19
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_acoppermap]
	mov	[esi],ebx
	add	[ebp-16],1
_18
	cmp	[ebp-16],1200
	jle	_19
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_acoppermap	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

