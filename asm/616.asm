
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1069547520
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1157234688
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1120403456
	mov	[esp+4],1101004800
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1106247680
	mov	[esp+16],0
	mov	[esp+8],1106247680
	mov	[esp+4],1106247680
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	mov	[ebp-12],200
	sub	esp,4
	mov	eax,_acubei
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_acubei
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acubei
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acubeo
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_acubeo
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acubeo
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_asx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_asy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asz
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_asz
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asz
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_az
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_az
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_az
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-16],-30
	mov	[ebp-20],30
	mov	[ebp-24],0
	jmp	_6
_7
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fcreatesphere
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_acubei]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubei]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],12
	call	_fentityfx
	sub	esp,8
	mov	[esp],7
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_acubei]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_acubeo]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubeo]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubeo]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubeo]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-16]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-16]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asz]
	mov	[ebx],eax
	sub	esp,24
	mov	[esp],20
	mov	[esp+4],255
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],20
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],20
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubei]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-24],1
_6
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	jle	_7
_3
	mov	[ebp-28],1
	jmp	_9
_8
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_10
	mov	ebx,[ebp-28]
	mov	esi,1
	xor	ebx,esi
	mov	[ebp-28],ebx
_10
	mov	[ebp-24],0
	jmp	_11
_12
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	[ebx],eax
_13
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	[ebx],eax
_14
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_ay]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	[ebx],eax
_15
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_ay]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	[ebx],eax
_16
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_asz]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_az]
	mov	[esi],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_az]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asz]
	mov	[ebx],eax
_17
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_az]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_18
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_asz]
	mov	[ebx],eax
_18
	sub	esp,20
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubei]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubei]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-40],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_acubei]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-40]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1117782016
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065437102
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-36],esi
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	[ebp-36],1073741824
_19
	cmp	[ebp-28],1
	jnz	_20
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubeo]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	jmp	_21
_20
	sub	esp,20
	mov	[esp+12],1067030938
	mov	[esp+16],0
	mov	[esp+8],1067030938
	mov	[esp+4],1067030938
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_acubeo]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
_21
	add	[ebp-24],1
_11
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	jle	_12
_5
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_23
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],16
	mov	[esp],0
	call	_ftext
	jmp	_25
_23
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],16
	mov	[esp],0
	call	_ftext
_25
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_8
_4
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_acubei	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acubeo	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asz	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ax	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_az	.dd	0
	.dd	2
	.dd	1
	.dd	0
_22	.db	"Hit Space to toggle Scaling Correcture",0
_24	.db	"Correcture is on",0
_26	.db	"Correcture is off",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

