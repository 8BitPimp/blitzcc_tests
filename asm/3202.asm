
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,260
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
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	mov	[ebp-128],ebx
	mov	[ebp-132],ebx
	mov	[ebp-136],ebx
	mov	[ebp-140],ebx
	mov	[ebp-144],ebx
	mov	[ebp-148],ebx
	mov	[ebp-152],ebx
	mov	[ebp-156],ebx
	mov	[ebp-160],ebx
	mov	[ebp-164],ebx
	mov	[ebp-168],ebx
	mov	[ebp-172],ebx
	mov	[ebp-176],ebx
	mov	[ebp-180],ebx
	mov	[ebp-184],ebx
	mov	[ebp-188],ebx
	mov	[ebp-192],ebx
	mov	[ebp-196],ebx
	mov	[ebp-200],ebx
	mov	[ebp-204],ebx
	mov	[ebp-208],ebx
	mov	[ebp-212],ebx
	mov	[ebp-216],ebx
	mov	[ebp-220],ebx
	mov	[ebp-224],ebx
	mov	[ebp-228],ebx
	mov	[ebp-232],ebx
	mov	[ebp-236],ebx
	mov	[ebp-240],ebx
	mov	[ebp-244],ebx
	mov	[ebp-248],ebx
	mov	[ebp-252],ebx
	mov	[ebp-4],320
	mov	[ebp-8],240
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[ebp-8]
	shl	esi,byte 2
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	mov	[esp],eax
	call	_fgraphics
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],3
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],320
	mov	[esp+12],240
	mov	[esp+4],0
	mov	[esp],0
	call	_fviewport
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],122
	mov	[esp],80
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],132
	mov	[esp],80
	call	_ftext
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-56],eax
	mov	ebx,[ebp-24]
	mov	[ebp-60],ebx
	mov	[ebp-64],0
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-68],eax
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-72],eax
	mov	ebx,[ebp-68]
	mov	[ebp-76],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],3
	mov	[esp+8],16
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[ebp-80],eax
	sub	esp,8
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-84],eax
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-88],eax
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],122
	mov	[esp],80
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],132
	mov	[esp],80
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_41
	sub	esp,4
	mov	[esp],157
	call	_fkeydown
	and	eax,eax
	jz	_41
_3
	call	_fflush
	mov	[ebp-92],300
	mov	[ebp-96],-24
	mov	[ebp-100],-16
	mov	[ebp-104],-16
	mov	[ebp-108],-16
	mov	[ebp-112],-16
_l_2start
	mov	[ebp-116],1
	mov	[ebp-120],0
	mov	[ebp-124],152
	mov	[ebp-128],1
	mov	[ebp-132],220
	call	_fmillisecs
	mov	[ebp-136],eax
	call	_fmillisecs
	mov	[ebp-140],eax
	call	_fmillisecs
	mov	[ebp-144],eax
	call	_fmillisecs
	mov	[ebp-148],eax
	mov	[ebp-152],1500
	mov	[ebp-156],0
	mov	[ebp-160],0
	mov	[ebp-164],0
	mov	[ebp-168],5
_42
	call	_fmillisecs
	mov	[ebp-172],eax
	call	_l_2drawtile
	call	_l_2drawwall
	call	_l_2drawship
	sub	esp,4
	mov	[esp],157
	call	_fkeydown
	mov	[ebp-256],eax
	mov	[ebp-260],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-260]
	sub	ebx,[ebp-140]
	cmp	ebx,[ebp-92]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-256]
	and	eax,ebx
	and	eax,eax
	jz	_43
	mov	ebx,[ebp-168]
	cmp	[ebp-128],ebx
	jg	_44
	add	[ebp-128],1
	sub	esp,8
	lea	eax,[ebp-176]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_tbull
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-124]
	mov	esi,[ebp-176]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-132]
	mov	esi,[ebp-176]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	call	_fmillisecs
	mov	[ebp-140],eax
