
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,4
	mov	eax,_acffp_counts
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,256
	mov	esi,_acffp_counts
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acffp_counts
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],256
	mov	[esp],256
	call	_fgraphics
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	mov	[ebp-12],0
	sub	esp,20
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_35
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_37
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_39
	sub	esp,8
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],2000
	call	_fdelay
	call	_fend
	jmp	_34
_35
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	jmp	_43
_42
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	cmp	ebx,0
	jnz	_44
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	call	_fmillisecs
	mov	[ebp-24],eax
_44
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ebx,255
	and	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	call	_fdrawalphafading
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fflip
	add	[ebp-12],1
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	cmp	ebx,255
	jnz	_45
	call	_fcls
	sub	esp,24
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-40]
	sub	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_45
_43
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_42
_4
	jmp	_34
_37
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	jmp	_49
_48
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	cmp	ebx,0
	jnz	_50
	cmp	[ebp-28],0
	jz	_51
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ffreeimage
_51
	sub	esp,16
	mov	[esp],-3
	mov	[esp+4],3
	call	_frand
	shl	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1101004800
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fcreatetestfadingimage
	mov	[ebp-28],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],5
	mov	[esp],128
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fmillisecs
	mov	[ebp-24],eax
_50
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ebx,255
	and	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	call	_fdrawslowfading
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fflip
	add	[ebp-12],1
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	cmp	ebx,255
	jnz	_53
	call	_fcls
	sub	esp,24
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-40]
	sub	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_53
_49
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_48
_5
	jmp	_34
_39
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	jmp	_57
_56
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	cmp	ebx,0
	jnz	_58
	cmp	[ebp-28],0
	jz	_59
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ffreeimage
_59
	sub	esp,16
	mov	[esp],-3
	mov	[esp+4],3
	call	_frand
	shl	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1101004800
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fcreatetestfadingimage
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcreatefastfadingpattern
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],5
	mov	[esp],128
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	call	_fmillisecs
	mov	[ebp-24],eax
_58
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ebx,255
	and	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	call	_fdrawfastfading
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fflip
	add	[ebp-12],1
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	cmp	ebx,255
	jnz	_61
	call	_fcls
	sub	esp,24
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-40]
	sub	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_61
_57
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_56
_6
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ffreebank
	jmp	_34
_34
	call	_fend
	ret
_2_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawalphafading
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
	mov	ebx,255
	sub	ebx,[ebp+20]
	mov	[ebp-4],ebx
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-24],0
	jmp	_64
_65
	mov	[ebp-28],0
	jmp	_66
_67
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-36],eax
	mov	ebx,[ebp-32]
	mov	esi,255
	and	ebx,esi
	imul	ebx,[ebp+20]
	mov	esi,[ebp-36]
	mov	edi,255
	and	esi,edi
	imul	esi,[ebp-4]
	add	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-40],ebx
	mov	ebx,[ebp-32]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	imul	ebx,[ebp+20]
	mov	esi,[ebp-36]
	shr	esi,byte 8
	mov	edi,255
	and	esi,edi
	imul	esi,[ebp-4]
	add	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-44],ebx
	mov	ebx,[ebp-32]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	imul	ebx,[ebp+20]
	mov	esi,[ebp-36]
	shr	esi,byte 16
	mov	edi,255
	and	esi,edi
	imul	esi,[ebp-4]
	add	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-48],ebx
	sub	esp,16
	mov	ebx,[ebp-40]
	mov	esi,[ebp-44]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-48]
	shl	esi,byte 16
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-28],1
_66
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jle	_67
_9
	add	[ebp-24],1
_64
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_65
_8
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fdrawslowfading
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-16],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_68
_69
	mov	[ebp-24],0
	jmp	_70
_71
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	cmp	[ebp-28],ebx
	jnz	_72
	sub	esp,28
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
_72
	add	[ebp-24],1
_70
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_71
_12
	add	[ebp-20],1
