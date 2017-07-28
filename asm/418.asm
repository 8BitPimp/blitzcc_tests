
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,136
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
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	mov	[ebp-128],ebx
	mov	[ebp-132],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-136],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jnz	_24
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	jmp	_25
_24
	sub	esp,12
	mov	[esp+4],256
	mov	[esp+8],1
	mov	[esp],256
	call	_fcreateimage
	mov	[ebp-8],eax
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-12],0
	jmp	_26
_27
	sub	esp,12
	mov	ebx,255
	sub	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	[esp+8],255
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,255
	sub	eax,[ebp-12]
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	ebx,255
	sub	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,255
	sub	esi,[ebp-12]
	mov	[esp+8],esi
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],255
	mov	esi,255
	sub	esi,[ebp-12]
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	add	[ebp-12],1
_26
	cmp	[ebp-12],255
	jle	_27
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_25
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[_vimgtxt],eax
	sub	esp,4
	mov	eax,_alefttable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,480
	mov	esi,_alefttable
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_alefttable
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alefttable
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arighttable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,480
	mov	esi,_arighttable
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_arighttable
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arighttable
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apolypoints
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_apolypoints
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_apolypoints
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apolypoints
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vpwidth],16711680
	mov	[_vpheight],16711680
	sub	esp,4
	mov	eax,_azbuffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10000
	mov	esi,_azbuffer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_azbuffer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,_axwww
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_axwww
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axwww
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aywww
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_aywww
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aywww
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_azwww
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_azwww
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_azwww
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_axw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_axw
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axw
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_ayw
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayw
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_azw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_azw
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_azw
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_28
_29
	call	__bbReadInt
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_axwww]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aywww]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_azwww]
	mov	[ebx],eax
	add	[ebp-12],1
_28
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_29
_4
	mov	[ebp-20],0
	mov	[ebp-24],1
	mov	[ebp-28],1
	mov	[ebp-32],1
	mov	[ebp-36],-500
	jmp	_31
_30
	mov	[_vminy],32767
	mov	[_vmaxy],0
	call	_fmillisecs
	mov	[ebp-40],eax
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	sub	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	add	[ebp-56],1
	cmp	[ebp-56],19
	jle	_32
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1101004800
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	[ebp-52],0
	mov	[ebp-56],0
_32
	mov	ebx,[ebp-40]
	mov	[ebp-48],ebx
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],240
	mov	[esp+16],1
	mov	[esp+8],320
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1135866675
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	mov	[ebp-20],0
_33
	mov	ebx,[ebp-20]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],360
	call	__bbMod
	add	eax,[ebp-20]
	mov	[ebp-32],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	mov	[ebp-12],0
	jmp	_34
_35
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_azwww]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_axwww]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aywww]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_azwww]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_axwww]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-68]
	mov	[ebp-80],ebx
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	esi,[ebp-76]
	push	esi
	fld	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-28]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	mov	ebx,[ebp-88]
	mov	[ebp-100],ebx
	mov	eax,[ebp-104]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_36
	mov	ebx,[ebp-100]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-96]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	imul	esi,200
	push	esi
	fild	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-104],esi
_36
	mov	eax,[ebp-108]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_37
	mov	ebx,[ebp-100]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-92]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	imul	esi,200
	push	esi
	fild	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-108],esi
_37
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-108]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1126170624
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_axw]
	mov	[esi],ebx
	mov	ebx,[ebp-64]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-104]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1123024896
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ayw]
	mov	[esi],ebx
	mov	ebx,[ebp-100]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132462080
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_azw]
	mov	[esi],ebx
	add	[ebp-12],1
_34
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_35
_6
	mov	[ebp-12],0
	jmp	_38
_39
	mov	ebx,-1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_azbuffer]
	mov	[esi],ebx
	add	[ebp-12],1
_38
	cmp	[ebp-12],10000
	jle	_39
_7
	mov	[ebp-12],0
	jmp	_40
_41
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	cmp	ebx,0
	jl	_42
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	mov	[ebp-112],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	cmp	[ebp-112],ebx
	jge	_43
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	mov	[ebp-112],ebx
_43
	mov	ebx,[ebp-12]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	cmp	[ebp-112],ebx
	jge	_44
	mov	ebx,[ebp-12]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	mov	[ebp-112],ebx
_44
	mov	ebx,[ebp-12]
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	cmp	[ebp-112],ebx
	jge	_45
	mov	ebx,[ebp-12]
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azw]
	mov	ebx,[ebx]
	mov	[ebp-112],ebx
_45
	jmp	_47
_46
	add	[ebp-112],1
_47
	mov	eax,[ebp-112]
	shl	eax,byte 2
	add	eax,[_azbuffer]
	mov	eax,[eax]
	cmp	eax,-1
	setnz	al
	movzx	eax,al
	mov	[ebp-136],eax
	cmp	[ebp-112],10000
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-136]
	and	eax,ebx
	and	eax,eax
	jnz	_46