_44
_43
	call	_l_2shoot
	call	_l_2drawenemy
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	mov	[ebp-180],eax
	sub	esp,32
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
_46
	call	_fmillisecs
	mov	ebx,[ebp-172]
	add	ebx,12
	cmp	eax,ebx
	jle	_46
_5
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	ebx,[ebp-180]
	cmp	[ebp-160],1
	setz	al
	movzx	eax,al
	or	ebx,eax
	and	ebx,ebx
	jz	_42
_4
	call	_fflush
_47
	call	_fmillisecs
	mov	[ebp-172],eax
	call	_l_2drawtile
	call	_l_2drawwall
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
_48
	call	_fmillisecs
	mov	ebx,[ebp-172]
	add	ebx,8
	cmp	eax,ebx
	jle	_48
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-256],eax
	mov	[ebp-260],eax
	sub	esp,4
	mov	[esp],157
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-260]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-256]
	and	eax,ebx
	and	eax,eax
	jz	_47
_6
	call	_fflush
	call	_fmillisecs
	mov	[ebp-184],eax
	mov	[ebp-188],0
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
_50
	call	_fmillisecs
	mov	[ebp-172],eax
	call	_l_2drawtile
	call	_l_2drawwall
	call	_l_2drawhelp
	sub	esp,32
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],122
	mov	[esp],120
	call	_ftext
	sub	esp,28
	lea	eax,[ebp-192]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sar	eax,byte 1
	mov	[ebp-256],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-256]
	imul	eax,ebx
	mov	ebx,160
	sub	ebx,eax
	mov	[esp],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-192]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[ebp-256],eax
	mov	eax,esi
	call	_ffontheight
	mov	esi,eax
	mov	eax,[ebp-256]
	add	esi,122
	mov	[esp+4],esi
	mov	eax,ebx
	call	_ftext
	mov	ebx,eax
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	mov	[ebp-180],eax
	sub	esp,4
	mov	[esp],157
	call	_fkeydown
	mov	[ebp-196],eax
_53
	call	_fmillisecs
	mov	ebx,[ebp-172]
	add	ebx,8
	cmp	eax,ebx
	jle	_53
_9
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	ebx,[ebp-180]
	mov	esi,[ebp-196]
	or	ebx,esi
	and	ebx,ebx
	jz	_50
_8
	call	_fflush
	mov	ebx,[ebp-196]
	and	ebx,ebx
	jz	_54
	sub	esp,4
	mov	eax,_teship
	mov	[esp],eax
	call	__bbObjDeleteEach
	sub	esp,4
	mov	eax,_tbull
	mov	[esp],eax
	call	__bbObjDeleteEach
	jmp	_l_2start
_54
	call	_fend
_l_2drawhelp
	call	_fmillisecs
	sub	eax,[ebp-184]
	cmp	eax,1500
	jle	_55
	call	_fmillisecs
	mov	[ebp-184],eax
	add	[ebp-188],1
	mov	ebx,[ebp-188]
	mov	[ebp-200],ebx
	cmp	[ebp-200],4
	jz	_57
	cmp	[ebp-200],6
	jz	_58
	cmp	[ebp-200],8
	jz	_59
	cmp	[ebp-200],10
	jz	_60
	cmp	[ebp-200],12
	jz	_61
	cmp	[ebp-200],15
	jz	_62
	jmp	_56
_57
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_56
_58
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_56
_59
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_56
_60
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_56
_61
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_56
_62
	sub	esp,8
	lea	eax,[ebp-192]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-188],0
	jmp	_56
_56
_55
	ret
_l_2drawtile
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	and	eax,eax
	jz	_69
	mov	ebx,[ebp-24]
	mov	[ebp-60],ebx
_69
	sub	esp,4
	mov	[esp],3
	call	_fkeydown
	and	eax,eax
	jz	_70
	mov	ebx,[ebp-28]
	mov	[ebp-60],ebx
