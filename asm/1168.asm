
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fclscolor
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadtranslucidimage
	mov	[ebp-4],eax
	mov	[_vtransluciddown],0
	mov	[_vtranslucid],0
_20
	call	_fcls
	call	_fmousex
	mov	[ebp-8],eax
	call	_fmousey
	mov	[ebp-12],eax
	mov	ebx,[_vtransluciddown]
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jz	_22
	cmp	[ebp-16],1
	jz	_23
	jmp	_21
_22
	mov	ebx,[_vtranslucid]
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
	mov	[_vtranslucid],ebx
	mov	eax,[_vtranslucid]
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
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_24
	mov	[_vtransluciddown],1
	mov	[_vtranslucid],1065353216
_24
	jmp	_21
_23
	mov	ebx,[_vtranslucid]
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
	mov	[_vtranslucid],ebx
	mov	eax,[_vtranslucid]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_25
	mov	[_vtransluciddown],0
	mov	[_vtranslucid],0
_25
	jmp	_21
_21
	sub	esp,36
	mov	[esp+28],1
	mov	[esp+32],1
	mov	esi,[_vtranslucid]
	mov	[esp+24],esi
	mov	ebx,[ebp-12]
	mov	[esp+20],ebx
	mov	esi,[ebp-8]
	mov	[esp+16],esi
	mov	[esp+12],255
	mov	[esp+8],255
	mov	[esp+4],255
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawtranslucidimage
	add	[_vbwx],1
	call	_fmillisecs
	mov	ebx,[_voldzeit]
	add	ebx,999
	cmp	eax,ebx
	jle	_26
	mov	ebx,[_vbwx]
	mov	[_vbw],ebx
	mov	[_vbwx],0
	call	_fmillisecs
	mov	[_voldzeit],eax
_26
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vbw]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_20
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
_fdrawtranslucidimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	call	_fbackbuffer
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekbyte
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fpeekbyte
	mov	[ebp-12],eax
	call	_fgraphicswidth
	sub	eax,1
	mov	[ebp-16],eax
	call	_fgraphicsheight
	sub	eax,1
	mov	[ebp-20],eax
	cmp	[ebp+48],1
	jnz	_27
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	sub	[ebp+36],ebx
_27
	cmp	[ebp+52],1
	jnz	_28
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	sub	[ebp+40],ebx
_28
	mov	[ebp-24],2
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-28],0
	jmp	_29
_30
	mov	[ebp-32],0
	jmp	_31
_32
	mov	eax,[ebp+36]
	add	eax,[ebp-32]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-80],eax
	mov	ebx,[ebp+40]
	add	ebx,[ebp-28]
	cmp	ebx,0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-80]
	and	eax,ebx
	mov	[ebp-80],eax
	mov	ebx,[ebp+36]
	add	ebx,[ebp-32]
	cmp	ebx,[ebp-16]
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-80]
	and	eax,ebx
	mov	[ebp-80],eax
	mov	ebx,[ebp+40]
	add	ebx,[ebp-28]
	cmp	ebx,[ebp-20]
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-80]
	and	eax,ebx
	and	eax,eax
	jz	_33
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-36],eax
	add	[ebp-24],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-40],eax
	add	[ebp-24],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-44],eax
	add	[ebp-24],1
	mov	eax,[ebp+24]
	cmp	[ebp-36],eax
	setnz	al
	movzx	eax,al
	mov	[ebp-80],eax
	mov	ebx,[ebp+28]
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-80]
	or	eax,ebx
	mov	[ebp-80],eax
	mov	ebx,[ebp+32]
	cmp	[ebp-44],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-80]
	or	eax,ebx
	and	eax,eax
	jz	_34
	sub	esp,12
	mov	ebx,[ebp+40]
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp+36]
	add	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fextractred
	mov	[ebp-52],eax
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fextractgreen
	mov	[ebp-56],eax
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fextractblue
	mov	[ebp-60],eax
	mov	ebx,[ebp-36]
	cmp	[ebp-52],ebx
	jge	_35
	sub	esp,8
	mov	eax,[ebp-52]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fdegree
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	jmp	_36
_35
	mov	ebx,[ebp-36]
	cmp	[ebp-52],ebx
	jle	_37
	sub	esp,8
	mov	eax,[ebp-52]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fdegree
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	jmp	_38
_37
	mov	ebx,[ebp-36]
	cmp	[ebp-52],ebx
	jnz	_39
	mov	ebx,[ebp-52]
	mov	[ebp-64],ebx
