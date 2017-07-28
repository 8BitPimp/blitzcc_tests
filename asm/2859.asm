
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,12
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vsw],640
	mov	[_vsh],480
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[_vsh]
	mov	[esp+4],esi
	mov	eax,[_vsw]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,12
	mov	[esp+4],192
	mov	[esp+8],255
	mov	[esp],32
	call	_fclscolor
	call	_fmaketexture1
	mov	[ebp-4],eax
	call	_fmaketexture2
	mov	[ebp-8],eax
	call	_fmaketexture3
	mov	[ebp-12],eax
	call	_fmaketexture4
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_20
_19
	call	_fcls
	cmp	[ebp-20],1
	jnz	_21
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],0
	mov	[esp+4],10
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],0
	mov	[esp+4],40
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],0
	mov	[esp+4],70
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],0
	mov	[esp+4],100
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],16
	mov	[esp],144
	call	_ftext
_21
	call	_fmillisecs
	mov	[ebp-24],eax
	mov	[ebp-28],1
	jmp	_23
_24
	sub	esp,8
	mov	[esp],50
	mov	ebx,[_vsw]
	sub	ebx,50
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],50
	mov	ebx,[_vsh]
	sub	ebx,50
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],50
	mov	ebx,[_vsw]
	sub	ebx,50
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],50
	mov	ebx,[_vsh]
	sub	ebx,50
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],50
	mov	ebx,[_vsw]
	sub	ebx,50
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],50
	mov	ebx,[_vsh]
	sub	ebx,50
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-52],eax
	mov	ebx,[ebp-28]
	mov	[ebp-56],ebx
	cmp	[ebp-56],1
	jz	_26
	cmp	[ebp-56],2
	jz	_27
	cmp	[ebp-56],3
	jz	_28
	cmp	[ebp-56],4
	jz	_29
	jmp	_25
_26
	sub	esp,28
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-4]
	mov	[esp+24],esi
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftexturefill
	jmp	_25
_27
	sub	esp,28
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-8]
	mov	[esp+24],esi
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftexturefill
	jmp	_25
_28
	sub	esp,28
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-12]
	mov	[esp+24],esi
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftexturefill
	jmp	_25
_29
	sub	esp,28
	mov	ebx,[ebp-52]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-16]
	mov	[esp+24],esi
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-44]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftexturefill
	jmp	_25
_25
	add	[ebp-28],1
_23
	cmp	[ebp-28],4
	jle	_24
_4
	call	_fmillisecs
	sub	eax,[ebp-24]
	mov	[ebp-60],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,32
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[_vsh]
	sub	ebx,20
	mov	[esp+4],ebx
	mov	[esp],5
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[_vsh]
	sub	ebx,20
	mov	[esp+4],ebx
	mov	eax,[_vsw]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitmouse
_20
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	cmp	eax,0
	jz	_19
_3
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreeimage
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
_ftexturefill
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-28],eax
	mov	eax,[ebp+28]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_32
	mov	ebx,[ebp+28]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	mov	[ebp+28],ebx
	mov	ebx,[ebp+24]
	mov	[ebp+32],ebx
	mov	ebx,[ebp-16]
	mov	[ebp+20],ebx
	mov	ebx,[ebp-20]
	mov	[ebp+24],ebx
_32
	mov	eax,[ebp+36]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	mov	ebx,[ebp+36]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	mov	[ebp+36],ebx
	mov	ebx,[ebp+24]
	mov	[ebp+40],ebx
	mov	ebx,[ebp-16]
	mov	[ebp+20],ebx
	mov	ebx,[ebp-20]
	mov	[ebp+24],ebx
_33
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
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
	mov	ebx,[ebp+36]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+28]
	mov	[ebp+36],ebx
	mov	ebx,[ebp+32]
	mov	[ebp+40],ebx
	mov	ebx,[ebp-16]
	mov	[ebp+28],ebx
	mov	ebx,[ebp-20]
	mov	[ebp+32],ebx
_34
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_35
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
_35
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	cmp	[ebp-60],0
	jz	_36
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	[ebp-16],0
	jmp	_37
_38
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-44],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jge	_39
	mov	ebx,[ebp-36]
	mov	[ebp-64],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-64]
	mov	[ebp-40],ebx
_39
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-36]
	mov	[ebp-52],ebx
	jmp	_41
