
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1038090240
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1120403456
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,8
	mov	[esp],35
	mov	[esp+4],0
	call	_fcreatesegcube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1101004800
	mov	[esp+12],1101004800
	mov	[esp+4],1106247680
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,12
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_17
_18
	mov	ebx,[ebp-16]
	mov	esi,3
	and	ebx,esi
	and	ebx,ebx
	jz	_19
	sub	esp,20
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreatebrush
	mov	ebx,eax
	mov	[ebp-20],ebx
	jmp	_20
_19
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fbrushtexture
_20
	sub	esp,16
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fpaintsurface
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ffreebrush
	add	[ebp-16],1
_17
	cmp	[ebp-16],6
	jle	_18
_3
	sub	esp,8
	mov	[esp],3
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fcreatelight
	mov	[ebp-24],eax
	jmp	_22
_21
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	and	eax,eax
	jz	_23
	mov	ebx,1
	sub	ebx,[ebp-28]
	mov	[ebp-28],ebx
_23
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fwireframe
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_22
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_21
_4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	call	_fendgraphics
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreatesegcube
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
	mov	[ebp-64],ebx
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcreatemesh
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_24
_25
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	mov	[ebp-16],-1090519040
	mov	ebx,[ebp-16]
	mov	[ebp-20],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	mov	[ebp-32],0
	jmp	_26
_27
	mov	ebx,[ebp-16]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],0
	jmp	_28
_29
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	sub	esp,28
	mov	ebx,[ebp-40]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-48]
	mov	[esp+16],esi
	mov	[esp+12],1056964608
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	add	[ebp-44],1
_28
	mov	ebx,[ebp+20]
	cmp	[ebp-44],ebx
	jle	_29
_8
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	add	[ebp-32],1
_26
	mov	ebx,[ebp+20]
	cmp	[ebp-32],ebx
	jle	_27
_7
	mov	[ebp-32],0
	jmp	_30
_31
	mov	[ebp-44],0
	jmp	_32
_33
	mov	ebx,[ebp+20]
	add	ebx,1
	imul	ebx,[ebp-32]
	add	ebx,[ebp-44]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-52]
	add	ebx,1
	mov	[ebp-56],ebx
	mov	ebx,[ebp-32]
	add	ebx,1
	mov	esi,[ebp+20]
	add	esi,1
	imul	ebx,esi
	add	ebx,[ebp-44]
	add	ebx,1
	mov	[ebp-60],ebx
	mov	ebx,[ebp-60]
	sub	ebx,1
	mov	[ebp-64],ebx
	sub	esp,16
	mov	ebx,[ebp-56]
	mov	[esp+8],ebx
	mov	esi,[ebp-60]
	mov	[esp+12],esi
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-44],1
_32
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-44],ebx
	jle	_33
_10
	add	[ebp-32],1
_30
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_31
_9
	sub	esp,16
	mov	[esp+8],1119092736
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotatemesh
	add	[ebp-8],1
_24
	cmp	[ebp-8],3
	jle	_25
_6
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotatemesh
	mov	[ebp-8],0
	jmp	_34
_35
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-12],eax
	mov	[ebp-16],-1090519040
	mov	ebx,[ebp-16]
	mov	[ebp-20],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	mov	[ebp-32],0
	jmp	_36
_37
	mov	ebx,[ebp-16]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],0
	jmp	_38
_39
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	sub	esp,28
	mov	ebx,[ebp-40]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,[ebp-48]
	mov	[esp+16],esi
	mov	[esp+12],1056964608
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	add	[ebp-44],1
_38
	mov	ebx,[ebp+20]
	cmp	[ebp-44],ebx
	jle	_39
_13
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	add	[ebp-32],1
_36
	mov	ebx,[ebp+20]
	cmp	[ebp-32],ebx
	jle	_37
_12
	mov	[ebp-32],0
	jmp	_40
_41
	mov	[ebp-44],0
	jmp	_42
_43
	mov	ebx,[ebp+20]
	add	ebx,1
	imul	ebx,[ebp-32]
	add	ebx,[ebp-44]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-52]
	add	ebx,1
	mov	[ebp-56],ebx
	mov	ebx,[ebp-32]
	add	ebx,1
	mov	esi,[ebp+20]
	add	esi,1
	imul	ebx,esi
	add	ebx,[ebp-44]
	add	ebx,1
	mov	[ebp-60],ebx
	mov	ebx,[ebp-60]
	sub	ebx,1
	mov	[ebp-64],ebx
	sub	esp,16
	mov	ebx,[ebp-56]
	mov	[esp+8],ebx
	mov	esi,[ebp-60]
	mov	[esp+12],esi
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-44],1
_42
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-44],ebx
	jle	_43
_15
	add	[ebp-32],1
_40
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_41
_14
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1127481344
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotatemesh
	add	[ebp-8],1
_34
	cmp	[ebp-8],1
	jle	_35
_11
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fupdatenormals
	mov	eax,[ebp-4]
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
_16	.db	"test.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

