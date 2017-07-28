
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,108
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
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
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
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],14
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
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
	jmp	_25
_26
	cmp	[ebp-12],3
	jnz	_27
	mov	[ebp-8],-1
_27
	cmp	[ebp-12],5
	jnz	_28
	mov	[ebp-8],1023
_28
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
_25
	cmp	[ebp-12],7
	jle	_26
_3
	sub	esp,4
	mov	eax,_achange
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,64
	mov	esi,_achange
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achange
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_29
_30
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-108],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],0
	jmp	_31
_32
	sub	esp,20
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-108],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbSgn
	mov	ebx,eax
	mov	esi,[ebp-12]
	shl	esi,byte 4
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_achange]
	mov	[esi],ebx
	add	[ebp-20],1
_31
	cmp	[ebp-20],8
	jle	_32
_5
	add	[ebp-12],1
_29
	cmp	[ebp-12],3
	jle	_30
_4
	sub	esp,4
	mov	eax,_aorg
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,150
	mov	esi,_aorg
	add	esi,12
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,_aorg
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aorg
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,[ebp-24]
	and	ebx,ebx
	jz	_33
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-28],eax
_33
_35
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_flockbuffer
	mov	[_vdend],-4
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_36
	mov	[ebp-36],325
	jmp	_38
_39
	mov	[ebp-40],250
	jmp	_40
_41
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],99
	call	_frand
	cmp	eax,30
	jge	_42
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fputcell
	mov	ebx,[ebp-40]
	sub	ebx,250
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-36]
	sub	esi,325
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_aorg]
	mov	ebx,1
	mov	[esi],ebx
	jmp	_43
_42
	mov	ebx,[ebp-40]
	sub	ebx,250
	mov	esi,_aorg
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-36]
	sub	esi,325
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_aorg]
	mov	ebx,0
	mov	[esi],ebx
_43
	add	[ebp-40],1
_40
	cmp	[ebp-40],349
	jle	_41
_8
	add	[ebp-36],1
_38
	cmp	[ebp-36],474
	jle	_39
_7
	jmp	_44
_36
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-52],eax
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-56],eax
	mov	ebx,800
	sub	ebx,[ebp-52]
	shr	ebx,byte 1
	mov	[ebp-60],ebx
	mov	ebx,600
	sub	ebx,[ebp-56]
	shr	ebx,byte 1
	mov	[ebp-64],ebx
	mov	[ebp-36],0
	jmp	_45
_46
	mov	[ebp-40],0
	jmp	_47
_48
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_freadpixel
	cmp	eax,-1
	jnz	_49
	sub	esp,8
	mov	eax,[ebp-36]
	add	eax,[ebp-60]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	add	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fputcell
_49
	add	[ebp-40],1
_47
	mov	ebx,[ebp-56]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_48
_10
	add	[ebp-36],1
_45
	mov	ebx,[ebp-52]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_46
_9
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_ffreeimage
_44
	sub	esp,4
	mov	eax,_adstcq
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_adstcq
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_adstcq
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adstcq
	mov	[esp],eax
	call	__bbDimArray
_50
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],36
	mov	[esp+16],1
	mov	[esp+8],100
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,1148846080
	push	eax
	fld	[esp]
	pop	eax
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-108]
	sub	ebx,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_51
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,[_vcellq]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],24
	mov	[esp],0
	call	_ftext
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-72],1
	sub	esp,8
	mov	eax,[ebp-72]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	ebx,1
	and	ebx,eax
	and	ebx,ebx
	jz	_54
	mov	[ebp-76],32
	jmp	_55
_54
	mov	[ebp-76],0
_55
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_56
	mov	[ebp-12],2
	jmp	_57
_58
	sub	esp,8
	mov	eax,[ebp-72]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbMod
	cmp	eax,0
	jnz	_59
	mov	ebx,_adstcq
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_adstcq]
	mov	ebx,[ebx]
	cmp	[_vcellq],ebx
	jnz	_60
	mov	ebx,_adstcq
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_adstcq]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_adstcq
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_adstcq]
	mov	[esi],ebx
	mov	ebx,_adstcq
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_adstcq]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_61
	mov	[ebp-84],1
_61
	jmp	_62
_60
	mov	ebx,[_vcellq]
	mov	esi,_adstcq
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_adstcq]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_adstcq
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_adstcq]
	mov	[esi],ebx
_62
_59
	add	[ebp-12],1
_57
	cmp	[ebp-12],3
	jle	_58
_12
_56
	mov	ebx,[ebp-84]
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	or	ebx,eax
	and	ebx,ebx
	jz	_63
	mov	[ebp-84],0
	jmp	_11
_63
	call	_fmillisecs
	mov	[ebp-68],eax
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_65
_64
	sub	esp,8
	mov	eax,[_vdbnk]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-88],eax
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	esi,31
	and	ebx,esi
	add	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_achange]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_66
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	esi,32
	or	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp-88]
	mov	[esp+4],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_66
	mov	ebx,[ebp-8]
	mov	esi,31
	and	ebx,esi
	cmp	ebx,0
	jnz	_67
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
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
	sub	[_vdend],4
	jmp	_68
_67
	add	[ebp-12],4
