
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],1
	mov	[esp],300
	call	_fcreateimage
	mov	[_vfader_tmp],eax
	mov	[_vfader_max],1
	sub	esp,4
	mov	eax,_afader_bmp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfader_max]
	mov	esi,_afader_bmp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afader_bmp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afader_col
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfader_max]
	mov	esi,_afader_col
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afader_col
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afader_r
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfader_max]
	mov	esi,_afader_r
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_afader_r
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afader_r
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afader_g
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfader_max]
	mov	esi,_afader_g
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_afader_g
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afader_g
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afader_b
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfader_max]
	mov	esi,_afader_b
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_afader_b
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afader_b
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	sub	esp,8
	mov	[esp],0
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_floadfader
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],2000
	mov	[esp+8],190
	mov	[esp+4],170
	mov	[esp],0
	call	_fanimfader
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],2000
	mov	[esp+8],190
	mov	[esp+4],170
	mov	[esp],0
	call	_fanimfader
	sub	esp,4
	mov	[esp],0
	call	_ffreefader
	sub	esp,4
	mov	eax,[_vfader_tmp]
	mov	[esp],eax
	call	_ffreeimage
	call	_fwaitkey
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
_fanimfader
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
	sub	esp,8
	mov	eax,[_vfader_tmp]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	call	_fbackbuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_bmp]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_bmp]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-16],eax
	call	_fmillisecs
	mov	[ebp-20],eax
_13
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-24],eax
	mov	eax,1000
	imul	eax,[ebp-24]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	mov	[ebp-28],eax
	cmp	[ebp-28],1000
	jle	_14
	mov	[ebp-28],1000
_14
	cmp	[ebp+32],1
	jnz	_15
	mov	ebx,1000
	sub	ebx,[ebp-28]
	mov	[ebp-28],ebx
_15
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_bmp]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-32],0
	jmp	_16
_17
	sub	esp,16
	mov	ebx,_afader_g
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_g]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_afader_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_b]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_afader_r
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_r]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vfader_tmp]
	mov	[esp],eax
	call	_fmaskimage
	sub	esp,12
	mov	eax,_afader_g
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-32]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_g]
	mov	eax,[eax]
	imul	eax,[ebp-28]
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	[ebp-36],eax
	mov	ebx,_afader_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_b]
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	mov	ecx,1000
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+8],ebx
	mov	[ebp-36],eax
	mov	ebx,_afader_r
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_r]
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	mov	ecx,1000
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frect
	sub	esp,32
	mov	ebx,[ebp-16]
	mov	[esp+24],ebx
	mov	[esp+28],0
	mov	esi,[ebp-12]
	mov	[esp+20],esi
	mov	[esp+16],0
	mov	[esp+12],0
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[_vfader_tmp]
	mov	[esp],eax
	call	_fdrawimagerect
	sub	esp,32
	mov	ebx,[ebp-8]
	mov	[esp+24],ebx
	mov	esi,[ebp-4]
	mov	[esp+28],esi
	mov	[esp+20],0
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcopyrect
	add	[ebp-32],1
_16
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_17
_5
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	ebx,[ebp+36]
	cmp	[ebp-24],ebx
	jle	_13
_4
	cmp	[ebp+32],0
	jnz	_18
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_bmp]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawblock
_18
	cmp	[ebp+32],1
	jnz	_19
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frect
_19
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_ffreefader
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],0
	jge	_20
	mov	eax,0
	jmp	_6_leave
_20
	mov	ebx,[_vfader_max]
	cmp	[ebp+20],ebx
	jle	_21
	mov	eax,0
	jmp	_6_leave
_21
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_bmp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_22
	mov	eax,0
	jmp	_6_leave
_22
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_bmp]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeimage
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_bmp]
	mov	[esi],ebx
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_floadfader
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
	cmp	[ebp+20],0
	jge	_23
	mov	eax,0
	jmp	_7_leave
_23
	mov	ebx,[_vfader_max]
	cmp	[ebp+20],ebx
	jle	_24
	mov	eax,0
	jmp	_7_leave
_24
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_bmp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_25
	mov	eax,0
	jmp	_7_leave
_25
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_bmp]
	mov	[ebx],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_bmp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_26
	mov	eax,0
	jmp	_7_leave
_26
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],28
	call	_fseekfile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-8],eax
	cmp	[ebp-8],4
	jz	_27
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffreefader
	mov	eax,0
	jmp	_7_leave
_27
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],54
	call	_fseekfile
	mov	[ebp-12],0
	jmp	_28
_29
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_30
	mov	[ebp-32],0
	jmp	_31
_32
	mov	eax,_afader_r
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-32]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afader_r]
	mov	eax,[eax]
	cmp	eax,[ebp-24]
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,_afader_g
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_g]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-20]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	mov	[ebp-48],eax
	mov	ebx,_afader_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_b]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-16]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_33
	mov	[ebp-24],0
	mov	[ebp-20],0
	mov	[ebp-16],0
_33
	add	[ebp-32],1
_31
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_32
_9
_30
	mov	ebx,[ebp-24]
	add	ebx,[ebp-20]
	add	ebx,[ebp-16]
	cmp	ebx,0
	jle	_34
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_col]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_afader_r
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_r]
	mov	esi,[ebp-24]
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_afader_g
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_g]
	mov	esi,[ebp-20]
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_afader_b
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_b]
	mov	esi,[ebp-16]
	mov	[ebx],esi
_34
	add	[ebp-12],1
_28
	cmp	[ebp-12],15
	jle	_29
_8
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	[ebp-12],0
	jmp	_35
_36
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-32],ebx
	jmp	_37
_38
	mov	ebx,_afader_r
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_r]
	mov	ebx,[ebx]
	mov	esi,_afader_g
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_g]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,_afader_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_b]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,_afader_r
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_r]
	mov	esi,[esi]
	mov	edi,_afader_g
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-32]
	add	edi,[ebp+20]
	shl	edi,byte 2
	add	edi,[_afader_g]
	mov	edi,[edi]
	add	esi,edi
	mov	edi,_afader_b
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-32]
	add	edi,[ebp+20]
	shl	edi,byte 2
	add	edi,[_afader_b]
	mov	edi,[edi]
	add	esi,edi
	cmp	ebx,esi
	jle	_39
	mov	ebx,_afader_r
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_r]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,_afader_g
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_g]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,_afader_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_b]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	ebx,_afader_r
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_r]
	mov	ebx,[ebx]
	mov	esi,_afader_r
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_r]
	mov	[esi],ebx
	mov	ebx,_afader_g
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_g]
	mov	ebx,[ebx]
	mov	esi,_afader_g
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_g]
	mov	[esi],ebx
	mov	ebx,_afader_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_b]
	mov	ebx,[ebx]
	mov	esi,_afader_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_b]
	mov	[esi],ebx
	mov	ebx,[ebp-36]
	mov	esi,_afader_r
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_r]
	mov	[esi],ebx
	mov	ebx,[ebp-40]
	mov	esi,_afader_g
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_g]
	mov	[esi],ebx
	mov	ebx,[ebp-44]
	mov	esi,_afader_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afader_b]
	mov	[esi],ebx
_39
	add	[ebp-32],1
_37
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_38
_11
	add	[ebp-12],1
_35
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afader_col]
	mov	ebx,[ebx]
	sub	ebx,2
	cmp	[ebp-12],ebx
	jle	_36
_10
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vfader_tmp	.dd	0
	.align	4
_vfader_max	.dd	0
	.align	4
_afader_bmp	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afader_col	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afader_r	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_afader_g	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_afader_b	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_12	.db	"bitmap.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

