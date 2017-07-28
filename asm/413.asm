
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
_finsidecheck
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-72],0
	cmp	[ebp+20],0
	jnz	_6
	mov	eax,0
	jmp	_3_leave
_6
	mov	[ebp-76],0
	jmp	_7
_8
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-80],eax
	mov	[ebp-84],0
	jmp	_9
_10
	sub	esp,28
	mov	eax,[ebp-80]
	mov	[esp],eax
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-92],eax
	sub	esp,8
	mov	ebx,[ebp-80]
	mov	[esp],ebx
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-92]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-80]
	mov	[esp],eax
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	ebx,[ebp-64]
	mov	[ebp-52],ebx
_11
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	mov	ebx,[ebp-64]
	mov	[ebp-56],ebx
_12
	mov	eax,[ebp-60]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	ebx,[ebp-60]
	mov	[ebp-4],ebx
_13
	mov	eax,[ebp-60]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	mov	ebx,[ebp-60]
	mov	[ebp-28],ebx
_14
	mov	eax,[ebp-60]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	ebx,[ebp-60]
	mov	[ebp-16],ebx
_15
	mov	eax,[ebp-60]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	mov	ebx,[ebp-60]
	mov	[ebp-40],ebx
_16
	mov	eax,[ebp-64]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	mov	ebx,[ebp-64]
	mov	[ebp-8],ebx
_17
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
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
	mov	ebx,[ebp-64]
	mov	[ebp-20],ebx
_18
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	ebx,[ebp-64]
	mov	[ebp-32],ebx
_19
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	ebx,[ebp-64]
	mov	[ebp-44],ebx
_20
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	ebx,[ebp-68]
	mov	[ebp-12],ebx
_21
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_22
	mov	ebx,[ebp-68]
	mov	[ebp-36],ebx
_22
	mov	eax,[ebp-68]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	ebx,[ebp-68]
	mov	[ebp-24],ebx
_23
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
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
	mov	ebx,[ebp-68]
	mov	[ebp-48],ebx
_24
	add	[ebp-84],1
_9
	sub	esp,4
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-84],eax
	jle	_10
_5
	add	[ebp-76],1
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	sub	eax,1
	cmp	[ebp-76],eax
	jle	_8
_4
	mov	[ebp-88],0
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_25
	add	[ebp-88],1
_25
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_26
	add	[ebp-88],1
_26
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_27
	add	[ebp-88],1
_27
	mov	eax,[ebp-48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_28
	add	[ebp-88],1
_28
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_29
	add	[ebp-88],1
_29
	cmp	[ebp-88],5
	jnz	_30
	mov	eax,1
	jmp	_3_leave
	jmp	_31
_30
	mov	eax,0
	jmp	_3_leave
_31
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

