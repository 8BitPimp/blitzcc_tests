
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
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
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_acx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_actx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_actx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_actx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acty
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acty
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acty
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aca
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_aca
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aca
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acs
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_acs
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acs
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_atp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_alocktime
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_alocktime
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alocktime
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_apx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_apy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	call	_fgraphicsheight
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	[_vmyim],ebx
	call	_fsetupracetrack
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_20
_19
	call	_fcls
	call	_fupdatecars
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vmyim]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],0
	jmp	_21
_22
	sub	esp,20
	mov	[esp+12],6
	mov	[esp+16],0
	mov	[esp+8],6
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apy]
	mov	ebx,[ebx]
	sub	ebx,3
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apx]
	mov	eax,[eax]
	sub	eax,3
	mov	[esp],eax
	call	_frect
	add	[ebp-4],1
_21
	cmp	[ebp-4],5
	jle	_22
_4
	mov	[ebp-4],0
	jmp	_23
_24
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],6
	mov	[esp+16],1
	mov	[esp+8],6
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-4],1
_23
	cmp	[ebp-4],6
	jle	_24
_5
	sub	esp,4
	mov	[esp],1
	call	_fflip
_20
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_19
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
_fupdatecars
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,12
	mov	eax,[_vmyim]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_25
_26
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acs]
	mov	eax,[eax]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acs]
	mov	[esi],ebx
_27
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_actx]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acty]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fgetangle
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],0
	jmp	_29
_28
	add	[ebp-12],1
	add	[ebp-20],1
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jnz	_30
	mov	[ebp-28],1
_30
	cmp	[ebp-12],360
	jl	_31
	mov	[ebp-12],-1
_31
_29
	cmp	[ebp-28],0
	jz	_28
_8
	mov	[ebp-28],0
	jmp	_33
_32
	sub	[ebp-16],1
	add	[ebp-24],1
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jnz	_34
	mov	[ebp-28],1
_34
	cmp	[ebp-16],0
	jg	_35
	mov	[ebp-16],361
_35
_33
	cmp	[ebp-28],0
	jz	_32
_9
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	jle	_36
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aca]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aca]
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
	jz	_37
	mov	ebx,1135902720
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aca]
	mov	[esi],ebx
_37
	jmp	_38
_36
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aca]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aca]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aca]
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
	jz	_39
	mov	ebx,-1082130432
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aca]
	mov	[esi],ebx
_39
_38
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aca]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aca]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],0
	mov	[ebp-44],0
	jmp	_40
_41
	mov	eax,[ebp-44]
	cmp	[ebp-4],eax
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_42
	sub	esp,32
	mov	[esp+24],3
	mov	[esp+28],3
	mov	esi,[ebp-44]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_acx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+12],3
	mov	[esp+8],3
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_43
	mov	[ebp-40],1
_43
_42
	add	[ebp-44],1
_40
	cmp	[ebp-44],6
	jle	_41
_10
	cmp	[ebp-40],0
	jnz	_44
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aca]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acx]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aca]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	[esi],ebx
	jmp	_45
_44
	sub	esp,8
	mov	[esp],1036831949
	mov	[esp+4],1045220557
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-3
	mov	[esp+4],3
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acx]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],-3
	mov	[esp+4],3
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	[esi],ebx
_45
	sub	esp,32
	mov	[esp+24],3
	mov	[esp+28],3
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acty]
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_actx]
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	[esp+12],3
	mov	[esp+8],3
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frectsoverlap
	cmp	eax,1
	jnz	_46
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atp]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atp]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atp]
	mov	ebx,[ebx]
	cmp	ebx,5
	jle	_47
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atp]
	mov	[esi],ebx
_47
	sub	esp,8
	mov	[esp],-8
	mov	[esp+4],8
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atp]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_apx]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_actx]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],-8
	mov	[esp+4],8
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atp]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_apy]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acty]
	mov	[esi],ebx
_46
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_48
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fgetcolor
	call	_fcolorred
	cmp	eax,0
	jnz	_49
	mov	ebx,1036831949
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acs]
	mov	[esi],ebx
_49
_48
	add	[ebp-4],1
_25
	cmp	[ebp-4],6
	jle	_26
_7
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetupracetrack
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	ebx,100
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_apx]
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_apy]
	mov	[esi],ebx
	mov	ebx,320
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_apx]
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_apy]
	mov	[esi],ebx
	mov	ebx,500
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_apx]
	mov	[esi],ebx
	mov	ebx,200
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_apy]
	mov	[esi],ebx
	mov	ebx,500
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_apx]
	mov	[esi],ebx
	mov	ebx,370
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_apy]
	mov	[esi],ebx
	mov	ebx,320
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_apx]
	mov	[esi],ebx
	mov	ebx,400
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_apy]
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_apx]
	mov	[esi],ebx
	mov	ebx,300
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_apy]
	mov	[esi],ebx
	mov	[ebp-4],0
	jmp	_50
_51
	sub	esp,8
	mov	[esp],-16
	mov	[esp+4],16
	call	_frand
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apx]
	mov	ebx,[ebx]
	add	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acx]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],-16
	mov	[esp+4],16
	call	_frand
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apy]
	mov	ebx,[ebx]
	add	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apx]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_apy]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fgetangle
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aca]
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atp]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],-8
	mov	[esp+4],8
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atp]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_apx]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_actx]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],-8
	mov	[esp+4],8
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atp]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_apy]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acty]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1053609165
	mov	[esp+4],1060320051
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acs]
	mov	[ebx],eax
	add	[ebp-4],1
_50
	cmp	[ebp-4],6
	jle	_51
_12
	sub	esp,12
	mov	eax,[_vmyim]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_52
_53
	mov	[ebp-8],-32
	jmp	_54
_55
	mov	[ebp-12],-32
	jmp	_56
_57
	sub	esp,16
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apx]
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_apy]
	mov	esi,[esi]
	add	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apy]
	mov	esi,[esi]
	add	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apx]
	mov	eax,[eax]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fline
	add	[ebp-12],1
_56
	cmp	[ebp-12],32
	jle	_57
_15
	add	[ebp-8],1
_54
	cmp	[ebp-8],32
	jle	_55
_14
	add	[ebp-4],1
_52
	cmp	[ebp-4],4
	jle	_53
_13
	mov	[ebp-8],-32
	jmp	_58
_59
	mov	[ebp-12],-32
	jmp	_60
_61
	sub	esp,16
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apx]
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_apy]
	mov	esi,[esi]
	add	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_apy]
	mov	esi,[esi]
	add	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_apx]
	mov	eax,[eax]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fline
	add	[ebp-12],1
_60
	cmp	[ebp-12],32
	jle	_61
_17
	add	[ebp-8],1
_58
	cmp	[ebp-8],32
	jle	_59
_16
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	sub	eax,[ebp+28]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	[ebp-4],180
	cmp	[ebp-4],360
	jle	_62
	sub	[ebp-4],360
	jmp	_63
_62
	cmp	[ebp-4],0
	jge	_64
	add	[ebp-4],360
_64
_63
	mov	eax,[ebp-4]
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_acx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_acy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_actx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acty	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aca	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_acs	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atp	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_alocktime	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apy	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vmyim	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

