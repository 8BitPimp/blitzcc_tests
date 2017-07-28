
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_ac
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_ac
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],1
	jmp	_10
_11
_12
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],159
	call	_frand
	imul	eax,5
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	[ebp-12],1
	jmp	_13
_14
	mov	eax,_ac
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_ac]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	jmp	_5
_15
	add	[ebp-12],1
_13
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_14
_5
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jnz	_16
	jmp	_4
_16
	jmp	_12
_4
	mov	ebx,[ebp-8]
	mov	esi,_ac
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1128792064
	mov	[esp+4],1137180672
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],11
	mov	[esp+16],1
	mov	[esp+8],11
	mov	eax,_ac
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ac]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-4],1
_10
	cmp	[ebp-4],10
	jle	_11
_3
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-8],0
	jmp	_17
_18
	mov	[ebp-16],0
	mov	[ebp-4],1
	jmp	_19
_20
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	[ebp-12],1
	jmp	_21
_22
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jz	_23
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_ac
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,_ac
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,[ebp-12]
	shl	edi,byte 2
	add	edi,[_ac]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-20],esi
_23
	add	[ebp-12],1
_21
	cmp	[ebp-12],10
	jle	_22
_8
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	add	[ebp-4],1
_19
	cmp	[ebp-4],10
	jle	_20
_7
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
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
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_25
	mov	[ebp-24],-1069547520
	jmp	_26
_25
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142325248
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	mov	[ebp-24],1142325248
_27
_26
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_28
	mov	[ebp-28],-1069547520
	jmp	_29
_28
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142325248
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	mov	[ebp-28],1142325248
_30
_29
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	mov	ebx,[ebp-24]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-28],ebx
_31
	mov	ebx,[ebp-24]
	mov	[ebp-36],ebx
	jmp	_32
_33
	sub	esp,20
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],5
	mov	[esp+16],1
	mov	[esp+8],5
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	mov	ebx,[ebp-36]
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
	mov	[ebp-36],ebx
_32
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_33
_9
_24
	mov	ebx,[ebp-16]
	mov	[ebp-28],ebx
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
_17
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1145552896
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_18
_6
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_ac	.dd	0
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