_70
	sub	esp,4
	mov	[esp],4
	call	_fkeydown
	and	eax,eax
	jz	_71
	mov	ebx,[ebp-32]
	mov	[ebp-60],ebx
_71
	sub	esp,4
	mov	[esp],5
	call	_fkeydown
	and	eax,eax
	jz	_72
	mov	ebx,[ebp-36]
	mov	[ebp-60],ebx
_72
	sub	esp,4
	mov	[esp],6
	call	_fkeydown
	and	eax,eax
	jz	_73
	mov	ebx,[ebp-40]
	mov	[ebp-60],ebx
_73
	sub	esp,4
	mov	[esp],7
	call	_fkeydown
	and	eax,eax
	jz	_74
	mov	ebx,[ebp-44]
	mov	[ebp-60],ebx
_74
	sub	esp,4
	mov	[esp],8
	call	_fkeydown
	and	eax,eax
	jz	_75
	mov	ebx,[ebp-48]
	mov	[ebp-60],ebx
_75
	sub	esp,4
	mov	[esp],9
	call	_fkeydown
	and	eax,eax
	jz	_76
	mov	ebx,[ebp-52]
	mov	[ebp-60],ebx
_76
	sub	esp,4
	mov	[esp],10
	call	_fkeydown
	and	eax,eax
	jz	_77
	mov	ebx,[ebp-56]
	mov	[ebp-60],ebx
_77
	sub	esp,4
	mov	[esp],11
	call	_fkeydown
	mov	[ebp-256],eax
	mov	[ebp-260],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-260]
	sub	ebx,[ebp-148]
	cmp	ebx,1000
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-256]
	and	eax,ebx
	and	eax,eax
	jz	_78
	add	[ebp-64],1
	cmp	[ebp-64],2
	jnz	_79
	mov	[ebp-64],0
_79
	mov	ebx,[ebp-64]
	mov	[ebp-204],ebx
	cmp	[ebp-204],0
	jz	_81
	cmp	[ebp-204],1
	jz	_82
	jmp	_80
_81
	mov	ebx,[ebp-68]
	mov	[ebp-76],ebx
	jmp	_80
_82
	mov	ebx,[ebp-72]
	mov	[ebp-76],ebx
	jmp	_80
_80
	call	_fmillisecs
	mov	[ebp-148],eax
_78
	add	[ebp-96],1
	cmp	[ebp-96],0
	jnz	_83
	mov	[ebp-96],-128
_83
	mov	[ebp-208],64
	jmp	_84
_85
	mov	[ebp-212],1
	jmp	_86
_87
	sub	esp,16
	mov	ebx,[ebp-96]
	add	ebx,[ebp-212]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-208]
	mov	[esp+4],esi
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-212],128
_86
	cmp	[ebp-212],264
	jle	_87
_13
	add	[ebp-208],128
_84
	cmp	[ebp-208],255
	jle	_85
_12
	ret
_l_2shoot
	cmp	[ebp-128],0
	jle	_88
	sub	esp,8
	lea	eax,[ebp-176]
	mov	[esp],eax
	mov	[esp+4],_tbull
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_89
	mov	ebx,[ebp-176]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,[ebp-176]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-176]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,-16
	jge	_90
	sub	esp,4
	mov	eax,[ebp-176]
	mov	[esp],eax
	call	__bbObjDelete
	sub	[ebp-128],1
	jmp	_91
_90
	sub	esp,16
	mov	ebx,[ebp-176]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-176]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fdrawimage
_91
	sub	esp,4
	lea	eax,[ebp-176]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_89
_14
_88
	ret
_l_2drawwall
	add	[ebp-100],5
	cmp	[ebp-100],0
	jl	_92
	mov	[ebp-100],-16
_92
	add	[ebp-104],4
	cmp	[ebp-104],0
	jl	_93
	mov	[ebp-104],-16
_93
	add	[ebp-108],3
	cmp	[ebp-108],0
	jl	_94
	mov	[ebp-108],-16
