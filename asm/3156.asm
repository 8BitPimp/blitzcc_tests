
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_ablock
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,21
	mov	esi,_ablock
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_ablock
	add	esi,16
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_ablock
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ablock
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,32
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	call	_fmakeblocks
	mov	[_vbx],5
	mov	[_vby],0
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],21
	call	_frand
	mov	[_vcb],eax
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-4],eax
	jmp	_40
_39
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	call	_fdrawmap
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	[esp+8],224
	mov	[esp+12],48
	mov	[esp+4],48
	mov	[esp],0
	call	_fline
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],15
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],25
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	mov	[ebp-60],eax
	cmp	[_vbx],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_43
	sub	[_vbx],1
_43
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	and	eax,eax
	jz	_44
	mov	[ebp-8],1
	mov	[ebp-12],1
	jmp	_45
_46
	mov	[ebp-16],1
	jmp	_47
_48
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_49
	mov	ebx,[_vbx]
	add	ebx,[ebp-16]
	cmp	ebx,12
	jle	_50
	mov	[ebp-8],0
_50
_49
	add	[ebp-16],1
_47
	cmp	[ebp-16],4
	jle	_48
_5
	add	[ebp-12],1
_45
	cmp	[ebp-12],4
	jle	_46
_4
	cmp	[ebp-8],1
	jnz	_51
	add	[_vbx],1
_51
_44
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_52
	mov	ebx,[_vcb]
	mov	[ebp-20],ebx
	cmp	[ebp-20],1
	jz	_54
	cmp	[ebp-20],2
	jz	_55
	cmp	[ebp-20],3
	jz	_56
	cmp	[ebp-20],4
	jz	_57
	cmp	[ebp-20],5
	jz	_58
	cmp	[ebp-20],6
	jz	_59
	cmp	[ebp-20],7
	jz	_60
	cmp	[ebp-20],8
	jz	_61
	cmp	[ebp-20],9
	jz	_62
	cmp	[ebp-20],10
	jz	_63
	cmp	[ebp-20],11
	jz	_64
	cmp	[ebp-20],12
	jz	_65
	cmp	[ebp-20],13
	jz	_66
	cmp	[ebp-20],14
	jz	_67
	cmp	[ebp-20],15
	jz	_68
	cmp	[ebp-20],16
	jz	_69
	cmp	[ebp-20],17
	jz	_70
	cmp	[ebp-20],18
	jz	_71
	cmp	[ebp-20],19
	jz	_72
	cmp	[ebp-20],20
	jz	_73
	cmp	[ebp-20],21
	jz	_74
	jmp	_53
_54
	jmp	_53
_55
	sub	esp,4
	mov	[esp],3
	call	_fmapob
	cmp	eax,0
	jnz	_75
	mov	[_vcb],3
_75
	jmp	_53
_56
	sub	esp,4
	mov	[esp],2
	call	_fmapob
	cmp	eax,0
	jnz	_76
	mov	[_vcb],2
_76
	jmp	_53
_57
	sub	esp,4
	mov	[esp],5
	call	_fmapob
	cmp	eax,0
	jnz	_77
	mov	[_vcb],5
_77
	jmp	_53
_58
	sub	esp,4
	mov	[esp],6
	call	_fmapob
	cmp	eax,0
	jnz	_78
	mov	[_vcb],6
_78
	jmp	_53
_59
	sub	esp,4
	mov	[esp],7
	call	_fmapob
	cmp	eax,0
	jnz	_79
	mov	[_vcb],7
_79
	jmp	_53
_60
	sub	esp,4
	mov	[esp],4
	call	_fmapob
	cmp	eax,0
	jnz	_80
	mov	[_vcb],4
_80
	jmp	_53
_61
	sub	esp,4
	mov	[esp],9
	call	_fmapob
	cmp	eax,0
	jnz	_81
	mov	[_vcb],9
_81
	jmp	_53
_62
	sub	esp,4
	mov	[esp],10
	call	_fmapob
	cmp	eax,0
	jnz	_82
	mov	[_vcb],10
_82
	jmp	_53
_63
	sub	esp,4
	mov	[esp],11
	call	_fmapob
	cmp	eax,0
	jnz	_83
	mov	[_vcb],11
_83
	jmp	_53
_64
	sub	esp,4
	mov	[esp],8
	call	_fmapob
	cmp	eax,0
	jnz	_84
	mov	[_vcb],8
_84
	jmp	_53
_65
	sub	esp,4
	mov	[esp],13
	call	_fmapob
	cmp	eax,0
	jnz	_85
	mov	[_vcb],13
_85
	jmp	_53
_66
	sub	esp,4
	mov	[esp],12
	call	_fmapob
	cmp	eax,0
	jnz	_86
	mov	[_vcb],12
_86
	jmp	_53
_67
	sub	esp,4
	mov	[esp],15
	call	_fmapob
	cmp	eax,0
	jnz	_87
	mov	[_vcb],15
_87
	jmp	_53
_68
	sub	esp,4
	mov	[esp],16
	call	_fmapob
	cmp	eax,0
	jnz	_88
	mov	[_vcb],16
