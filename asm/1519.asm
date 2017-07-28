
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
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],65536
	call	_fcreatebank
	mov	[_vzxram],eax
	sub	esp,4
	mov	eax,_acolortable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16
	mov	esi,_acolortable
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolortable
	mov	[esp],eax
	call	__bbDimArray
	call	_fmakecolors
	mov	[_vflashstate],1
	mov	[_vtime],250
	mov	[_vload],1
	mov	[_vbwmode],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenscr
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],256
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fapptitle
	jmp	_34
_33
	call	_fcls
	call	_fzxfield
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_35
	cmp	[_vload],0
	setz	al
	movzx	eax,al
	mov	[_vload],eax
_35
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_36
	cmp	[_vbwmode],0
	setz	al
	movzx	eax,al
	mov	[_vbwmode],eax
	cmp	[_vbwmode],1
	jnz	_37
	call	_fmakegrey
	jmp	_38
_37
	call	_fmakecolors
_38
_36
	sub	esp,4
	mov	[esp],1
	call	_fflip
_34
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_33
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fopenscr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_39
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	cmp	eax,6912
	jnz	_41
	sub	esp,16
	mov	[esp+8],16384
	mov	[esp+12],6912
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vzxram]
	mov	[esp],eax
	call	_freadbytes
_41
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	cmp	eax,6929
	jnz	_42
	sub	esp,16
	mov	[esp+8],16367
	mov	[esp+12],6912
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vzxram]
	mov	[esp],eax
	call	_freadbytes
_42
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
_39
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fzxfield
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
	call	_fflasheffect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-8],0
	jmp	_43
_44
	mov	ebx,[_vload]
	and	ebx,ebx
	jz	_45
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],5
	jle	_46
	cmp	[_vbwmode],0
	jnz	_47
	mov	[ebp-4],255
	jmp	_48
_47
	mov	[ebp-4],5592405
_48
	jmp	_49
_46
	cmp	[_vbwmode],0
	jnz	_50
	mov	[ebp-4],16776960
	jmp	_51
_50
	mov	[ebp-4],11184810
_51
_49
	jmp	_52
_45
	mov	[ebp-4],0
_52
	mov	[ebp-12],0
	jmp	_53
_54
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_53
	cmp	[ebp-12],319
	jle	_54
_7
	add	[ebp-8],2
_43
	cmp	[ebp-8],255
	jle	_44
_6
	sub	esp,12
	mov	[esp+4],32
	mov	esi,[_vzxram]
	mov	[esp+8],esi
	mov	[esp],32
	call	_fdrawscreen
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fattrink
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,7
	and	eax,ebx
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fattrpaper
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shr	eax,byte 3
	mov	ebx,7
	and	eax,ebx
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fattrbright
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,64
	and	eax,ebx
	jmp	_10_leave
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
_fattrflash
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,128
	and	eax,ebx
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdrawscreen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,100
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
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	[ebp-48],0
	jmp	_55
_56
	mov	ebx,[ebp-48]
	shl	ebx,byte 8
	mov	[ebp-12],ebx
	mov	[ebp-52],0
	jmp	_57
_58
	mov	ebx,[ebp-52]
	shl	ebx,byte 5
	mov	[ebp-56],ebx
	mov	ebx,[ebp-52]
	shl	ebx,byte 5
	add	ebx,0
	mov	esi,[ebp-48]
	shl	esi,byte 11
	add	ebx,esi
	mov	[ebp-60],ebx
	jmp	_59
_60
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	[ebp-64],0
	jmp	_61
_62
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,16384
	add	ebx,[ebp-64]
	add	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,22528
	add	ebx,[ebp-64]
	add	ebx,[ebp-56]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fattrbright
	shr	eax,byte 3
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fattrink
	add	eax,[ebp-24]
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fattrpaper
	add	eax,[ebp-24]
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fattrflash
	mov	[ebp-36],eax
	cmp	[ebp-36],128
	setz	al
	movzx	eax,al
	mov	[ebp-100],eax
	cmp	[_vflashstate],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-100]
	and	eax,ebx
	and	eax,eax
	jz	_63
	mov	ebx,[ebp-28]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-32],ebx
