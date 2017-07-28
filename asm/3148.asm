
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
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
	mov	eax,_ashipactive
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipactive
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipactive
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipaction
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipaction
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipaction
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipdelay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipdelay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipdelay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipenergy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipenergy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipenergy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipw
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipw
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashiph
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashiph
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashiph
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipwt
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipwt
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipwt
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipht
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipht
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipht
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipangle
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipangle
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipangle
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipcurrentangle
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipcurrentangle
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipcurrentangle
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipdestx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipdestx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipdestx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipdesty
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipdesty
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipdesty
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashipdestangle
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ashipdestangle
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipdestangle
	mov	[esp],eax
	call	__bbDimArray
	call	_fsetupships
	jmp	_15
_14
	call	_fcls
	call	_fupdateships
	call	_fupdatelaser
	call	_fdrawships
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[_vlx2]
	mov	[esp+8],ebx
	mov	esi,[_vly2]
	mov	[esp+12],esi
	mov	esi,[_vly1]
	mov	[esp+4],esi
	mov	eax,[_vlx1]
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	[esp],62
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_14
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
_fupdatelaser
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
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[ebp-4],eax
	call	_fgraphicsheight
	sub	eax,16
	mov	[ebp-8],eax
	mov	[ebp-12],1000
	mov	[ebp-16],0
	jmp	_17
_18
	sub	esp,4
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_ashipx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_ashipy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-36]
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jge	_19
	mov	ebx,[ebp-20]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_ashipx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_ashipy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
_19
	add	[ebp-16],1
_17
	cmp	[ebp-16],24
	jle	_18
_5
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashipenergy]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ashipenergy]
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashipenergy]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_20
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],1
	call	_frand
	add	eax,50
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashipenergy]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ashipx]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ashipy]
	mov	[esi],ebx
	call	_fgraphicswidth
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashipdestx]
	mov	[ebx],eax
	call	_fgraphicsheight
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashipdesty]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashipdestangle]
	mov	[ebx],eax
_20
	mov	ebx,[ebp-4]
	mov	[_vlx1],ebx
	mov	ebx,[ebp-8]
	mov	[_vly1],ebx
	mov	ebx,[ebp-28]
	mov	[_vlx2],ebx
	mov	ebx,[ebp-32]
	mov	[_vly2],ebx
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawships
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],0
	jmp	_21
_22
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipactive]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_23
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipw]
	mov	esi,[esi]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipw]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	[esp+16],1
	mov	edi,[ebp-4]
	shl	edi,byte 2
	add	edi,[_ashipw]
	mov	edi,[edi]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipw]
	mov	esi,[esi]
	sar	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdesty]
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
	mov	[esp+16],0
	mov	[esp+8],6
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipdestx]
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
_23
	add	[ebp-4],1
_21
	cmp	[ebp-4],24
	jle	_22
_7
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
_fupdateships
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
	mov	[ebp-4],0
	jmp	_24
_25
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],10
	call	_frand
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	ebx,eax
	and	ebx,ebx
	jz	_26
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipaction]
	mov	[ebx],eax
_26
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipaction]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipactive]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipwt]
	mov	esi,[esi]
	cmp	ebx,esi
	jg	_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipw]
	mov	[esi],ebx
	jmp	_29
_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipw]
	mov	[esi],ebx
_29
	sub	esp,32
	mov	[esp+24],1
	mov	[esp+28],1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipht]
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipwt]
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	[esp+12],1
	mov	[esp+8],1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashiph]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipw]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_30
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_31
	mov	ebx,32
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipwt]
	mov	[esi],ebx
_31
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	ebx,[ebx]
	cmp	ebx,15
	jl	_32
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipwt]
	mov	[esi],ebx
_32
_30
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdelay]
	mov	ebx,[ebx]
	call	_fmillisecs
	cmp	ebx,eax
	jge	_33
	mov	[ebp-8],0
	jmp	_34
