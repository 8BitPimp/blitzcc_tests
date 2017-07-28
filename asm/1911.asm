
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,12
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],360
	mov	[esp],320
	call	_fgraphics
	mov	[ebp-4],1
	mov	[ebp-8],1
	mov	[ebp-12],-1
	sub	esp,12
	mov	[esp+4],16
	mov	[esp+8],4
	mov	[esp],16
	call	_fcreateimage
	mov	[_vtiles],eax
	sub	esp,4
	mov	eax,_aleveldata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,23
	mov	esi,_aleveldata
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aleveldata
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_alevelpaused
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,21
	mov	esi,_alevelpaused
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alevelpaused
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acurrentbrick
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_acurrentbrick
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_acurrentbrick
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acurrentbrick
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_anextbrick
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_anextbrick
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_anextbrick
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anextbrick
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_alines
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_alines
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alines
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_finit
_64
	call	_fdraw_title
	call	_fdraw_next_brick
	call	_fdraw_score
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	[_vaction],0
_65
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_66
	mov	[_vaction],1
_66
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_67
	mov	[_vaction],2
_67
	mov	ebx,[_vaction]
	and	ebx,ebx
	jz	_65
_4
	cmp	[_vaction],1
	jnz	_68
	call	_fflushkeys
	mov	[_vaction],4
	mov	[_vspeed],1000
	sub	esp,4
	mov	[esp],1
	call	_fclear_arrays
	call	_fget_a_brick
	call	_fget_a_brick
	mov	[_vnumlines],0
	call	_fdraw_score
	call	_fmillisecs
	mov	[_vtime],eax
_69
	mov	ebx,[_vaction]
	mov	esi,8
	and	ebx,esi
	and	ebx,ebx
	jz	_70
	call	_fget_a_brick
	jmp	_71
_70
	call	_fmillisecs
	sub	eax,[_vtime]
	cmp	eax,[_vspeed]
	jle	_72
	call	_fmove_down
	call	_fmillisecs
	mov	[_vtime],eax
	jmp	_73
_72
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	ebx,[_vtime]
	cmp	ebx,40
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_74
	call	_fmove_down
	call	_fmillisecs
	mov	[_vtime],eax
	jmp	_75
_74
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	and	eax,eax
	jz	_76
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmove_brick
	jmp	_77
_76
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	and	eax,eax
	jz	_78
	sub	esp,4
	mov	[esp],-1
	call	_fmove_brick
	jmp	_79
_78
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	and	eax,eax
	jz	_80
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frotate_brick
	jmp	_81
_80
	sub	esp,4
	mov	[esp],29
	call	_fkeyhit
	and	eax,eax
	jz	_82
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotate_brick
_82
_81
_79
_77
_75
_73
_71
	mov	ebx,[_vaction]
	mov	esi,4
	and	ebx,esi
	and	ebx,ebx
	jz	_83
	mov	ebx,[_vaction]
	mov	esi,8
	and	ebx,esi
	cmp	ebx,0
	jnz	_84
	call	_fxor_brick
_84
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	ebx,[_vaction]
	mov	esi,59
	and	ebx,esi
	mov	[_vaction],ebx
	jmp	_85
_83
	sub	esp,4
	mov	[esp],1
	call	_fdelay
_85
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_86
	call	_fpause
_86
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_87
	mov	ebx,[_vaction]
	mov	esi,32
	or	ebx,esi
	mov	[_vaction],ebx
_87
	mov	ebx,[_vaction]
	mov	esi,48
	and	ebx,esi
	and	ebx,ebx
	jz	_69
_5
	mov	ebx,[_vaction]
	mov	esi,16
	and	ebx,esi
	and	ebx,ebx
	jz	_88
	call	_fgame_over_man
_88
	sub	esp,4
	mov	[esp],0
	call	_fclear_arrays
_68
	cmp	[_vaction],2
	jnz	_64
_3
	call	_fend
_l_2initdata
_l_2title3ff
_l_2column
_l_2t
_l_2cube
_l_2r
_l_2l
_l_2z
_l_2s
_l_2pauseddata
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fclear_arrays
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_89
	mov	[ebp-4],0
	jmp	_90