_68
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_69
_11
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcreatefastfadingpattern
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	imul	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,1028
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_73
_74
	mov	ebx,0
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	[esi],ebx
	add	[ebp-16],1
_73
	cmp	[ebp-16],256
	jle	_74
_14
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	[ebp-4],1
	sub	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-24],0
	jmp	_75
_76
	mov	[ebp-28],0
	jmp	_77
_78
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	add	eax,1
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	[esi],ebx
	add	[ebp-28],1
_77
	mov	ebx,[ebp-8]
	cmp	[ebp-28],ebx
	jle	_78
_16
	add	[ebp-24],1
_75
	mov	ebx,[ebp-4]
	cmp	[ebp-24],ebx
	jle	_76
_15
	sub	esp,12
	mov	[esp+4],0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeint
	mov	[ebp-16],1
	jmp	_79
_80
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	add	ebx,1028
	mov	esi,[ebp-16]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	[esi],ebx
	sub	esp,12
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-16],1
_79
	cmp	[ebp-16],256
	jle	_80
_17
	mov	ebx,256
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	add	ebx,1028
	mov	esi,256
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	[esi],ebx
	mov	[ebp-24],0
	jmp	_81
_82
	mov	[ebp-28],0
	jmp	_83
_84
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	add	ebx,2
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokeshort
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acffp_counts]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_acffp_counts]
	mov	[esi],ebx
	add	[ebp-28],1
_83
	mov	ebx,[ebp-8]
	cmp	[ebp-28],ebx
	jle	_84
_19
	add	[ebp-24],1
_81
	mov	ebx,[ebp-4]
	cmp	[ebp-24],ebx
	jle	_82
_18
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-12]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdrawfastfading
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekint
	sub	eax,1
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-12],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_flockbuffer
	mov	ebx,[ebp-4]
	mov	[ebp-16],ebx
	jmp	_85
_86
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	add	ebx,2
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-24],eax
	sub	esp,28
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-16],4
_85
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_86
_21
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcreatetestfadingimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
	sub	esp,12
	mov	[esp+4],256
	mov	[esp+8],1
	mov	[esp],256
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_87
_88
	mov	[ebp-16],0
	jmp	_89
_90
	sub	esp,4
	mov	eax,[ebp-12]
	sub	eax,128
	mov	ebx,[ebp-12]
	sub	ebx,128
	imul	eax,ebx
	mov	ebx,[ebp-16]
	sub	ebx,128
	mov	esi,[ebp-16]
	sub	esi,128
	imul	ebx,esi
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	sub	esp,4
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1124106240
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	mov	eax,[ebp-12]
	sub	eax,128
	push	eax
	fild	[esp]
	pop	eax
	fdivrp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fatan
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,255
	and	eax,ebx
	mov	[ebp-20],eax
	sub	esp,16
	mov	ebx,[ebp-20]
	imul	ebx,65793
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_89
	cmp	[ebp-16],255
	jle	_90
_24
	add	[ebp-12],1
_87
	cmp	[ebp-12],255
	jle	_88
_23
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-4]
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_acffp_counts	.dd	0
	.dd	1
	.dd	1
	.dd	0
_25	.db	"adobe.jpg",0
_26	.db	"MossyGround.bmp",0
_27	.db	"VSync ? (y/n) ",0
_28	.db	"y",0
_29	.db	"",0
_30	.db	"1) Alpha blended fading, slooow",0
_31	.db	"2) Slow fading (almost as slow)",0
_32	.db	"3) Fast fading (really fast)",0
_33	.db	"Select method ",0
_36	.db	"1",0
_38	.db	"2",0
_40	.db	"3",0
_41	.db	"Invalid option, quiting...",0
_46	.db	"Duration : ",0
_47	.db	" ms",0
_52	.db	"Press a key",0
_54	.db	"Duration : ",0
_55	.db	" ms",0
_60	.db	"Press a key",0
_62	.db	"Duration : ",0
_63	.db	" ms",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

