
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
	mov	[ebp-4],30
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],1128792064
	mov	[esp+8],1128792064
	mov	[esp],1128792064
	call	_fambientlight
	sub	esp,20
	mov	[esp+12],-1013579776
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,_aang
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aang
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_aang
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aang
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asens
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_asens
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_asens
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asens
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspeed
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aspeed
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_aspeed
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspeed
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],1
	jmp	_14
_15
	mov	[ebp-16],1
	jmp	_16
_17
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1
	call	_frand
	mov	ebx,_asens
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asens]
	mov	[ebx],eax
	mov	ebx,_asens
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asens]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_18
	mov	ebx,-1
	mov	esi,_asens
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_asens]
	mov	[esi],ebx
_18
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],200
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_aspeed
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aspeed]
	mov	[ebx],eax
	mov	ebx,_aspeed
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aspeed]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aspeed
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aspeed]
	mov	[esi],ebx
	add	[ebp-16],1
_16
	cmp	[ebp-16],3
	jle	_17
_4
	add	[ebp-12],1
_14
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_15
_3
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],1101004800
	mov	[esp+16],0
	mov	[esp+8],1084227584
	mov	[esp+4],1092616192
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
_19
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_20
	call	_fend
_20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-12],1
	jmp	_21
_22
	sub	esp,20
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,_aang
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aang]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	ebx,_aspeed
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aspeed]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_aspeed
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aspeed]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_aspeed
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aspeed]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
	mov	[ebp-16],1
	jmp	_23
_24
	mov	ebx,_asens
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asens]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_aspeed
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aspeed]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_aang
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aang]
	mov	esi,[esi]
	add	esi,ebx
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	[ebx],esi
	jmp	_26
_25
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	ebx,[ebx]
	add	ebx,360
	mov	esi,_aang
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aang]
	mov	[esi],ebx
_26
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	ebx,[ebx]
	cmp	ebx,0
	jl	_25
_8
	jmp	_28
_27
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	ebx,[ebx]
	sub	ebx,360
	mov	esi,_aang
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aang]
	mov	[esi],ebx
_28
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	ebx,[ebx]
	cmp	ebx,359
	jg	_27
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_29
	call	_fend
_29
	add	[ebp-16],1
_23
	cmp	[ebp-16],3
	jle	_24
_7
	add	[ebp-12],1
_21
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_22
_6
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],28
	call	_fkeydown
	and	eax,eax
	jz	_31
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-12],1
	jmp	_32
_33
	mov	[ebp-16],1
	jmp	_34
_35
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],359
	call	_frand
	mov	ebx,_aang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aang]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1
	call	_frand
	mov	ebx,_asens
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asens]
	mov	[ebx],eax
	mov	ebx,_asens
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asens]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_36
	mov	ebx,-1
	mov	esi,_asens
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_asens]
	mov	[esi],ebx
_36
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],200
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_aspeed
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aspeed]
	mov	[ebx],eax
	mov	ebx,_aspeed
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aspeed]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_aspeed
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aspeed]
	mov	[esi],ebx
	add	[ebp-16],1
_34
	cmp	[ebp-16],3
	jle	_35
_11
	add	[ebp-12],1
_32
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_33
_10
	jmp	_38
_37
_38
	sub	esp,4
	mov	[esp],28
	call	_fkeydown
	and	eax,eax
	jnz	_37
_12
_31
	call	_fmillisecs
	mov	[ebp-24],eax
	jmp	_40
_39
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_41
	call	_fend
_41
_40
	call	_fmillisecs
	sub	eax,[ebp-24]
	cmp	eax,50
	jl	_39
_13
	jmp	_19
_5
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aang	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_asens	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aspeed	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
_30	.db	"Push [Return] to randomize the chaos",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