_91
	mov	ebx,2049
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	add	[ebp-4],1
_90
	cmp	[ebp-4],21
	jle	_91
_7
	mov	ebx,2046
	mov	esi,22
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
_89
	mov	[_vrotation],0
	jmp	_92
_93
	mov	[ebp-4],0
	jmp	_94
_95
	mov	ebx,0
	mov	esi,_anextbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[_vrotation]
	shl	esi,byte 2
	add	esi,[_anextbrick]
	mov	[esi],ebx
	add	[ebp-4],1
_94
	cmp	[ebp-4],3
	jle	_95
_9
	add	[_vrotation],1
_92
	cmp	[_vrotation],3
	jle	_93
_8
	mov	eax,0
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
_fcollided
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
	mov	[ebp-12],0
	mov	ebx,[ebp+20]
	add	[_vshifter],ebx
	cmp	[_vshifter],-1
	jle	_96
	mov	ebx,[_vcurrentrow]
	mov	[ebp-8],ebx
	jmp	_97
_98
	mov	ebx,[ebp-8]
	sub	ebx,[_vcurrentrow]
	mov	esi,_acurrentbrick
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_acurrentbrick]
	mov	ebx,[ebx]
	mov	ecx,[_vshifter]
	shl	ebx,cl
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	esi,[esi]
	and	ebx,esi
	and	ebx,ebx
	jz	_99
	mov	[ebp-12],1
_99
	add	[ebp-8],1
_97
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-8],ebx
	jle	_98
_11
	jmp	_100
_96
	mov	ebx,[_vcurrentrow]
	mov	[ebp-8],ebx
	jmp	_101
_102
	mov	ebx,[ebp-8]
	sub	ebx,[_vcurrentrow]
	mov	esi,_acurrentbrick
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_acurrentbrick]
	mov	ebx,[ebx]
	mov	ecx,[_vshifter]
	imul	ecx,-1
	shr	ebx,cl
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	esi,[esi]
	and	ebx,esi
	and	ebx,ebx
	jz	_103
	mov	[ebp-12],1
_103
	add	[ebp-8],1
_101
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-8],ebx
	jle	_102
_12
_100
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_104
	mov	ebx,[ebp+20]
	imul	ebx,-1
	add	[_vshifter],ebx
_104
	mov	eax,[ebp-12]
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
_fdraw_next_brick
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-8],0
	jmp	_105
_106
	mov	[ebp-4],0
	jmp	_107
_108
	sub	esp,16
	mov	ebx,284
	mov	esi,[ebp-4]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,_anextbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_anextbrick]
	mov	esi,[esi]
	mov	ecx,[ebp-4]
	add	ecx,4
	shr	esi,cl
	mov	edi,1
	and	esi,edi
	add	esi,2
	mov	[esp+12],esi
	mov	edi,[ebp-8]
	shl	edi,byte 4
	add	edi,20
	mov	[esp+8],edi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-4],1
_107
	cmp	[ebp-4],3
	jle	_108
_15
	add	[ebp-8],1
_105
	cmp	[ebp-8],3
	jle	_106
_14
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
	mov	eax,0
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdraw_play_area
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],2
	jmp	_109
_110
	mov	[ebp-8],1
	jmp	_111
_112
	sub	esp,16
	mov	ebx,192
	mov	esi,[ebp-8]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	esi,[esi]
	mov	ecx,[ebp-8]
	shr	esi,cl
	mov	edi,1
	and	esi,edi
	mov	[esp+12],esi
	mov	edi,[ebp-4]
	sub	edi,2
	shl	edi,byte 4
	mov	[esp+8],edi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-8],1
_111
	cmp	[ebp-8],10
	jle	_112
_18
	add	[ebp-4],1
_109
	cmp	[ebp-4],21
	jle	_110
_17
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
	ret	word 0
	.align	16
_fdraw_score
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_113
_114
	sub	esp,16
	mov	ebx,176
	mov	esi,[ebp-4]
	shl	esi,byte 4
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[_vnumlines]
	mov	ecx,[ebp-4]
	shr	esi,cl
	mov	edi,1
	and	esi,edi
	add	esi,2
	mov	[esp+12],esi
	mov	[esp+8],340
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-4],1
_113
	cmp	[ebp-4],7
	jle	_114
