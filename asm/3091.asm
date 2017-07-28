
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,12
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fapptitle
	jmp	_39
_38
	call	_fcls
	sub	esp,32
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fx360_leftstickx
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],120
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fx360_leftsticky
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],130
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],0
	mov	[esp+8],100
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,24
	mov	[esp],0
	call	_fx360_leftsticky
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],1
	sub	esp,4
	mov	[esp],0
	call	_fx360_leftstickx
	mov	esi,1112014848
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1112014848
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_foval
	mov	esi,eax
	sub	esp,32
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fx360_rightstickx
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],120
	mov	[esp],200
	call	_ftext
	sub	esp,32
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fx360_rightsticky
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],130
	mov	[esp],200
	call	_ftext
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],0
	mov	[esp+8],100
	mov	[esp+4],0
	mov	[esp],100
	call	_foval
	sub	esp,24
	mov	[esp],0
	call	_fx360_rightsticky
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],1
	sub	esp,4
	mov	[esp],0
	call	_fx360_rightstickx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1125515264
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_foval
	mov	esi,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],300
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],300
	call	_ftext
	sub	esp,16
	mov	[esp+8],1024
	mov	[esp+12],180
	mov	[esp+4],180
	mov	[esp],0
	call	_fline
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],0
	mov	[esp+8],50
	mov	[esp+4],200
	mov	[esp],50
	call	_frect
	sub	esp,24
	mov	[esp],0
	call	_fx360_returntrigger
	fchs
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],1
	mov	[esp+8],50
	mov	[esp+4],200
	mov	[esp],50
	call	_frect
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],0
	mov	[esp+8],50
	mov	[esp+4],200
	mov	[esp],0
	call	_frect
	sub	esp,24
	mov	[esp],0
	call	_fx360_returntrigger
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],1
	mov	[esp+8],50
	mov	[esp+4],200
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],230
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],250
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fx360_returntrigger
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],270
	mov	[esp],0
	call	_ftext
	sub	esp,16
	mov	[esp+8],1024
	mov	[esp+12],300
	mov	[esp+4],300
	mov	[esp],0
	call	_fline
	sub	esp,4
	mov	[esp],0
	call	_fx360_abuttondown
	cmp	eax,0
	jnz	_50
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],310
	mov	[esp],0
	call	_ftext
	jmp	_52
_50
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],310
	mov	[esp],0
	call	_ftext
_52
	sub	esp,4
	mov	[esp],0
	call	_fx360_bbuttondown
	cmp	eax,0
	jnz	_54
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],320
	mov	[esp],0
	call	_ftext
	jmp	_56
_54
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],320
	mov	[esp],0
	call	_ftext
_56
	sub	esp,4
	mov	[esp],0
	call	_fx360_xbuttondown
	cmp	eax,0
	jnz	_58
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],330
	mov	[esp],0
	call	_ftext
	jmp	_60
_58
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_61
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],330
	mov	[esp],0
	call	_ftext
_60
	sub	esp,4
	mov	[esp],0
	call	_fx360_ybuttondown
	cmp	eax,0
	jnz	_62
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],340
	mov	[esp],0
	call	_ftext
	jmp	_64
_62
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],340
	mov	[esp],0
	call	_ftext
_64
	sub	esp,4
	mov	[esp],0
	call	_fx360_rbbuttondown
	cmp	eax,0
	jnz	_66
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],360
	mov	[esp],0
	call	_ftext
	jmp	_68
_66
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_69
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],360
	mov	[esp],0
	call	_ftext
_68
	sub	esp,4
	mov	[esp],0
	call	_fx360_lbbuttondown
	cmp	eax,0
	jnz	_70
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],370
	mov	[esp],0
	call	_ftext
	jmp	_72
_70
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],370
	mov	[esp],0
	call	_ftext
_72
	sub	esp,4
	mov	[esp],0
	call	_fx360_lstickbuttondown
	cmp	eax,0
	jnz	_74
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_75
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],390
	mov	[esp],0
	call	_ftext
	jmp	_76
_74
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_77
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],390
	mov	[esp],0
	call	_ftext
_76
	sub	esp,4
	mov	[esp],0
	call	_fx360_rstickbuttondown
	cmp	eax,0
	jnz	_78
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_79
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],400
	mov	[esp],0
	call	_ftext
	jmp	_80
