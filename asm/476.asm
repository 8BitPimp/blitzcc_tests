
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
_l_2top
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_l_2cam
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],1101004800
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclscolor
_l_2texture
	sub	esp,12
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[_vreflectimage],eax
	sub	esp,8
	mov	eax,[_vreflectimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[_vreflectimageb],eax
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],1
	sub	esp,4
	mov	eax,[_vreflectimage]
	mov	[esp],eax
	call	_ftextureheight
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_vreflectimage]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftexturewidth
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreatetexture
	mov	ebx,eax
	mov	[_voutput],ebx
	sub	esp,8
	mov	eax,[_voutput]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[_voutputb],eax
_l_2entitys
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vcube],eax
	sub	esp,16
	mov	[esp+8],1077936128
	mov	[esp+12],1077936128
	mov	[esp+4],1077936128
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_voutput]
	mov	[esp+4],esi
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fentitytexture
_l_2light
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight1],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight2],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight3],eax
	sub	esp,8
	mov	eax,[_vlight1]
	mov	[esp],eax
	mov	[esp+4],1112014848
	call	_flightrange
	sub	esp,8
	mov	eax,[_vlight2]
	mov	[esp],eax
	mov	[esp+4],1112014848
	call	_flightrange
	sub	esp,8
	mov	eax,[_vlight3]
	mov	[esp],eax
	mov	[esp+4],1112014848
	call	_flightrange
	sub	esp,16
	mov	[esp+8],1115684864
	mov	[esp+12],1115684864
	mov	[esp+4],1115684864
	mov	eax,[_vlight1]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[_vlight2]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,16
	mov	[esp+8],1115684864
	mov	[esp+12],1115684864
	mov	[esp+4],1115684864
	mov	eax,[_vlight3]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],-1054867456
	mov	eax,[_vlight1]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vlight2]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],-1054867456
	mov	[esp+4],1092616192
	mov	eax,[_vlight3]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fambientlight
_l_2watersettings
	sub	esp,4
	mov	eax,[_vreflectimage]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[_vwatersize],eax
	mov	[_vraincount],0
	mov	[_vdripradius],12
	mov	ebx,[_vdripradius]
	imul	ebx,[_vdripradius]
	mov	[_vdripradiussqr],ebx
	mov	[_vdampingfactor],1025758986
_l_2waterbuffers
	mov	ebx,[_vwatersize]
	imul	ebx,[_vwatersize]
	mov	[_vbuffersize],ebx
	sub	esp,4
	mov	eax,_areadbuffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vbuffersize]
	mov	esi,_areadbuffer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_areadbuffer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_awritebuffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vbuffersize]
	mov	esi,_awritebuffer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awritebuffer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atempbuffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vbuffersize]
	mov	esi,_atempbuffer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atempbuffer
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_26
_27
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atempbuffer]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awritebuffer]
	mov	[esi],ebx
	add	[ebp-4],1
_26
	mov	ebx,[_vbuffersize]
	cmp	[ebp-4],ebx
	jle	_27
_3
_l_2mainloop
	jmp	_29
_28
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	call	_fswapbuffers
	call	_fshow
	call	_fcheckmouse
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1077936128
	mov	[esp+4],1065353216
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	call	_frain
	call	_fprocesswater
	jmp	_31
_30
_31
	sub	esp,4
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_30
_5
	sub	esp,4
	mov	[esp],1
	call	_fflip
_29
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_28
_4
	call	_fend
_l_2buffers
_l_2rendertexture
_l_2helpers
_l_2mouseinput
_l_2raininparadise
_l_2waterdrip
_l_2waterinaction
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetbufferr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+28]
	mov	esi,[ebp+24]
	imul	esi,[_vwatersize]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	[esi],ebx
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fsetbufferw
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_32
	mov	[ebp+28],1107296256
_32
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1040187392
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
	mov	[ebp+28],-1040187392
_33
	mov	ebx,[ebp+28]
	mov	esi,[ebp+24]
	imul	esi,[_vwatersize]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awritebuffer]
	mov	[esi],ebx
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fgetbufferr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	imul	ebx,[_vwatersize]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_areadbuffer]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetbufferw
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	imul	ebx,[_vwatersize]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awritebuffer]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fswapbuffers
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_34
_35
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_areadbuffer]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atempbuffer]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awritebuffer]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atempbuffer]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awritebuffer]
	mov	[esi],ebx
	add	[ebp-4],1
_34
	mov	ebx,[_vbuffersize]
	cmp	[ebp-4],ebx
	jle	_35
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fshow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	ebx,[_vwatersize]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[ebp-20],eax
	call	_fgraphicsheight
	sar	eax,byte 1
	mov	ebx,[_vwatersize]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[_vreflectimageb]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[_voutputb]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-56],0
	mov	[ebp-8],0
	jmp	_37
_36
	mov	[ebp-4],0
	jmp	_39
_38
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	cmp	[ebp-4],0
	setg	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[_vwatersize]
	sub	ebx,1
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_40
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
_40
	mov	ebx,[ebp-8]
	mov	[ebp-16],ebx
	cmp	[ebp-8],0
	setg	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[_vwatersize]
	sub	ebx,1
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_41
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	sub	esi,[_vwatersize]
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-56]
	add	esi,[_vwatersize]
	shl	esi,byte 2
	add	esi,[_areadbuffer]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
_41
	cmp	[ebp-12],0
	jge	_42
	mov	[ebp-12],0
_42
	cmp	[ebp-16],0
	jge	_43
	mov	[ebp-16],0
