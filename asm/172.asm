
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,4
	mov	eax,_afire_in
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,200
	mov	esi,_afire_in
	add	esi,12
	mov	[esi],ebx
	mov	ebx,128
	mov	esi,_afire_in
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afire_in
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afire_out
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,200
	mov	esi,_afire_out
	add	esi,12
	mov	[esi],ebx
	mov	ebx,128
	mov	esi,_afire_out
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afire_out
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abott_line
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,200
	mov	esi,_abott_line
	add	esi,12
	mov	[esi],ebx
	mov	ebx,60
	mov	esi,_abott_line
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abott_line
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],60
	mov	[esp],200
	call	_fcreateimage
	mov	[_vfire_anim],eax
	call	_fmake_bottom_line
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],0
	call	_ffire
	sub	esp,4
	mov	[esp],0
	call	_ffire
	sub	esp,4
	mov	[esp],0
	call	_ffire
	sub	esp,4
	mov	[esp],1
	call	_ffire
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	jmp	_20
_19
	add	[ebp-4],1
	cmp	[ebp-4],60
	jl	_21
	mov	[ebp-4],0
_21
	mov	[ebp-8],0
	jmp	_22
_23
	sub	esp,16
	mov	[esp+8],472
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	imul	esi,200
	mov	[esp+4],esi
	mov	eax,[_vfire_anim]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-8],1
_22
	cmp	[ebp-8],3
	jle	_23
_4
	sub	esp,4
	mov	[esp],1
	call	_fflip
_20
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_19
_3
	sub	esp,4
	mov	eax,[_vfire_anim]
	mov	[esp],eax
	call	_ffreeimage
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
_ffire
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
	mov	[ebp-4],0
	jmp	_24
_25
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fput_line
	cmp	[ebp+20],1
	jnz	_26
	sub	esp,12
	mov	eax,[_vfire_anim]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
_26
	mov	[ebp-8],127
	jmp	_27
_28
	mov	[ebp-12],0
	jmp	_29
_30
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-20],ebx
	cmp	[ebp-12],0
	jnz	_31
	mov	[ebp-16],199
_31
	cmp	[ebp-12],199
	jnz	_32
	mov	[ebp-20],0
_32
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_afire_in
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_afire_in]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,_afire_in
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_afire_in]
	mov	ebx,[ebx]
	add	[ebp-24],ebx
	mov	ebx,_afire_in
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_afire_in]
	mov	ebx,[ebx]
	add	[ebp-24],ebx
	mov	ebx,_afire_in
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_afire_in]
	mov	ebx,[ebx]
	add	[ebp-24],ebx
	mov	ebx,[ebp-24]
	sar	ebx,byte 2
	mov	[ebp-24],ebx
	mov	ebx,1150917018
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	add	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-28]
	cmp	[ebp-24],ebx
	jge	_33
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-24],0
	mov	[ebp-28],0
_33
	mov	eax,[ebp-28]
	cmp	[ebp-24],eax
	setge	al
	movzx	eax,al
	mov	[ebp-36],eax
	cmp	[ebp-24],255
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_34
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
_34
	cmp	[ebp-24],256
	setge	al
	movzx	eax,al
	mov	[ebp-36],eax
	cmp	[ebp-24],512
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_35
	sub	esp,12
	mov	ebx,[ebp-24]
	sub	ebx,256
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
_35
	cmp	[ebp-24],512
	setge	al
	movzx	eax,al
	mov	[ebp-36],eax
	cmp	[ebp-24],768
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_36
	sub	esp,12
	mov	[esp+4],255
	mov	esi,[ebp-24]
	sub	esi,512
	mov	[esp+8],esi
	mov	[esp],255
	call	_fcolor
_36
	mov	ebx,[ebp-28]
	sub	[ebp-24],ebx
	mov	[ebp-32],0
	jmp	_37
_38
	mov	ebx,[ebp-8]
	mov	esi,1
	add	esi,[ebp-32]
	sub	ebx,esi
	mov	esi,_afire_out
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_afire_out]
	mov	esi,[ebp-24]
	mov	[ebx],esi
	cmp	[ebp+20],1
	jnz	_39
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fplot
_39
	add	[ebp-32],1
_37
	cmp	[ebp-32],3
	jle	_38
_9
	add	[ebp-12],1
_29
	cmp	[ebp-12],199
	jle	_30
_8
	add	[ebp-8],-3
_27
	cmp	[ebp-8],4
	jge	_28
_7
	call	_fcopy
	add	[ebp-4],1
_24
	cmp	[ebp-4],59
	jle	_25
_6
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
_fput_line
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_40
_41
	mov	ebx,_abott_line
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_abott_line]
	mov	ebx,[ebx]
	mov	esi,_afire_in
	add	esi,12
	mov	esi,[esi]
	imul	esi,127
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_afire_in]
	mov	[esi],ebx
	add	[ebp-4],1
_40
	cmp	[ebp-4],199
	jle	_41
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcopy
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
	jmp	_42
_43
	mov	[ebp-8],0
	jmp	_44
_45
	mov	ebx,_afire_out
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_afire_out]
	mov	ebx,[ebx]
	mov	esi,_afire_in
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_afire_in]
	mov	[esi],ebx
	add	[ebp-8],1
_44
	cmp	[ebp-8],127
	jle	_45
_14
	add	[ebp-4],1
_42
	cmp	[ebp-4],199
	jle	_43
_13
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
_fmake_bottom_line
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
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-4],0
	jmp	_46
_47
	mov	[ebp-8],0
	jmp	_48
_49
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	cmp	[ebp-12],55
	jle	_50
	mov	ebx,768
	mov	esi,_abott_line
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_abott_line]
	mov	[esi],ebx
_50
	add	[ebp-8],1
_48
	cmp	[ebp-8],199
	jle	_49
_17
	add	[ebp-4],1
_46
	cmp	[ebp-4],59
	jle	_47
_16
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_afire_in	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_afire_out	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_abott_line	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vfire_anim	.dd	0
_18	.db	"Please Wait. Generating Flame Frames.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