_78
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],400
	mov	[esp],0
	call	_ftext
_80
	sub	esp,4
	mov	[esp],0
	call	_fx360_startbuttondown
	cmp	eax,0
	jnz	_82
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_83
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],420
	mov	[esp],0
	call	_ftext
	jmp	_84
_82
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_85
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],420
	mov	[esp],0
	call	_ftext
_84
	sub	esp,4
	mov	[esp],0
	call	_fx360_backbuttondown
	cmp	eax,0
	jnz	_86
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_87
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],430
	mov	[esp],0
	call	_ftext
	jmp	_88
_86
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_89
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],430
	mov	[esp],0
	call	_ftext
_88
	sub	esp,16
	mov	[esp+8],1024
	mov	[esp+12],450
	mov	[esp+4],450
	mov	[esp],0
	call	_fline
	sub	esp,4
	mov	[esp],0
	call	_fx360_dpaddir
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],500
	mov	[esp],0
	call	_ftext
	cmp	[ebp-4],1
	jnz	_91
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_92
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_91
	cmp	[ebp-4],2
	jnz	_93
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_94
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_93
	cmp	[ebp-4],3
	jnz	_95
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_96
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_95
	cmp	[ebp-4],4
	jnz	_97
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_98
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_97
	cmp	[ebp-4],5
	jnz	_99
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_100
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_99
	cmp	[ebp-4],6
	jnz	_101
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_102
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_101
	cmp	[ebp-4],7
	jnz	_103
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_104
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_103
	cmp	[ebp-4],8
	jnz	_105
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_106
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_105
	cmp	[ebp-4],0
	jnz	_107
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_108
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],0
	call	_ftext
_107
	cmp	[ebp-4],-1
	jnz	_109
	sub	esp,8
	mov	eax,_110
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_109
	sub	esp,4
	mov	[esp],1
	call	_fflip
_39
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_38
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fx360_leftstickx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_111
	sub	esp,4
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_112
_111
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_112
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_leftsticky
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_113
	sub	esp,4
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_114
_113
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_114
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_leftstickxdir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_115
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	mov	[ebp-4],eax
	jmp	_116
_115
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyxdir
	mov	[ebp-4],eax
_116
	mov	eax,[ebp-4]
	jmp	_6_leave
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
_fx360_leftstickydir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_117
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	mov	[ebp-4],eax
	jmp	_118
_117
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyydir
	mov	[ebp-4],eax
_118
	mov	eax,[ebp-4]
	jmp	_7_leave
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
_fx360_rightstickx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_119
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_120
_119
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoypitch
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
_120
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	jmp	_8_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rightsticky
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_121
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_122
_121
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyyaw
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
_122
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	jmp	_9_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rightstickxdir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],-1
	jnz	_123
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_124
	mov	[ebp-4],-1
_124
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_125
	mov	[ebp-4],1
_125
	jmp	_126
_123
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_127
	mov	[ebp-4],-1
_127
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_128
	mov	[ebp-4],1
_128
_126
	mov	eax,[ebp-4]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fx360_rightstickydir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],-1
	jnz	_129
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_130
	mov	[ebp-4],-1
_130
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_131
	mov	[ebp-4],1
_131
	jmp	_132
_129
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_133
	mov	[ebp-4],-1
_133
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_134
	mov	[ebp-4],1
_134
_132
	mov	eax,[ebp-4]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fx360_returntrigger
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_135
	sub	esp,4
	mov	[esp],0
	call	_fjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_136
_135
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_136
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_12_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_triggerdown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_137
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	mov	[ebp-4],eax
	jmp	_138
_137
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyzdir
	mov	[ebp-4],eax
_138
	mov	eax,[ebp-4]
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
_fx360_abuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_139
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_140
	mov	eax,1
	jmp	_14_leave
_140
	jmp	_141
_139
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_142
	mov	eax,1
	jmp	_14_leave
_142
_141
	mov	eax,0
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_bbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_143
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_144
	mov	eax,1
	jmp	_15_leave
_144
	jmp	_145
_143
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_146
	mov	eax,1
	jmp	_15_leave
