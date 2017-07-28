
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
_fcentreanimmesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshallx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	cmp	[ebp+24],0
	jnz	_25
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshally
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
_25
	cmp	[ebp+24],1
	jnz	_26
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshallylowest
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
_26
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshallz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-40],eax
	cmp	[ebp-40],0
	jnz	_27
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionmesh
	jmp	_28
_27
	mov	[ebp-44],1
	jmp	_29
_30
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-48],eax
	mov	[ebp-52],2
	sub	esp,16
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-52]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fpositionmesh
	add	[ebp-44],1
_29
	mov	ebx,[ebp-40]
	cmp	[ebp-44],ebx
	jle	_30
_4
_28
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fmeshallx
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_31
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	jmp	_32
_31
	mov	[ebp-16],1
	jmp	_33
_34
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmeshx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_35
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_35
	mov	eax,[ebp-24]
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
	jz	_36
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_36
	add	[ebp-16],1
_33
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jle	_34
_6
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
_32
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmeshally
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_37
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	jmp	_38
_37
	mov	[ebp-16],1
	jmp	_39
_40
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmeshy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_41
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_41
	mov	eax,[ebp-24]
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
	jz	_42
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_42
	add	[ebp-16],1
_39
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jle	_40
_8
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
_38
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmeshallylowest
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_43
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbottommost
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	jmp	_44
_43
	mov	[ebp-16],1
	jmp	_45
_46
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fbottommost
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_47
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_47
	mov	eax,[ebp-24]
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
	jz	_48
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_48
	add	[ebp-16],1
_45
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jle	_46
_10
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
_44
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmeshallz
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_49
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmeshz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	jmp	_50
_49
	mov	[ebp-16],1
	jmp	_51
_52
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmeshz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_53
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_53
	mov	eax,[ebp-24]
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
	jz	_54
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_54
	add	[ebp-16],1
_51
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jle	_52
_12
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
_50
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmeshx
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
	mov	[ebp-12],1
	jmp	_55
_56
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_57
_58
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_59
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_59
	mov	eax,[ebp-24]
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
	jz	_60
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_60
	add	[ebp-20],1
_57
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_58
_15
	add	[ebp-12],1
_55
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-12],eax
	jle	_56
_14
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_13_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmeshy
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
	mov	[ebp-12],1
	jmp	_61
_62
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_63
_64
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_65
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_65
	mov	eax,[ebp-24]
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
	jz	_66
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_66
	add	[ebp-20],1
_63
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_64
_18
	add	[ebp-12],1
_61
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-12],eax
	jle	_62
_17
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_16_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmeshz
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
	mov	[ebp-12],1
	jmp	_67
_68
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_69
_70
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_71
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_71
	mov	eax,[ebp-24]
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
	jz	_72
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_72
	add	[ebp-20],1
_69
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_70
_21
	add	[ebp-12],1
_67
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-12],eax
	jle	_68
_20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_19_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbottommost
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
	mov	[ebp-24],ebx
	mov	[ebp-12],1
	jmp	_73
_74
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_75
_76
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	jz	_77
	mov	ebx,[ebp-24]
	mov	[ebp-4],ebx
_77
	mov	eax,[ebp-24]
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
	jz	_78
	mov	ebx,[ebp-24]
	mov	[ebp-8],ebx
_78
	add	[ebp-20],1
_75
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_76
_24
	add	[ebp-12],1
_73
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-12],eax
	jle	_74
_23
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

