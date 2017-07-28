
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
_fgetentitybox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	cmp	[ebp+28],0
	jnz	_7
	mov	[_ventityboxx],0
	mov	[_ventityboxy],0
	mov	[_ventityboxz],0
	jmp	_8
_7
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-56]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-56]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityz
	mov	[ebp-56],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-56]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_8
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-16],eax
	mov	[ebp-20],1
	jmp	_9
_10
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	[ebp-28],eax
	mov	[ebp-32],0
	jmp	_11
_12
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_ventityboxx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	ebx,[ebp-36]
	mov	[_ventityboxx],ebx
_13
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_ventityboxy]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	mov	ebx,[ebp-40]
	mov	[_ventityboxy],ebx
_14
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_ventityboxz]
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
	mov	ebx,[ebp-44]
	mov	[_ventityboxz],ebx
_15
	add	[ebp-32],1
_11
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jle	_12
_5
	add	[ebp-20],1
_9
	mov	ebx,[ebp-16]
	cmp	[ebp-20],ebx
	jle	_10
_4
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_16
	cmp	[ebp+28],0
	jnz	_17
	mov	ebx,[ebp+20]
	mov	[ebp+28],ebx
_17
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-48],eax
	mov	[ebp-52],1
	jmp	_18
_19
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[esp],eax
	mov	[esp+4],1
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	call	_fgetentitybox
	add	[ebp-52],1
_18
	mov	ebx,[ebp-48]
	cmp	[ebp-52],ebx
	jle	_19
_6
_16
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_ventityboxx	.dd	0
	.align	4
_ventityboxy	.dd	0
	.align	4
_ventityboxz	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

