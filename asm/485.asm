
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,16
	mov	[esp+8],16
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
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-4],eax
	jmp	_9
_8
	call	_fcls
	sub	esp,4
	mov	[esp],49
	call	_fkeyhit
	and	eax,eax
	jz	_10
	mov	[ebp-8],0
_10
	cmp	[ebp-8],0
	jnz	_11
	mov	[ebp-8],200
	sub	esp,8
	mov	[esp],19
	mov	[esp+4],619
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],19
	mov	[esp+4],619
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],19
	mov	[esp+4],459
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],19
	mov	[esp+4],459
	call	_frand
	mov	[ebp-24],eax
_11
	sub	[ebp-8],1
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fblitzmalen
	jmp	_13
_12
_13
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jnz	_12
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
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
_fblitzmalen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	mov	[ebp-48],16
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	mov	[ebp-24],ebx
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-28],ebx
	sub	esp,12
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-72],eax
	sub	esp,8
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-72]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFMod
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-52],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],0
	jmp	_14
_15
	sub	esp,8
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],359
	mov	[esp+4],1
	call	_frand
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
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
	mov	[ebp-60],ebx
	sub	esp,4
	mov	eax,[ebp-44]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	mov	eax,[ebp-68]
	add	eax,2
	push	eax
	fild	[esp]
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
	jz	_16
	mov	ebx,[ebp+28]
	mov	[ebp-60],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-64],ebx
_16
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fblitzline
	mov	ebx,[ebp-60]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-64]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-32]
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
	mov	[ebp-32],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	ebx,[ebp-36]
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
	mov	[ebp-36],ebx
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	add	[ebp-68],1
_14
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	[ebp-68],eax
	jle	_15
_6
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	sub	esp,20
	mov	[esp+12],9
	mov	[esp+16],1
	mov	[esp+8],9
	mov	ebx,[ebp+24]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	sub	eax,4
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	[esp+12],9
	mov	[esp+16],1
	mov	[esp+8],9
	mov	ebx,[ebp+32]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	sub	eax,4
	mov	[esp],eax
	call	_foval
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fblitzline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],255
	mov	[esp],90
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+28]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+28]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+28]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+28]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