_9
	mov	ebx,[ebp-12]
	mov	esi,[ebp-112]
	shl	esi,byte 2
	add	esi,[_azbuffer]
	mov	[esi],ebx
_42
	add	[ebp-12],4
_40
	mov	ebx,[ebp-16]
	sub	ebx,3
	cmp	[ebp-12],ebx
	jle	_41
_8
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-116],10000
	jmp	_48
_49
	mov	ebx,[ebp-116]
	shl	ebx,byte 2
	add	ebx,[_azbuffer]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-12],-1
	setg	al
	movzx	eax,al
	mov	[ebp-136],eax
	mov	ebx,[ebp-16]
	sub	ebx,2
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-136]
	and	eax,ebx
	and	eax,eax
	jz	_50
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fgetpolygonpoints
	call	_ffindsmalllargey
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-120],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-124],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-128],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-132],ebx
	sub	esp,20
	mov	ebx,[ebp-132]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-128]
	mov	[esp+8],esi
	mov	ebx,[ebp-124]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fscanconvert
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-120],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-124],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-128],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-132],ebx
	sub	esp,20
	mov	ebx,[ebp-132]
	mov	[esp+12],ebx
	mov	[esp+16],2
	mov	esi,[ebp-128]
	mov	[esp+8],esi
	mov	ebx,[ebp-124]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fscanconvert
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-120],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-124],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-128],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-132],ebx
	sub	esp,20
	mov	ebx,[ebp-132]
	mov	[esp+12],ebx
	mov	[esp+16],3
	mov	esi,[ebp-128]
	mov	[esp+8],esi
	mov	ebx,[ebp-124]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fscanconvert
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-120],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-124],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-128],ebx
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-132],ebx
	sub	esp,20
	mov	ebx,[ebp-132]
	mov	[esp+12],ebx
	mov	[esp+16],4
	mov	esi,[ebp-128]
	mov	[esp+8],esi
	mov	ebx,[ebp-124]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_fscanconvert
	call	_ftexturemap
_50
	add	[ebp-116],-1
_48
	cmp	[ebp-116],0
	jge	_49
_10
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-136],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],0
	call	_fflip
_31
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_30
_5
	call	_fend
_l_2building
	ret
_2_leave
	mov	[ebp-136],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-136]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetpolygonpoints
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_52
_53
	mov	ebx,[ebp+20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axw]
	mov	ebx,[ebx]
	mov	esi,_apolypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apolypoints]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ayw]
	mov	ebx,[ebx]
	mov	esi,_apolypoints
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apolypoints]
	mov	[esi],ebx
	add	[ebp-4],1
_52
	cmp	[ebp-4],3
	jle	_53
_12
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
_ffindsmalllargey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_54
_55
	mov	ebx,_apolypoints
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apolypoints]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[_vminy]
	cmp	[ebp-8],ebx
	jge	_56
	mov	ebx,[ebp-8]
	mov	[_vminy],ebx
_56
	mov	ebx,[_vmaxy]
	cmp	[ebp-8],ebx
	jle	_57
	mov	ebx,[ebp-8]
	mov	[_vmaxy],ebx
_57
	add	[ebp-4],1
_54
	cmp	[ebp-4],3
	jle	_55
_14
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
_fscanconvert
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	cmp	[ebp+32],ebx
	jge	_58
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	mov	[ebp+20],ebx
	mov	ebx,[ebp-4]
	mov	[ebp+28],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+32]
	mov	[ebp+24],ebx
	mov	ebx,[ebp-4]
	mov	[ebp+32],ebx
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fscanleftside
	jmp	_59
_58
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fscanrightside
_59
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fscanleftside
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	add	[ebp+32],1
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+20]
	shl	ebx,byte 16
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	cmp	[ebp+36],1
	jnz	_60
	mov	ebx,[_vpwidth]
	sub	ebx,1
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	mov	eax,[_vpwidth]
	neg	eax
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	[ebp-20],0
_60
	cmp	[ebp+36],2
	jnz	_61
	mov	ebx,[_vpwidth]
	mov	[ebp-8],ebx
	mov	ebx,[_vpheight]
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	mov	eax,[_vpheight]
	neg	eax
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-20],eax
_61
	cmp	[ebp+36],3
	jnz	_62
	mov	[ebp-8],0
	mov	ebx,[_vpheight]
	mov	[ebp-12],ebx
	mov	eax,[_vpwidth]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	[ebp-20],0
_62
	cmp	[ebp+36],4
	jnz	_63
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	eax,[_vpheight]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-20],eax
_63
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	mov	[ebp-24],ebx
	mov	[ebp-28],0
	jmp	_64
