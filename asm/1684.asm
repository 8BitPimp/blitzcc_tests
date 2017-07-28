
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	call	_l_2setup
_4
	call	_l_2getmkeys
	call	_l_2movecube
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_5
	cmp	[ebp-8],1
	jnz	_6
	mov	[ebp-8],0
	jmp	_7
_6
	mov	[ebp-8],1
_7
_5
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_l_2flushmkeys
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_4
_3
	call	_fend
_l_2setup
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1101004800
	mov	[esp+12],-1046478848
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreateplane
	mov	[ebp-20],eax
	call	_l_2maketexture
	sub	esp,16
	mov	[esp+8],-1082130432
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-28],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1101004800
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1046478848
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fmoveentity
	mov	[ebp-8],1
	ret
_l_2maketexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-36],eax
	sub	esp,12
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],256
	mov	[esp+16],1
	mov	[esp+8],256
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],256
	mov	[esp+16],0
	mov	[esp+8],256
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],1124073472
	mov	[esp+8],1124073472
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	ret
_l_2getmkeys
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-60],eax
	sub	esp,4
	mov	[esp],30
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	mov	[ebp-40],eax
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-60],eax
	sub	esp,4
	mov	[esp],32
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-60],eax
	sub	esp,4
	mov	[esp],17
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	mov	[ebp-48],eax
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-60],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	mov	[ebp-52],eax
	ret
_l_2flushmkeys
	mov	[ebp-40],0
	mov	[ebp-44],0
	mov	[ebp-48],0
	mov	[ebp-52],0
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_12
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
_12
	ret
_l_2movecube
	mov	ebx,[ebp-40]
	and	ebx,ebx
	jz	_13
	mov	[ebp-56],90
_13
	mov	ebx,[ebp-44]
	and	ebx,ebx
	jz	_14
	mov	[ebp-56],-90
_14
	mov	ebx,[ebp-48]
	and	ebx,ebx
	jz	_15
	mov	[ebp-56],0
_15
	mov	ebx,[ebp-52]
	and	ebx,ebx
	jz	_16
	mov	[ebp-56],180
_16
	mov	ebx,[ebp-40]
	mov	esi,[ebp-48]
	and	ebx,esi
	and	ebx,ebx
	jz	_17
	mov	[ebp-56],45
	jmp	_18
_17
	mov	ebx,[ebp-40]
	mov	esi,[ebp-52]
	and	ebx,esi
	and	ebx,ebx
	jz	_19
	mov	[ebp-56],135
_19
_18
	mov	ebx,[ebp-44]
	mov	esi,[ebp-48]
	and	ebx,esi
	and	ebx,ebx
	jz	_20
	mov	[ebp-56],-45
	jmp	_21
_20
	mov	ebx,[ebp-44]
	mov	esi,[ebp-52]
	and	ebx,esi
	and	ebx,ebx
	jz	_22
	mov	[ebp-56],-135
_22
_21
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_23
	sub	esp,28
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
	jmp	_24
_23
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-56]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
_24
	mov	ebx,[ebp-40]
	mov	esi,[ebp-44]
	or	ebx,esi
	mov	esi,[ebp-48]
	or	ebx,esi
	mov	esi,[ebp-52]
	or	ebx,esi
	and	ebx,ebx
	jz	_25
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
_25
	ret
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_8	.db	"AWSD, Right Mouse, Spacebar",0
_9	.db	"Relative: ",0
_10	.db	"Object Movement Relative to Camera",0
_11	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