_39
_38
_36
	mov	ebx,[ebp-40]
	cmp	[ebp-56],ebx
	jge	_40
	sub	esp,8
	mov	eax,[ebp-56]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fdegree
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	jmp	_41
_40
	mov	ebx,[ebp-40]
	cmp	[ebp-56],ebx
	jle	_42
	sub	esp,8
	mov	eax,[ebp-56]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fdegree
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	jmp	_43
_42
	mov	ebx,[ebp-40]
	cmp	[ebp-56],ebx
	jnz	_44
	mov	ebx,[ebp-56]
	mov	[ebp-68],ebx
_44
_43
_41
	mov	ebx,[ebp-44]
	cmp	[ebp-60],ebx
	jge	_45
	sub	esp,8
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fdegree
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	jmp	_46
_45
	mov	ebx,[ebp-44]
	cmp	[ebp-60],ebx
	jle	_47
	sub	esp,8
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fdegree
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	jmp	_48
_47
	mov	ebx,[ebp-44]
	cmp	[ebp-60],ebx
	jnz	_49
	mov	ebx,[ebp-60]
	mov	[ebp-72],ebx
_49
_48
_46
	mov	ebx,[ebp-64]
	shl	ebx,byte 16
	mov	esi,[ebp-68]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-72]
	mov	[ebp-76],ebx
	sub	esp,16
	mov	ebx,[ebp-76]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp+40]
	add	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp+36]
	add	eax,[ebp-32]
	mov	[esp],eax
	call	_fwritepixelfast
_34
	jmp	_50
_33
	add	[ebp-24],3
_50
	add	[ebp-32],1
_31
	mov	ebx,[ebp-8]
	cmp	[ebp-32],ebx
	jle	_32
_7
	add	[ebp-28],1
_29
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jle	_30
_6
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
	.align	16
_floadtranslucidimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	add	eax,1
	mov	ebx,[ebp-12]
	add	ebx,1
	imul	eax,ebx
	imul	eax,3
	add	eax,2
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpokebyte
	mov	[ebp-24],2
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-28],0
	jmp	_51
_52
	mov	[ebp-32],0
	jmp	_53
_54
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fextractred
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fextractgreen
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fextractblue
	mov	[ebp-48],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-24],1
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-24],1
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-24],1
	add	[ebp-32],1
_53
	mov	ebx,[ebp-8]
	cmp	[ebp-32],ebx
	jle	_54
_10
	add	[ebp-28],1
_51
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jle	_52
_9
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	mov	eax,[ebp-16]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fconvertimagetotranslucid
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	add	eax,1
	mov	ebx,[ebp-8]
	add	ebx,1
	imul	eax,ebx
	imul	eax,3
	add	eax,2
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-16],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	mov	[ebp-20],2
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-24],0
	jmp	_55
_56
	mov	[ebp-28],0
	jmp	_57
_58
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fextractred
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fextractgreen
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fextractblue
	mov	[ebp-44],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-20],1
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-20],1
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-20],1
	add	[ebp-28],1
_57
	mov	ebx,[ebp-4]
	cmp	[ebp-28],ebx
	jle	_58
_13
	add	[ebp-24],1
_55
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_56
_12
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-12]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdegree
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_59
	mov	[ebp-4],2
_59
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_60
	mov	[ebp-4],1
_60
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jz	_62
	cmp	[ebp-12],1
	jz	_63
	cmp	[ebp-12],2
	jz	_64
	jmp	_61
_62
	mov	[ebp-8],0
	jmp	_61
_63
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	jmp	_61
_64
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	jmp	_61
_61
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fextractred
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fextractgreen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fextractblue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-4],ebx
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
	ret	word 4
_19	.db	"testmonster.bmp",0
	.align	4
_vtransluciddown	.dd	0
	.align	4
_vtranslucid	.dd	0
	.align	4
_vbwx	.dd	0
	.align	4
_vbw	.dd	0
	.align	4
_voldzeit	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

