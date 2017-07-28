
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	mov	[_vmouse_x],1134559232
	mov	[_vmouse_y],1128792064
	mov	[ebp-4],1119092736
	mov	[ebp-8],1120403456
	mov	[ebp-12],1116471296
	mov	[ebp-16],1114636288
	mov	[ebp-20],1133576192
	mov	[ebp-24],1128792064
	mov	[ebp-28],1132920832
	mov	[ebp-32],1132593152
	jmp	_7
_6
	call	_fcls
	sub	esp,32
	mov	ebx,[ebp-28]
	mov	[esp+24],ebx
	mov	esi,[ebp-32]
	mov	[esp+28],esi
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flinescross
	and	eax,eax
	jz	_8
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	eax,[_vx]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	jmp	_9
_8
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_9
	sub	esp,16
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_10
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmouse_x],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmouse_y],eax
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[_vmouse_y]
	mov	[esp+4],esi
	mov	eax,[_vmouse_x]
	mov	[esp],eax
	call	_fdis
	mov	ebx,1103626240
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	ebx,[_vmouse_x]
	mov	[ebp-4],ebx
	mov	ebx,[_vmouse_y]
	mov	[ebp-8],ebx
	jmp	_12
_11
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[_vmouse_y]
	mov	[esp+4],esi
	mov	eax,[_vmouse_x]
	mov	[esp],eax
	call	_fdis
	mov	ebx,1103626240
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	ebx,[_vmouse_x]
	mov	[ebp-12],ebx
	mov	ebx,[_vmouse_y]
	mov	[ebp-16],ebx
	jmp	_14
_13
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[_vmouse_y]
	mov	[esp+4],esi
	mov	eax,[_vmouse_x]
	mov	[esp],eax
	call	_fdis
	mov	ebx,1103626240
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	ebx,[_vmouse_x]
	mov	[ebp-20],ebx
	mov	ebx,[_vmouse_y]
	mov	[ebp-24],ebx
	jmp	_16
_15
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[_vmouse_y]
	mov	[esp+4],esi
	mov	eax,[_vmouse_x]
	mov	[esp],eax
	call	_fdis
	mov	ebx,1103626240
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	mov	ebx,[_vmouse_x]
	mov	[ebp-28],ebx
	mov	ebx,[_vmouse_y]
	mov	[ebp-32],ebx
_17
_16
_14
_12
_10
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_6
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
_flinescross
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
	mov	[ebp-80],ebx
	mov	eax,[ebp+20]
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
	jz	_19
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-16],ebx
	jmp	_20
_19
	mov	ebx,[ebp+28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
_20
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	ebx,[ebp+36]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+44]
	mov	[ebp-24],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-28],ebx
	mov	ebx,[ebp+48]
	mov	[ebp-32],ebx
	jmp	_22
_21
	mov	ebx,[ebp+44]
	mov	[ebp-20],ebx
	mov	ebx,[ebp+36]
	mov	[ebp-24],ebx
	mov	ebx,[ebp+48]
	mov	[ebp-28],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-32],ebx
_22
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
	mov	[ebp-36],ebx
	mov	ebx,[ebp+48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+44]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+36]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-44],esi
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-48],esi
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_24
	mov	eax,1
	jmp	_4_leave
	jmp	_25
_24
	mov	eax,0
	jmp	_4_leave
_25
_23
	mov	eax,[ebp+20]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_26
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy],ebx
	mov	ebx,[ebp+20]
	mov	[_vx],ebx
	jmp	_27
_26
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_28
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy],ebx
	mov	ebx,[ebp+36]
	mov	[_vx],ebx
	jmp	_29
_28
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_30
	mov	ebx,[ebp+24]
	mov	[_vy],ebx
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx],ebx
	jmp	_31
_30
	mov	eax,[ebp+40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+48]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_32
	mov	ebx,[ebp+40]
	mov	[_vy],ebx
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx],ebx
	jmp	_33
_32
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-40]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx],ebx
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy],ebx
_33
_31
_29
_27
	mov	eax,[ebp+20]
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
	mov	ebx,[ebp+20]
	mov	[ebp-52],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-56],ebx
	jmp	_35
_34
	mov	ebx,[ebp+28]
	mov	[ebp-52],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-56],ebx
_35
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
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
	mov	ebx,[ebp+24]
	mov	[ebp-60],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-64],ebx
	jmp	_37
_36
	mov	ebx,[ebp+32]
	mov	[ebp-60],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-64],ebx
_37
	mov	eax,[ebp+36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_38
	mov	ebx,[ebp+36]
	mov	[ebp-68],ebx
	mov	ebx,[ebp+44]
	mov	[ebp-72],ebx
	jmp	_39
_38
	mov	ebx,[ebp+44]
	mov	[ebp-68],ebx
	mov	ebx,[ebp+36]
	mov	[ebp-72],ebx
_39
	mov	eax,[ebp+40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+48]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_40
	mov	ebx,[ebp+40]
	mov	[ebp-76],ebx
	mov	ebx,[ebp+48]
	mov	[ebp-80],ebx
	jmp	_41
_40
	mov	ebx,[ebp+48]
	mov	[ebp-76],ebx
	mov	ebx,[ebp+40]
	mov	[ebp-80],ebx
_41
	mov	eax,[ebp-52]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_42
	mov	eax,[ebp-56]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_43
	mov	eax,[ebp-60]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_44
	mov	eax,[ebp-64]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_45
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_46
	mov	eax,[ebp-72]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_47
	mov	eax,[ebp-76]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_48
	mov	eax,[ebp-80]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_49
	mov	eax,1
	jmp	_4_leave
_49
_48
_47
_46
_45
_44
_43
_42
	mov	eax,0
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fdis
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	jmp	_5_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_vmouse_x	.dd	0
	.align	4
_vmouse_y	.dd	0
	.align	4
_vx	.dd	0
	.align	4
_vy	.dd	0
_18	.db	"Click and hold the mouse to drag the lines",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

