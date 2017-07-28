
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
	sub	esp,4
	mov	eax,_ain
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,320
	mov	esi,_ain
	add	esi,12
	mov	[esi],ebx
	mov	ebx,120
	mov	esi,_ain
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ain
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adiv
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1275
	mov	esi,_adiv
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adiv
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],120
	mov	[esp+8],1
	mov	[esp],320
	call	_fcreateimage
	mov	[_vpage],eax
	call	_fsetup_balls
	jmp	_14
_13
	call	_fdraw_balls
	call	_fblur
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vpage]
	mov	[esp],eax
	call	_ftileblock
	sub	esp,4
	mov	[esp],1
	call	_fflip
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_13
_3
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
_fblur
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,12
	mov	eax,[_vpage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[_vpage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_17
_18
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[ebp-12],ebx
	cmp	[ebp-8],0
	jge	_19
	mov	[ebp-8],319
	jmp	_20
_19
	cmp	[ebp-12],319
	jle	_21
	mov	[ebp-12],0
_21
_20
	mov	[ebp-16],0
	jmp	_22
_23
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[ebp-24],ebx
	cmp	[ebp-20],0
	jge	_24
	mov	[ebp-20],119
	jmp	_25
_24
	cmp	[ebp-24],119
	jle	_26
	mov	[ebp-24],0
_26
_25
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	shr	ebx,byte 16
	mov	[ebp-28],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	shr	ebx,byte 16
	add	[ebp-28],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	shr	ebx,byte 16
	add	[ebp-28],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	shr	ebx,byte 16
	add	[ebp-28],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	shr	ebx,byte 16
	add	[ebp-28],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_adiv]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-28],ebx
	cmp	[ebp-28],0
	jge	_27
	mov	[ebp-28],0
_27
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-32],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	add	[ebp-32],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	add	[ebp-32],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	add	[ebp-32],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	add	[ebp-32],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_adiv]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jge	_28
	mov	[ebp-32],0
_28
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-36],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	add	[ebp-36],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	add	[ebp-36],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	add	[ebp-36],ebx
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	add	[ebp-36],ebx
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_adiv]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	[ebp-36],ebx
	cmp	[ebp-36],0
	jge	_29
	mov	[ebp-36],0
_29
	mov	ebx,[ebp-28]
	shl	ebx,byte 16
	mov	esi,[ebp-32]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-36]
	or	ebx,esi
	mov	esi,_ain
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ain]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,_ain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ain]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_22
	cmp	[ebp-16],119
	jle	_23
_6
	add	[ebp-4],1
_17
	cmp	[ebp-4],319
	jle	_18
_5
	sub	esp,12
	mov	eax,[_vpage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdraw_balls
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tball
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_30
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
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
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
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
	add	esi,12
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
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	mov	ebx,1134526464
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	jmp	_32
_31
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1134559232
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_33
_32
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_34
	mov	ebx,1122893824
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	jmp	_35
_34
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1123024896
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_36
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_36
_35
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_ain
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_ain]
	mov	esi,[esi]
	shr	esi,byte 16
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	add	ebx,esi
	mov	[ebp-8],ebx
	cmp	[ebp-8],255
	jle	_37
	mov	[ebp-8],255
_37
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_ain
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_ain]
	mov	esi,[esi]
	mov	ebx,65280
	and	esi,ebx
	shr	esi,byte 8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	add	ebx,esi
	mov	[ebp-12],ebx
	cmp	[ebp-12],255
	jle	_38
	mov	[ebp-12],255
_38
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_ain
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_ain]
	mov	esi,[esi]
	mov	ebx,255
	and	esi,ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	add	ebx,esi
	mov	[ebp-16],ebx
	cmp	[ebp-16],255
	jle	_39
	mov	[ebp-16],255
_39
	mov	ebx,[ebp-8]
	shl	ebx,byte 16
	mov	esi,[ebp-12]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-16]
	or	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	edi,_ain
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-4]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	push	edi
	fistp	[esp]
	pop	edi
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_ain]
	mov	[edi],ebx
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_30
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetup_balls
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
	mov	[ebp-4],0
	jmp	_40
_41
	mov	eax,[ebp-4]
	mov	ecx,5
	cdq
	idiv	ecx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adiv]
	mov	[ebx],eax
	add	[ebp-4],1
_40
	cmp	[ebp-4],1274
	jle	_41
_10
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-8],0
	jmp	_42
_43
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_tball
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1134526464
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1122893824
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1073741824
	mov	[esp+4],1073741824
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1073741824
	mov	[esp+4],1073741824
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],5
	call	_frand
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_45
	cmp	[ebp-20],1
	jz	_46
	cmp	[ebp-20],2
	jz	_47
	cmp	[ebp-20],3
	jz	_48
	cmp	[ebp-20],4
	jz	_49
	cmp	[ebp-20],5
	jz	_50
	jmp	_44
_45
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	jmp	_44
_46
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	jmp	_44
_47
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	jmp	_44
_48
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	jmp	_44
_49
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	jmp	_44
_50
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],36
	mov	[esp+4],255
	call	_frand
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	jmp	_44
_44
	add	[ebp-8],1
_42
	cmp	[ebp-8],1500
	jle	_43
_11
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_ain	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adiv	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vpage	.dd	0
	.align	4
_tball	.dd	5
_15	.dd	0
	.dd	_15
	.dd	_15
	.dd	0
	.dd	-1
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

