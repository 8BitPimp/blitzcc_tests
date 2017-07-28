
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[ebp-4],640
	mov	[ebp-8],480
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics3d
	mov	[ebp-12],1092616192
	mov	[ebp-16],1105199104
	mov	[ebp-20],1076538027
	mov	[ebp-24],1008981770
	mov	[ebp-28],1065353216
	mov	[ebp-32],1065353216
	mov	[ebp-36],1065353216
	mov	[ebp-40],1
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-44],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1148846080
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,20
	mov	[esp+12],-1035468800
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],48
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	and	ebx,ebx
	jz	_7
	sub	esp,12
	mov	[esp+4],1075838976
	mov	[esp+8],1075838976
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fscalesprite
	mov	[ebp-52],1056964608
	jmp	_8
_7
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[ebp-48],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fentitycolor
	mov	[ebp-52],1048576000
_8
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fload3dsound
	mov	[ebp-56],eax
	mov	ebx,[ebp-56]
	and	ebx,ebx
	jz	_10
	sub	esp,4
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_floopsound
	sub	esp,16
	mov	[esp+8],1036831949
	mov	[esp+12],1065353216
	mov	[esp+4],1065353216
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fcreatelistener
	sub	esp,8
	mov	eax,[ebp-56]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_femitsound
	mov	[ebp-60],eax
_10
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],15
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-64],eax
_12
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-92],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-92]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,20
	call	_fmousexspeed
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-92],eax
	mov	eax,ebx
	call	_fmouseyspeed
	mov	ebx,eax
	mov	eax,[ebp-92]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-92]
	or	eax,ebx
	and	eax,eax
	jz	_13
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_14
_13
	sub	esp,4
	mov	[esp],44
	call	_fkeydown
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-92]
	or	eax,ebx
	and	eax,eax
	jz	_15
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1090519040
	mov	[esp+4],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fmoveentity
_15
_14
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_16
	mov	ebx,1
	sub	ebx,[ebp-68]
	mov	[ebp-68],ebx
	mov	ebx,[ebp-56]
	and	ebx,ebx
	jz	_17
	sub	esp,8
	mov	eax,[ebp-60]
	mov	[esp],eax
	mov	ebx,1
	sub	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fchannelvolume
_17
_16
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_18
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fturnentity
	jmp	_19
_18
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1073741824
	mov	[esp+4],0
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fturnentity
_20
_19
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_21
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1073741824
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fturnentity
	jmp	_22
_21
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_23
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1073741824
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fturnentity
_23
_22
	cmp	[ebp-68],0
	jnz	_24
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-72],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-72]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-32],esi
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-36],esi
	add	[ebp-84],1
	sub	esp,8
	mov	eax,[ebp-84]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	__bbMod
	cmp	eax,0
	jnz	_25
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	[ebp-88],eax
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_fscalesprite
_25
_24
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	mov	ebx,[ebp-68]
	and	ebx,ebx
	jz	_26
	sub	esp,56
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-84]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],20
	call	_ftext
_26
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_12
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
_4	.db	"Lorenz Attractor in 3D",0
_5	.db	"",0
_6	.db	"point.bmp",0
_9	.db	"wind.wav",0
_11	.db	"arial",0
_27	.db	"Iterations, drawn every ",0
_28	.db	" frame(s): ",0
_29	.db	"  -- use SPACE to pause/continue",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
