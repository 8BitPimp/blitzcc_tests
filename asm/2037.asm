
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
	sub	esp,12
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
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
	sub	esp,4
	mov	eax,_axp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,99
	mov	esi,_axp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,99
	mov	esi,_ayp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayp
	mov	[esp],eax
	call	__bbDimArray
_17
	call	_fcls
	mov	[ebp-4],1142947840
	mov	[ebp-8],0
	mov	[ebp-12],1139802112
	mov	[ebp-16],0
	call	_fdrawgrid
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],15
	call	_frand
	mov	[ebp-24],eax
	mov	[ebp-28],0
	jmp	_18
_19
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],1141309440
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1114636288
	mov	[esp+4],1137836032
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fmin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fmax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fmin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fmax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	add	[ebp-28],1
_18
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_19
_4
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,32
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],5
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],32
	mov	[esp],255
	call	_fcolor
	mov	ebx,[ebp-4]
	mov	[ebp-32],ebx
	jmp	_21
_22
	mov	[ebp-36],1132396544
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],32
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
	mov	ebx,[ebp-12]
	mov	[ebp-40],ebx
	jmp	_23
_24
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_25
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1068708659
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],32
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
_25
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpointinpoly
	and	eax,eax
	jz	_26
	sub	esp,8
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fplot
_26
	mov	ebx,[ebp-40]
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
	mov	[ebp-40],ebx
_23
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
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
_6
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
_21
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_22
_5
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-28],0
	jmp	_27
_28
	sub	esp,16
	mov	ebx,[ebp-28]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_axp]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	add	[ebp-28],1
_27
	mov	ebx,[ebp-24]
	sub	ebx,2
	cmp	[ebp-28],ebx
	jle	_28
_7
	sub	esp,16
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	sub	eax,1
	shl	eax,byte 2
	add	eax,[_axp]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-44],eax
	sub	esp,40
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],15
	mov	[esp],5
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],460
	mov	[esp],150
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_17
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
_fpointinpoly
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
	mov	[ebp-40],ebx
	mov	[ebp-12],0
	mov	[ebp-4],0
	jmp	_32
_33
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ayp]
	mov	eax,[eax]
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
	setae	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ayp]
	mov	eax,[eax]
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
	setae	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_axp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-4]
	shl	edi,byte 2
	add	edi,[_ayp]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ayp]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ayp]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
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
	jz	_34
	mov	[ebp-36],953267991
_34
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axp]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	and	ebx,esi
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	push	edi
	fistp	[esp]
	pop	edi
	and	esi,edi
	or	ebx,esi
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_35
	mov	ebx,1
	sub	ebx,[ebp-12]
	mov	[ebp-12],ebx
_35
	add	[ebp-4],1
_32
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_33
_9
	mov	eax,[ebp-12]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmin
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_36
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
	jmp	_37
_36
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
_37
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fmax
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	jz	_38
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
	jmp	_39
_38
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_39
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdrawgrid
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],96
	mov	[esp+8],96
	mov	[esp],96
	call	_fcolor
	mov	[ebp-4],20
	jmp	_40
_41
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[_vsh]
	sub	esi,40
	mov	[esp+12],esi
	mov	[esp+4],40
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	add	[ebp-4],20
_40
	mov	ebx,[_vsw]
	sub	ebx,20
	cmp	[ebp-4],ebx
	jle	_41
_13
	mov	[ebp-8],40
	jmp	_42
_43
	sub	esp,16
	mov	ebx,[_vsw]
	sub	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	[esp],20
	call	_fline
	add	[ebp-8],20
_42
	mov	ebx,[_vsh]
	sub	ebx,40
	cmp	[ebp-8],ebx
	jle	_43
_14
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_15	.db	"Point in Polygon",0
_16	.db	"",0
	.align	4
_vsw	.dd	0
	.align	4
_vsh	.dd	0
	.align	4
_axp	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ayp	.dd	0
	.dd	2
	.dd	1
	.dd	0
_20	.db	"Number of points = ",0
_29	.db	"ET: ",0
_30	.db	" ms",0
_31	.db	"Press a key to continue. Press [ESC] to exit.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