_94
	add	[ebp-112],2
	cmp	[ebp-112],0
	jl	_95
	mov	[ebp-112],-16
_95
	mov	[ebp-208],0
	jmp	_96
_97
	mov	[ebp-212],0
	jmp	_98
_99
	mov	ebx,[ebp-208]
	mov	[ebp-216],ebx
	cmp	[ebp-216],0
	jz	_101
	cmp	[ebp-216],1
	jz	_102
	cmp	[ebp-216],2
	jz	_103
	cmp	[ebp-216],3
	jz	_104
	jmp	_100
_101
	sub	esp,16
	mov	ebx,[ebp-212]
	shl	ebx,byte 4
	add	ebx,[ebp-100]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-208]
	shl	esi,byte 4
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	ebx,304
	mov	esi,[ebp-208]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-212]
	shl	esi,byte 4
	add	esi,[ebp-100]
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_100
_102
	sub	esp,16
	mov	ebx,[ebp-212]
	shl	ebx,byte 4
	add	ebx,[ebp-104]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-208]
	shl	esi,byte 4
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	ebx,304
	mov	esi,[ebp-208]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-212]
	shl	esi,byte 4
	add	esi,[ebp-104]
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_100
_103
	sub	esp,16
	mov	ebx,[ebp-212]
	shl	ebx,byte 4
	add	ebx,[ebp-108]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-208]
	shl	esi,byte 4
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	ebx,304
	mov	esi,[ebp-208]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-212]
	shl	esi,byte 4
	add	esi,[ebp-108]
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_100
_104
	sub	esp,16
	mov	ebx,[ebp-212]
	shl	ebx,byte 4
	add	ebx,[ebp-112]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-208]
	shl	esi,byte 4
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	ebx,304
	mov	esi,[ebp-208]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-212]
	shl	esi,byte 4
	add	esi,[ebp-112]
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_100
_100
	add	[ebp-212],1
_98
	cmp	[ebp-212],16
	jle	_99
_16
	add	[ebp-208],1
_96
	cmp	[ebp-208],3
	jle	_97
_15
	ret
_l_2drawship
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_105
	sub	[ebp-124],5
_105
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_106
	add	[ebp-124],5
_106
	cmp	[ebp-124],64
	jg	_107
	mov	[ebp-124],64
_107
	cmp	[ebp-124],241
	jl	_108
	mov	[ebp-124],241
_108
	call	_fmillisecs
	sub	eax,[ebp-136]
	cmp	eax,70
	jle	_109
	call	_fmillisecs
	mov	[ebp-136],eax
	add	[ebp-116],1
	cmp	[ebp-116],3
	jnz	_110
	mov	[ebp-116],0
_110
_109
	sub	esp,16
	mov	[esp+8],220
	mov	esi,2
	sub	esi,[ebp-116]
	mov	[esp+12],esi
	mov	esi,[ebp-124]
	mov	[esp+4],esi
	mov	eax,[ebp-80]
	mov	[esp],eax
	call	_fdrawimage
	ret
_l_2drawenemy
	call	_fmillisecs
	sub	eax,[ebp-144]
	cmp	eax,[ebp-152]
	jle	_111
	cmp	[ebp-164],0
	jnz	_112
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1084227584
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-164],eax
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1073741824
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-220],eax
	cmp	[ebp-220],1
	jnz	_113
	sub	esp,4
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,8
	mov	eax,_114
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-88],eax
	jmp	_115
_113
	sub	esp,4
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,8
	mov	eax,_116
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-88],eax
_115
	mov	ebx,[ebp-164]
	mov	[ebp-224],ebx
	cmp	[ebp-224],1
	jz	_118
	cmp	[ebp-224],2
	jz	_119
	cmp	[ebp-224],3
	jz	_120
	cmp	[ebp-224],4
	jz	_121
	cmp	[ebp-224],5
	jz	_122
	jmp	_117
