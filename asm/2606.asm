
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	mov	[esp],48
	call	_fcreateheartimage
	mov	[_vheartimage],eax
	sub	esp,4
	mov	eax,[_vheartimage]
	mov	[esp],eax
	call	_fmidhandle
	mov	[_vhealth],100
	jmp	_10
_9
	call	_frenderhearts
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frenderhearts
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
	mov	[ebp-28],1
	jmp	_11
_12
	mov	[ebp-8],552
	mov	ebx,[ebp-28]
	sub	ebx,1
	imul	ebx,48
	add	ebx,10
	add	ebx,24
	mov	[ebp-4],ebx
	sub	esp,8
	mov	[esp],8396832
	mov	[esp+4],0
	call	_fcolour
	sub	esp,20
	mov	[esp+12],48
	mov	[esp+16],1
	mov	[esp+8],48
	mov	ebx,[ebp-8]
	sub	ebx,24
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sub	eax,24
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fhearthealth
	mov	ecx,20
	cdq
	idiv	ecx
	imul	eax,360
	mov	[esp],eax
	mov	[esp+4],360
	call	__bbMod
	mov	[ebp-24],eax
	mov	ebx,1103101952
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-16],esi
	mov	ebx,1103101952
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-20],esi
	sub	esp,8
	mov	[esp],8392894
	mov	[esp+4],0
	call	_fcolour
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vheartimage]
	mov	[esp],eax
	call	_fdrawimage
	add	[ebp-28],1
_11
	mov	eax,[_vhealth]
	mov	ecx,100
	cdq
	idiv	ecx
	imul	eax,5
	cmp	[ebp-28],eax
	jle	_12
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhearthealth
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1084227584
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,5
	sub	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcolour
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_13
	sub	esp,12
	mov	ebx,[ebp+20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	edi,255
	and	esi,edi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	shr	eax,byte 16
	mov	esi,255
	and	eax,esi
	mov	[esp],eax
	call	_fclscolor
	jmp	_14
_13
	sub	esp,12
	mov	ebx,[ebp+20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	edi,255
	and	esi,edi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	shr	eax,byte 16
	mov	esi,255
	and	eax,esi
	mov	[esp],eax
	call	_fcolor
_14
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreateheartimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
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
	sub	esp,8
	mov	[esp],16777215
	mov	[esp+4],0
	call	_fcolour
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1
	call	_fcolour
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	esi,[ebp+20]
	shr	esi,byte 2
	sub	ebx,esi
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+20]
	shr	esi,byte 1
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	shr	ebx,byte 2
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shr	eax,byte 2
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	esi,[ebp+20]
	shr	esi,byte 2
	sub	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp+20]
	shr	esi,byte 1
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	esi,[ebp+20]
	shr	esi,byte 2
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shr	eax,byte 2
	mov	[esp],eax
	call	_foval
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1130430464
	call	_frotateimage
	sub	esp,16
	mov	[esp+8],255
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmaskimage
	mov	eax,[ebp-4]
	jmp	_8_leave
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
_vheartimage	.dd	0
	.align	4
_vhealth	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