_88
	jmp	_53
_69
	sub	esp,4
	mov	[esp],17
	call	_fmapob
	cmp	eax,0
	jnz	_89
	mov	[_vcb],17
_89
	jmp	_53
_70
	sub	esp,4
	mov	[esp],14
	call	_fmapob
	cmp	eax,0
	jnz	_90
	mov	[_vcb],14
_90
	jmp	_53
_71
	sub	esp,4
	mov	[esp],19
	call	_fmapob
	cmp	eax,0
	jnz	_91
	mov	[_vcb],19
_91
	jmp	_53
_72
	sub	esp,4
	mov	[esp],18
	call	_fmapob
	cmp	eax,0
	jnz	_92
	mov	[_vcb],18
_92
	jmp	_53
_73
	sub	esp,4
	mov	[esp],21
	call	_fmapob
	cmp	eax,0
	jnz	_93
	mov	[_vcb],21
_93
	jmp	_53
_74
	sub	esp,4
	mov	[esp],20
	call	_fmapob
	cmp	eax,0
	jnz	_94
	mov	[_vcb],20
_94
	jmp	_53
_53
_52
	mov	[ebp-12],1
	jmp	_95
_96
	mov	[ebp-16],1
	jmp	_97
_98
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_99
	mov	ebx,[_vbx]
	add	ebx,[ebp-16]
	cmp	ebx,13
	jle	_100
	sub	[_vbx],1
_100
_99
	add	[ebp-16],1
_97
	cmp	[ebp-16],4
	jle	_98
_8
	add	[ebp-12],1
_95
	cmp	[ebp-12],4
	jle	_96
_7
	mov	[ebp-12],1
	jmp	_101
_102
	mov	[ebp-16],1
	jmp	_103
_104
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_105
	sub	esp,20
	mov	ebx,[_vby]
	shl	ebx,byte 4
	mov	esi,[ebp-12]
	shl	esi,byte 4
	add	ebx,esi
	mov	[esp+4],ebx
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	eax,[_vbx]
	shl	eax,byte 4
	mov	esi,[ebp-16]
	shl	esi,byte 4
	add	eax,esi
	mov	[esp],eax
	call	_frect
_105
	add	[ebp-16],1
_103
	cmp	[ebp-16],4
	jle	_104
_10
	add	[ebp-12],1
_101
	cmp	[ebp-12],4
	jle	_102
_9
	add	[ebp-24],1
	cmp	[ebp-24],20
	jle	_106
	add	[_vby],1
	mov	[ebp-24],0
_106
	mov	[ebp-28],1
	jmp	_107
_108
	mov	[ebp-32],1
	jmp	_109
_110
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_111
	mov	ebx,[ebp-28]
	add	ebx,[_vby]
	cmp	ebx,21
	jle	_112
	sub	[_vby],1
	call	_ffillblockinmap
	mov	[_vby],0
	mov	[_vbx],5
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],21
	call	_frand
	mov	[_vcb],eax
_112
_111
	mov	[ebp-36],0
	cmp	[ebp-36],0
	jnz	_113
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_114
	mov	ebx,[_vby]
	add	ebx,[ebp-28]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vbx]
	add	esi,[ebp-32]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,1
	jnz	_115
	cmp	[_vby],2
	jge	_116
	call	_fend
_116
	sub	[_vby],1
	call	_ffillblockinmap
	mov	[_vby],0
	mov	[_vbx],5
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],21
	call	_frand
	mov	[_vcb],eax
	mov	[ebp-36],1
_115
_114
_113
	add	[ebp-32],1
_109
	cmp	[ebp-32],4
	jle	_110
_12
	add	[ebp-28],1
_107
	cmp	[ebp-28],4
	jle	_108
_11
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_117
	call	_fmousey
	sar	eax,byte 4
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	mov	[ebp-60],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-60]
	sar	ebx,byte 4
	add	ebx,eax
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	esi,1
	mov	[ebx],esi
_117
	mov	[ebp-12],2
	jmp	_118
_119
	mov	[ebp-40],1
	mov	[ebp-16],0
	jmp	_120
_121
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_122
	mov	[ebp-40],0
_122
	add	[ebp-16],1
_120
	cmp	[ebp-16],13
	jle	_121
_14
	cmp	[ebp-40],1
	jnz	_123
	mov	[ebp-32],0
	jmp	_124
_125
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-32],1
_124
	cmp	[ebp-32],13
	jle	_125
_15
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-28],ebx
	jmp	_126
_127
	mov	[ebp-32],0
	jmp	_128
_129
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	mov	[ebx],esi
	add	[ebp-32],1
_128
	cmp	[ebp-32],14
	jle	_129
_17
	add	[ebp-28],-1
_126
	cmp	[ebp-28],2
	jge	_127
_16
_123
	add	[ebp-12],1
_118
	cmp	[ebp-12],22
	jle	_119
_13
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	and	eax,eax
	jz	_130
	mov	[ebp-44],0
	jmp	_132
