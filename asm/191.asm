
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
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[_vtimer],eax
	sub	esp,4
	mov	eax,_atrail
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_atrail
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atrail
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_az
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_az
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_az
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ar
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ag
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ag
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ag
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ab
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],1117782016
	mov	[esp+8],1117782016
	mov	[esp],1117782016
	call	_fambientlight
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],640
	mov	[esp+16],480
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,20
	mov	[esp+12],-1038090240
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fantialias
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[_vlight],eax
	sub	esp,8
	mov	eax,[_vlight]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fspriteviewmode
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-998637568
	mov	[esp+4],0
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[_vlight]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	sub	esp,8
	mov	eax,[_vlight]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fentityalpha
	mov	[ebp-8],1065353216
	jmp	_10
_11
	sub	esp,8
	mov	eax,[_vlight]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_atrail]
	mov	[ebx],eax
	mov	ebx,-998637568
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
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
	mov	[ebp-8],ebx
_10
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_11
_3
_12
	call	_flight
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	eax,[_vtimer]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_12
_4
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
_flight
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	ebx,[_vdx]
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
	mov	[_vdx],ebx
	mov	eax,[_vdx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	ebx,[_vdx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdx],ebx
_13
	mov	ebx,[_vdy]
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
	mov	[_vdy],ebx
	mov	eax,[_vdy]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_14
	mov	ebx,[_vdy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdy],ebx
_14
	mov	ebx,[_vdz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdz],ebx
	mov	eax,[_vdz]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	ebx,[_vdz]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdz],ebx
_15
	sub	esp,4
	mov	eax,[_vdx]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[_vdy]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[_vdz]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	add	[_vr1],1
	cmp	[_vr1],360
	jle	_16
	sub	[_vr1],360
_16
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vr1]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	esi,1125515264
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	add	[_vg1],2
	cmp	[_vg1],360
	jle	_17
	sub	[_vg1],360
_17
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vg1]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,1125515264
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	add	[_vb1],3
	cmp	[_vb1],360
	jle	_18
	sub	[_vb1],360
_18
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[_vb1]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	esi,1125515264
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],1065353216
	jmp	_19
_20
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_az]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ag]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_az]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 2
	add	eax,[_atrail]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	shl	ebx,byte 2
	add	ebx,[_ag]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ab]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	shl	esi,byte 2
	add	esi,[_ar]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 2
	add	eax,[_atrail]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 2
	add	eax,[_atrail]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityalpha
	mov	ebx,[ebp-28]
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
	mov	[ebp-28],ebx
_19
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120272384
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_20
_6
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,100
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,100
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,100
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,100
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,100
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,100
	shl	esi,byte 2
	add	esi,[_az]
	mov	[esi],ebx
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_7	.db	"Light-trail",0
_8	.db	"",0
	.align	4
_vtimer	.dd	0
	.align	4
_vdx	.dd	0
	.align	4
_vdy	.dd	0
	.align	4
_vdz	.dd	0
	.align	4
_vr1	.dd	0
	.align	4
_vg1	.dd	0
	.align	4
_vb1	.dd	0
	.align	4
_atrail	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ax	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_az	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ar	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ag	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ab	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vlight	.dd	0
_9	.db	"light1.png",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

