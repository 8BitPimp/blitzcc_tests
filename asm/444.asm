
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	mov	[ebp-64],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	mov	[ebp-4],45
	sub	esp,4
	mov	eax,_amb
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,201
	mov	esi,_amb
	add	esi,12
	mov	[esi],ebx
	mov	ebx,201
	mov	esi,_amb
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_amb
	add	esi,20
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_amb
	add	esi,24
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amb
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],290
	mov	[esp],300
	call	_ftext
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],9605887
	sub	esp,4
	mov	[esp],75
	call	_fcreatetimer
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flu
	call	_fmillisecs
	add	eax,10000
	mov	[ebp-16],eax
	call	_fmillisecs
	add	eax,20000
	mov	[ebp-20],eax
	call	_fmillisecs
	add	eax,30000
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],36
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fsetfont
	jmp	_13
_12
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-32],0
	jmp	_14
_15
	mov	[ebp-36],0
	jmp	_16
_17
	mov	ebx,255
	mov	esi,[ebp-32]
	sar	esi,byte 1
	sub	ebx,esi
	shl	ebx,byte 8
	mov	esi,[ebp-32]
	sar	esi,byte 2
	add	esi,16
	or	ebx,esi
	mov	esi,[ebp-36]
	sar	esi,byte 1
	add	esi,155
	shl	esi,byte 16
	or	ebx,esi
	mov	[ebp-8],ebx
	mov	ebx,_amb
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-36]
	mov	esi,_amb
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	ebx,esi
	mov	esi,_amb
	add	esi,20
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amb]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,_amb
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-36]
	mov	esi,_amb
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-44]
	add	ebx,esi
	mov	esi,_amb
	add	esi,20
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amb]
	mov	ebx,[ebx]
	mov	[ebp-48],ebx
	mov	eax,[ebp-40]
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
	setb	al
	movzx	eax,al
	mov	[ebp-68],eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1145552896
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
	mov	eax,[ebp-68]
	and	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1013612544
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1137147904
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
	mov	eax,[ebp-68]
	and	eax,ebx
	and	eax,eax
	jz	_18
	sub	esp,16
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1131413504
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1121714176
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwritepixelfast
_18
	add	[ebp-36],1
_16
	cmp	[ebp-36],200
	jle	_17
_5
	add	[ebp-32],1
_14
	cmp	[ebp-32],200
	jle	_15
_4
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_funlockbuffer
	add	[ebp-56],1
	call	_fmillisecs
	cmp	[ebp-60],eax
	jge	_19
	sub	esp,20
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	call	_fmillisecs
	add	eax,1000
	mov	[ebp-60],eax
	mov	[ebp-56],0
_19
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],35
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	add	[ebp-44],1
	mov	ebx,[ebp-4]
	cmp	[ebp-44],ebx
	jle	_23
	mov	[ebp-44],0
_23
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_12
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_flu
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
	mov	[ebp-4],0
	jmp	_24
_25
_l_6jmp
	call	_fmillisecs
	cmp	[ebp-8],eax
	jge	_26
	call	_fmillisecs
	add	eax,50
	mov	[ebp-8],eax
	call	_fmillisecs
	sar	eax,byte 3
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1067030938
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_27
_28
	mov	[ebp-20],0
	jmp	_29
_30
	sub	esp,4
	mov	eax,[ebp-20]
	sub	eax,100
	mov	ebx,[ebp-20]
	sub	ebx,100
	imul	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	sub	ebx,100
	mov	esi,[ebp-16]
	sub	esi,100
	imul	ebx,esi
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-36]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	jmp	_32
_31
	mov	[ebp-24],0
_32
	sub	esp,4
	mov	eax,[ebp-16]
	sub	eax,100
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp-20]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-16]
	sub	eax,100
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1086115021
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fmulp	st(1)
	mov	ebx,[ebp-16]
	sub	ebx,100
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	mov	esi,[ebp-16]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1107820544
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1109393408
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,_amb
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	mov	esi,_amb
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	mov	esi,_amb
	add	esi,20
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amb]
	mov	esi,[ebp-28]
	mov	[ebx],esi
	mov	ebx,_amb
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	mov	esi,_amb
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	mov	esi,_amb
	add	esi,20
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amb]
	mov	esi,[ebp-32]
	mov	[ebx],esi
	add	[ebp-20],1
_29
	cmp	[ebp-20],200
	jle	_30
_9
	add	[ebp-16],1
_27
	cmp	[ebp-16],200
	jle	_28
_8
	jmp	_33
_26
	jmp	_l_6jmp
_33
	add	[ebp-4],1
_24
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_25
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_amb	.dd	0
	.dd	2
	.dd	4
	.dd	0
	.dd	0
	.dd	0
	.dd	0
_10	.db	"Making look-up's",0
_11	.db	"Arial",0
_20	.db	" ",0
_21	.db	"The Perfect Sign - Copyright 2002, Richard R Betson",0
_22	.db	"FPS: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

