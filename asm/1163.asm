
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	mov	[ebp-12],-64
	jmp	_11
_12
	mov	[ebp-16],-64
	jmp	_13
_14
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	add	[ebp-16],1
_13
	cmp	[ebp-16],63
	jle	_14
_4
	add	[ebp-12],1
_11
	cmp	[ebp-12],63
	jle	_12
_3
	mov	[ebp-12],0
	jmp	_15
_16
	mov	[ebp-16],0
	jmp	_17
_18
	cmp	[ebp-16],0
	jz	_19
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 7
	add	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[ebp-32],ebx
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
_19
	cmp	[ebp-16],127
	jz	_20
	mov	ebx,[ebp-12]
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,[ebp-12]
	add	esi,1
	shl	esi,byte 7
	add	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[ebp-32],ebx
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
_20
	add	[ebp-16],1
_17
	cmp	[ebp-16],127
	jle	_18
_6
	add	[ebp-12],1
_15
	cmp	[ebp-12],126
	jle	_16
_5
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],1123942400
	mov	[esp+12],1132396544
	mov	[esp+4],1123942400
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-36],eax
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-40],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_frotateentity
	mov	[ebp-44],0
	mov	[ebp-48],0
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[ebp-52],eax
	jmp	_22
_21
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fwaittimer
	mov	[ebp-16],0
	jmp	_23
_24
	mov	[ebp-12],0
	jmp	_25
_26
	mov	ebx,[ebp-48]
	mov	[ebp-56],ebx
	cmp	[ebp-56],0
	jz	_28
	cmp	[ebp-56],1
	jz	_29
	cmp	[ebp-56],2
	jz	_30
	cmp	[ebp-56],3
	jz	_31
	cmp	[ebp-56],4
	jz	_32
	jmp	_27
_28
	sub	esp,32
	mov	eax,[ebp-16]
	imul	eax,[ebp-12]
	add	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],180
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],180
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-60]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	ebx,[ebp-12]
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexnormal
	jmp	_27
_29
	sub	esp,32
	mov	eax,[ebp-16]
	imul	eax,[ebp-12]
	add	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],180
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],180
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-60]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	ebx,[ebp-12]
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexnormal
	jmp	_27
_30
	sub	esp,32
	mov	eax,[ebp-16]
	imul	eax,[ebp-12]
	add	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],180
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],180
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-60]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	esi,[ebp-12]
	shl	esi,byte 7
	add	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexnormal
	jmp	_27
_31
	sub	esp,32
	mov	eax,[ebp-16]
	imul	eax,[ebp-12]
	add	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],180
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],180
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-60]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	esi,[ebp-12]
	shl	esi,byte 7
	add	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexnormal
	jmp	_27
_32
	sub	esp,32
	mov	eax,[ebp-16]
	imul	eax,[ebp-12]
	add	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],180
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-44]
	mov	[esp],ebx
	mov	[esp+4],180
	mov	eax,ebx
	call	__bbMod
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-60]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[esp+12],0
	mov	ebx,[ebp-12]
	shl	ebx,byte 7
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexnormal
	jmp	_27
_27
	add	[ebp-12],1
_25
	cmp	[ebp-12],127
	jle	_26
_9
	add	[ebp-16],1
_23
	cmp	[ebp-16],127
	jle	_24
_8
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_33
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fmoveentity
_33
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_34
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1110651699
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fmoveentity
_34
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_35
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1061997773
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fturnentity
_35
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_36
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1085485875
	mov	[esp+4],0
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fturnentity
_36
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_37
	mov	[ebp-48],0
_37
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_38
	mov	[ebp-48],1
_38
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	and	eax,eax
	jz	_39
	mov	[ebp-48],2
_39
	sub	esp,4
	mov	[esp],5
	call	_fkeyhit
	and	eax,eax
	jz	_40
	mov	[ebp-48],3
_40
	sub	esp,4
	mov	[esp],6
	call	_fkeyhit
	and	eax,eax
	jz	_41
	mov	[ebp-48],4
_41
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-44],1
	cmp	[ebp-44],360
	jnz	_42
	mov	[ebp-44],0
_42
_22
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_21
_7
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