_20
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
	ret	word 0
	.align	16
_fdraw_title
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,__DATA
	add	eax,192
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],2
	jmp	_115
_116
	call	__bbReadInt
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	[ebx],eax
	add	[ebp-4],1
_115
	cmp	[ebp-4],21
	jle	_116
_22
	call	_fdraw_play_area
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
	ret	word 0
	.align	16
_fgame_over_man
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],128
	mov	[esp+4],136
	mov	[esp],48
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_117
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],146
	mov	[esp],112
	call	_ftext
	sub	esp,20
	mov	[esp+12],34
	mov	[esp+16],0
	mov	[esp+8],130
	mov	[esp+4],135
	mov	[esp],47
	call	_frect
	sub	esp,4
	mov	[esp],0
	call	_fflip
_118
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_118
_24
	call	_fflushkeys
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
	ret	word 0
	.align	16
_fget_a_brick
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
	mov	ebx,[_vstartrow]
	mov	[_vcurrentrow],ebx
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],6
	call	_frand
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jz	_120
	cmp	[ebp-12],1
	jz	_121
	cmp	[ebp-12],2
	jz	_122
	cmp	[ebp-12],3
	jz	_123
	cmp	[ebp-12],4
	jz	_124
	cmp	[ebp-12],5
	jz	_125
	cmp	[ebp-12],6
	jz	_126
	jmp	_119
_120
	sub	esp,4
	mov	eax,__DATA
	add	eax,368
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_121
	sub	esp,4
	mov	eax,__DATA
	add	eax,880
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_122
	sub	esp,4
	mov	eax,__DATA
	add	eax,752
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_123
	sub	esp,4
	mov	eax,__DATA
	add	eax,624
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_124
	sub	esp,4
	mov	eax,__DATA
	add	eax,496
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_125
	sub	esp,4
	mov	eax,__DATA
	add	eax,1008
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_126
	sub	esp,4
	mov	eax,__DATA
	add	eax,1136
	mov	[esp],eax
	call	__bbRestore
	jmp	_119
_119
	cmp	[ebp-4],2
	setg	al
	movzx	eax,al
	mov	[_vstartrow],eax
	mov	[ebp-8],0
	jmp	_127
_128
	mov	[_vrotation],0
	jmp	_129
_130
	mov	ebx,_anextbrick
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_anextbrick]
	mov	ebx,[ebx]
	mov	esi,_acurrentbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vrotation]
	shl	esi,byte 2
	add	esi,[_acurrentbrick]
	mov	[esi],ebx
	call	__bbReadInt
	mov	ebx,_anextbrick
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_anextbrick]
	mov	[ebx],eax
	add	[_vrotation],1
_129
	cmp	[_vrotation],3
	jle	_130
_28
	add	[ebp-8],1
_127
	cmp	[ebp-8],3
	jle	_128
_27
	mov	[_vrotation],0
	mov	ebx,[_vaction]
	mov	esi,55
	and	ebx,esi
	mov	[_vaction],ebx
	mov	[_vshifter],0
	sub	esp,4
	mov	[esp],0
	call	_fcollided
	and	eax,eax
	jz	_131
	mov	ebx,[_vaction]
	mov	esi,16
	or	ebx,esi
	mov	[_vaction],ebx
	jmp	_132
_131
	call	_fdraw_next_brick
_132
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
	ret	word 0
	.align	16
_finit
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
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],0
	jmp	_133
_134
	call	__bbReadInt
	mov	[ebp-20],eax
	call	__bbReadInt
	mov	[ebp-24],eax
	call	__bbReadInt
	mov	[ebp-28],eax
	sub	esp,12
	mov	eax,[_vtiles]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	ebx,[ebp-24]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,24
	mov	eax,[ebp-4]
	mov	ebx,1
	and	eax,ebx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],1
	mov	[esp],4
	call	_ftext
	add	[ebp-4],1
_133
	cmp	[ebp-4],3
	jle	_134
_30
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],164
	mov	[esp+8],0
	mov	[esp],192
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_135
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],342
	mov	[esp],16
	call	_ftext
	mov	[ebp-8],0
	jmp	_136