_131
	add	[_vby],1
	mov	[ebp-12],1
	jmp	_133
_134
	mov	[ebp-16],1
	jmp	_135
_136
	cmp	[ebp-44],0
	jnz	_137
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_138
	mov	ebx,[_vby]
	add	ebx,[ebp-12]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vbx]
	add	esi,[ebp-16]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,1
	jnz	_139
	sub	[_vby],1
	call	_ffillblockinmap
	mov	[_vby],0
	mov	[_vbx],5
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],21
	call	_frand
	mov	[_vcb],eax
	mov	[ebp-44],1
_139
	mov	ebx,[_vby]
	add	ebx,[ebp-12]
	cmp	ebx,20
	jle	_140
	call	_ffillblockinmap
	mov	[_vby],0
	mov	[_vbx],5
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],21
	call	_frand
	mov	[_vcb],eax
	mov	[ebp-44],1
_140
_138
_137
	add	[ebp-16],1
_135
	cmp	[ebp-16],4
	jle	_136
_20
	add	[ebp-12],1
_133
	cmp	[ebp-12],4
	jle	_134
_19
_132
	cmp	[ebp-44],0
	jz	_131
_18
_130
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,1
	jnz	_141
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-48],1
	mov	[ebp-52],0
	jmp	_142
_143
	mov	[ebp-56],0
	jmp	_144
_145
	cmp	[ebp-48],22
	jge	_146
	sub	esp,12
	mov	ebx,[ebp-56]
	imul	ebx,96
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	imul	esi,96
	mov	[esp+8],esi
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fdblock
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,[ebp-52]
	imul	ebx,96
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	imul	eax,96
	mov	[esp],eax
	call	_ftext
_146
	add	[ebp-48],1
	add	[ebp-56],1
_144
	cmp	[ebp-56],5
	jle	_145
_22
	add	[ebp-52],1
_142
	cmp	[ebp-52],4
	jle	_143
_21
_141
	sub	esp,4
	mov	[esp],1
	call	_fflip
_40
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_39
_3
	call	_fend
_l_2blockdata
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmapob
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_147
_148
	mov	[ebp-8],1
	jmp	_149
_150
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_151
	mov	ebx,[_vby]
	add	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vbx]
	add	esi,[ebp-8]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,1
	jnz	_152
	mov	eax,1
	jmp	_23_leave
_152
_151
	add	[ebp-8],1
_149
	cmp	[ebp-8],4
	jle	_150
_25
	add	[ebp-4],1
_147
	cmp	[ebp-4],4
	jle	_148
_24
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
_ffillblockinmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_153
_154
	mov	[ebp-8],1
	jmp	_155
_156
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vcb]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_157
	mov	ebx,[_vby]
	add	ebx,[ebp-4]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vbx]
	add	esi,[ebp-8]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,1
	mov	[esi],ebx
_157
	add	[ebp-8],1
_155
	cmp	[ebp-8],4
	jle	_156
_28
	add	[ebp-4],1
_153
	cmp	[ebp-4],4
	jle	_154
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
_fdrawmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],352
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],224
	mov	[esp+12],352
	mov	[esp+4],352
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],224
	mov	[esp+12],352
	mov	[esp+4],0
	mov	[esp],224
	call	_fline
	mov	[ebp-4],0
	jmp	_158
_159
	mov	[ebp-8],0
	jmp	_160
_161
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_162
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
_162
	add	[ebp-8],1
_160
	cmp	[ebp-8],14
	jle	_161
_31
	add	[ebp-4],1
_158
	cmp	[ebp-4],22
	jle	_159
_30
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdblock
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],1
	jmp	_163
_164
	mov	[ebp-8],1
	jmp	_165
_166
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_167
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	add	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 4
	add	eax,[ebp+24]
	mov	[esp],eax
	call	_frect
_167
	add	[ebp-8],1
_165
	cmp	[ebp-8],4
	jle	_166
_34
	add	[ebp-4],1
_163
	cmp	[ebp-4],4
	jle	_164
_33
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmakeblocks
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
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],1
	jmp	_168
_169
	mov	[ebp-8],1
	jmp	_170
_171
	mov	[ebp-12],1
	jmp	_172
_173
	call	__bbReadInt
	mov	[ebp-16],eax
	cmp	[ebp-16],1
	jnz	_174
	mov	ebx,_ablock
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-4]
	mov	esi,_ablock
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_ablock]
	mov	esi,1
	mov	[ebx],esi
_174
	add	[ebp-12],1
_172
	cmp	[ebp-12],4
	jle	_173
_38
	add	[ebp-8],1
_170
	cmp	[ebp-8],4
	jle	_171
_37
	add	[ebp-4],1
_168
	cmp	[ebp-4],21
	jle	_169
_36
	mov	eax,0
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_ablock	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vbx	.dd	0
	.align	4
_vby	.dd	0
	.align	4
_vcb	.dd	0
_41	.db	"Space = rotate block - Cur left = move left - Cur right = move right",0
_42	.db	"Cur down = Drop Block",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	0

