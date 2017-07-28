
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
	mov	[_vct],0
	mov	[_vnw],1
	sub	esp,4
	mov	eax,_awavemap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_awavemap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_awavemap
	add	esi,16
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_awavemap
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awavemap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_10
_9
	cmp	[ebp-4],10
	jle	_11
	sub	esp,8
	mov	[esp],1115160576
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],1115160576
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,_awavemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vct]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	esi,1132462080
	mov	[ebx],esi
	mov	[ebp-4],0
_11
	add	[ebp-4],1
	call	_fupdatewavemap
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
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
_fupdatewavemap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-4],1
	jmp	_12
_13
	mov	[ebp-8],1
	jmp	_14
_15
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_awavemap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vct]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	add	esi,1
	mov	edi,_awavemap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[_vct]
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_awavemap]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-4]
	sub	esi,1
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,_awavemap
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-8]
	add	edi,[_vct]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_awavemap]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	esi,[ebp-4]
	add	esi,1
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,_awavemap
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-8]
	add	edi,[_vct]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_awavemap]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,_awavemap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vnw]
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_awavemap]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	ebx,_awavemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vnw]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	esi,[ebp-12]
	mov	[ebx],esi
	add	[ebp-8],1
_14
	cmp	[ebp-8],63
	jle	_15
_6
	add	[ebp-4],1
_12
	cmp	[ebp-4],63
	jle	_13
_5
	mov	[ebp-4],1
	jmp	_16
_17
	mov	[ebp-8],1
	jmp	_18
_19
	mov	ebx,_awavemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vct]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_awavemap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vnw]
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_awavemap]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-8],1
_18
	cmp	[ebp-8],63
	jle	_19
_8
	add	[ebp-4],1
_16
	cmp	[ebp-4],63
	jle	_17
_7
	mov	ebx,[_vct]
	mov	[ebp-20],ebx
	mov	ebx,[_vnw]
	mov	[_vct],ebx
	mov	ebx,[ebp-20]
	mov	[_vnw],ebx
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vct	.dd	0
	.align	4
_vnw	.dd	0
	.align	4
_awavemap	.dd	0
	.dd	2
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

