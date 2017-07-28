
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],15
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	call	_fhidepointer
	sub	esp,8
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],1
	mov	[esp],100
	call	_fcreateimage
	mov	[ebp-8],eax
	mov	[ebp-12],1
	jmp	_23
_22
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],2
	mov	[esp],10
	call	_ftext
	call	_fmousex
	sub	eax,50
	mov	[ebp-16],eax
	call	_fmousey
	sub	eax,50
	mov	[ebp-20],eax
	sub	esp,40
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+28],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],100
	mov	[esp+8],100
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcopyrect
	mov	[ebp-24],1
	jmp	_25
_26
	sub	esp,4
	mov	eax,[ebp-24]
	add	eax,1
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_27
	mov	ebx,[ebp-24]
	mov	[ebp-12],ebx
_27
	add	[ebp-24],1
_25
	cmp	[ebp-24],4
	jle	_26
_4
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
	cmp	[ebp-28],1
	jz	_29
	cmp	[ebp-28],2
	jz	_30
	cmp	[ebp-28],3
	jz	_31
	cmp	[ebp-28],4
	jz	_32
	jmp	_28
_29
	sub	esp,16
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fshadeimage
	mov	ebx,eax
	jmp	_28
_30
	sub	esp,16
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fshadeimage
	mov	ebx,eax
	jmp	_28
_31
	sub	esp,16
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fshadeimage
	mov	ebx,eax
	jmp	_28
_32
	sub	esp,16
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],3
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fshadeimage
	mov	ebx,eax
	jmp	_28
_28
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],0
	mov	[esp+8],100
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
_23
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_22
_3
	call	_fend
	sub	esp,4
	mov	eax,_apix
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,-1
	mov	esi,_apix
	add	esi,12
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_apix
	add	esi,16
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_apix
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apix
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fshadeimage
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_38
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_40
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_42
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_44
	sub	esp,8
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
	jmp	_37
_38
	mov	[ebp-20],0
	jmp	_47
_48
	mov	[ebp-24],0
	jmp	_49
_50
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	esi,255
	sub	esi,ebx
	shl	esi,byte 16
	mov	ebx,[ebp-28]
	mov	edi,65280
	and	ebx,edi
	sar	ebx,byte 8
	mov	edi,255
	sub	edi,ebx
	shl	edi,byte 8
	add	esi,edi
	mov	ebx,255
	sub	ebx,[ebp-28]
	mov	edi,255
	and	ebx,edi
	add	esi,ebx
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_49
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_50
_9
	add	[ebp-20],1
_47
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_48
_8
	jmp	_37
_40
	mov	[ebp-20],0
	jmp	_51
_52
	mov	[ebp-24],0
	jmp	_53
_54
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	esi,[ebp-28]
	mov	edi,65280
	and	esi,edi
	sar	esi,byte 8
	add	ebx,esi
	mov	esi,[ebp-28]
	mov	edi,255
	and	esi,edi
	add	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 16
	mov	esi,[ebp-32]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_53
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_54
_11
	add	[ebp-20],1
_51
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_52
_10
	jmp	_37
_42
	mov	[ebp-20],0
	jmp	_55
_56
	mov	[ebp-24],0
	jmp	_57
_58
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	eax,[ebp-28]
	mov	ebx,16711680
	and	eax,ebx
	sar	eax,byte 16
	mov	ebx,[ebp-28]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	add	eax,ebx
	mov	ebx,[ebp-28]
	mov	esi,255
	and	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1123942400
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	imul	eax,255
	mov	[ebp-32],eax
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 16
	mov	esi,[ebp-32]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_57
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_58
_13
	add	[ebp-20],1
_55
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_56
_12
	jmp	_37
_44
	sub	esp,4
	mov	eax,_apix
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_apix
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_apix
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_apix
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apix
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-20],0
	jmp	_59
_60
	mov	[ebp-24],0
	jmp	_61
_62
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	esi,_apix
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-20]
	mov	edi,_apix
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_apix]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	esi,_apix
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-20]
	mov	edi,_apix
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_apix]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,255
	and	ebx,esi
	mov	esi,_apix
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-20]
	mov	edi,_apix
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_apix]
	mov	[esi],ebx
	add	[ebp-24],1
_61
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_62
_15
	add	[ebp-20],1
_59
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_60
_14
	mov	[ebp-20],0
	jmp	_63
_64
	mov	[ebp-24],0
	jmp	_65
_66
	mov	[ebp-36],0
	mov	[ebp-40],0
	mov	[ebp-44],0
	mov	ebx,[ebp+28]
	neg	ebx
	mov	[ebp-48],ebx
	jmp	_67
_68
	mov	ebx,[ebp+28]
	neg	ebx
	mov	[ebp-52],ebx
	jmp	_69
_70
	mov	ebx,[ebp-20]
	add	ebx,[ebp-48]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-24]
	add	ebx,[ebp-52]
	mov	[ebp-60],ebx
	cmp	[ebp-56],0
	jge	_71
	mov	[ebp-56],0
_71
	mov	ebx,[ebp-4]
	cmp	[ebp-56],ebx
	jle	_72
	mov	ebx,[ebp-4]
	mov	[ebp-56],ebx
_72
	cmp	[ebp-60],0
	jge	_73
	mov	[ebp-60],0
_73
	mov	ebx,[ebp-8]
	cmp	[ebp-60],ebx
	jle	_74
	mov	ebx,[ebp-8]
	mov	[ebp-60],ebx
_74
	mov	ebx,_apix
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	mov	esi,_apix
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_apix]
	mov	ebx,[ebx]
	add	[ebp-36],ebx
	mov	ebx,_apix
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	mov	esi,_apix
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_apix]
	mov	ebx,[ebx]
	add	[ebp-40],ebx
	mov	ebx,_apix
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	mov	esi,_apix
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_apix]
	mov	ebx,[ebx]
	add	[ebp-44],ebx
	add	[ebp-52],1
_69
	mov	ebx,[ebp+28]
	cmp	[ebp-52],ebx
	jle	_70
_19
	add	[ebp-48],1
_67
	mov	ebx,[ebp+28]
	cmp	[ebp-48],ebx
	jle	_68
_18
	sub	esp,8
	mov	eax,[ebp+28]
	shl	eax,byte 1
	add	eax,1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-64],eax
	mov	eax,[ebp-36]
	mov	ecx,[ebp-64]
	cdq
	idiv	ecx
	mov	[ebp-36],eax
	mov	eax,[ebp-40]
	mov	ecx,[ebp-64]
	cdq
	idiv	ecx
	mov	[ebp-40],eax
	mov	eax,[ebp-44]
	mov	ecx,[ebp-64]
	cdq
	idiv	ecx
	mov	[ebp-44],eax
	sub	esp,16
	mov	ebx,[ebp-36]
	shl	ebx,byte 16
	mov	esi,[ebp-40]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_65
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_66
_17
	add	[ebp-20],1
_63
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_64
_16
	jmp	_37
_37
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[ebp-68],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-68]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_20	.db	"Arial",0
_21	.db	"Forest.jpg",0
_24	.db	"Press keys 1-10 and move the mouse to see the effects.",0
_33	.db	"Negative",0
_34	.db	"Greyscale",0
_35	.db	"1Bit",0
_36	.db	"Blur",0
	.align	4
_apix	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
_39	.db	"negative",0
_41	.db	"greyscale",0
_43	.db	"1bit",0
_45	.db	"blur",0
_46	.db	"Image shading effect not found.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

