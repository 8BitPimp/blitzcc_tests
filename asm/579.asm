
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_agrid
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_agrid
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_13
_14
	mov	[ebp-8],0
	jmp	_15
_16
	call	__bbReadInt
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	[ebx],eax
	add	[ebp-8],1
_15
	cmp	[ebp-8],15
	jle	_16
_4
	add	[ebp-4],1
_13
	cmp	[ebp-4],15
	jle	_14
_3
	sub	esp,4
	mov	eax,_argb
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_argb
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_argb
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_argb
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],1
	jmp	_17
_18
	call	__bbReadInt
	mov	ebx,_argb
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_argb]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_argb
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_argb]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_argb
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_argb]
	mov	[ebx],eax
	add	[ebp-8],1
_17
	cmp	[ebp-8],9
	jle	_18
_5
	mov	[_vpx],1090519040
	mov	[_vpz],1090519040
	mov	[_vpxold],0
	mov	[_vpzold],0
	jmp	_20
_19
	call	_fcls
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_21
	mov	ebx,[_vpx]
	mov	[_vpxold],ebx
	mov	ebx,[_vpz]
	mov	[_vpzold],ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[_vpx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpx],ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpz],ebx
	call	_fsliding
_21
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_22
	mov	ebx,[_vpx]
	mov	[_vpxold],ebx
	mov	ebx,[_vpz]
	mov	[_vpzold],ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[_vpx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpx],ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpz],ebx
	call	_fsliding
_22
	sub	esp,8
	mov	eax,[_va]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1135869952
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_va],eax
	call	_fraycast
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[_vpx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fsin
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vpz]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fcos
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vpz]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fcos
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vpx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_va]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	eax,[_vpx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_va]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[_va]
	mov	[esp],esi
	mov	eax,esi
	call	_fcos
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	call	_foval
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	mov	[ebp-4],0
	jmp	_23
_24
	mov	[ebp-8],0
	jmp	_25
_26
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_27
	sub	esp,20
	mov	[esp+12],5
	mov	[esp+16],0
	mov	[esp+8],5
	mov	ebx,[ebp-4]
	imul	ebx,5
	sub	ebx,3
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,5
	sub	eax,3
	mov	[esp],eax
	call	_frect
_27
	add	[ebp-8],1
_25
	cmp	[ebp-8],15
	jle	_26
_8
	add	[ebp-4],1
_23
	cmp	[ebp-4],15
	jle	_24
_7
	sub	esp,12
	mov	eax,_vinfo
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_28
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_vinfo
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-16]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
_28
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-16]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
_20
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_19
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
	.align	16
_fsliding
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vpx]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	cmp	esi,0
	jz	_30
	mov	ebx,[_vpx]
	mov	[_vpremind],ebx
	mov	ebx,[_vpxold]
	mov	[_vpx],ebx
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vpx]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	cmp	esi,0
	jz	_31
	mov	ebx,[_vpremind]
	mov	[_vpx],ebx
	mov	ebx,[_vpzold]
	mov	[_vpz],ebx
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vpx]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	cmp	esi,0
	jz	_32
	mov	ebx,[_vpxold]
	mov	[_vpx],ebx
_32
_31
_30
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fraycast
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	mov	[ebp-4],-160
	jmp	_33
_34
	mov	ebx,[_vpx]
	mov	[ebp-8],ebx
	mov	ebx,[_vpz]
	mov	[ebp-12],ebx
	sub	esp,4
	mov	ebx,1040187392
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[_va]
	push	eax
	fld	[esp]
	pop	eax
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,1040187392
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[_va]
	push	eax
	fld	[esp]
	pop	eax
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	[ebp-24],0
	mov	[ebp-28],0
	jmp	_36
_35
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	add	[ebp-24],1
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	cmp	esi,0
	jz	_37
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	[ebp-28],esi
_37
_36
	cmp	[ebp-28],0
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-24],1000
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jnz	_35
_12
	cmp	[ebp-28],0
	jz	_38
	mov	ebx,1171963904
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1101004800
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	eax,[ebp-36]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_39
	mov	[ebp-36],1065353216
_39
	sub	esp,12
	mov	ebx,_argb
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_argb]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,_argb
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_argb]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,_argb
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_argb]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	ebx,1123024896
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,1123024896
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	edi,160
	sub	edi,[ebp-4]
	mov	[esp+8],edi
	mov	eax,160
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	cmp	[ebp-28],9
	jnz	_40
	sub	esp,12
	mov	eax,_vinfo
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_41
	sub	esp,8
	mov	[esp],_vinfo
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
_41
_40
_38
	add	[ebp-4],1
_33
	cmp	[ebp-4],159
	jle	_34
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_agrid	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_argb	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vpx	.dd	0
	.align	4
_vpz	.dd	0
	.align	4
_va	.dd	0
	.align	4
_vpxold	.dd	0
	.align	4
_vpzold	.dd	0
	.align	4
_vpremind	.dd	0
	.align	4
_vinfo	.dd	0
_29	.db	"",0
_42	.db	"",0
_43	.db	"Level Exit found!!! Congratzz!!!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	9
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	3
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	3
	.dd	1
	.dd	4
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	4
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	8
	.dd	1
	.dd	4
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	4
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	6
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	4
	.dd	1
	.dd	2
	.dd	1
	.dd	4
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	3
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	127
	.dd	1
	.dd	127
	.dd	1
	.dd	255
	.dd	1
	.dd	64
	.dd	1
	.dd	64
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	127
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	0
