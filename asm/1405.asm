
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	[_vw],800
	mov	[_vh],600
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vh]
	mov	[esp+4],esi
	mov	eax,[_vw]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_atg
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vw]
	mov	esi,_atg
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vh]
	mov	esi,_atg
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atg
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ang
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vw]
	mov	esi,_ang
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vh]
	mov	esi,_ang
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ang
	mov	[esp],eax
	call	__bbDimArray
	sub	[_vh],1
	sub	[_vw],1
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_fplot
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_freadpixel
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],64
	mov	[esp],0
	call	_fclscolor
_13
	mov	[ebp-8],1
	jmp	_14
_15
	mov	[ebp-12],1
	jmp	_16
_17
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	cmp	[ebp-16],1
	jnz	_18
	mov	ebx,1
	mov	esi,_atg
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atg]
	mov	[esi],ebx
_18
	add	[ebp-12],1
_16
	mov	ebx,[_vw]
	cmp	[ebp-12],ebx
	jle	_17
_5
	add	[ebp-8],1
_14
	mov	ebx,[_vh]
	cmp	[ebp-8],ebx
	jle	_15
_4
_19
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120272384
	call	_frnd
	mov	ebx,1119092736
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
	sub	esp,8
	mov	[esp],1092616192
	mov	ebx,[_vw]
	sub	ebx,20
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
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1092616192
	mov	ebx,[_vh]
	sub	ebx,20
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
	mov	[ebp-24],eax
	mov	[ebp-28],0
	jmp	_21
_22
	sub	esp,8
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-20]
	add	ebx,5
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
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-24]
	add	ebx,5
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
	mov	[ebp-36],eax
	mov	ebx,1
	mov	esi,_atg
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-36]
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_atg]
	mov	[esi],ebx
	add	[ebp-28],1
_21
	cmp	[ebp-28],9
	jle	_22
_7
_20
	call	_l_2paintscreen
	call	_fgetkey
	mov	[ebp-40],eax
	cmp	[ebp-40],32
	jnz	_23
	call	_fwaitkey
_23
	cmp	[ebp-40],27
	jnz	_24
	call	_fend
_24
	jmp	_19
_6
	jmp	_13
_3
	call	_fend
_l_2paintscreen
	mov	[ebp-8],1
	jmp	_25
_26
	mov	[ebp-12],1
	jmp	_27
_28
	mov	[ebp-44],0
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_atg
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_atg]
	mov	esi,[esi]
	add	esi,[ebp-44]
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	edi,_atg
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atg]
	mov	ebx,[ebx]
	add	esi,ebx
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	edi,_atg
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	mov	edi,[ebp-12]
	add	edi,1
	add	edi,ebx
	shl	edi,byte 2
	add	edi,[_atg]
	mov	edi,[edi]
	add	esi,edi
	mov	[ebp-44],esi
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_atg
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atg]
	mov	ebx,[ebx]
	add	ebx,[ebp-44]
	mov	esi,[ebp-12]
	add	esi,1
	mov	edi,_atg
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-8]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atg]
	mov	esi,[esi]
	add	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_atg
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_atg]
	mov	esi,[esi]
	add	esi,[ebp-44]
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	edi,_atg
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atg]
	mov	ebx,[ebx]
	add	esi,ebx
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	edi,_atg
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	mov	edi,[ebp-12]
	add	edi,1
	add	edi,ebx
	shl	edi,byte 2
	add	edi,[_atg]
	mov	edi,[edi]
	add	esi,edi
	mov	[ebp-44],esi
	mov	ebx,[ebp-44]
	mov	[ebp-48],ebx
	cmp	[ebp-48],2
	jz	_30
	cmp	[ebp-48],3
	jz	_31
	mov	ebx,0
	mov	esi,_ang
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ang]
	mov	[esi],ebx
	jmp	_29
_30
	mov	ebx,_atg
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atg]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_32
	mov	ebx,1
	mov	esi,_ang
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ang]
	mov	[esi],ebx
_32
	jmp	_29
_31
	mov	ebx,1
	mov	esi,_ang
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ang]
	mov	[esi],ebx
	jmp	_29
_29
	add	[ebp-12],1
_27
	mov	ebx,[_vw]
	cmp	[ebp-12],ebx
	jle	_28
_9
	add	[ebp-8],1
_25
	mov	ebx,[_vh]
	cmp	[ebp-8],ebx
	jle	_26
_8
	call	_fcls
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-8],1
	jmp	_33
_34
	mov	[ebp-12],1
	jmp	_35
_36
	mov	ebx,_atg
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atg]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_37
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
_37
	mov	ebx,_ang
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ang]
	mov	ebx,[ebx]
	mov	esi,_atg
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atg]
	mov	[esi],ebx
	add	[ebp-12],1
_35
	mov	ebx,[_vw]
	cmp	[ebp-12],ebx
	jle	_36
_12
	add	[ebp-8],1
_33
	mov	ebx,[_vh]
	cmp	[ebp-8],ebx
	jle	_34
_11
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	ret
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vw	.dd	0
	.align	4
_vh	.dd	0
	.align	4
_atg	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ang	.dd	0
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