_68
_65
	mov	ebx,[_vdend]
	cmp	[ebp-12],ebx
	jle	_64
_13
	mov	[ebp-12],0
	mov	ebx,[_vdend]
	mov	[ebp-92],ebx
	jmp	_70
_69
	sub	esp,8
	mov	eax,[_vdbnk]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-88],eax
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	esi,32
	and	ebx,esi
	and	ebx,ebx
	jz	_71
	mov	eax,[ebp-88]
	mov	ebx,1023
	and	eax,ebx
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-108],eax
	cmp	[ebp-88],1023
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	and	ebx,eax
	mov	esi,0
	or	esi,ebx
	and	esi,esi
	jz	_72
	mov	ebx,[ebp-8]
	mov	esi,16
	and	ebx,esi
	shr	ebx,byte 4
	mov	[ebp-96],ebx
	mov	ebx,[ebp-88]
	mov	esi,1023
	and	ebx,esi
	sub	ebx,112
	mov	[ebp-36],ebx
	mov	ebx,[ebp-88]
	shr	ebx,byte 10
	sub	ebx,212
	mov	[ebp-40],ebx
	cmp	[ebp-36],0
	setge	al
	movzx	eax,al
	mov	[ebp-108],eax
	cmp	[ebp-36],800
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	and	eax,ebx
	mov	[ebp-108],eax
	cmp	[ebp-40],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	and	eax,ebx
	mov	[ebp-108],eax
	cmp	[ebp-40],600
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	and	eax,ebx
	and	eax,eax
	jz	_73
	sub	esp,16
	mov	ebx,[ebp-96]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[_vib]
	mov	[esp+12],esi
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fwritepixelfast
_73
	mov	ebx,1
	mov	esi,[ebp-96]
	shl	esi,byte 1
	sub	ebx,esi
	mov	[ebp-96],ebx
	mov	ebx,[ebp-96]
	add	[_vcellq],ebx
	mov	[ebp-20],0
	jmp	_74
_75
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aneig]
	mov	ebx,[ebx]
	add	ebx,[ebp-88]
	mov	esi,1048575
	and	ebx,esi
	mov	[ebp-100],ebx
	sub	esp,8
	mov	eax,[_vbnk]
	mov	[esp],eax
	mov	ebx,[ebp-100]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-104],eax
	cmp	[ebp-104],0
	jnz	_76
	add	[_vdend],4
	sub	esp,12
	mov	ebx,[_vdend]
	mov	[esp+4],ebx
	mov	esi,[ebp-100]
	mov	[esp+8],esi
	mov	eax,[_vdbnk]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[ebp-100]
	mov	[esp+4],ebx
	mov	[esp+8],65
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
	jmp	_77
_76
	sub	esp,12
	mov	ebx,[ebp-100]
	mov	[esp+4],ebx
	mov	esi,[ebp-104]
	add	esi,[ebp-96]
	mov	[esp+8],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_77
	add	[ebp-20],1
_74
	cmp	[ebp-20],7
	jle	_75
_15
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	esi,48
	xor	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp-88]
	mov	[esp+4],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_72
_71
	add	[ebp-12],4
_70
	mov	ebx,[ebp-92]
	cmp	[ebp-12],ebx
	jle	_69
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_78
	call	_fend
_78
	jmp	_50
_11
	cmp	[ebp-24],0
	setg	al
	movzx	eax,al
	mov	[ebp-108],eax
	mov	ebx,[ebp-72]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	and	eax,ebx
	and	eax,eax
	jz	_79
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	_fwriteline
	mov	[ebp-36],0
	jmp	_80
_81
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-40],0
	jmp	_83
_84
	mov	ebx,_aorg
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_aorg]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_85
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_86
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_87
_85
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_88
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_87
	add	[ebp-40],1
_83
	cmp	[ebp-40],99
	jle	_84
_17
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-36],1
_80
	cmp	[ebp-36],149
	jle	_81
_16
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_89
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	_fwriteline
_79
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	[esp],1048576
	call	_fcreatebank
	mov	[_vbnk],eax
	mov	[ebp-72],0
	mov	[_vcellq],0
	jmp	_35
_6
	ret
_2_leave
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[ebp-108],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-108]
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
	jmp	_90
_91
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
	jnz	_92
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
	jmp	_93
_92
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	add	esi,1
	mov	[esp+8],esi
	mov	eax,[_vbnk]
	mov	[esp],eax
	call	_fpokebyte
_93
	add	[ebp-8],1
_90
	cmp	[ebp-8],8
	jle	_91
_19
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
	add	[_vcellq],1
	mov	eax,0
	jmp	_18_leave
_18_leave
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
_vcellq	.dd	0
_24	.db	" Arial cyr ",0
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
_aorg	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_34	.db	"longlife.txt",0
_37	.db	"",0
	.align	4
_adstcq	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_51	.db	" FPS: ",0
_52	.db	" Cells(Cages): ",0
_53	.db	" Generation: ",0
_82	.db	"",0
_86	.db	"0",0
_88	.db	"-",0
_89	.db	" ",0
_20	.db	"3",0
_21	.db	"0145678",0
_22	.db	"23",0
_23	.db	"0245678",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	0