_137
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,26
	imul	ebx,[ebp-8]
	add	ebx,100
	mov	[esp+4],ebx
	mov	[esp],210
	call	_ftext
	add	[ebp-8],1
_136
	cmp	[ebp-8],5
	jle	_137
_31
	sub	esp,12
	mov	[esp+4],96
	mov	[esp+8],0
	mov	[esp],128
	call	_fcolor
	mov	[ebp-8],0
	jmp	_138
_139
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,26
	imul	ebx,[ebp-8]
	add	ebx,113
	mov	[esp+4],ebx
	mov	[esp],220
	call	_ftext
	add	[ebp-8],1
_138
	cmp	[ebp-8],5
	jle	_139
_32
	mov	eax,0
	jmp	_29_leave
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmove_brick
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fxor_brick
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcollided
	and	eax,eax
	jz	_140
	call	_fxor_brick
	jmp	_141
_140
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_141
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
_fmove_down
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
	call	_fxor_brick
	add	[_vcurrentrow],1
	sub	esp,4
	mov	[esp],0
	call	_fcollided
	and	eax,eax
	jz	_142
	mov	[ebp-4],0
	mov	ebx,[_vaction]
	mov	esi,8
	or	ebx,esi
	mov	[_vaction],ebx
	sub	[_vcurrentrow],1
	call	_fxor_brick
	mov	ebx,[_vcurrentrow]
	mov	[ebp-8],ebx
	jmp	_143
_144
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	cmp	ebx,4095
	jnz	_145
	add	[ebp-4],1
	mov	ebx,[ebp-8]
	mov	esi,[ebp-8]
	sub	esi,[_vcurrentrow]
	shl	esi,byte 2
	add	esi,[_alines]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	sub	ebx,[_vcurrentrow]
	mov	esi,_acurrentbrick
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_acurrentbrick]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,2046
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
_145
	add	[ebp-8],1
_143
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-8],ebx
	jle	_144
_35
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_146
	mov	[ebp-12],0
	jmp	_147
_148
	mov	[ebp-8],0
	jmp	_149
_150
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_151
	mov	ebx,[ebp-8]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_152
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	shr	ebx,byte 1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_alines]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	jmp	_153
_152
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	shl	ebx,byte 1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_alines]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
_153
_151
	add	[ebp-8],1
_149
	cmp	[ebp-8],3
	jle	_150
_37
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],30
	call	_fdelay
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-12],1
_147
	cmp	[ebp-12],9
	jle	_148
_36
	sub	esp,4
	mov	[esp],50
	call	_fdelay
	mov	[ebp-8],0
	jmp	_154
_155
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_156
	mov	ebx,2049
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_alines]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
_156
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_alines]
	mov	[esi],ebx
	add	[ebp-8],1
_154
	cmp	[ebp-8],3
	jle	_155
_38
	mov	[ebp-16],0
	jmp	_157
_158
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	mov	[ebp-8],ebx
	jmp	_159
_160
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aleveldata]
	mov	eax,[eax]
	cmp	eax,2049
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	cmp	ebx,2049
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_161
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	mov	ebx,2049
	mov	esi,[ebp-8]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
_161
	add	[ebp-8],-1
_159
	cmp	[ebp-8],1
	jge	_160
_40
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],30
	call	_fdelay
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-16],1
_157
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_158
_39
	mov	ebx,[_vnumlines]
	add	ebx,[ebp-4]
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],10
	call	__bbMod
	mov	ebx,[ebp-20]
	sub	ebx,eax
	sub	esp,8
	mov	eax,[_vnumlines]
	mov	[esp],eax
	mov	[esp+4],10
	call	__bbMod
	mov	esi,[_vnumlines]
	sub	esi,eax
	cmp	ebx,esi
	jle	_162
	mov	ebx,[_vspeed]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vspeed]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[_vspeed],esi
_162
	mov	ebx,[ebp-4]
	add	[_vnumlines],ebx
	call	_fdraw_score
_146
	jmp	_163
_142
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_163
	mov	eax,0
	jmp	_34_leave
	mov	eax,0
	jmp	_34_leave
_34_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpause
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	call	_fmillisecs
	sub	eax,[_vtime]
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,__DATA
	add	eax,1264
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-8],2
	jmp	_164
