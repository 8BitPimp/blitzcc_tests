
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	[ebp-4],60
	sub	esp,4
	mov	eax,_atfm
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	imul	ebx,[ebp-4]
	shl	ebx,byte 1
	mov	esi,_atfm
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atfm
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aorg
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	imul	ebx,[ebp-4]
	shl	ebx,byte 1
	mov	esi,_aorg
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_aorg
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aorg
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adest
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	imul	ebx,[ebp-4]
	shl	ebx,byte 1
	mov	esi,_adest
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_adest
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adest
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-20]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],15
	call	_fcreatelens
_13
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ftileimage
	call	_fmousex
	mov	[ebp-12],eax
	call	_fmousey
	mov	[ebp-16],eax
	call	_fgraphicswidth
	sub	eax,[ebp-4]
	cmp	[ebp-12],eax
	jl	_14
	call	_fgraphicswidth
	sub	eax,[ebp-4]
	mov	[ebp-12],eax
_14
	call	_fgraphicsheight
	sub	eax,[ebp-4]
	cmp	[ebp-16],eax
	jl	_15
	call	_fgraphicsheight
	sub	eax,[ebp-4]
	mov	[ebp-16],eax
_15
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawlens
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_13
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
_fcreatelens
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
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	imul	eax,[ebp-4]
	mov	ebx,[ebp+24]
	imul	ebx,[ebp+24]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	neg	ebx
	mov	[ebp-12],ebx
	jmp	_16
_17
	mov	ebx,[ebp-4]
	neg	ebx
	mov	[ebp-16],ebx
	jmp	_18
_19
	mov	eax,[ebp-16]
	imul	eax,[ebp-16]
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-12]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	ebx,[ebp-16]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-24],ebx
	jmp	_21
_20
	sub	esp,4
	mov	eax,[ebp-4]
	imul	eax,[ebp-4]
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-16]
	sub	eax,ebx
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-12]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	eax,[ebp-16]
	imul	eax,[ebp+24]
	mov	ecx,[ebp-28]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	eax,[ebp-12]
	imul	eax,[ebp+24]
	mov	ecx,[ebp-28]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
_21
	mov	ebx,[ebp-24]
	add	ebx,[ebp-4]
	imul	ebx,[ebp+20]
	mov	esi,[ebp-20]
	add	esi,[ebp-4]
	add	ebx,esi
	mov	esi,[ebp-12]
	add	esi,[ebp-4]
	imul	esi,[ebp+20]
	add	esi,1
	mov	edi,[ebp-16]
	add	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atfm]
	mov	[esi],ebx
	add	[ebp-16],1
_18
	mov	ebx,[ebp+20]
	sub	ebx,1
	add	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_19
_6
	add	[ebp-12],1
_16
	mov	ebx,[ebp-4]
	neg	ebx
	add	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_17
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdrawlens
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
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	jmp	_22
_23
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	jmp	_24
_25
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_aorg]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_aorg]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_aorg]
	mov	[esi],ebx
	add	[ebp-16],1
	add	[ebp-8],1
_24
	mov	ebx,[ebp+24]
	add	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_25
_9
	add	[ebp-4],1
_22
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_23
_8
	mov	[ebp-16],1
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	jmp	_26
_27
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	jmp	_28
_29
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atfm]
	mov	ebx,[ebx]
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aorg]
	mov	ebx,[ebx]
	mov	esi,_adest
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_adest]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atfm]
	mov	ebx,[ebx]
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aorg]
	mov	ebx,[ebx]
	mov	esi,_adest
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_adest]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atfm]
	mov	ebx,[ebx]
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aorg]
	mov	ebx,[ebx]
	mov	esi,_adest
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_adest]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,_adest
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_adest]
	mov	ebx,[ebx]
	mov	esi,_adest
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_adest]
	mov	esi,[esi]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,_adest
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_adest]
	mov	esi,[esi]
	shl	esi,byte 16
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
	add	[ebp-8],1
_28
	mov	ebx,[ebp+24]
	add	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_29
_11
	add	[ebp-4],1
_26
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_27
_10
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_atfm	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aorg	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adest	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_12	.db	"brick.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