_65
	mov	ebx,[ebp+28]
	add	ebx,[ebp-28]
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jge	_66
	mov	[ebp-32],0
_66
	mov	ebx,[ebp-24]
	sar	ebx,byte 16
	mov	esi,_alefttable
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_alefttable]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_alefttable
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_alefttable]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,_alefttable
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_alefttable]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	[ebp-24],ebx
	mov	ebx,[ebp-16]
	add	[ebp-8],ebx
	mov	ebx,[ebp-20]
	add	[ebp-12],ebx
	add	[ebp-28],1
_64
	mov	ebx,[ebp+32]
	cmp	[ebp-28],ebx
	jle	_65
_17
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fscanrightside
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	add	[ebp+32],1
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+20]
	shl	ebx,byte 16
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	cmp	[ebp+36],1
	jnz	_67
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	eax,[_vpwidth]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	[ebp-20],0
_67
	cmp	[ebp+36],2
	jnz	_68
	mov	ebx,[_vpwidth]
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	eax,[_vpheight]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-20],eax
_68
	cmp	[ebp+36],3
	jnz	_69
	mov	ebx,[_vpwidth]
	mov	[ebp-8],ebx
	mov	ebx,[_vpheight]
	mov	[ebp-12],ebx
	mov	eax,[_vpwidth]
	neg	eax
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	[ebp-20],0
_69
	cmp	[ebp+36],4
	jnz	_70
	mov	[ebp-8],0
	mov	ebx,[_vpheight]
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	mov	eax,[_vpheight]
	neg	eax
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	mov	[ebp-20],eax
_70
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	mov	[ebp-24],ebx
	mov	[ebp-28],0
	jmp	_71
_72
	mov	ebx,[ebp+28]
	add	ebx,[ebp-28]
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jge	_73
	mov	[ebp-32],0
_73
	mov	ebx,[ebp-24]
	sar	ebx,byte 16
	mov	esi,_arighttable
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_arighttable]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_arighttable
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_arighttable]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,_arighttable
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_arighttable]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	add	[ebp-24],ebx
	mov	ebx,[ebp-16]
	add	[ebp-8],ebx
	mov	ebx,[ebp-20]
	add	[ebp-12],ebx
	add	[ebp-28],1
_71
	mov	ebx,[ebp+32]
	cmp	[ebp-28],ebx
	jle	_72
_19
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_ftexturemap
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
	mov	ebx,[_vminy]
	mov	[ebp-4],ebx
	jmp	_74
_75
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-52],eax
	cmp	[ebp-4],239
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_76
	mov	ebx,_alefttable
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_alefttable]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_alefttable
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_alefttable]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,_alefttable
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_alefttable]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,_arighttable
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arighttable]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,_arighttable
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arighttable]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,_arighttable
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arighttable]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-8]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-32]
	mov	esi,1
	or	ebx,esi
	mov	[ebp-32],ebx
	mov	eax,[ebp-24]
	sub	eax,[ebp-12]
	mov	ecx,[ebp-32]
	cdq
	idiv	ecx
	mov	[ebp-36],eax
	mov	eax,[ebp-28]
	sub	eax,[ebp-16]
	mov	ecx,[ebp-32]
	cdq
	idiv	ecx
	mov	[ebp-40],eax
	mov	ebx,[ebp-8]
	mov	[ebp-44],ebx
	jmp	_77
_78
	cmp	[ebp-44],0
	setg	al
	movzx	eax,al
	mov	[ebp-52],eax
	cmp	[ebp-44],319
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_79
	sub	esp,12
	mov	ebx,[ebp-16]
	shr	ebx,byte 16
	mov	[esp+4],ebx
	mov	esi,[_vimgtxt]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	shr	eax,byte 16
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-48],eax
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
_79
	mov	ebx,[ebp-36]
	add	[ebp-12],ebx
	mov	ebx,[ebp-40]
	add	[ebp-16],ebx
	add	[ebp-44],1
_77
	mov	ebx,[ebp-20]
	cmp	[ebp-44],ebx
	jle	_78
_22
_76
	add	[ebp-4],1
_74
	mov	ebx,[_vmaxy]
	cmp	[ebp-4],ebx
	jle	_75
_21
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_23	.db	"texture256.jpg",0
	.align	4
_vimgtxt	.dd	0
	.align	4
_alefttable	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_arighttable	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_apolypoints	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vminy	.dd	0
	.align	4
_vmaxy	.dd	0
	.align	4
_vpwidth	.dd	0
	.align	4
_vpheight	.dd	0
	.align	4
_azbuffer	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_axwww	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aywww	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_azwww	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_axw	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ayw	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_azw	.dd	0
	.dd	1
	.dd	1
	.dd	0
_51	.db	"fps ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	23
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	1
	.dd	-100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	-100
	.dd	0