_146
_145
	mov	eax,0
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_ybuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_147
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_148
	mov	eax,1
	jmp	_16_leave
_148
	jmp	_149
_147
	sub	esp,8
	mov	[esp],4
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_150
	mov	eax,1
	jmp	_16_leave
_150
_149
	mov	eax,0
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_xbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_151
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_152
	mov	eax,1
	jmp	_17_leave
_152
	jmp	_153
_151
	sub	esp,8
	mov	[esp],3
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_154
	mov	eax,1
	jmp	_17_leave
_154
_153
	mov	eax,0
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rbbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_155
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_156
	mov	eax,1
	jmp	_18_leave
_156
	jmp	_157
_155
	sub	esp,8
	mov	[esp],6
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_158
	mov	eax,1
	jmp	_18_leave
_158
_157
	mov	eax,0
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_lbbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_159
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_160
	mov	eax,1
	jmp	_19_leave
_160
	jmp	_161
_159
	sub	esp,8
	mov	[esp],5
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_162
	mov	eax,1
	jmp	_19_leave
_162
_161
	mov	eax,0
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_startbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_163
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_164
	mov	eax,1
	jmp	_20_leave
_164
	jmp	_165
_163
	sub	esp,8
	mov	[esp],8
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_166
	mov	eax,1
	jmp	_20_leave
_166
_165
	mov	eax,0
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_backbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_167
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_168
	mov	eax,1
	jmp	_21_leave
_168
	jmp	_169
_167
	sub	esp,8
	mov	[esp],7
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_170
	mov	eax,1
	jmp	_21_leave
_170
_169
	mov	eax,0
	jmp	_21_leave
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_lstickbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_171
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_172
	mov	eax,1
	jmp	_22_leave
_172
	jmp	_173
_171
	sub	esp,8
	mov	[esp],9
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_174
	mov	eax,1
	jmp	_22_leave
_174
_173
	mov	eax,0
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rstickbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_175
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_176
	mov	eax,1
	jmp	_23_leave
_176
	jmp	_177
_175
	sub	esp,8
	mov	[esp],10
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_178
	mov	eax,1
	jmp	_23_leave
_178
_177
	mov	eax,0
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_abuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_179
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_180
	mov	eax,1
	jmp	_24_leave
_180
	jmp	_181
_179
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_182
	mov	eax,1
	jmp	_24_leave
_182
_181
	mov	eax,0
	jmp	_24_leave
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_bbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_183
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_184
	mov	eax,1
	jmp	_25_leave
_184
	jmp	_185
_183
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_186
	mov	eax,1
	jmp	_25_leave
_186
_185
	mov	eax,0
	jmp	_25_leave
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_ybuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_187
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_188
	mov	eax,1
	jmp	_26_leave
_188
	jmp	_189
_187
	sub	esp,8
	mov	[esp],4
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_190
	mov	eax,1
	jmp	_26_leave
_190
_189
	mov	eax,0
	jmp	_26_leave
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_xbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_191
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_192
	mov	eax,1
	jmp	_27_leave
_192
	jmp	_193
_191
	sub	esp,8
	mov	[esp],3
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_194
	mov	eax,1
	jmp	_27_leave
_194
_193
	mov	eax,0
	jmp	_27_leave
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rbbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_195
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_196
	mov	eax,1
	jmp	_28_leave
_196
	jmp	_197
_195
	sub	esp,8
	mov	[esp],6
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_198
	mov	eax,1
	jmp	_28_leave
_198
_197
	mov	eax,0
	jmp	_28_leave
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_lbbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_199
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_200
	mov	eax,1
	jmp	_29_leave
_200
	jmp	_201
_199
	sub	esp,8
	mov	[esp],5
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_202
	mov	eax,1
	jmp	_29_leave
_202
_201
	mov	eax,0
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
	.align	16
_fx360_startbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_203
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_204
	mov	eax,1
	jmp	_30_leave
_204
	jmp	_205
_203
	sub	esp,8
	mov	[esp],8
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_206
	mov	eax,1
	jmp	_30_leave
_206
_205
	mov	eax,0
	jmp	_30_leave
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_backbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_207
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_208
	mov	eax,1
	jmp	_31_leave
_208
	jmp	_209
