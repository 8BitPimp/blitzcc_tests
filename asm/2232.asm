
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
	sub	esp,12
	mov	[esp],6
	call	_ffac
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	[esp],49
	mov	[esp+4],6
	call	_fbinom
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	[esp+8],0
	mov	[esp+12],100
	mov	[esp+4],1056964608
	mov	[esp],100
	call	_fcumulatedbernoulli
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffac
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	jge	_11
	mov	eax,0
	jmp	_3_leave
_11
	mov	[ebp-8],1
	mov	[ebp-4],2
	jmp	_12
_13
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-4]
	mov	[ebp-8],ebx
	add	[ebp-4],1
_12
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_13
_4
	mov	eax,[ebp-8]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbinom
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fbinomfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1325400064
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
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_14
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbinomfloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jge	_16
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_16
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	cmp	[ebp+24],ebx
	jle	_17
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	sub	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fbinomfloat
	jmp	_6_leave
_17
	mov	[ebp-8],1065353216
	mov	[ebp-4],0
	jmp	_18
_19
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	sub	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	sub	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	add	[ebp-4],1
_18
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_19
_7
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbernoulli
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fbinomfloat
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	esi,[ebp+20]
	sub	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	jmp	_8_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcumulatedbernoulli
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	jmp	_20
_21
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbernoulli
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	add	[ebp-8],1
_20
	mov	ebx,[ebp+32]
	cmp	[ebp-8],ebx
	jle	_21
_10
	mov	ebx,[ebp-4]
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
	ret	word 16
_15	.db	"Das Ergebnis ist zu groﬂ. Bitte benutzen Sie die Float-Version!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

