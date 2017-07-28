
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
	mov	[ebp-12],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],3000
	mov	[esp+8],190
	mov	[esp+4],170
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fblackblender
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1500
	mov	[esp+8],190
	mov	[esp+4],170
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fblackblender
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],3000
	mov	[esp+8],190
	mov	[esp+4],170
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fblackblender
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1500
	mov	[esp+8],190
	mov	[esp+4],170
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fblackblender
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],3000
	mov	[esp+8],190
	mov	[esp+4],170
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fblackblender
	call	_fwaitkey
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1500
	mov	[esp+8],190
	mov	[esp+4],170
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fblackblender
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
_fblackblender
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	call	_ffrontbuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-16],eax
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	jmp	_19
_18
	sub	esp,8
	mov	eax,[ebp-24]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],4
	call	__bbMod
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jnz	_20
	mov	[ebp-28],0
	mov	[ebp-32],0
_20
	cmp	[ebp-24],1
	jnz	_21
	mov	[ebp-28],1
	mov	[ebp-32],1
_21
	cmp	[ebp-24],2
	jnz	_22
	mov	[ebp-28],1
	mov	[ebp-32],0
_22
	cmp	[ebp-24],3
	jnz	_23
	mov	[ebp-28],0
	mov	[ebp-32],1
_23
	cmp	[ebp+32],0
	jnz	_24
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-36],eax
_24
	cmp	[ebp+32],1
	jnz	_25
	mov	ebx,[ebp+36]
	call	_fmillisecs
	sub	ebx,eax
	add	ebx,[ebp-20]
	mov	[ebp-36],ebx
_25
	mov	ebx,[ebp-32]
	mov	[ebp-40],ebx
	jmp	_26
_27
	mov	ebx,[ebp-28]
	mov	[ebp-44],ebx
	jmp	_28
_29
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-56],ebx
	mov	ebx,[ebp-48]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-60],ebx
	mov	eax,[ebp-52]
	imul	eax,[ebp-36]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	shl	eax,byte 16
	mov	[ebp-64],eax
	mov	ebx,[ebp-56]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	shl	ebx,byte 8
	add	eax,ebx
	mov	[ebp-64],eax
	mov	ebx,[ebp-60]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	add	eax,ebx
	mov	[ebp-48],eax
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-44],2
_28
	mov	ebx,[ebp-12]
	cmp	[ebp-44],ebx
	jle	_29
_6
	add	[ebp-40],2
_26
	mov	ebx,[ebp-16]
	cmp	[ebp-40],ebx
	jle	_27
_5
_19
	call	_fmillisecs
	sub	eax,[ebp-20]
	cmp	eax,[ebp+36]
	jl	_18
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	cmp	[ebp+32],0
	jnz	_30
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblock
_30
	cmp	[ebp+32],1
	jnz	_31
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-12]
	add	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frect
_31
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
_fwhiteblender
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	call	_ffrontbuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-16],eax
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	jmp	_33
_32
	sub	esp,8
	mov	eax,[ebp-24]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],4
	call	__bbMod
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jnz	_34
	mov	[ebp-28],0
	mov	[ebp-32],0
_34
	cmp	[ebp-24],1
	jnz	_35
	mov	[ebp-28],1
	mov	[ebp-32],1
_35
	cmp	[ebp-24],2
	jnz	_36
	mov	[ebp-28],1
	mov	[ebp-32],0
_36
	cmp	[ebp-24],3
	jnz	_37
	mov	[ebp-28],0
	mov	[ebp-32],1
_37
	cmp	[ebp+32],0
	jnz	_38
	mov	ebx,[ebp+36]
	call	_fmillisecs
	sub	ebx,eax
	add	ebx,[ebp-20]
	mov	[ebp-36],ebx
_38
	cmp	[ebp+32],1
	jnz	_39
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-36],eax
_39
	mov	ebx,[ebp-32]
	mov	[ebp-40],ebx
	jmp	_40
_41
	mov	ebx,[ebp-28]
	mov	[ebp-44],ebx
	jmp	_42
