
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
	sub	esp,12
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],444
	mov	[esp],600
	call	_fgraphics
	sub	esp,8
	mov	[esp],_vname
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vmoney],255
	mov	[_vmana],200
	mov	[_vhp],1000
	mov	[_vgoblins],5
	mov	[_vmorale],29
	mov	[_vfsword],0
	mov	[_vfexit],0
	mov	[_vfamulet],0
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fhidepointer
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],2354
	call	_fdelay
	sub	esp,8
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	[esp],_vname
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_24
_23
	cmp	[_vhp],0
	jle	_25
	sub	esp,16
	mov	eax,[_vmoney]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	jmp	_27
_25
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_27
	call	_fmenu
_24
	cmp	[_vfexit],0
	jz	_23
_3
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fp
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fp
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fp
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fp
	sub	esp,4
	mov	[esp],2888
	call	_fdelay
	call	_fshowpointer
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frecta
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	esi,[ebp+40]
	mov	[esp+12],esi
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+44]
	mov	[esp+8],ebx
	mov	esi,[ebp+48]
	mov	[esp+12],esi
	mov	esi,[ebp+40]
	mov	[esp+4],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp+48]
	mov	[esp+4],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fline
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_frec
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	add	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	eax,[ebp+28]
	imul	eax,[ebp+32]
	mov	[esp],eax
	call	__bbAbs
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fp
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fprintscore
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fprompt
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpro
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprompt
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fwk
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fwaitkey
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmenu
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
	sub	esp,8
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	cmp	[ebp-8],1
	jz	_51
	cmp	[ebp-8],2
	jz	_52
	cmp	[ebp-8],8
	jz	_53
	cmp	[ebp-8],3
	jz	_54
	cmp	[ebp-8],6
	jz	_55
	cmp	[ebp-8],7
	jz	_56
	cmp	[ebp-8],5
	jz	_57
	cmp	[ebp-8],4
	jz	_58
	sub	esp,8
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
	call	_fmenu
	jmp	_50
_51
	mov	[_vfsword],1
	sub	esp,8
	mov	[esp],51
	mov	[esp+4],220
	call	_frand
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	sub	[_vmoney],ebx
	sub	esp,24
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprompt
	jmp	_50
_52
	sub	esp,4
	mov	[esp],0
	call	_fplaysound
	cmp	[_vmoney],5
	jl	_62
	sub	[_vmoney],5
	sub	esp,8
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
	jmp	_64
_62
	sub	esp,8
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
_64
	jmp	_50
_53
	cmp	[_vmoney],11
	jl	_66
	sub	[_vmoney],11
	sub	esp,8
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
	jmp	_68
_66
	sub	esp,8
	mov	eax,_69
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_68
	jmp	_50
_54
	sub	esp,8
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
	jmp	_50
_55
	sub	esp,8
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
	jmp	_50
_56
	mov	[_vfexit],1
	jmp	_50
_57
	sub	esp,8
	mov	[esp],42
	mov	[esp+4],79
	call	_frand
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	cmp	[_vmoney],ebx
	jl	_72
	sub	esp,24
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fp
	mov	ebx,[ebp-16]
	sub	[_vmoney],ebx
	jmp	_75
_72
	sub	esp,8
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_75
	jmp	_50
_58
	mov	[ebp-20],50
	jmp	_78
_77
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],500
	call	_frand
	mov	[ebp-24],eax
	mov	ebx,[ebp-24]
	sub	[_vhp],ebx
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,_79
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[_vhp]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_81
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprompt
	cmp	[_vhp],0
	jg	_82
	jmp	_14
_82
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],25
	call	_frand
	mov	[ebp-28],eax
	mov	ebx,[_vfsword]
	and	ebx,ebx
	jz	_83
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],4
	call	_frand
	add	[ebp-28],eax
_83
	mov	ebx,[ebp-28]
	sub	[ebp-20],ebx
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],255
	mov	[esp],100
	call	_fcolor
	sub	esp,40
	mov	eax,_84
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_86
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprompt
_78
	cmp	[ebp-20],1
	setge	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[_vhp],1
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jnz	_77
_14
	cmp	[ebp-20],0
	jle	_87
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
	jmp	_89
_87
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],10
	mov	[esp],0
	call	_fcolor
	sub	esp,8
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprompt
_89
	jmp	_50
_50
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_15	.db	"Super adventure shareware by Roland- share it Welcome to the world of the plastic beach",0
_16	.db	"",0
	.align	4
_vname	.dd	0
_17	.db	"no one",0
	.align	4
_vmoney	.dd	0
	.align	4
_vmana	.dd	0
	.align	4
_vhp	.dd	0
	.align	4
_vgoblins	.dd	0
	.align	4
_vmorale	.dd	0
	.align	4
_vfsword	.dd	0
	.align	4
_vfexit	.dd	0
	.align	4
_vfamulet	.dd	0
_18	.db	"To buy visit http://matrix.happyhost.org or livingcafe.com soon",0
_19	.db	"Price point $49.90",0
_20	.db	"dont press a key yet.",0
_21	.db	"Welcome eager traveller to this epic adventure.",0
_22	.db	"What's your name?",0
_26	.db	" rubles in your bank account",0
_28	.db	"You are dead",0
_29	.db	"Game ended",0
_30	.db	"...and Gorrilasz hitler hit u",0
_31	.db	"Made by a guy who likes Tuna",0
_32	.db	"don't press a key...",0
	.align	4
_tpt	.dd	5
_33	.dd	0
	.dd	_33
	.dd	_33
	.dd	0
	.dd	-1
_34	.dd	0
	.dd	_34
	.dd	_34
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tpt2d	.dd	5
_35	.dd	0
	.dd	_35
	.dd	_35
	.dd	0
	.dd	-1
_36	.dd	0
	.dd	_36
	.dd	_36
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_trobot	.dd	5
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
_38	.dd	0
	.dd	_38
	.dd	_38
	.dd	0
	.dd	-1
	.dd	2
	.dd	_tpt
	.dd	__bbStrType
_39	.db	"Score is ",0
_40	.db	"Press any key to continue",0
_41	.db	"1 - buy item",0
_42	.db	"2 - enter shop",0
_43	.db	"3 - go to forrest",0
_44	.db	"4 - joust",0
_45	.db	"5 - buy amulet",0
_46	.db	"6 - Set Sail",0
_47	.db	"8 - eat fresh",0
_48	.db	"7 - Quit game",0
_49	.db	"Enter your choice:",0
_59	.db	"Wrong choice; please try again",0
_60	.db	"You buy a longsword for ",0
_61	.db	" rubles",0
_63	.db	"You enter tavern and buy a beer for 5 rub$",0
_65	.db	"got no money",0
_67	.db	"you eat at Subway.",0
_69	.db	"Got no money.",0
_70	.db	"Gone to park with trees. Got lost.",0
_71	.db	"You go to Europe, Hungary - the butt B-3 of many jokes in English to do with food and salivation",0
_73	.db	"You buy a gold studded amulet of protection for ",0
_74	.db	" rubles",0
_76	.db	"you don't have enough money.",0
_79	.db	"You were hit for ",0
_80	.db	". You have ",0
_81	.db	"/1000 HP remaining.",0
_84	.db	"You hit monster for ",0
_85	.db	" ",0
_86	.db	"/50 hp",0
_88	.db	"You lost loser.",0
_90	.db	"You won'",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

