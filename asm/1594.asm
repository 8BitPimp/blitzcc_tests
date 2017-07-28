
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
_flinerectintersection
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp+24]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	mov	eax,[ebp+20]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	jmp	_14
_15
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_16
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_16
	mov	ebx,[ebp-12]
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
	mov	[ebp-12],ebx
_14
	mov	eax,[ebp-12]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
_4
	jmp	_17
_13
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	jmp	_18
_19
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_20
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_20
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
_18
	mov	eax,[ebp-12]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_19
_5
_17
	jmp	_21
_12
	mov	eax,[ebp+20]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_22
	mov	eax,[ebp+24]
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
	and	eax,eax
	jz	_23
	mov	ebx,[ebp+24]
	mov	[ebp-20],ebx
	jmp	_24
_25
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_26
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_26
	mov	ebx,[ebp-20]
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
	mov	[ebp-20],ebx
_24
	mov	eax,[ebp-20]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_25
_6
	jmp	_27
_23
	mov	ebx,[ebp+24]
	mov	[ebp-20],ebx
	jmp	_28
_29
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_30
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_30
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_28
	mov	eax,[ebp-20]
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
	and	eax,eax
	jz	_29
_7
_27
	jmp	_31
_22
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	mov	eax,[ebp+20]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_32
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	jmp	_33
_34
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_35
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_35
	mov	ebx,[ebp-12]
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
	mov	[ebp-12],ebx
_33
	mov	eax,[ebp-12]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_34
_8
	jmp	_36
_32
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	jmp	_37
_38
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_39
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_39
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
_37
	mov	eax,[ebp-12]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_38
_9
_36
	cmp	[ebp-16],0
	jnz	_40
	mov	eax,[ebp+24]
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
	and	eax,eax
	jz	_41
	mov	ebx,[ebp+24]
	mov	[ebp-20],ebx
	jmp	_42
_43
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_44
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_44
	mov	ebx,[ebp-20]
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
	mov	[ebp-20],ebx
_42
	mov	eax,[ebp-20]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_43
_10
	jmp	_45
_41
	mov	ebx,[ebp+24]
	mov	[ebp-20],ebx
	jmp	_46
_47
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
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
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,esi
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	eax,esi
	and	eax,eax
	jz	_48
	mov	ebx,[ebp-12]
	mov	[_vlinerectintersectionx],ebx
	mov	ebx,[ebp-20]
	mov	[_vlinerectintersectiony],ebx
	mov	[ebp-16],1
_48
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_46
	mov	eax,[ebp-20]
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
	and	eax,eax
	jz	_47
_11
_45
_40
_31
_21
	mov	eax,[ebp-16]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
_vlinerectintersectionx	.dd	0
	.align	4
_vlinerectintersectiony	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