_43
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-56],ebx
	mov	ebx,[ebp-48]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-60],ebx
	mov	eax,[ebp-52]
	add	eax,[ebp-56]
	add	eax,[ebp-60]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-64],eax
	mov	eax,255
	sub	eax,[ebp-52]
	imul	eax,[ebp-36]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	add	eax,[ebp-52]
	shl	eax,byte 16
	mov	[ebp-68],eax
	mov	ebx,255
	sub	ebx,[ebp-56]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-68]
	add	ebx,[ebp-56]
	shl	ebx,byte 8
	add	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,255
	sub	ebx,[ebp-60]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-68]
	add	ebx,[ebp-60]
	add	eax,ebx
	mov	[ebp-48],eax
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-44],2
_42
	mov	ebx,[ebp-12]
	cmp	[ebp-44],ebx
	jle	_43
_10
	add	[ebp-40],2
_40
	mov	ebx,[ebp-16]
	cmp	[ebp-40],ebx
	jle	_41
_9
_33
	call	_fmillisecs
	sub	eax,[ebp-20]
	cmp	eax,[ebp+36]
	jl	_32
_8
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	cmp	[ebp+32],0
	jnz	_44
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblock
_44
	cmp	[ebp+32],1
	jnz	_45
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-12]
	add	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frect
_45
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fgrayblender
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	call	_ffrontbuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-16],eax
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	jmp	_47
_46
	sub	esp,8
	mov	eax,[ebp-24]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],4
	call	__bbMod
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jnz	_48
	mov	[ebp-28],0
	mov	[ebp-32],0
_48
	cmp	[ebp-24],1
	jnz	_49
	mov	[ebp-28],1
	mov	[ebp-32],1
_49
	cmp	[ebp-24],2
	jnz	_50
	mov	[ebp-28],1
	mov	[ebp-32],0
_50
	cmp	[ebp-24],3
	jnz	_51
	mov	[ebp-28],0
	mov	[ebp-32],1
_51
	cmp	[ebp+32],0
	jnz	_52
	mov	ebx,[ebp+36]
	call	_fmillisecs
	sub	ebx,eax
	add	ebx,[ebp-20]
	mov	[ebp-36],ebx
_52
	cmp	[ebp+32],1
	jnz	_53
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-36],eax
_53
	mov	ebx,[ebp-32]
	mov	[ebp-40],ebx
	jmp	_54
_55
	mov	ebx,[ebp-28]
	mov	[ebp-44],ebx
	jmp	_56
_57
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-48],eax
	mov	ebx,[ebp-48]
	mov	esi,16711680
	and	ebx,esi
	sar	ebx,byte 16
	mov	[ebp-52],ebx
	mov	ebx,[ebp-48]
	mov	esi,65280
	and	ebx,esi
	sar	ebx,byte 8
	mov	[ebp-56],ebx
	mov	ebx,[ebp-48]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-60],ebx
	mov	eax,[ebp-52]
	add	eax,[ebp-56]
	add	eax,[ebp-60]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-64],eax
	mov	eax,[ebp-64]
	sub	eax,[ebp-52]
	imul	eax,[ebp-36]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	add	eax,[ebp-52]
	shl	eax,byte 16
	mov	[ebp-68],eax
	mov	ebx,[ebp-64]
	sub	ebx,[ebp-56]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-68]
	add	ebx,[ebp-56]
	shl	ebx,byte 8
	add	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,[ebp-64]
	sub	ebx,[ebp-60]
	imul	ebx,[ebp-36]
	mov	ecx,[ebp+36]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-68]
	add	ebx,[ebp-60]
	add	eax,ebx
	mov	[ebp-48],eax
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-44],2
_56
	mov	ebx,[ebp-12]
	cmp	[ebp-44],ebx
	jle	_57
_14
	add	[ebp-40],2
_54
	mov	ebx,[ebp-16]
	cmp	[ebp-40],ebx
	jle	_55
_13
_47
	call	_fmillisecs
	sub	eax,[ebp-20]
	cmp	eax,[ebp+36]
	jl	_46
_12
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	cmp	[ebp+32],0
	jnz	_58
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblock
_58
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
_15	.db	"1.bmp",0
_16	.db	"2.bmp",0
_17	.db	"3.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