_165
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_alevelpaused]
	mov	[esi],ebx
	call	__bbReadInt
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	[ebx],eax
	add	[ebp-8],1
_164
	cmp	[ebp-8],21
	jle	_165
_42
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],0
	call	_fflip
_166
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_167
	mov	ebx,[_vaction]
	mov	esi,32
	or	ebx,esi
	mov	[_vaction],ebx
_167
	mov	ebx,[_vaction]
	mov	esi,32
	and	ebx,esi
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	or	eax,ebx
	and	eax,eax
	jz	_166
_43
	call	_fflushkeys
	mov	ebx,[_vaction]
	mov	esi,32
	and	ebx,esi
	cmp	ebx,0
	jnz	_168
	mov	[ebp-8],2
	jmp	_169
_170
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alevelpaused]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	add	[ebp-8],1
_169
	cmp	[ebp-8],21
	jle	_170
_44
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],0
	call	_fflip
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[_vtime],eax
_168
	mov	eax,0
	jmp	_41_leave
	mov	eax,0
	jmp	_41_leave
_41_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frotate_brick
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fxor_brick
	mov	ebx,[_vrotation]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	add	[_vrotation],ebx
	cmp	[_vrotation],3
	jle	_171
	mov	[_vrotation],0
	jmp	_172
_171
	cmp	[_vrotation],0
	jge	_173
	mov	[_vrotation],3
_173
_172
	sub	esp,4
	mov	[esp],0
	call	_fcollided
	and	eax,eax
	jz	_174
	call	_fshift_collided
	and	eax,eax
	jz	_175
	mov	ebx,[ebp-4]
	mov	[_vrotation],ebx
	call	_fxor_brick
	jmp	_176
_175
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_176
	jmp	_177
_174
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_177
	mov	eax,0
	jmp	_45_leave
	mov	eax,0
	jmp	_45_leave
_45_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fshift_collided
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],-1
	call	_fcollided
	and	eax,eax
	jz	_178
	sub	esp,4
	mov	[esp],1
	call	_fcollided
	and	eax,eax
	jz	_179
	sub	esp,4
	mov	[esp],-2
	call	_fcollided
	and	eax,eax
	jz	_180
	sub	esp,4
	mov	[esp],2
	call	_fcollided
	jmp	_46_leave
_180
_179
_178
	mov	eax,0
	jmp	_46_leave
	mov	eax,0
	jmp	_46_leave
_46_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fxor_brick
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[_vshifter],-1
	jle	_181
	mov	ebx,[_vcurrentrow]
	mov	[ebp-4],ebx
	jmp	_182
_183
	mov	ebx,[ebp-4]
	sub	ebx,[_vcurrentrow]
	mov	esi,_acurrentbrick
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_acurrentbrick]
	mov	ebx,[ebx]
	mov	ecx,[_vshifter]
	shl	ebx,cl
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	esi,[esi]
	xor	esi,ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	[ebx],esi
	add	[ebp-4],1
_182
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-4],ebx
	jle	_183
_48
	jmp	_184
_181
	mov	ebx,[_vcurrentrow]
	mov	[ebp-4],ebx
	jmp	_185
_186
	mov	ebx,[ebp-4]
	sub	ebx,[_vcurrentrow]
	mov	esi,_acurrentbrick
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_acurrentbrick]
	mov	ebx,[ebx]
	mov	ecx,[_vshifter]
	imul	ecx,-1
	shr	ebx,cl
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	esi,[esi]
	xor	esi,ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	[ebx],esi
	add	[ebp-4],1
_185
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-4],ebx
	jle	_186
_49
_184
	mov	eax,0
	jmp	_47_leave
	mov	eax,0
	jmp	_47_leave
_47_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_62	.db	"3FF - Harlequin Software",0
_63	.db	"",0
	.align	4
_vcurrentrow	.dd	0
	.align	4
_vshifter	.dd	0
	.align	4
_vrotation	.dd	0
	.align	4
_vnumlines	.dd	0
	.align	4
_vstartrow	.dd	0
	.align	4
_vspeed	.dd	0
	.align	4
_vtime	.dd	0
	.align	4
