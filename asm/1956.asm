
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	call	_frotateentity
	sub	esp,4
	mov	eax,_av
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_av
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_av
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_av
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	jmp	_16
_17
	mov	[ebp-12],0
	jmp	_18
_19
	sub	esp,4
	mov	ebx,1
	mov	ecx,[ebp-12]
	shl	ebx,cl
	mov	eax,[ebp-8]
	and	eax,ebx
	mov	[esp],eax
	call	__bbSgn
	shl	eax,byte 1
	sub	eax,1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	[ebx],eax
	add	[ebp-12],1
_18
	cmp	[ebp-12],3
	jle	_19
_4
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],0
	call	_fcreatesphere
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],1045220557
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1045220557
	mov	eax,_av
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_av]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fscaleentity
	add	[ebp-8],1
_16
	cmp	[ebp-8],15
	jle	_17
_3
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_ar
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_ar
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	jmp	_20
_21
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-12],ebx
	jmp	_22
_23
	mov	ebx,[ebp-8]
	mov	esi,_ar
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,_ar
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	add	[ebp-16],1
	add	[ebp-12],1
_22
	cmp	[ebp-12],3
	jle	_23
_6
	add	[ebp-8],1
_20
	cmp	[ebp-8],2
	jle	_21
_5
	sub	esp,4
	mov	eax,_ae
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_ae
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_ae
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ae
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_ad
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-20],1065353216
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
_24
	mov	[ebp-32],0
	jmp	_25
_26
	sub	esp,4
	mov	eax,[ebp-32]
	add	eax,2
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_27
	mov	ebx,_ar
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_ar
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	jmp	_28
_29
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	mov	ebx,[ebp-40]
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_av]
	mov	[esi],ebx
	add	[ebp-16],1
_28
	cmp	[ebp-16],15
	jle	_29
_9
_27
	add	[ebp-32],1
_25
	cmp	[ebp-32],5
	jle	_26
_8
	mov	[ebp-8],0
	jmp	_30
_31
	mov	[ebp-16],0
	jmp	_32
_33
	mov	ebx,1
	mov	ecx,[ebp-16]
	shl	ebx,cl
	mov	esi,[ebp-8]
	or	esi,ebx
	mov	[ebp-12],esi
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jz	_34
	mov	ebx,_ae
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ae]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_35
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	ebx,_ae
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ae]
	mov	[ebx],eax
_35
	mov	ebx,_ae
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ae]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	[ebp-32],0
	jmp	_36
_37
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	[ebx],esi
	add	[ebp-32],1
_36
	cmp	[ebp-32],2
	jle	_37
_12
	sub	esp,20
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-48],0
	mov	[ebp-32],0
	jmp	_38
_39
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ad]
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-48],esi
	add	[ebp-32],1
_38
	cmp	[ebp-32],2
	jle	_39
_13
	sub	esp,24
	mov	[esp+16],2
	mov	[esp+20],1065353216
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ad]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_faligntovector
	sub	esp,20
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fsqr
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+4],1036831949
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fscaleentity
_34
	add	[ebp-16],1
_32
	cmp	[ebp-16],3
	jle	_33
_11
	add	[ebp-8],1
_30
	cmp	[ebp-8],15
	jle	_31
_10
	mov	[ebp-32],0
	jmp	_40
_41
	sub	esp,4
	mov	eax,[ebp-32]
	add	eax,8
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_42
	sub	esp,20
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	cmp	[ebp-32],1
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	cmp	[ebp-32],2
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	cmp	[ebp-32],0
	setz	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
_42
	add	[ebp-32],1
_40
	cmp	[ebp-32],2
	jle	_41
_14
	mov	[ebp-16],0
	jmp	_43
_44
	sub	esp,20
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,_av
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_av]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,_av
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_av]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,_av
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_av]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-16],1
_43
	cmp	[ebp-16],15
	jle	_44
_15
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_24
_7
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_av	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ar	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ae	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ad	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

