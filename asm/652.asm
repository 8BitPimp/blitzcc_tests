
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_adatapoint
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_adatapoint
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_adatapoint
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adatapoint
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,100
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,90
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,200
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,160
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,300
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,300
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,400
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,3
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,210
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,3
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,500
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,4
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,4
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fclscolor
	mov	[_vselected],0
	jmp	_12
_11
	call	_fcls
	sub	esp,4
	mov	[esp],16
	call	_fkeyhit
	mov	[ebp-4],eax
	cmp	[_vselected],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_13
	sub	[_vselected],1
_13
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	mov	[ebp-4],eax
	cmp	[_vselected],4
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_14
	add	[_vselected],1
_14
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_15
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vselected]
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[_vselected]
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
_15
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_16
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vselected]
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[_vselected]
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
_16
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_17
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[_vselected]
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[_vselected]
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
_17
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_18
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[_vselected]
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[_vselected]
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	[esi],ebx
_18
	call	_fdrawline
	sub	esp,4
	mov	[esp],1
	call	_fflip
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_11
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
_fdrawline
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
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	esi,[esi]
	sub	ebx,esi
	imul	ebx,-1
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	jmp	_19
_20
	mov	ebx,[ebp-4]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-24],ebx
	sub	esp,12
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,_adatapoint
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,0
	shl	eax,byte 2
	add	eax,[_adatapoint]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcosineinterpolate
	mov	[ebp-8],eax
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1034147594
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_19
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_20
_5
	mov	[ebp-28],2
	jmp	_21
_22
	mov	ebx,[ebp-28]
	sub	ebx,1
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	mov	esi,_adatapoint
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	esi,[esi]
	sub	ebx,esi
	imul	ebx,-1
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	jmp	_23
_24
	mov	ebx,[ebp-4]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-24],ebx
	sub	esp,12
	mov	eax,[ebp-28]
	sub	eax,1
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adatapoint]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	call	_fcosineinterpolate
	mov	[ebp-8],eax
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	sub	esi,1
	mov	edi,_adatapoint
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_adatapoint]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1034147594
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_23
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_24
_7
	add	[ebp-28],1
_21
	cmp	[ebp-28],4
	jle	_22
_6
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-28],0
	jmp	_25
_26
	mov	ebx,[ebp-28]
	cmp	[_vselected],ebx
	jnz	_27
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	jmp	_28
_27
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
_28
	sub	esp,20
	mov	[esp+12],5
	mov	[esp+16],1
	mov	[esp+8],5
	mov	ebx,_adatapoint
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_adatapoint]
	mov	ebx,[ebx]
	sub	ebx,2
	mov	[esp+4],ebx
	mov	eax,_adatapoint
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_adatapoint]
	mov	eax,[eax]
	sub	eax,2
	mov	[esp],eax
	call	_foval
	add	[ebp-28],1
_25
	cmp	[ebp-28],4
	jle	_26
_8
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
_fcosineinterpolate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_flinearinterpolate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_adatapoint	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vselected	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

