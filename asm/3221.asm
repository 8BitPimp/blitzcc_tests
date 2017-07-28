
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
	mov	[ebp-20],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],900
	mov	[esp],1600
	call	_fgraphics
	sub	esp,4
	mov	eax,_anoisemap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_anoisemap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_anoisemap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anoisemap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atangentmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atangentmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atangentmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atangentmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],0
	call	_finitialisenoise
	mov	[_vnoiseseed],eax
	call	_fgeneratecontourmap
	mov	[ebp-4],63
	mov	[ebp-8],63
	mov	[ebp-12],0
	jmp	_18
_19
	mov	[ebp-16],0
	jmp	_20
_21
	mov	ebx,_anoisemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_anoisemap]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],4
	mov	[esp+16],1
	mov	[esp+8],4
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	shl	eax,byte 2
	mov	[esp],eax
	call	_frect
	add	[ebp-16],1
_20
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_21
_4
	add	[ebp-12],1
_18
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_19
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
_finitialisenoise
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],0
	jnz	_22
	call	_fmillisecs
	mov	[ebp+20],eax
_22
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fseedrnd
	mov	eax,[ebp+20]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgeneratecontourmap
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
	mov	[ebp-16],63
	mov	[ebp-20],63
	call	_frandomisenoisemap
	call	_fsmoothemap
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsmoothemap
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
	call	_fcalculatetangentmap
	mov	[ebp-4],63
	mov	[ebp-8],63
	mov	[ebp-16],0
	jmp	_23
_24
	mov	[ebp-12],0
	jmp	_25
_26
	mov	ebx,_anoisemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_anoisemap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_atangentmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atangentmap]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-20]
	mov	esi,_anoisemap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_anoisemap]
	mov	[esi],ebx
	add	[ebp-12],1
_25
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_26
_9
	add	[ebp-16],1
_23
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_24
_8
	sub	esp,4
	mov	eax,_atangentmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atangentmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atangentmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atangentmap
	mov	[esp],eax
	call	__bbDimArray
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcalculatetangentmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	[ebp-28],63
	mov	[ebp-32],63
	sub	esp,4
	mov	eax,_atangentmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-28]
	mov	esi,_atangentmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	mov	esi,_atangentmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atangentmap
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	jmp	_27
_28
	mov	[ebp-4],0
	jmp	_29
_30
	mov	ebx,_anoisemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anoisemap]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	[ebp-48],0
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-16],ebx
	jmp	_31
_32
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[ebp-12],ebx
	jmp	_33
_34
	sub	esp,8
	mov	eax,[ebp-12]
	add	eax,64
	mov	[esp],eax
	mov	[esp+4],64
	call	__bbMod
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-16]
	add	eax,64
	mov	[esp],eax
	mov	[esp+4],64
	call	__bbMod
	mov	[ebp-24],eax
	mov	ebx,_anoisemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_anoisemap]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	add	[ebp-12],1
_33
	mov	ebx,[ebp-4]
	add	ebx,1
	cmp	[ebp-12],ebx
	jle	_34
_14
	add	[ebp-16],1
_31
	mov	ebx,[ebp-8]
	add	ebx,1
	cmp	[ebp-16],ebx
	jle	_32
_13
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1040187392
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	mov	ebx,[ebp-48]
	mov	esi,_atangentmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atangentmap]
	mov	[esi],ebx
	add	[ebp-4],1
_29
	mov	ebx,[ebp-28]
	cmp	[ebp-4],ebx
	jle	_30
_12
	add	[ebp-8],1
_27
	mov	ebx,[ebp-32]
	cmp	[ebp-8],ebx
	jle	_28
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frandomisenoisemap
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
	mov	[ebp-16],63
	mov	[ebp-20],63
	sub	esp,4
	mov	eax,_anoisemap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_anoisemap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,_anoisemap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anoisemap
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_35
_36
	mov	[ebp-8],0
	jmp	_37
_38
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1065353216
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_anoisemap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_anoisemap]
	mov	ebx,[ebp-12]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_37
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_38
_17
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_35
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_36
_16
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vnoiseseed	.dd	0
	.align	4
_anoisemap	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atangentmap	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