_43
	mov	ebx,[_vwatersize]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_44
	mov	ebx,[_vwatersize]
	sub	ebx,1
	mov	[ebp-12],ebx
_44
	mov	ebx,[_vwatersize]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_45
	mov	ebx,[_vwatersize]
	sub	ebx,1
	mov	[ebp-16],ebx
_45
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[_vreflectimageb]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_areadbuffer]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-52]
	add	[ebp-36],ebx
	mov	ebx,[ebp-52]
	add	[ebp-40],ebx
	mov	ebx,[ebp-52]
	add	[ebp-44],ebx
	cmp	[ebp-36],0
	jge	_46
	mov	[ebp-36],0
_46
	cmp	[ebp-40],0
	jge	_47
	mov	[ebp-40],0
_47
	cmp	[ebp-44],0
	jge	_48
	mov	[ebp-44],0
_48
	cmp	[ebp-36],255
	jle	_49
	mov	[ebp-36],255
_49
	cmp	[ebp-40],255
	jle	_50
	mov	[ebp-40],255
_50
	cmp	[ebp-44],255
	jle	_51
	mov	[ebp-44],255
_51
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fargb
	mov	[ebp-32],eax
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[_voutputb]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-56],1
	add	[ebp-4],1
_39
	mov	ebx,[_vwatersize]
	cmp	[ebp-4],ebx
	jl	_38
_14
	add	[ebp-8],1
_37
	mov	ebx,[_vwatersize]
	cmp	[ebp-8],ebx
	jl	_36
_13
	sub	esp,4
	mov	eax,[_voutputb]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[_vreflectimageb]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fargb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shl	eax,byte 16
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+28]
	or	eax,ebx
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fsquareddist
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	imul	eax,ebx
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	esi,[ebp+32]
	sub	esi,[ebp+24]
	imul	ebx,esi
	add	eax,ebx
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fcheckmouse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	cmp	[ebp-4],0
	jge	_52
	mov	[ebp-4],0
_52
	cmp	[ebp-8],0
	jge	_53
	mov	[ebp-8],0
_53
	mov	ebx,[_vwatersize]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_54
	mov	ebx,[_vwatersize]
	sub	ebx,1
	mov	[ebp-4],ebx
_54
	mov	ebx,[_vwatersize]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_55
	mov	ebx,[_vwatersize]
	sub	ebx,1
	mov	[ebp-8],ebx
_55
	sub	esp,28
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fargb
	mov	[esp+8],eax
	mov	ebx,[_voutputb]
	mov	[esp+12],ebx
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixel
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_56
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakedrip
_56
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frain
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
	add	[_vraincount],1
	cmp	[_vraincount],10
	jle	_57
	mov	[_vraincount],0
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vwatersize]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vwatersize]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmakedrip
_57
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakedrip
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+24]
	sub	ebx,[_vdripradius]
	mov	[ebp-8],ebx
	jmp	_59
_58
	mov	ebx,[ebp+20]
	sub	ebx,[_vdripradius]
	mov	[ebp-4],ebx
	jmp	_61
_60
	cmp	[ebp-4],0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vwatersize]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vwatersize]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_62
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsquareddist
	mov	[ebp-12],eax
	mov	ebx,[_vdripradiussqr]
	cmp	[ebp-12],ebx
	jge	_63
	mov	ebx,[ebp+28]
	imul	ebx,[_vdripradius]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	fsubp	st(1)
	mov	esi,[_vdripradius]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1123942400
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_64
	mov	[ebp-16],1123942400
_64
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1023541248
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_65
	mov	[ebp-16],-1023541248
_65
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbufferw
_63
_62
	add	[ebp-4],1
_61
	mov	ebx,[ebp+20]
	add	ebx,[_vdripradius]
	cmp	[ebp-4],ebx
	jl	_60
_21
	add	[ebp-8],1
_59
	mov	ebx,[ebp+24]
	add	ebx,[_vdripradius]
	cmp	[ebp-8],ebx
	jl	_58
_20
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fprocesswater
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
	mov	[ebp-8],2
	jmp	_67
_66
	mov	[ebp-4],2
	jmp	_69
_68
	mov	[ebp-12],0
	sub	esp,8
	mov	eax,[ebp-4]
	sub	eax,2
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,2
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,2
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fgetbufferr
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1086324736
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetbufferw
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vdampingfactor]
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
	mov	[ebp-12],esi
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbufferw
	add	[ebp-4],1
_69
	mov	ebx,[_vwatersize]
	sub	ebx,2
	cmp	[ebp-4],ebx
	jl	_68
_24
	add	[ebp-8],1
_67
	mov	ebx,[_vwatersize]
	sub	ebx,2
	cmp	[ebp-8],ebx
	jl	_66
_23
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vcamera	.dd	0
	.align	4
_vreflectimage	.dd	0
_25	.db	"Texture.bmp",0
	.align	4
_vreflectimageb	.dd	0
	.align	4
_voutput	.dd	0
	.align	4
_voutputb	.dd	0
	.align	4
_vcube	.dd	0
	.align	4
_vlight1	.dd	0
	.align	4
_vlight2	.dd	0
	.align	4
_vlight3	.dd	0
	.align	4
_vwatersize	.dd	0
	.align	4
_vraincount	.dd	0
	.align	4
_vdripradius	.dd	0
	.align	4
_vdripradiussqr	.dd	0
	.align	4
_vdampingfactor	.dd	0
	.align	4
_vbuffersize	.dd	0
	.align	4
_areadbuffer	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_awritebuffer	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atempbuffer	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