_63
	mov	ebx,[ebp-16]
	mov	esi,128
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-68],ebx
	cmp	[ebp-68],128
	jz	_65
	cmp	[ebp-68],0
	jz	_66
	jmp	_64
_65
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_64
_66
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_64
_64
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,64
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-72],ebx
	cmp	[ebp-72],64
	jz	_68
	cmp	[ebp-72],0
	jz	_69
	jmp	_67
_68
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_67
_69
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_67
_67
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,32
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-76],ebx
	cmp	[ebp-76],32
	jz	_71
	cmp	[ebp-76],0
	jz	_72
	jmp	_70
_71
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_70
_72
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_70
_70
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,16
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-80],ebx
	cmp	[ebp-80],16
	jz	_74
	cmp	[ebp-80],0
	jz	_75
	jmp	_73
_74
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_73
_75
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_73
_73
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,8
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-84],ebx
	cmp	[ebp-84],8
	jz	_77
	cmp	[ebp-84],0
	jz	_78
	jmp	_76
_77
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_76
_78
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_76
_76
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,4
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-88],ebx
	cmp	[ebp-88],4
	jz	_80
	cmp	[ebp-88],0
	jz	_81
	jmp	_79
_80
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_79
_81
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_79
_79
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,2
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-92],ebx
	cmp	[ebp-92],2
	jz	_83
	cmp	[ebp-92],0
	jz	_84
	jmp	_82
_83
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_82
_84
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_82
_82
	add	[ebp-4],1
	mov	ebx,[ebp-16]
	mov	esi,1
	and	ebx,esi
	mov	[ebp-44],ebx
	mov	ebx,[ebp-44]
	mov	[ebp-96],ebx
	cmp	[ebp-96],1
	jz	_86
	cmp	[ebp-96],0
	jz	_87
	jmp	_85
_86
	sub	esp,16
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_85
_87
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	jmp	_85
_85
	add	[ebp-4],1
	add	[ebp-64],1
_61
	cmp	[ebp-64],31
	jle	_62
_16
	add	[ebp-8],1
	add	[ebp-60],256
_59
	mov	ebx,[ebp-48]
	shl	ebx,byte 11
	add	ebx,2047
	cmp	[ebp-60],ebx
	jle	_60
_15
	add	[ebp-52],1
_57
	cmp	[ebp-52],7
	jle	_58
_14
	add	[ebp-48],1
_55
	cmp	[ebp-48],2
	jle	_56
_13
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fflasheffect
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmillisecs
	mov	ebx,[_voldtime]
	add	ebx,[_vtime]
	cmp	eax,ebx
	jle	_88
	cmp	[_vflashstate],1
	jnz	_89
	mov	[_vflashstate],0
	call	_fmillisecs
	mov	[_voldtime],eax
	jmp	_90
_89
	mov	[_vflashstate],1
	call	_fmillisecs
	mov	[_voldtime],eax
_90
_88
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakegrey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_91
_92
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acolortable]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fgrey
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acolortable]
	mov	[ebx],eax
	add	[ebp-4],1
_91
	cmp	[ebp-4],15
	jle	_92
_27
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakecolors
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,120
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,11796480
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,11141290
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,30720
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,43690
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,13158400
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,13158600
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,16711680
	mov	esi,10
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,16711935
	mov	esi,11
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,65280
	mov	esi,12
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,65535
	mov	esi,13
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,16776960
	mov	esi,14
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	ebx,16777215
	mov	esi,15
	shl	esi,byte 2
	add	esi,[_acolortable]
	mov	[esi],ebx
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgrey
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
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1030859260
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1038174126
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-12],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 16
	mov	ebx,[ebp-8]
	shl	ebx,byte 8
	add	eax,ebx
	add	eax,[ebp-12]
	jmp	_29_leave
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vzxram	.dd	0
	.align	4
_acolortable	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vflashstate	.dd	0
	.align	4
_vtime	.dd	0
	.align	4
_voldtime	.dd	0
	.align	4
_vload	.dd	0
	.align	4
_vbwmode	.dd	0
_30	.db	"screens/LuckyLucke.scr",0
_31	.db	"1=BW/COLOR mode, 2=loadFX",0
_32	.db	"",0
_40	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

