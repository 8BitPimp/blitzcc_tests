
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],600
	mov	[esp+8],1
	mov	[esp],800
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[_vib],eax
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	[esp],1048576
	call	_fcreatebank
	mov	[_vbnk],eax
	sub	esp,4
	mov	[esp],4194304
	call	_fcreatebank
	mov	[_vdbnk],eax
	sub	esp,4
	mov	eax,_aneig
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_aneig
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aneig
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],-1025
	mov	[ebp-12],0
	jmp	_13
_14
	cmp	[ebp-12],3
	jnz	_15
	mov	[ebp-8],-1
_15
	cmp	[ebp-12],5
	jnz	_16
	mov	[ebp-8],1023
_16
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aneig]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	add	ebx,1
	cmp	[ebp-12],3
	setz	al
	movzx	eax,al
	add	ebx,eax
	mov	[ebp-8],ebx
	add	[ebp-12],1
_13
	cmp	[ebp-12],7
	jle	_14
_3
	sub	esp,4
	mov	eax,_achange
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_achange
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achange
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,1
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_achange]
	mov	[esi],ebx
	mov	[ebp-12],16
	jmp	_17
_18
	cmp	[ebp-12],18
	setnz	al
	movzx	eax,al
	mov	[ebp-52],eax
	cmp	[ebp-12],19
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_19
	mov	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_achange]
	mov	[esi],ebx
_19
	add	[ebp-12],1
_17
	cmp	[ebp-12],24
	jle	_18
_4
	mov	[_vdend],-4
	mov	[ebp-16],100
	jmp	_20
_21
	mov	[ebp-20],100
	jmp	_22
_23
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],99
	call	_frand
	cmp	eax,30
	jge	_24
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fputcell
_24
	add	[ebp-20],1
_22
	cmp	[ebp-20],499
	jle	_23
_6
	add	[ebp-16],1
_20
	cmp	[ebp-16],699
	jle	_21
_5
_25
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],50
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,24
	mov	eax,1148846080
	push	eax
	fld	[esp]
	pop	eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-52]
	sub	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vdend]
	shr	eax,byte 2
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],8
	mov	[esp],0
	call	_ftext
	call	_fmillisecs
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_27
_26
	sub	esp,8
	mov	eax,[_vdbnk]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	esi,31
	and	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_achange]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_28
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	esi,32
	or	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_28
	mov	ebx,[ebp-8]
	mov	esi,31
	and	ebx,esi
	cmp	ebx,0
	jnz	_29
	sub	esp,20
	mov	eax,[_vdbnk]
	mov	[esp],eax
	mov	ebx,[_vdend]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[_vdbnk]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
	sub	[_vdend],4
	jmp	_30
_29
	add	[ebp-12],4
_30
_27
	mov	ebx,[_vdend]
	cmp	[ebp-12],ebx
	jle	_26
_8
	mov	[ebp-12],0
	mov	ebx,[_vdend]
	mov	[ebp-32],ebx
	jmp	_32
_31
	sub	esp,8
	mov	eax,[_vdbnk]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	esi,32
	and	ebx,esi
	and	ebx,ebx
	jz	_33
	mov	ebx,[ebp-8]
	mov	esi,16
	and	ebx,esi
	shr	ebx,byte 4
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	mov	esi,1023
	and	ebx,esi
	sub	ebx,112
	mov	[ebp-16],ebx
	mov	ebx,[ebp-28]
	shr	ebx,byte 10
	sub	ebx,212
	mov	[ebp-20],ebx
	cmp	[ebp-16],0
	setge	al
	movzx	eax,al
	mov	[ebp-52],eax
	cmp	[ebp-16],800
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp-20],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp-20],600
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_34
	sub	esp,16
	mov	ebx,[ebp-36]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[_vib]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
_34
	mov	ebx,1
	mov	esi,[ebp-36]
	shl	esi,byte 1
	sub	ebx,esi
	mov	[ebp-36],ebx
	mov	[ebp-40],0
	jmp	_35
_36
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_aneig]
	mov	ebx,[ebx]
	add	ebx,[ebp-28]
	mov	esi,1048575
	and	ebx,esi
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-48],eax
	cmp	[ebp-48],0
	jnz	_37
	add	[_vdend],4
	sub	esp,12
	mov	ebx,[_vdend]
	mov	[esp+4],ebx
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[_vdbnk]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	[esp+8],65
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
	jmp	_38
_37
	sub	esp,12
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	mov	esi,[ebp-48]
	add	esi,[ebp-36]
	mov	[esp+8],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_38
	add	[ebp-40],1
_35
	cmp	[ebp-40],7
	jle	_36
_10
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	esi,48
	xor	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_33
	add	[ebp-12],4
_32
	mov	ebx,[ebp-32]
	cmp	[ebp-12],ebx
	jle	_31
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_25
_7
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fputcell
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	add	ebx,112
	mov	esi,[ebp+24]
	add	esi,212
	shl	esi,byte 10
	add	ebx,esi
	mov	[ebp-4],ebx
	mov	[ebp-8],0
	jmp	_39
_40
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aneig]
	mov	ebx,[ebx]
	add	ebx,[ebp-4]
	mov	esi,1048575
	and	ebx,esi
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	jnz	_41
	add	[_vdend],4
	sub	esp,12
	mov	ebx,[_vdend]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[_vdbnk]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],65
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
	jmp	_42
_41
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	add	esi,1
	mov	[esp+8],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_42
	add	[ebp-8],1
_39
	cmp	[ebp-8],8
	jle	_40
_12
	sub	esp,20
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	add	eax,15
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,16
	mov	[esp+8],-1
	mov	esi,[_vib]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixel
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vib	.dd	0
	.align	4
_vbnk	.dd	0
	.align	4
_vdbnk	.dd	0
	.align	4
_vdend	.dd	0
	.align	4
_aneig	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_achange	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