_40
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	mov	ebx,[ebp-28]
	sub	ebx,[ebp-48]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-36]
	add	ebx,[ebp-56]
	cmp	ebx,[ebp-40]
	jl	_42
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-36]
	mov	[ebp-56],ebx
_42
	sub	esp,40
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-68],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+28],ebx
	mov	ebx,[ebp-36]
	mov	[esp+20],ebx
	mov	esi,[ebp-32]
	mov	[esp+16],esi
	mov	ebx,[ebp-56]
	mov	[esp+12],ebx
	mov	[esp+8],1
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcopyrect
	cmp	[ebp-56],0
	jle	_43
	mov	ebx,[ebp-56]
	add	[ebp-36],ebx
	mov	ebx,[ebp-56]
	sub	[ebp-52],ebx
_43
_41
	cmp	[ebp-52],0
	jg	_40
_8
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
_37
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_38
_7
_36
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	cmp	[ebp-60],0
	jz	_44
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+28]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	jmp	_45
_46
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-44],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jge	_47
	mov	ebx,[ebp-36]
	mov	[ebp-64],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-64]
	mov	[ebp-40],ebx
_47
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-36]
	mov	[ebp-52],ebx
	jmp	_49
_48
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	mov	ebx,[ebp-28]
	sub	ebx,[ebp-48]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-36]
	add	ebx,[ebp-56]
	cmp	ebx,[ebp-40]
	jl	_50
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-36]
	mov	[ebp-56],ebx
_50
	sub	esp,40
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-68],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+28],ebx
	mov	ebx,[ebp-36]
	mov	[esp+20],ebx
	mov	esi,[ebp-32]
	mov	[esp+16],esi
	mov	ebx,[ebp-56]
	mov	[esp+12],ebx
	mov	[esp+8],1
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcopyrect
	cmp	[ebp-56],0
	jle	_51
	mov	ebx,[ebp-56]
	add	[ebp-36],ebx
	mov	ebx,[ebp-56]
	sub	[ebp-52],ebx
_51
_49
	cmp	[ebp-52],0
	jg	_48
_10
	mov	ebx,[ebp-16]
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
	mov	[ebp-16],ebx
_45
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_46
_9
_44
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fmaketexture1
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
	mov	[ebp-24],ebx
	sub	esp,12
	mov	[esp+4],24
	mov	[esp+8],1
	mov	[esp],24
	call	_fcreateimage
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],128
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],24
	mov	[esp+16],1
	mov	[esp+8],24
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-4],1093801539
	mov	[ebp-8],24
	mov	[ebp-12],1119223808
	mov	[ebp-24],0
	jmp	_53
_52
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	ebx,0
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,0
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_foval
	sub	[ebp-8],2
	add	[ebp-24],1
	cmp	[ebp-8],1
	jge	_54
	mov	[ebp-8],1
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-24],ebx
_54
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
_53
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1130364928
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jnz	_52
_12
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-20]
	jmp	_11_leave
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
_fmaketexture2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],21
	mov	[esp+8],1
	mov	[esp],21
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],160
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],3
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],6
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],9
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],12
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],15
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],128
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],21
	mov	[esp+4],18
	mov	[esp],0
	call	_frect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-4]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmaketexture3
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
	mov	[ebp-24],ebx
	sub	esp,12
	mov	[esp+4],24
	mov	[esp+8],1
	mov	[esp],24
	call	_fcreateimage
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],24
	mov	[esp+16],1
	mov	[esp+8],24
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-4],1093801539
	mov	[ebp-8],24
	mov	[ebp-12],1119223808
	mov	[ebp-24],0
	jmp	_56
_55
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	ebx,0
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,0
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_foval
	sub	[ebp-8],2
	add	[ebp-24],1
	cmp	[ebp-8],1
	jge	_57
	mov	[ebp-8],1
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-24],ebx
_57
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
_56
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1130364928
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jnz	_55
_15
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,[ebp-20]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmaketexture4
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],24
	mov	[esp+8],1
	mov	[esp],42
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],112
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],28
	mov	[esp+16],1
	mov	[esp+8],42
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],32
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],21
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],11
	mov	[esp],21
	call	_ftext
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
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
	ret	word 0
_17	.db	"Texture Filled Triangle Function",0
_18	.db	"",0
	.align	4
_vsw	.dd	0
	.align	4
_vsh	.dd	0
_22	.db	"<=== These are the textures used",0
_30	.db	"et: ",0
_31	.db	"R-click to repeat          L-click to exit",0
_58	.db	"Blitz",0
_59	.db	"Plus",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
