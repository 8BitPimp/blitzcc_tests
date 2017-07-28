
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,12
	mov	[esp+4],256
	mov	[esp+8],1
	mov	[esp],256
	call	_fcreateimage
	mov	[_vhm],eax
	sub	esp,4
	mov	eax,_amount
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1000
	mov	esi,_amount
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amount
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amount
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_14
_15
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],256
	call	_frand
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],256
	call	_frand
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],30
	mov	[esp+4],127
	call	_frand
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	[ebx],eax
	add	[ebp-4],1
_14
	cmp	[ebp-4],10
	jle	_15
_3
	call	_fcls
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	eax,[_vhm]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_17
_18
	mov	[ebp-8],0
	jmp	_19
_20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jle	_21
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	add	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,_amount
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amount]
	mov	eax,[eax]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,_amount
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amount]
	mov	eax,[eax]
	add	eax,1
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,_amount
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amount]
	mov	eax,[eax]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
_21
	add	[ebp-8],1
_19
	cmp	[ebp-8],10
	jle	_20
_5
	add	[ebp-4],1
_17
	cmp	[ebp-4],255
	jle	_18
_4
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	[esp+4],256
	mov	[esp+8],1
	mov	[esp],256
	call	_fcreateimage
	mov	[_vmossy],eax
	mov	[ebp-4],0
	jmp	_23
_24
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],256
	call	_frand
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],256
	call	_frand
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],20
	call	_frand
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	[ebx],eax
	add	[ebp-4],1
_23
	cmp	[ebp-4],1000
	jle	_24
_6
	sub	esp,12
	mov	eax,[_vmossy]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_25
_26
	mov	[ebp-8],0
	jmp	_27
_28
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jle	_29
	sub	esp,20
	mov	[esp],50
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	eax,ebx
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],50
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,[ebp-4]
	imul	esi,10
	add	ebx,esi
	mov	[esp+4],ebx
	mov	[esp+8],0
	call	_fcolor
	sub	esp,20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,_amount
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amount]
	mov	eax,[eax]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,_amount
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amount]
	mov	eax,[eax]
	add	eax,1
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,_amount
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amount]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp-12]
	mov	[esp+8],edi
	mov	eax,_amount
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amount]
	mov	eax,[eax]
	mov	esi,[ebp-12]
	sar	esi,byte 1
	sub	eax,esi
	mov	[esp],eax
	call	_foval
_29
	add	[ebp-8],1
_27
	cmp	[ebp-8],1000
	jle	_28
_8
	add	[ebp-4],1
_25
	cmp	[ebp-4],50
	jle	_26
_7
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fgraphicswidth
	mov	[_vgrw],eax
	call	_fgraphicsheight
	mov	[_vgrh],eax
	mov	ebx,[_vgrw]
	sar	ebx,byte 1
	mov	[_vgrwh],ebx
	mov	ebx,[_vgrh]
	sar	ebx,byte 1
	mov	[_vgrhh],ebx
	mov	[_vpx],1090519040
	mov	[_vpz],1090519040
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	sub	esp,8
	mov	eax,[_vgrwh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fmovemouse
	jmp	_31
_30
	call	_fcls
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_32
	mov	ebx,[_vpx]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fsin
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpx],ebx
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fcos
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpz],ebx
_32
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_33
	mov	ebx,[_vpx]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fsin
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpx],ebx
	mov	ebx,[_vpz]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_va]
	mov	[esp],eax
	call	_fcos
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vpz],ebx
_33
	sub	esp,8
	mov	eax,[_va]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
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
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fmousey
	mov	[_vmy],eax
	cmp	[_vmy],130
	jle	_35
	mov	[_vmy],130
_35
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
	mov	[ebp-16],eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	ebx,[_vmy]
	mov	[esp+4],ebx
	call	_fmovemouse
_31
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_30
_9
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
_fraycast
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	mov	ebx,[_vgrwh]
	neg	ebx
	mov	[ebp-4],ebx
	jmp	_36
_37
	mov	ebx,[_vgrh]
	add	ebx,1
	mov	[ebp-8],ebx
	mov	ebx,[_vgrwh]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	mov	ebx,[_vpx]
	mov	[ebp-16],ebx
	mov	ebx,[_vpz]
	mov	[ebp-20],ebx
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
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
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
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	[ebp-32],0
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	eax,[_vhm]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	eax,[_vmossy]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	jmp	_39
_38
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1023541248
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_40
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1023541248
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_41
	sub	esp,12
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[_vhm]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	mov	ebx,1181376512
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vmy]
	imul	esi,100
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[_vmy]
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1106247680
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-32]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_42
	mov	eax,[ebp-36]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_43
	mov	[ebp-44],40400
	jmp	_44
_43
	sub	esp,12
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[_vmossy]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1123942400
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,65535
	and	eax,ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,255
	xor	ebx,esi
	or	eax,ebx
	mov	[ebp-44],eax
_44
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	jmp	_45
_46
	mov	ebx,[ebp-12]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	mov	[ebp-56],ebx
	cmp	[ebp-52],0
	setge	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[_vgrw]
	cmp	[ebp-52],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	mov	[ebp-60],eax
	cmp	[ebp-56],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	mov	[ebp-60],eax
	mov	ebx,[_vgrh]
	cmp	[ebp-56],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_47
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	call	_fbackbuffer
	mov	[esp+12],eax
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fwritepixelfast
_47
	add	[ebp-48],1
_45
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-48],ebx
	jle	_46
_13
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_42
_41
_40
	mov	ebx,[ebp-32]
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
	mov	[ebp-32],ebx
_39
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1128792064
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_38
_12
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[_vhm]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[_vmossy]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	add	[ebp-4],4
_36
	mov	ebx,[_vgrwh]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_37
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
_vhm	.dd	0
	.align	4
_amount	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_16	.db	"Creating Heightmap - please stand by",0
_22	.db	"Creating Terrain Texture - wait a second...",0
	.align	4
_vmossy	.dd	0
	.align	4
_vgrw	.dd	0
	.align	4
_vgrh	.dd	0
	.align	4
_vgrwh	.dd	0
	.align	4
_vgrhh	.dd	0
	.align	4
_vmy	.dd	0
	.align	4
_vpx	.dd	0
	.align	4
_vpz	.dd	0
	.align	4
_va	.dd	0
_34	.db	"Use Mouse + Arrows",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

