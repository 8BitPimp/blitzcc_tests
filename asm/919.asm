
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
_fmakecrater
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-4],0
	mov	eax,[ebp+24]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	eax,0
	jmp	_3_leave
_13
	cmp	[ebp+20],0
	jg	_14
	mov	eax,0
	jmp	_3_leave
_14
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tcraterobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_15
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	mov	[ebp-4],ebx
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_15
_4
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_tcraterobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-4]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	[ebp-12],0
	sub	esp,8
	mov	eax,1082130432
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	[ebp-20],1
	jmp	_16
_17
	mov	[ebp-24],1
	jmp	_18
_19
	add	[ebp-12],1
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_tcratervertexobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	sub	ebx,5
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	sub	ebx,5
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,1040187392
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,1040187392
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-64]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1051260355
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	ebx,1091567616
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fmulp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],esi
	jmp	_21
_20
	mov	ebx,1091567616
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1048576000
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsqr
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	_fsqr
	mov	esi,eax
	mov	eax,[ebp-64]
	fsubp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],esi
_21
	cmp	[ebp+40],0
	jle	_22
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	mov	edi,[edi]
	add	edi,16
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,[ebp-28]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	mov	[esp+8],edi
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_fterrainy
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_22
	sub	esp,8
	mov	eax,[ebp+48]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+48]
	mov	[esp+4],ebx
	call	_frnd
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,28
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	mov	ebx,[ebp-12]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-8]
	mov	edi,[edi]
	add	edi,20
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	edi,[ebp-28]
	mov	edi,[edi]
	add	edi,12
	mov	edi,[edi]
	mov	[esp+12],edi
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-24],1
_18
	cmp	[ebp-24],8
	jle	_19
_6
	add	[ebp-20],1
_16
	cmp	[ebp-20],8
	jle	_17
_5
	mov	[ebp-36],0
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],_tcratervertexobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_23
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jnz	_24
	add	[ebp-36],1
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	eax,[eax]
	add	eax,28
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],8
	call	__bbMod
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	ebx,[ebp-28]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,56
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_25
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[esp+4],_tcratervertexobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_26
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jnz	_27
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	add	esi,1
	cmp	ebx,esi
	jnz	_28
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
_28
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	add	esi,9
	cmp	ebx,esi
	jnz	_29
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-56],ebx
_29
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	add	esi,8
	cmp	ebx,esi
	jnz	_30
	mov	ebx,[ebp-48]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-60],ebx
_30
_27
	sub	esp,4
	lea	eax,[ebp-48]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_26
_8
	sub	esp,16
	mov	ebx,[ebp-52]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-56]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddtriangle
_25
_24
	cmp	[ebp-36],128
	jnz	_31
	jmp	_7
_31
	sub	esp,4
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_23
_7
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
_tcraterobj	.dd	5
_9	.dd	0
	.dd	_9
	.dd	_9
	.dd	0
	.dd	-1
_10	.dd	0
	.dd	_10
	.dd	_10
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbFltType
	.align	4
_tcratervertexobj	.dd	5
_11	.dd	0
	.dd	_11
	.dd	_11
	.dd	0
	.dd	-1
_12	.dd	0
	.dd	_12
	.dd	_12
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