_207
	sub	esp,8
	mov	[esp],7
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_210
	mov	eax,1
	jmp	_31_leave
_210
_209
	mov	eax,0
	jmp	_31_leave
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_lstickbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_211
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_212
	mov	eax,1
	jmp	_32_leave
_212
	jmp	_213
_211
	sub	esp,8
	mov	[esp],9
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_214
	mov	eax,1
	jmp	_32_leave
_214
_213
	mov	eax,0
	jmp	_32_leave
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rstickbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_215
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_216
	mov	eax,1
	jmp	_33_leave
_216
	jmp	_217
_215
	sub	esp,8
	mov	[esp],10
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_218
	mov	eax,1
	jmp	_33_leave
_218
_217
	mov	eax,0
	jmp	_33_leave
	mov	eax,0
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_dpaddir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],-1
	jnz	_219
	sub	esp,4
	mov	[esp],0
	call	_fjoyhat
	mov	[ebp-4],eax
	jmp	_220
_219
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyhat
	mov	[ebp-4],eax
_220
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_222
	cmp	[ebp-8],45
	jz	_223
	cmp	[ebp-8],90
	jz	_224
	cmp	[ebp-8],135
	jz	_225
	cmp	[ebp-8],180
	jz	_226
	cmp	[ebp-8],225
	jz	_227
	cmp	[ebp-8],270
	jz	_228
	cmp	[ebp-8],315
	jz	_229
	cmp	[ebp-8],-1
	jz	_230
	mov	eax,-1
	jmp	_34_leave
	jmp	_221
_222
	mov	eax,1
	jmp	_34_leave
	jmp	_221
_223
	mov	eax,2
	jmp	_34_leave
	jmp	_221
_224
	mov	eax,3
	jmp	_34_leave
	jmp	_221
_225
	mov	eax,4
	jmp	_34_leave
	jmp	_221
_226
	mov	eax,5
	jmp	_34_leave
	jmp	_221
_227
	mov	eax,6
	jmp	_34_leave
	jmp	_221
_228
	mov	eax,7
	jmp	_34_leave
	jmp	_221
_229
	mov	eax,8
	jmp	_34_leave
	jmp	_221
_230
	mov	eax,0
	jmp	_34_leave
	jmp	_221
_221
	mov	eax,0
	jmp	_34_leave
_34_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_36	.db	"Xinput Demo by bloos_magoos",0
_37	.db	"",0
_40	.db	"Left Stick X - ",0
_41	.db	"Left Stick Y - ",0
_42	.db	"Right Stick X - ",0
_43	.db	"Right Stick Y - ",0
_44	.db	"<--- LOL (.)(.)",0
_45	.db	"Right Analog Stick Graphic is not exact because the function returns a 180 instead of 1",0
_46	.db	"NOTICE - - Pressing both triggers makes trigger axis return zero :(",0
_47	.db	"  This is because the triggers are read as one axis, so pressing both adds 1+ -1 (which is zero.)",0
_48	.db	"  If anybody knows how to fix this, lemme know",0
_49	.db	"Trigger Axis ->",0
_51	.db	"A",0
_53	.db	">>A<<",0
_55	.db	"B",0
_57	.db	">>B<<",0
_59	.db	"X",0
_61	.db	">>X<<",0
_63	.db	"Y",0
_65	.db	">>Y<<",0
_67	.db	"Right Bumper",0
_69	.db	">>Right Bumper<<",0
_71	.db	"Left Bumper",0
_73	.db	">>Left Bumper<<",0
_75	.db	"Left Stick",0
_77	.db	">>Left Stick<<",0
_79	.db	"Right Stick",0
_81	.db	">>Right Stick<<",0
_83	.db	"Start",0
_85	.db	">>Start<<",0
_87	.db	"Back",0
_89	.db	">>Back<<",0
_90	.db	"D-PAD",0
_92	.db	"^ up",0
_94	.db	"^ + > up+right",0
_96	.db	"> right",0
_98	.db	"v + > down+right",0
_100	.db	"v down",0
_102	.db	"v + < down+left",0
_104	.db	"< left",0
_106	.db	"^ + < up+left",0
_108	.db	" - - ",0
_110	.db	"Something happened I guess",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

