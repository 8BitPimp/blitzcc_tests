
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,100
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
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,12
	mov	[esp+4],8
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-4],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1035468800
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1084227584
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	mov	[ebp-16],1
	jmp	_8
_9
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_temitter
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,60
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1050253722
	mov	[esp+4],1063675494
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,68
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,60
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,68
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentityalpha
	add	[ebp-16],1
_8
	cmp	[ebp-16],100
	jle	_9
_3
	mov	[ebp-24],1120403456
	mov	[ebp-28],0
	mov	[ebp-32],1120403456
	mov	[ebp-36],1036831949
	mov	[ebp-40],1056964608
	mov	[ebp-44],1036831949
	mov	[ebp-48],1084227584
	mov	[ebp-52],1084227584
	mov	[ebp-56],1084227584
	mov	[ebp-60],4
	mov	[ebp-64],0
	mov	[ebp-68],0
	mov	[ebp-72],3
	mov	[ebp-76],1077936128
	mov	[ebp-80],1077936128
	mov	[ebp-84],200
	mov	[ebp-88],-1138501878
_10
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_11
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
_11
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_12
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
_12
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_13
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
_13
	sub	esp,4
	mov	[esp],201
	call	_fkeydown
	and	eax,eax
	jz	_14
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1090519040
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
_14
	cmp	[ebp-92],0
	jnz	_15
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,953267991
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
_15
	mov	eax,[ebp-88]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1008981770
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
	mov	[ebp-92],1
_16
	cmp	[ebp-92],1
	jnz	_17
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,953267991
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
_17
	mov	eax,[ebp-88]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1138501878
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
	mov	[ebp-92],0
_18
	add	[ebp-96],1
	cmp	[ebp-96],360
	jle	_19
	mov	[ebp-96],0
_19
	sub	esp,4
	mov	eax,[ebp-96]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-96]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,20
	mov	ebx,[ebp-32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,64
	mov	ebx,[ebp-80]
	mov	[esp+56],ebx
	mov	esi,[ebp-84]
	mov	[esp+60],esi
	mov	esi,[ebp-76]
	mov	[esp+52],esi
	mov	ebx,[ebp-72]
	mov	[esp+48],ebx
	mov	esi,[ebp-88]
	mov	[esp+44],esi
	mov	ebx,[ebp-88]
	mov	[esp+40],ebx
	mov	esi,[ebp-60]
	mov	[esp+36],esi
	mov	ebx,[ebp-56]
	mov	[esp+32],ebx
	mov	esi,[ebp-52]
	mov	[esp+28],esi
	mov	ebx,[ebp-48]
	mov	[esp+24],ebx
	mov	esi,[ebp-44]
	mov	[esp+20],esi
	mov	ebx,[ebp-40]
	mov	[esp+16],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_femit
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
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
	jz	_10
_4
	ret
_2_leave
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_femit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_temitter
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_22
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,64
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_23
	sub	esp,8
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+32]
	push	eax
	fld	[esp]
	pop	eax
	fchs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	mov	ebx,[ebp+72]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,52
	mov	[esi],ebx
	mov	ebx,[ebp+76]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,56
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+80]
	sub	eax,40
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+80]
	add	ebx,40
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,64
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,60
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalesprite
_23
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+60]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+64]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,64
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,64
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,60
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,72
	mov	[esi],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,72
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
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
	mov	ebx,1065353216
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,72
	mov	[esi],ebx
_24
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,60
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,72
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_22
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 64
_7	.db	"particle.bmp",0
	.align	4
_temitter	.dd	5
_20	.dd	0
	.dd	_20
	.dd	_20
	.dd	0
	.dd	-1
_21	.dd	0
	.dd	_21
	.dd	_21
	.dd	0
	.dd	-1
	.dd	19
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