_118
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-228],eax
	call	__bbReadInt
	mov	[ebp-232],eax
	call	__bbReadInt
	mov	[ebp-236],eax
	call	__bbReadInt
	mov	[ebp-240],eax
	call	__bbReadInt
	mov	[ebp-244],eax
	jmp	_117
_119
	sub	esp,4
	mov	eax,__DATA
	add	eax,40
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-228],eax
	call	__bbReadInt
	mov	[ebp-232],eax
	call	__bbReadInt
	mov	[ebp-236],eax
	call	__bbReadInt
	mov	[ebp-240],eax
	call	__bbReadInt
	mov	[ebp-244],eax
	jmp	_117
_120
	sub	esp,4
	mov	eax,__DATA
	add	eax,80
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-228],eax
	call	__bbReadInt
	mov	[ebp-232],eax
	call	__bbReadInt
	mov	[ebp-236],eax
	call	__bbReadInt
	mov	[ebp-240],eax
	call	__bbReadInt
	mov	[ebp-244],eax
	jmp	_117
_121
	sub	esp,4
	mov	eax,__DATA
	add	eax,120
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-228],eax
	call	__bbReadInt
	mov	[ebp-232],eax
	call	__bbReadInt
	mov	[ebp-236],eax
	call	__bbReadInt
	mov	[ebp-240],eax
	call	__bbReadInt
	mov	[ebp-244],eax
	jmp	_117
_122
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1097859072
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-228],eax
	sub	esp,8
	mov	[esp],1116471296
	mov	[esp+4],1129971712
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-232],eax
	mov	[ebp-236],-20
	mov	[ebp-240],0
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1082130432
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-244],eax
	jmp	_117
_117
	jmp	_123
_112
	mov	ebx,[ebp-228]
	cmp	[ebp-156],ebx
	jge	_124
	add	[ebp-156],1
	sub	esp,8
	lea	eax,[ebp-248]
	mov	[esp],eax
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,_teship
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,1
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp-232]
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-236]
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-240]
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-244]
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_124
_123
	mov	[ebp-152],150
	call	_fmillisecs
	mov	[ebp-144],eax
_111
	sub	esp,8
	lea	eax,[ebp-248]
	mov	[esp],eax
	mov	[esp+4],_teship
	call	__bbObjEachFirst
	and	eax,eax
	jz	_19
_125
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,64
	jg	_126
	mov	ebx,65
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	imul	ebx,-1
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_126
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,241
	jl	_127
	mov	ebx,240
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	imul	ebx,-1
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_127
	mov	eax,[ebp-248]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	cmp	eax,280
	setg	al
	movzx	eax,al
	mov	[ebp-256],eax
	cmp	[ebp-252],199
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-256]
	and	eax,ebx
	and	eax,eax
	jz	_128
	sub	esp,4
	mov	eax,[ebp-248]
	mov	[esp],eax
	call	__bbObjDelete
	add	[ebp-252],1
	mov	ebx,[ebp-228]
	cmp	[ebp-252],ebx
	jl	_129
	mov	[ebp-252],200
_129
	jmp	_130
_128
	sub	esp,16
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_fdrawimage
_130
	sub	esp,8
	mov	eax,[ebp-248]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_131
	sub	esp,32
	mov	[esp+24],220
	mov	esi,2
	sub	esi,[ebp-116]
	mov	[esp+28],esi
	mov	esi,[ebp-124]
	mov	[esp+20],esi
	mov	ebx,[ebp-80]
	mov	[esp+16],ebx
	mov	[esp+12],0
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_fimagescollide
	and	eax,eax
	jz	_132
	mov	[ebp-160],1
_132
_131
	sub	esp,8
	lea	eax,[ebp-176]
	mov	[esp],eax
	mov	[esp+4],_tbull
	call	__bbObjEachFirst
	and	eax,eax
	jz	_20
