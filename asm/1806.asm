
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atex_memory
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atex_memory
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1123942400
	mov	[esp+12],1123942400
	mov	[esp+4],1123942400
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,20
	mov	[esp+12],-1071644672
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fentityfx
	mov	[ebp-16],128
	sub	esp,16
	mov	[esp+8],4
	mov	[esp+12],1
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-24],0
	jmp	_15
_16
	sub	esp,20
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+8],ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,28
	mov	[esp],-25
	mov	ebx,[ebp-16]
	add	ebx,25
	mov	[esp+4],ebx
	call	_frand
	mov	[esp+4],eax
	mov	[esp+12],25
	mov	[esp+16],1
	mov	[esp+8],25
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],-25
	mov	esi,[ebp-16]
	add	esi,25
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_foval
	mov	ebx,eax
	add	[ebp-24],1
_15
	cmp	[ebp-24],25
	jle	_16
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_foptimizealphachannel
	jmp	_18
_17
	sub	esp,20
	mov	[esp+12],1050253722
	mov	[esp+16],0
	mov	[esp+8],1045220557
	mov	[esp+4],1036831949
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_17
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
_fsetmaskchannel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftextureheight
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_atex_memory
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_atex_memory
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-32],0
	jmp	_19
_20
	mov	[ebp-28],0
	jmp	_21
_22
	sub	esp,12
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_23
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_24
_23
_24
	add	[ebp-28],1
_21
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_22
_7
	add	[ebp-32],1
_19
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_20
_6
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_foptimizealphachannel
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftextureheight
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_atex_memory
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_atex_memory
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-32],0
	jmp	_25
_26
	mov	[ebp-28],0
	jmp	_27
_28
	sub	esp,12
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	esi,_atex_memory
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_atex_memory]
	mov	[esi],ebx
	add	[ebp-28],1
_27
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_28
_10
	add	[ebp-32],1
_25
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_26
_9
	mov	[ebp-32],0
	jmp	_29
_30
	mov	[ebp-28],0
	jmp	_31
_32
	mov	ebx,_atex_memory
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atex_memory]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_33
	mov	[ebp-44],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	ebx,[ebp-32]
	sub	ebx,1
	mov	[ebp-40],ebx
	jmp	_34
_35
	mov	ebx,[ebp-28]
	sub	ebx,1
	mov	[ebp-36],ebx
	jmp	_36
_37
	mov	eax,[ebp-36]
	cmp	[ebp-28],eax
	setnz	al
	movzx	eax,al
	mov	[ebp-52],eax
	mov	ebx,[ebp-40]
	cmp	[ebp-32],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp-36],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	mov	esi,[ebp-4]
	cmp	[ebp-36],esi
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-52]
	and	ebx,esi
	mov	[ebp-52],eax
	cmp	[ebp-40],0
	mov	eax,esi
	setge	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-52]
	and	ebx,esi
	mov	[ebp-52],eax
	mov	esi,[ebp-8]
	cmp	[ebp-40],esi
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-52]
	and	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_38
	mov	ebx,_atex_memory
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atex_memory]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_39
	mov	ebx,_atex_memory
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atex_memory]
	mov	ebx,[ebx]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	add	[ebp-16],ebx
	mov	ebx,_atex_memory
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atex_memory]
	mov	ebx,[ebx]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	add	[ebp-20],ebx
	mov	ebx,_atex_memory
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atex_memory]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	add	[ebp-24],ebx
	add	[ebp-44],1
_39
_38
	add	[ebp-36],1
_36
	mov	ebx,[ebp-28]
	add	ebx,1
	cmp	[ebp-36],ebx
	jle	_37
_14
	add	[ebp-40],1
_34
	mov	ebx,[ebp-32]
	add	ebx,1
	cmp	[ebp-40],ebx
	jle	_35
_13
	cmp	[ebp-44],0
	jle	_40
	mov	eax,[ebp-16]
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	eax,[ebp-20]
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-20],eax
	mov	eax,[ebp-24]
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-24],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 16
	mov	esi,[ebp-20]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-24]
	or	ebx,esi
	mov	[ebp-48],ebx
	jmp	_41
_40
	mov	[ebp-48],0
_41
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixelfast
_33
	add	[ebp-28],1
_31
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_32
_12
	add	[ebp-32],1
_29
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_30
_11
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atex_memory
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_atex_memory
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atex_memory
	mov	[esp],eax
	call	__bbDimArray
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_atex_memory	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

