
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1
	call	_fseedrnd
	sub	esp,12
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vtilewidth],8
	mov	[_vtileheight],8
	mov	ebx,[_vtilewidth]
	mov	[_vplayerwidth],ebx
	mov	ebx,[_vtileheight]
	mov	[_vplayerheight],ebx
	mov	[_vmapwidth],512
	mov	[_vmapheight],512
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapwidth]
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapheight]
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vmapx],256
	mov	[_vmapy],256
	call	_fgraphicswidth
	mov	ecx,[_vtilewidth]
	cdq
	idiv	ecx
	sar	eax,byte 1
	add	eax,[_vmapx]
	mov	[_vplayerx],eax
	call	_fgraphicsheight
	mov	ecx,[_vtileheight]
	cdq
	idiv	ecx
	sar	eax,byte 1
	add	eax,[_vmapy]
	mov	[_vplayery],eax
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_17
_16
	add	[ebp-8],3
	jmp	_19
_18
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_20
	cmp	[ebp-12],2
	jge	_21
	add	[ebp-12],1
	jmp	_22
_21
	sub	[ebp-12],1
_22
_20
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,8
	jge	_23
	mov	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	esi,1
	mov	[ebx],esi
_23
	add	[ebp-4],1
_19
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	jle	_18
_4
	mov	[ebp-4],0
_17
	mov	ebx,[_vmapheight]
	sub	ebx,5
	cmp	[ebp-8],ebx
	jle	_16
_3
	mov	[ebp-16],0
	jmp	_24
_25
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vmapwidth]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vmapheight]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],30
	call	_frand
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	neg	ebx
	mov	[ebp-32],ebx
	jmp	_26
_27
	mov	ebx,[ebp-28]
	neg	ebx
	mov	[ebp-36],ebx
	jmp	_28
_29
	mov	eax,[ebp-32]
	imul	eax,[ebp-32]
	mov	ebx,[ebp-36]
	imul	ebx,[ebp-36]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1061997773
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	imul	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	mov	ebx,[ebp-20]
	add	ebx,[ebp-36]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-24]
	add	ebx,[ebp-32]
	mov	[ebp-44],ebx
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,8
	jge	_31
	cmp	[ebp-40],0
	setge	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	mov	[ebp-48],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	mov	[ebp-48],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-44],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_32
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_32
_31
_30
	add	[ebp-36],1
_28
	mov	ebx,[ebp-28]
	cmp	[ebp-36],ebx
	jle	_29
_7
	add	[ebp-32],1
_26
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jle	_27
_6
	add	[ebp-16],1
_24
	cmp	[ebp-16],200
	jle	_25
_5
	mov	[ebp-8],0
	jmp	_33
_34
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vmapwidth]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_33
	mov	ebx,[_vmapheight]
	cmp	[ebp-8],ebx
	jle	_34
_8
	mov	[ebp-4],0
	jmp	_35
_36
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vmapheight]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-4],1
_35
	mov	ebx,[_vmapwidth]
	cmp	[ebp-4],ebx
	jle	_36
_9
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],15
	call	_fcreatetimer
	mov	[_vmytimer],eax
	jmp	_38
_37
	sub	esp,4
	mov	eax,[_vmytimer]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	call	_fdrawmap
	mov	eax,[_vplayery]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vplayerx]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_39
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	[_vplayery],1
	sub	[_vmapy],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_39
	mov	eax,[_vplayery]
	add	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vplayerx]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_40
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[_vplayery],1
	add	[_vmapy],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_40
	mov	eax,[_vplayerx]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vplayery]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_41
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	[_vplayerx],1
	sub	[_vmapx],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_41
	mov	eax,[_vplayerx]
	add	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vplayery]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	ebx,eax
	and	ebx,ebx
	jz	_42
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[_vplayerx],1
	add	[_vmapx],1
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vplayery]
	add	esi,[_vplayerx]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_42
	sub	esp,4
	mov	[esp],1
	call	_fflip
_38
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_37
_10
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
_fdrawmap
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
	mov	[ebp-4],0
	jmp	_43
_44
	mov	[ebp-8],0
	jmp	_45
_46
	mov	ebx,[_vmapx]
	add	ebx,[ebp-8]
	mov	[ebp-12],ebx
	mov	ebx,[_vmapy]
	add	ebx,[ebp-4]
	mov	[ebp-16],ebx
	cmp	[ebp-12],0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vmapwidth]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vmapheight]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_47
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_48
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtileheight]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtilewidth]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtileheight]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtilewidth]
	mov	[esp],eax
	call	_frect
_48
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_49
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtileheight]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtilewidth]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtileheight]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtilewidth]
	mov	[esp],eax
	call	_frect
_49
_47
	add	[ebp-8],1
_45
	call	_fgraphicswidth
	mov	ecx,[_vtilewidth]
	cdq
	idiv	ecx
	cmp	[ebp-8],eax
	jle	_46
_13
	add	[ebp-4],1
_43
	call	_fgraphicsheight
	mov	ecx,[_vtileheight]
	cdq
	idiv	ecx
	cmp	[ebp-4],eax
	jle	_44
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_14	.db	"Use cursor keys to move the map",0
_15	.db	"",0
	.align	4
_vtilewidth	.dd	0
	.align	4
_vtileheight	.dd	0
	.align	4
_vplayerwidth	.dd	0
	.align	4
_vplayerheight	.dd	0
	.align	4
_vmapwidth	.dd	0
	.align	4
_vmapheight	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vmapx	.dd	0
	.align	4
_vmapy	.dd	0
	.align	4
_vplayerx	.dd	0
	.align	4
_vplayery	.dd	0
	.align	4
_vmytimer	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

