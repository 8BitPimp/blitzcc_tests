
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,88
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
	sub	esp,12
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[ebp-4],800
	mov	[ebp-8],600
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-12],0
	jmp	_11
_12
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1777
	call	_frand
	mov	[ebp-16],eax
	add	[ebp-12],1
_11
	cmp	[ebp-12],1777
	jle	_12
_3
	sub	esp,4
	mov	eax,_abx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_abx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aby
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_aby
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aby
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abz
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_abz
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abz
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aclr
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_aclr
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_aclr
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aclr
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_13
_14
	mov	ebx,-100
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
	add	[ebp-12],1
_13
	cmp	[ebp-12],15
	jle	_14
_4
	mov	[ebp-16],0
	mov	[ebp-20],1
	jmp	_15
_16
	mov	ebx,16
	sub	ebx,[ebp-20]
	mov	[ebp-24],ebx
	mov	ebx,7
	imul	ebx,[ebp-20]
	add	ebx,150
	mov	esi,_aclr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_aclr]
	mov	[esi],ebx
	mov	ebx,14
	imul	ebx,[ebp-20]
	add	ebx,45
	mov	esi,_aclr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_aclr]
	mov	[esi],ebx
	mov	ebx,14
	imul	ebx,[ebp-20]
	add	ebx,45
	mov	esi,_aclr
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_aclr]
	mov	[esi],ebx
	add	[ebp-20],1
_15
	cmp	[ebp-20],15
	jle	_16
_5
	sub	esp,8
	mov	[esp],256
	mov	ebx,[ebp-4]
	sub	ebx,256
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],256
	mov	ebx,[ebp-8]
	sub	ebx,256
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],256
	mov	ebx,[ebp-4]
	sub	ebx,256
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],256
	mov	ebx,[ebp-8]
	sub	ebx,256
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	[ebp-88],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-88]
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-56],eax
	jmp	_18
_17
	mov	ebx,[ebp-28]
	add	ebx,[ebp-36]
	mov	[ebp-60],ebx
	cmp	[ebp-60],256
	setl	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	ebx,[ebp-4]
	sub	ebx,256
	cmp	[ebp-60],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	or	eax,ebx
	and	eax,eax
	jz	_19
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	neg	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	imul	eax,ebx
	mov	[ebp-36],eax
_19
	mov	ebx,[ebp-32]
	add	ebx,[ebp-40]
	mov	[ebp-60],ebx
	cmp	[ebp-60],256
	setl	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	ebx,[ebp-8]
	sub	ebx,256
	cmp	[ebp-60],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	or	eax,ebx
	and	eax,eax
	jz	_20
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	neg	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbSgn
	mov	ebx,eax
	mov	eax,[ebp-84]
	imul	eax,ebx
	mov	[ebp-40],eax
_20
	mov	ebx,[ebp-36]
	add	[ebp-28],ebx
	mov	ebx,[ebp-40]
	add	[ebp-32],ebx
	mov	eax,[ebp-28]
	cmp	[ebp-44],eax
	setl	al
	movzx	eax,al
	mov	[ebp-84],eax
	cmp	[ebp-52],24
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	and	eax,eax
	jz	_21
	add	[ebp-52],1
_21
	mov	eax,[ebp-28]
	cmp	[ebp-44],eax
	setg	al
	movzx	eax,al
	mov	[ebp-84],eax
	cmp	[ebp-52],-24
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	and	eax,eax
	jz	_22
	sub	[ebp-52],1
_22
	mov	eax,[ebp-32]
	cmp	[ebp-48],eax
	setl	al
	movzx	eax,al
	mov	[ebp-84],eax
	cmp	[ebp-56],24
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	and	eax,eax
	jz	_23
	add	[ebp-56],1
_23
	mov	eax,[ebp-32]
	cmp	[ebp-48],eax
	setg	al
	movzx	eax,al
	mov	[ebp-84],eax
	cmp	[ebp-56],-24
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	and	eax,eax
	jz	_24
	sub	[ebp-56],1
_24
	mov	ebx,[ebp-52]
	add	[ebp-44],ebx
	mov	ebx,[ebp-56]
	add	[ebp-48],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	add	eax,10
	mov	[esp],eax
	mov	[esp+4],360
	call	__bbMod
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	mov	[ebp-20],2
	jmp	_25
_26
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_abz]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_abz]
	mov	[esi],ebx
	add	[ebp-20],1
_25
	cmp	[ebp-20],15
	jle	_26
_7
	mov	ebx,[ebp-44]
	mov	esi,15
	shl	esi,byte 2
	add	esi,[_abx]
	mov	[esi],ebx
	mov	ebx,[ebp-48]
	mov	esi,15
	shl	esi,byte 2
	add	esi,[_aby]
	mov	[esi],ebx
	mov	ebx,[ebp-64]
	mov	esi,15
	shl	esi,byte 2
	add	esi,[_abz]
	mov	[esi],ebx
	mov	[ebp-20],1
	jmp	_27
_28
	sub	esp,12
	mov	ebx,_aclr
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aclr]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_aclr
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aclr]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_aclr
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_aclr]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_abz]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	mov	ebx,[ebp-68]
	add	ebx,[ebp-68]
	mov	[ebp-72],ebx
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_abx]
	mov	ebx,[ebx]
	mov	[ebp-76],ebx
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aby]
	mov	ebx,[ebx]
	mov	[ebp-80],ebx
	sub	esp,20
	mov	ebx,[ebp-72]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-72]
	mov	[esp+8],esi
	mov	ebx,[ebp-80]
	sub	ebx,[ebp-68]
	mov	[esp+4],ebx
	mov	eax,[ebp-76]
	sub	eax,[ebp-68]
	mov	[esp],eax
	call	_foval
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_29
	call	_fend
_29
	add	[ebp-20],1
_27
	cmp	[ebp-20],15
	jle	_28
_8
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	cmp	eax,0
	jz	_17
_6
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_9	.db	"Guts",0
_10	.db	"",0
	.align	4
_abx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aby	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_abz	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aclr	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