_vaction	.dd	0
	.align	4
_vtiles	.dd	0
	.align	4
_aleveldata	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_alevelpaused	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acurrentbrick	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_anextbrick	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_alines	.dd	0
	.dd	1
	.dd	1
	.dd	0
_117	.db	"GAME OVER!",0
_135	.db	"Lines:",0
_50	.db	"Play:",0
_51	.db	"Move:",0
_52	.db	"Rotate right:",0
_53	.db	"Rotate left:",0
_54	.db	"Pause:",0
_55	.db	"Quit:",0
_56	.db	"Enter",0
_57	.db	"Cursor keys",0
_58	.db	"Up-arrow",0
_59	.db	"L-Ctrl",0
_60	.db	"Spacebar",0
_61	.db	"Escape",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	32
	.dd	1
	.dd	32
	.dd	1
	.dd	32
	.dd	1
	.dd	127
	.dd	1
	.dd	127
	.dd	1
	.dd	127
	.dd	1
	.dd	48
	.dd	1
	.dd	32
	.dd	1
	.dd	64
	.dd	1
	.dd	96
	.dd	1
	.dd	64
	.dd	1
	.dd	127
	.dd	4
	.dd	_50
	.dd	4
	.dd	_51
	.dd	4
	.dd	_52
	.dd	4
	.dd	_53
	.dd	4
	.dd	_54
	.dd	4
	.dd	_55
	.dd	4
	.dd	_56
	.dd	4
	.dd	_57
	.dd	4
	.dd	_58
	.dd	4
	.dd	_59
	.dd	4
	.dd	_60
	.dd	4
	.dd	_61
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2046
	.dd	1
	.dd	0
	.dd	1
	.dd	876
	.dd	1
	.dd	328
	.dd	1
	.dd	876
	.dd	1
	.dd	328
	.dd	1
	.dd	840
	.dd	1
	.dd	0
	.dd	1
	.dd	2046
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
	.dd	2046
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	240
	.dd	1
	.dd	64
	.dd	1
	.dd	240
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
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
	.dd	64
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	224
	.dd	1
	.dd	96
	.dd	1
	.dd	224
	.dd	1
	.dd	192
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	64
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
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
	.dd	32
	.dd	1
	.dd	64
	.dd	1
	.dd	48
	.dd	1
	.dd	0
	.dd	1
	.dd	32
	.dd	1
	.dd	112
	.dd	1
	.dd	32
	.dd	1
	.dd	112
	.dd	1
	.dd	96
	.dd	1
	.dd	0
	.dd	1
	.dd	32
	.dd	1
	.dd	16
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	192
	.dd	1
	.dd	32
	.dd	1
	.dd	64
	.dd	1
	.dd	224
	.dd	1
	.dd	64
	.dd	1
	.dd	224
	.dd	1
	.dd	96
	.dd	1
	.dd	128
	.dd	1
	.dd	64
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
	.dd	192
	.dd	1
	.dd	32
	.dd	1
	.dd	192
	.dd	1
	.dd	32
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	96
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	64
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	96
	.dd	1
	.dd	64
	.dd	1
	.dd	96
	.dd	1
	.dd	64
	.dd	1
	.dd	192
	.dd	1
	.dd	96
	.dd	1
	.dd	192
	.dd	1
	.dd	96
	.dd	1
	.dd	0
	.dd	1
	.dd	32
	.dd	1
	.dd	0
	.dd	1
	.dd	32
	.dd	1
	.dd	4094
	.dd	1
	.dd	4094
	.dd	1
	.dd	4094
	.dd	1
	.dd	1550
	.dd	1
	.dd	1638
	.dd	1
	.dd	1638
	.dd	1
	.dd	1638
	.dd	1
	.dd	1638
	.dd	1
	.dd	1638
	.dd	1
	.dd	1550
	.dd	1
	.dd	1662
	.dd	1
	.dd	1662
	.dd	1
	.dd	1662
	.dd	1
	.dd	1662
	.dd	1
	.dd	1662
	.dd	1
	.dd	1662
	.dd	1
	.dd	1662
	.dd	1
	.dd	4094
	.dd	1
	.dd	4094
	.dd	1
	.dd	4094
	.dd	0