_35
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jz	_36
	sub	esp,4
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ashipx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ashipy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-32]
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	cmp	[ebp-12],32
	jge	_37
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipx]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipy]
	mov	[esi],ebx
	call	_fmillisecs
	add	eax,7000
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdelay]
	mov	[ebx],eax
	sub	esp,8
	call	_fgraphicswidth
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestx]
	mov	[ebx],eax
	sub	esp,8
	call	_fgraphicsheight
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdesty]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestangle]
	mov	[ebx],eax
_37
	sub	esp,4
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ashipx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ashipy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	[ebp-36],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-32]
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	cmp	[ebp-16],10
	setl	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-36]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_38
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ashipx]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ashipy]
	mov	[esi],ebx
	call	_fmillisecs
	add	eax,7000
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ashipdelay]
	mov	[ebx],eax
	sub	esp,8
	call	_fgraphicswidth
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ashipdestx]
	mov	[ebx],eax
	sub	esp,8
	call	_fgraphicsheight
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ashipdesty]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestangle]
	mov	[ebx],eax
_38
_36
	add	[ebp-8],1
_34
	cmp	[ebp-8],24
	jle	_35
_10
_33
	sub	esp,32
	mov	[esp+24],6
	mov	[esp+28],6
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdesty]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+12],6
	mov	[esp+8],6
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipy]
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
	add	eax,[_ashipx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_39
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	neg	eax
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-32]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-32]
	sar	ebx,byte 1
	add	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdestx]
	mov	[esi],ebx
	sub	esp,8
	call	_fgraphicsheight
	sar	eax,byte 1
	neg	eax
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	sar	ebx,byte 1
	add	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdesty]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestangle]
	mov	[ebx],eax
_39
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdesty]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipy]
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
	add	eax,[_ashipx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fgetangle
	mov	[ebp-20],eax
	mov	[ebp-24],0
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipcurrentangle]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-28]
	cmp	[ebp-20],ebx
	jge	_40
	mov	[ebp-24],1
	jmp	_41
_40
	mov	[ebp-24],0
_41
	cmp	[ebp-24],1
	jnz	_42
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipcurrentangle]
	mov	ebx,[ebx]
	sub	ebx,4
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipcurrentangle]
	mov	[esi],ebx
_42
	cmp	[ebp-24],0
	jnz	_43
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipcurrentangle]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipcurrentangle]
	mov	[esi],ebx
_43
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipcurrentangle]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipx]
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
	add	esi,[_ashipx]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipcurrentangle]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipy]
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
	add	esi,[_ashipy]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipdestangle]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1045220557
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestx]
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
	add	esi,[_ashipdestx]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ashipdestangle]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1045220557
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdesty]
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
	add	esi,[_ashipdesty]
	mov	[esi],ebx
_27
	add	[ebp-4],1
_24
	cmp	[ebp-4],24
	jle	_25
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetupships
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_44
_45
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipaction]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],1
	call	_frand
	add	eax,50
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipenergy]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipx]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipy]
	mov	[esi],ebx
	mov	ebx,5000
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdelay]
	mov	[esi],ebx
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	neg	eax
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-8]
	sar	ebx,byte 1
	add	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdestx]
	mov	[esi],ebx
	sub	esp,8
	call	_fgraphicsheight
	sar	eax,byte 1
	neg	eax
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	sar	ebx,byte 1
	add	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipdesty]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipcurrentangle]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipdestangle]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],16
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ashipw]
	mov	[ebx],eax
	mov	ebx,16
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ashipwt]
	mov	[esi],ebx
	add	[ebp-4],1
_44
	cmp	[ebp-4],24
	jle	_45
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
	jle	_46
	sub	[ebp-4],360
	jmp	_47
_46
	cmp	[ebp-4],0
	jge	_48
	add	[ebp-4],360
_48
_47
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
	ret	word 16
	.align	4
_ashipactive	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipaction	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipdelay	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipenergy	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipw	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashiph	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipwt	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipht	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ashipy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ashipangle	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipcurrentangle	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ashipdestx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ashipdesty	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ashipdestangle	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vlx1	.dd	0
	.align	4
_vly1	.dd	0
	.align	4
_vlx2	.dd	0
	.align	4
_vly2	.dd	0
_16	.db	"Blitz Basic - Press the mouse on a oval and it will dissapear.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

