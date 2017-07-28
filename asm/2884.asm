
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fgraphicswidth
	mov	[_vg_screen_width],eax
	call	_fgraphicsheight
	mov	[_vg_screen_hight],eax
	sub	esp,4
	mov	eax,_aa_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,90
	mov	esi,_aa_x
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa_x
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aa_y
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,90
	mov	esi,_aa_y
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa_y
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aleft_side
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vg_screen_hight]
	sub	ebx,1
	mov	esi,_aleft_side
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aleft_side
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arite_side
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vg_screen_hight]
	sub	ebx,1
	mov	esi,_arite_side
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arite_side
	mov	[esp],eax
	call	__bbDimArray
_11
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1135869952
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	[ebp-12],1
	jmp	_12
_13
	sub	esp,32
	mov	[esp+24],0
	mov	[esp+28],255
	mov	[esp+20],255
	mov	ebx,[ebp-4]
	mov	[esp+16],ebx
	mov	[esp+12],1112014848
	mov	[esp+8],1120403456
	mov	[esp+4],0
	mov	[esp],0
	call	_fcreate_ellipse
	add	[ebp-12],1
_12
	cmp	[ebp-12],1000
	jle	_13
_4
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_11
_3
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fflushkeys
	call	_fwaitkey
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
_fcreate_ellipse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	sub	esp,4
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	[ebp+36],0
	jmp	_17
_18
	sub	esp,4
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-8]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-4]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[_vg_screen_width]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_aa_x]
	mov	[esi],ebx
	mov	ebx,[_vg_screen_hight]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_aa_y]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
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
	mov	[ebp+36],ebx
_17
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_18
_6
	mov	[ebp-28],0
	jmp	_19
_20
	mov	ebx,1000000
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_aleft_side]
	mov	[esi],ebx
	mov	ebx,-1000000
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_arite_side]
	mov	[esi],ebx
	add	[ebp-28],1
_19
	mov	ebx,[_vg_screen_hight]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_20
_7
	mov	[ebp-32],0
	jmp	_21
_22
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aa_x]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aa_y]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-32]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aa_x]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	ebx,[ebp-32]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aa_y]
	mov	ebx,[ebx]
	mov	[ebp-48],ebx
	cmp	[ebp-36],0
	jge	_23
	mov	[ebp-36],0
_23
	cmp	[ebp-40],0
	jge	_24
	mov	[ebp-40],0
_24
	cmp	[ebp-44],0
	jge	_25
	mov	[ebp-44],0
_25
	cmp	[ebp-48],0
	jge	_26
	mov	[ebp-48],0
_26
	mov	ebx,[_vg_screen_width]
	cmp	[ebp-36],ebx
	jl	_27
	mov	ebx,[_vg_screen_width]
	sub	ebx,1
	mov	[ebp-36],ebx
_27
	mov	ebx,[_vg_screen_hight]
	cmp	[ebp-40],ebx
	jl	_28
	mov	ebx,[_vg_screen_hight]
	sub	ebx,1
	mov	[ebp-40],ebx
_28
	mov	ebx,[_vg_screen_width]
	cmp	[ebp-44],ebx
	jl	_29
	mov	ebx,[_vg_screen_width]
	sub	ebx,1
	mov	[ebp-44],ebx
_29
	mov	ebx,[_vg_screen_hight]
	cmp	[ebp-48],ebx
	jl	_30
	mov	ebx,[_vg_screen_hight]
	sub	ebx,1
	mov	[ebp-48],ebx
_30
	sub	esp,4
	mov	eax,[ebp-44]
	sub	eax,[ebp-36]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-52],eax
	sub	esp,4
	mov	eax,[ebp-48]
	sub	eax,[ebp-40]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-56],eax
	mov	ebx,[ebp-44]
	cmp	[ebp-36],ebx
	jge	_31
	mov	[ebp-60],1
	jmp	_32
_31
	mov	[ebp-60],-1
_32
	mov	ebx,[ebp-48]
	cmp	[ebp-40],ebx
	jge	_33
	mov	[ebp-64],1
	jmp	_34
_33
	mov	[ebp-64],-1
_34
	mov	ebx,[ebp-52]
	sub	ebx,[ebp-56]
	mov	[ebp-68],ebx
_35
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_aleft_side]
	mov	ebx,[ebx]
	cmp	[ebp-36],ebx
	jge	_36
	mov	ebx,[ebp-36]
	mov	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_aleft_side]
	mov	[esi],ebx
_36
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arite_side]
	mov	ebx,[ebx]
	cmp	[ebp-36],ebx
	jle	_37
	mov	ebx,[ebp-36]
	mov	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_arite_side]
	mov	[esi],ebx
_37
	mov	eax,[ebp-44]
	cmp	[ebp-36],eax
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-48]
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_38
	jmp	_9
_38
	mov	ebx,[ebp-68]
	shl	ebx,byte 1
	mov	[ebp-72],ebx
	mov	ebx,[ebp-56]
	neg	ebx
	cmp	[ebp-72],ebx
	jle	_39
	mov	ebx,[ebp-56]
	sub	[ebp-68],ebx
	mov	ebx,[ebp-60]
	add	[ebp-36],ebx
_39
	mov	ebx,[ebp-52]
	cmp	[ebp-72],ebx
	jge	_40
	mov	ebx,[ebp-52]
	add	[ebp-68],ebx
	mov	ebx,[ebp-64]
	add	[ebp-40],ebx
_40
	jmp	_35
_9
	add	[ebp-32],1
_21
	cmp	[ebp-32],89
	jle	_22
_8
	sub	esp,12
	mov	ebx,[ebp+44]
	mov	[esp+4],ebx
	mov	esi,[ebp+48]
	mov	[esp+8],esi
	mov	eax,[ebp+40]
	mov	[esp],eax
	call	_fcolor
	mov	[ebp-76],0
	jmp	_41
_42
	mov	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_aleft_side]
	mov	ebx,[ebx]
	mov	[ebp-80],ebx
	mov	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_arite_side]
	mov	ebx,[ebx]
	mov	[ebp-84],ebx
	mov	ebx,[ebp-84]
	sub	ebx,[ebp-80]
	mov	[ebp-88],ebx
	cmp	[ebp-88],0
	jle	_43
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	esi,[ebp-88]
	mov	[esp+8],esi
	mov	ebx,[ebp-76]
	mov	[esp+4],ebx
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_frect
_43
	add	[ebp-76],1
_41
	mov	ebx,[_vg_screen_hight]
	sub	ebx,1
	cmp	[ebp-76],ebx
	jle	_42
_10
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
_vg_screen_width	.dd	0
	.align	4
_vg_screen_hight	.dd	0
	.align	4
_aa_x	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aa_y	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aleft_side	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arite_side	.dd	0
	.dd	1
	.dd	1
	.dd	0
_14	.db	"Time to draw 1000 :",0
_15	.db	" millisecs",0
_16	.db	"Press Space",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