_133
	sub	esp,8
	mov	eax,[ebp-248]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-256],eax
	mov	[ebp-260],eax
	sub	esp,8
	mov	ebx,[ebp-176]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	__bbObjCompare
	mov	ebx,eax
	mov	eax,[ebp-260]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-256]
	and	eax,ebx
	and	eax,eax
	jz	_134
	sub	esp,24
	mov	ebx,[ebp-248]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	esi,[ebp-248]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	esi,[ebp-88]
	mov	[esp+12],esi
	mov	ebx,[ebp-176]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-176]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_fimagesoverlap
	and	eax,eax
	jz	_135
	sub	esp,4
	mov	eax,[ebp-248]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	mov	eax,[ebp-176]
	mov	[esp],eax
	call	__bbObjDelete
	add	[ebp-252],1
	mov	ebx,[ebp-228]
	cmp	[ebp-252],ebx
	jl	_136
	mov	[ebp-252],200
_136
	sub	[ebp-128],1
	add	[ebp-120],1
_135
_134
	sub	esp,4
	lea	eax,[ebp-176]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_133
_20
	sub	esp,4
	lea	eax,[ebp-248]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_125
_19
	cmp	[ebp-252],200
	jl	_137
	mov	[ebp-252],0
	mov	[ebp-156],0
	mov	[ebp-152],2000
	call	_fmillisecs
	mov	[ebp-144],eax
	mov	[ebp-164],0
_137
	ret
_l_2wav1
_l_2wav2
_l_2wav3
_l_2wav4
	ret
_2_leave
	mov	[ebp-256],eax
	sub	esp,4
	mov	ebx,[ebp-192]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-256]
	mov	[ebp-256],eax
	sub	esp,4
	mov	esi,[ebp-248]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-256]
	mov	[ebp-256],eax
	sub	esp,4
	mov	esi,[ebp-176]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-256]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fflush
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fflushkeys
	call	_fflushjoy
	call	_fflushmouse
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_22	.db	"Title.bmp",0
_23	.db	"Game Data is loading",0
_24	.db	"Please Wait",0
_25	.db	"Tile.bmp",0
_26	.db	"Tile1.bmp",0
_27	.db	"Tile2.bmp",0
_28	.db	"Tile3.bmp",0
_29	.db	"Tile4.bmp",0
_30	.db	"Tile5.bmp",0
_31	.db	"Tile6.bmp",0
_32	.db	"Tile7.bmp",0
_33	.db	"Tile8.bmp",0
_34	.db	"Wall.bmp",0
_35	.db	"Wall1.bmp",0
_36	.db	"MyShip.bmp",0
_37	.db	"MyShipLaser.bmp",0
_38	.db	"Enemy.bmp",0
_39	.db	"Game is Ready",0
_40	.db	"Press Fire",0
_45	.db	"Score:",0
_49	.db	"",0
_51	.db	"Score:",0
_52	.db	"Game Over",0
_63	.db	"Press fire (ctrl) to start",0
_64	.db	"Press 1-9",0
_65	.db	"To Change Background",0
_66	.db	"Press 0",0
_67	.db	"To Change the Wall",0
_68	.db	"",0
_114	.db	"Enemy.bmp",0
_116	.db	"Enemy1.bmp",0
	.align	4
_tbull	.dd	5
_138	.dd	0
	.dd	_138
	.dd	_138
	.dd	0
	.dd	-1
_139	.dd	0
	.dd	_139
	.dd	_139
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_teship	.dd	5
_140	.dd	0
	.dd	_140
	.dd	_140
	.dd	0
	.dd	-1
_141	.dd	0
	.dd	_141
	.dd	_141
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	3
	.dd	1
	.dd	100
	.dd	1
	.dd	-16
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	5
	.dd	1
	.dd	240
	.dd	1
	.dd	-16
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	1
	.dd	7
	.dd	1
	.dd	200
	.dd	1
	.dd	-16
	.dd	1
	.dd	-3
	.dd	1
	.dd	1
	.dd	1
	.dd	10
	.dd	1
	.dd	69
	.dd	1
	.dd	-16
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0

