
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
	mov	eax,_83
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_84
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
	mov	[esp+4],360
	mov	[esp],320
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],16
	mov	[esp+8],112
	mov	[esp],16
	call	_fcreateimage
	mov	[_vtiles],eax
	sub	esp,12
	mov	[esp+4],16
	mov	[esp+8],1
	mov	[esp],16
	call	_fcreateimage
	mov	[_vempty],eax
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
	mov	eax,_acolourbrick
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_acolourbrick
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_acolourbrick
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolourbrick
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_anextcolourbrick
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,15
	mov	esi,_anextcolourbrick
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_anextcolourbrick
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anextcolourbrick
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acolourlevel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acolourlevel
	add	esi,12
	mov	[esi],ebx
	mov	ebx,21
	mov	esi,_acolourlevel
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolourlevel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_finit
_85
	call	_fdraw_title
	sub	esp,4
	mov	[esp],0
	call	_fclear_arrays
	call	_fdraw_next_brick
	call	_fdraw_score
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	[_vaction],0
_86
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_87
	mov	[_vaction],1
_87
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_88
	mov	[_vaction],2
_88
	mov	ebx,[_vaction]
	and	ebx,ebx
	jz	_86
_4
	cmp	[_vaction],1
	jnz	_89
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
	call	_fdraw_play_area
	call	_fmillisecs
	mov	[_vtime],eax
_90
	mov	ebx,[_vaction]
	mov	esi,8
	and	ebx,esi
	and	ebx,ebx
	jz	_91
	call	_fget_a_brick
	mov	ebx,[_vaction]
	mov	esi,55
	and	ebx,esi
	mov	[_vaction],ebx
	jmp	_92
_91
	call	_fmillisecs
	sub	eax,[_vtime]
	cmp	eax,[_vspeed]
	jle	_93
	call	_fmove_down
	call	_fmillisecs
	mov	[_vtime],eax
	jmp	_94
_93
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,[_vtime]
	cmp	ebx,40
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_95
	call	_fmove_down
	call	_fmillisecs
	mov	[_vtime],eax
	jmp	_96
_95
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	and	eax,eax
	jz	_97
	sub	esp,4
	mov	[esp],1
	call	_fmove_brick
	jmp	_98
_97
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	and	eax,eax
	jz	_99
	sub	esp,4
	mov	[esp],-1
	call	_fmove_brick
	jmp	_100
_99
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	and	eax,eax
	jz	_101
	sub	esp,4
	mov	[esp],1
	call	_frotate_brick
	jmp	_102
_101
	sub	esp,4
	mov	[esp],29
	call	_fkeyhit
	and	eax,eax
	jz	_103
	sub	esp,4
	mov	[esp],-1
	call	_frotate_brick
_103
_102
_100
_98
_96
_94
_92
	mov	ebx,[_vaction]
	mov	esi,4
	and	ebx,esi
	and	ebx,ebx
	jz	_104
	mov	ebx,[_vaction]
	mov	esi,8
	and	ebx,esi
	cmp	ebx,0
	jnz	_105
	sub	esp,4
	mov	[esp],1
	call	_fxor_brick
_105
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	ebx,[_vaction]
	mov	esi,59
	and	ebx,esi
	mov	[_vaction],ebx
	jmp	_106
_104
	sub	esp,4
	mov	[esp],1
	call	_fdelay
_106
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_107
	call	_fpause
_107
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_108
	mov	ebx,[_vaction]
	mov	esi,32
	or	ebx,esi
	mov	[_vaction],ebx
_108
	mov	ebx,[_vaction]
	mov	esi,48
	and	ebx,esi
	and	ebx,ebx
	jz	_90
_5
	mov	ebx,[_vaction]
	mov	esi,16
	and	ebx,esi
	and	ebx,ebx
	jz	_109
	call	_fgame_over_man
_109
	sub	esp,4
	mov	[esp],0
	call	_fclear_arrays
_89
	cmp	[_vaction],2
	jnz	_85
_3
	call	_fend
_l_2brickcolours
_l_2title3ff
_l_2column
_l_2t
_l_2cube
_l_2r
_l_2l
_l_2z
_l_2s
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
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_110
	mov	[ebp-4],0
	jmp	_111
_112
	mov	ebx,2049
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	add	[ebp-4],1
_111
	cmp	[ebp-4],21
	jle	_112
_7
	mov	ebx,2046
	mov	esi,22
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	mov	[ebp-8],2
	jmp	_113
_114
	mov	[ebp-12],0
	jmp	_115
_116
	mov	ebx,-1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	[esi],ebx
	add	[ebp-12],1
_115
	cmp	[ebp-12],9
	jle	_116
_9
	add	[ebp-8],1
_113
	cmp	[ebp-8],21
	jle	_114
_8
_110
	mov	[ebp-4],0
	jmp	_117
_118
	mov	[_vrotation],0
	jmp	_119
_120
	mov	ebx,-1
	mov	esi,_anextcolourbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[_vrotation]
	shl	esi,byte 2
	add	esi,[_anextcolourbrick]
	mov	[esi],ebx
	add	[_vrotation],1
_119
	cmp	[_vrotation],15
	jle	_120
_11
	add	[ebp-4],1
_117
	cmp	[ebp-4],3
	jle	_118
_10
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
	jle	_121
	mov	ebx,[_vcurrentrow]
	mov	[ebp-8],ebx
	jmp	_122
_123
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
	jz	_124
	mov	[ebp-12],1
_124
	add	[ebp-8],1
_122
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-8],ebx
	jle	_123
_13
	jmp	_125
_121
	mov	ebx,[_vcurrentrow]
	mov	[ebp-8],ebx
	jmp	_126
_127
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
	jz	_128
	mov	[ebp-12],1
_128
	add	[ebp-8],1
_126
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-8],ebx
	jle	_127
_14
_125
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_129
	mov	ebx,[ebp+20]
	imul	ebx,-1
	add	[_vshifter],ebx
_129
	mov	eax,[ebp-12]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
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
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-12],0
	jmp	_130
_131
	mov	[ebp-16],0
	jmp	_132
_133
	mov	ebx,_anextcolourbrick
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_anextcolourbrick]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_134
	sub	esp,16
	mov	ebx,[ebp-12]
	shl	ebx,byte 4
	add	ebx,20
	mov	[esp+8],ebx
	mov	esi,_anextcolourbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_anextcolourbrick]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	shl	esi,byte 4
	add	esi,220
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_135
_134
	sub	esp,16
	mov	ebx,[ebp-12]
	shl	ebx,byte 4
	add	ebx,20
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	shl	esi,byte 4
	add	esi,220
	mov	[esp+4],esi
	mov	eax,[_vempty]
	mov	[esp],eax
	call	_fdrawblock
_135
	add	[ebp-16],1
_132
	cmp	[ebp-16],3
	jle	_133
_17
	add	[ebp-12],1
_130
	cmp	[ebp-12],3
	jle	_131
_16
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
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
	jmp	_136
_137
	mov	[ebp-8],0
	jmp	_138
_139
	mov	ebx,_acolourlevel
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_140
	sub	esp,16
	mov	ebx,[ebp-4]
	sub	ebx,2
	shl	ebx,byte 4
	mov	[esp+8],ebx
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	shl	esi,byte 4
	add	esi,32
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_141
_140
	sub	esp,16
	mov	ebx,[ebp-4]
	sub	ebx,2
	shl	ebx,byte 4
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	shl	esi,byte 4
	add	esi,32
	mov	[esp+4],esi
	mov	eax,[_vempty]
	mov	[esp],eax
	call	_fdrawblock
_141
	add	[ebp-8],1
_138
	cmp	[ebp-8],9
	jle	_139
_20
	add	[ebp-4],1
_136
	cmp	[ebp-4],21
	jle	_137
_19
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
	jmp	_142
_143
	sub	esp,16
	mov	[esp+8],112
	mov	[esp+12],0
	mov	esi,[ebp-4]
	shl	esi,byte 4
	add	esi,220
	mov	[esp+4],esi
	mov	eax,[_vempty]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-4],1
_142
	cmp	[ebp-4],3
	jle	_143
_22
	mov	[ebp-4],0
	jmp	_144
_145
	sub	esp,16
	mov	[esp+8],162
	mov	[esp+12],0
	mov	esi,[ebp-4]
	shl	esi,byte 4
	add	esi,220
	mov	[esp+4],esi
	mov	eax,[_vempty]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-4],1
_144
	cmp	[ebp-4],3
	jle	_145
_23
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vnumlines]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],113
	mov	[esp],222
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vscore]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],163
	mov	[esp],222
	call	_ftext
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
_fdraw_title
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
	sub	esp,4
	mov	eax,__DATA
	add	eax,264
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],2
	jmp	_146
_147
	call	__bbReadInt
	mov	[ebp-12],eax
	mov	[ebp-8],0
	jmp	_148
_149
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_150
	call	__bbReadInt
	mov	ebx,_acolourlevel
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	[ebx],eax
	jmp	_151
_150
	mov	ebx,-1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	[esi],ebx
_151
	add	[ebp-8],1
_148
	cmp	[ebp-8],9
	jle	_149
_26
	add	[ebp-4],1
_146
	cmp	[ebp-4],21
	jle	_147
_25
	call	_fdraw_play_area
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_152
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],192
	mov	[esp],112
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_153
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],208
	mov	[esp],112
	call	_ftext
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
	ret	word 0
	.align	16
_fgame_over_man
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
	sub	esp,4
	mov	[esp],1
	call	_fxor_colour
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-8],136
	jmp	_154
_155
	mov	[ebp-4],48
	jmp	_156
_157
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	shr	ebx,byte 1
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	shr	ebx,byte 1
	mov	[ebp-20],ebx
	mov	ebx,[ebp-24]
	shr	ebx,byte 1
	mov	[ebp-24],ebx
	sub	esp,16
	mov	ebx,[ebp-16]
	shl	ebx,byte 16
	mov	esi,[ebp-20]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-24]
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-4],1
_156
	cmp	[ebp-4],175
	jle	_157
_29
	add	[ebp-8],1
_154
	cmp	[ebp-8],167
	jle	_155
_28
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_158
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
_159
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_159
_30
	call	_fflushkeys
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
	jz	_161
	cmp	[ebp-12],1
	jz	_162
	cmp	[ebp-12],2
	jz	_163
	cmp	[ebp-12],3
	jz	_164
	cmp	[ebp-12],4
	jz	_165
	cmp	[ebp-12],5
	jz	_166
	cmp	[ebp-12],6
	jz	_167
	jmp	_160
_161
	sub	esp,4
	mov	eax,__DATA
	add	eax,984
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_162
	sub	esp,4
	mov	eax,__DATA
	add	eax,3544
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_163
	sub	esp,4
	mov	eax,__DATA
	add	eax,2904
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_164
	sub	esp,4
	mov	eax,__DATA
	add	eax,2264
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_165
	sub	esp,4
	mov	eax,__DATA
	add	eax,1624
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_166
	sub	esp,4
	mov	eax,__DATA
	add	eax,4184
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_167
	sub	esp,4
	mov	eax,__DATA
	add	eax,4824
	mov	[esp],eax
	call	__bbRestore
	jmp	_160
_160
	cmp	[ebp-4],2
	setg	al
	movzx	eax,al
	mov	[_vstartrow],eax
	mov	[ebp-8],0
	jmp	_168
_169
	mov	[_vrotation],0
	jmp	_170
_171
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
_170
	cmp	[_vrotation],3
	jle	_171
_34
	add	[ebp-8],1
_168
	cmp	[ebp-8],3
	jle	_169
_33
	mov	[ebp-8],0
	jmp	_172
_173
	mov	[_vrotation],0
	jmp	_174
_175
	mov	ebx,_anextcolourbrick
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_anextcolourbrick]
	mov	ebx,[ebx]
	mov	esi,_acolourbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vrotation]
	shl	esi,byte 2
	add	esi,[_acolourbrick]
	mov	[esi],ebx
	call	__bbReadInt
	mov	ebx,_anextcolourbrick
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[_anextcolourbrick]
	mov	[ebx],eax
	add	[_vrotation],1
_174
	cmp	[_vrotation],15
	jle	_175
_36
	add	[ebp-8],1
_172
	cmp	[ebp-8],3
	jle	_173
_35
	mov	[_vrotation],0
	mov	[_vshifter],0
	sub	esp,4
	mov	[esp],0
	call	_fcollided
	and	eax,eax
	jz	_176
	mov	ebx,[_vaction]
	mov	esi,16
	or	ebx,esi
	mov	[_vaction],ebx
	jmp	_177
_176
	call	_fdraw_next_brick
_177
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
	ret	word 0
	.align	16
_finit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,12
	mov	eax,[_vempty]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],32
	mov	[esp],32
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],64
	mov	[esp],64
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_178
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],3
	call	_ftext
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-48],0
	jmp	_179
_180
	call	__bbReadInt
	mov	[ebp-32],eax
	call	__bbReadInt
	mov	[ebp-36],eax
	call	__bbReadInt
	mov	[ebp-40],eax
	mov	[ebp-4],0
	jmp	_181
_182
	sub	esp,12
	mov	eax,[_vtiles]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	shl	ebx,byte 4
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fclscolor
	call	_fcls
	add	[ebp-4],1
_181
	cmp	[ebp-4],15
	jle	_182
_39
	mov	[ebp-4],0
	jmp	_183
_184
	sub	esp,12
	mov	eax,[_vtiles]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	shl	ebx,byte 4
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-36]
	shr	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	shr	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	shr	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	mov	ebx,[ebp-4]
	mov	esi,8
	and	ebx,esi
	cmp	ebx,0
	jnz	_185
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],15
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
_185
	mov	ebx,[ebp-4]
	mov	esi,4
	and	ebx,esi
	cmp	ebx,0
	jnz	_186
	sub	esp,16
	mov	[esp+8],15
	mov	[esp+12],15
	mov	[esp+4],15
	mov	[esp],0
	call	_fline
_186
	add	[ebp-4],1
_183
	cmp	[ebp-4],15
	jle	_184
_40
	mov	ebx,[ebp-32]
	shl	ebx,byte 1
	mov	[ebp-32],ebx
	cmp	[ebp-32],255
	jle	_187
	mov	[ebp-32],255
_187
	mov	ebx,[ebp-36]
	shl	ebx,byte 1
	mov	[ebp-36],ebx
	cmp	[ebp-36],255
	jle	_188
	mov	[ebp-36],255
_188
	mov	ebx,[ebp-40]
	shl	ebx,byte 1
	mov	[ebp-40],ebx
	cmp	[ebp-40],255
	jle	_189
	mov	[ebp-40],255
_189
	mov	[ebp-4],0
	jmp	_190
_191
	sub	esp,12
	mov	eax,[_vtiles]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	shl	ebx,byte 4
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-48]
	add	eax,1
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],3
	call	_ftext
	mov	ebx,[ebp-4]
	mov	esi,1
	and	ebx,esi
	cmp	ebx,0
	jnz	_192
	sub	esp,16
	mov	[esp+8],15
	mov	[esp+12],0
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
_192
	mov	ebx,[ebp-4]
	mov	esi,2
	and	ebx,esi
	cmp	ebx,0
	jnz	_193
	sub	esp,16
	mov	[esp+8],15
	mov	[esp+12],15
	mov	[esp+4],0
	mov	[esp],15
	call	_fline
_193
	add	[ebp-4],1
_190
	cmp	[ebp-4],15
	jle	_191
_41
	add	[ebp-48],1
_179
	cmp	[ebp-48],6
	jle	_180
_38
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],164
	mov	[esp+8],0
	mov	[esp],192
	call	_fcolor
	mov	[ebp-16],0
	jmp	_194
_195
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,26
	imul	ebx,[ebp-16]
	add	ebx,188
	mov	[esp+4],ebx
	mov	[esp],210
	call	_ftext
	add	[ebp-16],1
_194
	cmp	[ebp-16],5
	jle	_195
_42
	sub	esp,12
	mov	[esp+4],96
	mov	[esp+8],0
	mov	[esp],128
	call	_fcolor
	mov	[ebp-16],0
	jmp	_196
_197
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,26
	imul	ebx,[ebp-16]
	add	ebx,201
	mov	[esp+4],ebx
	mov	[esp],220
	call	_ftext
	add	[ebp-16],1
_196
	cmp	[ebp-16],5
	jle	_197
_43
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_198
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],90
	mov	[esp],220
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_199
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],140
	mov	[esp],220
	call	_ftext
	mov	eax,0
	jmp	_37_leave
	mov	eax,0
	jmp	_37_leave
_37_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fjoin_bricks
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
	mov	ebx,[_vcurrentrow]
	sub	ebx,1
	mov	[ebp-4],ebx
	jmp	_200
_201
	cmp	[ebp-4],1
	jle	_202
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	mov	esi,2046
	and	ebx,esi
	and	ebx,ebx
	jz	_203
	mov	[ebp-8],0
	jmp	_204
_205
	mov	[ebp-16],0
	cmp	[ebp-4],22
	jge	_206
	mov	ebx,_acolourlevel
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_207
	mov	ebx,_acolourlevel
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	mov	esi,240
	and	ebx,esi
	mov	[ebp-12],ebx
	cmp	[ebp-8],0
	jle	_208
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_209
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	mov	esi,240
	and	ebx,esi
	cmp	ebx,[ebp-12]
	jnz	_210
	mov	[ebp-16],8
_210
_209
_208
	cmp	[ebp-8],9
	jge	_211
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_212
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	mov	esi,240
	and	ebx,esi
	cmp	ebx,[ebp-12]
	jnz	_213
	mov	ebx,[ebp-16]
	mov	esi,2
	or	ebx,esi
	mov	[ebp-16],ebx
_213
_212
_211
	cmp	[ebp-4],21
	jge	_214
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_215
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	mov	esi,240
	and	ebx,esi
	cmp	ebx,[ebp-12]
	jnz	_216
	mov	ebx,[ebp-16]
	mov	esi,4
	or	ebx,esi
	mov	[ebp-16],ebx
_216
_215
_214
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_217
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	mov	esi,240
	and	ebx,esi
	cmp	ebx,[ebp-12]
	jnz	_218
	mov	ebx,[ebp-16]
	mov	esi,1
	or	ebx,esi
	mov	[ebp-16],ebx
_218
_217
	mov	ebx,[ebp-12]
	add	ebx,[ebp-16]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	[esi],ebx
_207
_206
	add	[ebp-8],1
_204
	cmp	[ebp-8],9
	jle	_205
_46
_203
_202
	add	[ebp-4],1
_200
	mov	ebx,[_vcurrentrow]
	add	ebx,4
	cmp	[ebp-4],ebx
	jle	_201
_45
	mov	eax,0
	jmp	_44_leave
	mov	eax,0
	jmp	_44_leave
_44_leave
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
	sub	esp,4
	mov	[esp],0
	call	_fxor_brick
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcollided
	and	eax,eax
	jz	_219
	sub	esp,4
	mov	[esp],1
	call	_fxor_brick
	jmp	_220
_219
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_220
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
	ret	word 4
	.align	16
_fmove_down
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
	mov	[esp],0
	call	_fxor_brick
	add	[_vcurrentrow],1
	sub	esp,4
	mov	[esp],0
	call	_fcollided
	and	eax,eax
	jz	_221
	mov	[ebp-4],0
	mov	ebx,[_vaction]
	mov	esi,8
	or	ebx,esi
	mov	[_vaction],ebx
	sub	[_vcurrentrow],1
	sub	esp,4
	mov	[esp],1
	call	_fxor_brick
	mov	[ebp-16],0
	jmp	_222
_223
	mov	[ebp-12],0
	jmp	_224
_225
	mov	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[ebp-12]
	mov	esi,_acolourbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourbrick]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_226
	mov	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[ebp-12]
	mov	esi,_acolourbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourbrick]
	mov	ebx,[ebx]
	mov	esi,[_vcurrentrow]
	add	esi,[ebp-16]
	mov	edi,_acolourlevel
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-12]
	add	edi,3
	sub	edi,[_vshifter]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_acolourlevel]
	mov	[edi],ebx
_226
	add	[ebp-12],1
_224
	cmp	[ebp-12],3
	jle	_225
_50
	add	[ebp-16],1
_222
	cmp	[ebp-16],3
	jle	_223
_49
	mov	ebx,[_vcurrentrow]
	mov	[ebp-8],ebx
	jmp	_227
_228
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	cmp	ebx,4095
	jnz	_229
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
	mov	ebx,2049
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
_229
	add	[ebp-8],1
_227
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-8],ebx
	jle	_228
_51
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_230
	mov	ebx,[ebp-4]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	imul	esi,10
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	imul	esi,10
	add	esi,[_vscore]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[_vscore],esi
	mov	[ebp-12],0
	jmp	_231
_232
	mov	[ebp-16],0
	jmp	_233
_234
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_235
	mov	[ebp-28],0
	jmp	_236
_237
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_238
	cmp	[ebp-12],9
	jnz	_239
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	esi,-1
	mov	[ebx],esi
	jmp	_240
_239
	cmp	[ebp-28],9
	jnz	_241
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,9
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	esi,-1
	mov	[ebx],esi
	jmp	_242
_241
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-28]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	esi,[esi]
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	edi,_acolourlevel
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	[ebx],esi
_242
_240
	jmp	_243
_238
	cmp	[ebp-12],9
	jnz	_244
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,9
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	esi,-1
	mov	[ebx],esi
	jmp	_245
_244
	cmp	[ebp-28],9
	jnz	_246
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	esi,-1
	mov	[ebx],esi
	jmp	_247
_246
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,8
	sub	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	esi,[esi]
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_alines]
	mov	ebx,[ebx]
	mov	edi,_acolourlevel
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	mov	edi,9
	sub	edi,[ebp-28]
	add	edi,ebx
	shl	edi,byte 2
	add	edi,[_acolourlevel]
	mov	[edi],esi
_247
_245
_243
	add	[ebp-28],1
_236
	mov	ebx,9
	sub	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jle	_237
_54
_235
	add	[ebp-16],1
_233
	cmp	[ebp-16],3
	jle	_234
_53
	call	_fjoin_bricks
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],30
	call	_fdelay
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-12],1
_231
	cmp	[ebp-12],9
	jle	_232
_52
	sub	esp,4
	mov	[esp],50
	call	_fdelay
	mov	[ebp-16],0
	jmp	_248
_249
	mov	ebx,0
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_alines]
	mov	[esi],ebx
	add	[ebp-16],1
_248
	cmp	[ebp-16],3
	jle	_249
_55
	mov	[ebp-12],0
	jmp	_250
_251
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	mov	[ebp-16],ebx
	jmp	_252
_253
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aleveldata]
	mov	eax,[eax]
	cmp	eax,2049
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-16]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	cmp	ebx,2049
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_254
	mov	ebx,[ebp-16]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	mov	ebx,2049
	mov	esi,[ebp-16]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_aleveldata]
	mov	[esi],ebx
	mov	[ebp-28],0
	jmp	_255
_256
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	ebx,[ebx]
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_acolourlevel]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	esi,_acolourlevel
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acolourlevel]
	mov	esi,-1
	mov	[ebx],esi
	add	[ebp-28],1
_255
	cmp	[ebp-28],9
	jle	_256
_58
_254
	add	[ebp-16],-1
_252
	cmp	[ebp-16],1
	jge	_253
_57
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],30
	call	_fdelay
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-12],1
_250
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_251
_56
	mov	ebx,[_vnumlines]
	add	ebx,[ebp-4]
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],10
	call	__bbMod
	mov	ebx,[ebp-24]
	sub	ebx,eax
	sub	esp,8
	mov	eax,[_vnumlines]
	mov	[esp],eax
	mov	[esp+4],10
	call	__bbMod
	mov	esi,[_vnumlines]
	sub	esi,eax
	cmp	ebx,esi
	jle	_257
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
_257
	mov	ebx,[ebp-4]
	add	[_vnumlines],ebx
	call	_fdraw_score
_230
	call	_fjoin_bricks
	call	_fdraw_play_area
	sub	esp,4
	mov	[esp],0
	call	_fflip
	jmp	_258
_221
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_258
	mov	eax,0
	jmp	_48_leave
	mov	eax,0
	jmp	_48_leave
_48_leave
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
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	call	_fmillisecs
	sub	eax,[_vtime]
	mov	[ebp-4],eax
	mov	[ebp-12],0
	jmp	_259
_260
	mov	[ebp-8],2
	jmp	_261
_262
	sub	esp,16
	mov	ebx,[ebp-12]
	shl	ebx,byte 4
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	shl	esi,byte 4
	mov	[esp+4],esi
	mov	eax,[_vempty]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-8],1
_261
	cmp	[ebp-8],11
	jle	_262
_61
	add	[ebp-12],1
_259
	cmp	[ebp-12],19
	jle	_260
_60
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_263
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],147
	mov	[esp],112
	call	_ftext
	sub	esp,4
	mov	[esp],0
	call	_fflip
_264
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_265
	mov	ebx,[_vaction]
	mov	esi,32
	or	ebx,esi
	mov	[_vaction],ebx
_265
	mov	ebx,[_vaction]
	mov	esi,32
	and	ebx,esi
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	or	eax,ebx
	and	eax,eax
	jz	_264
_62
	call	_fflushkeys
	mov	ebx,[_vaction]
	mov	esi,32
	and	ebx,esi
	cmp	ebx,0
	jnz	_266
	call	_fdraw_play_area
	call	_fdraw_next_brick
	sub	esp,4
	mov	[esp],1
	call	_fxor_colour
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	ebx,[_vaction]
	mov	esi,59
	and	ebx,esi
	mov	[_vaction],ebx
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[_vtime],eax
_266
	mov	eax,0
	jmp	_59_leave
	mov	eax,0
	jmp	_59_leave
_59_leave
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
	sub	esp,4
	mov	[esp],0
	call	_fxor_brick
	mov	ebx,[_vrotation]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	add	[_vrotation],ebx
	cmp	[_vrotation],3
	jle	_267
	mov	[_vrotation],0
	jmp	_268
_267
	cmp	[_vrotation],0
	jge	_269
	mov	[_vrotation],3
_269
_268
	sub	esp,4
	mov	[esp],0
	call	_fcollided
	and	eax,eax
	jz	_270
	call	_fshift_collided
	and	eax,eax
	jz	_271
	mov	ebx,[ebp-4]
	mov	[_vrotation],ebx
	sub	esp,4
	mov	[esp],1
	call	_fxor_brick
	jmp	_272
_271
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_272
	jmp	_273
_270
	mov	ebx,[_vaction]
	mov	esi,4
	or	ebx,esi
	mov	[_vaction],ebx
_273
	mov	eax,0
	jmp	_63_leave
	mov	eax,0
	jmp	_63_leave
_63_leave
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
	jz	_274
	sub	esp,4
	mov	[esp],1
	call	_fcollided
	and	eax,eax
	jz	_275
	sub	esp,4
	mov	[esp],-2
	call	_fcollided
	and	eax,eax
	jz	_276
	sub	esp,4
	mov	[esp],2
	call	_fcollided
	jmp	_64_leave
_276
_275
_274
	mov	eax,0
	jmp	_64_leave
	mov	eax,0
	jmp	_64_leave
_64_leave
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxor_colour
	cmp	[_vshifter],-1
	jle	_277
	mov	ebx,[_vcurrentrow]
	mov	[ebp-4],ebx
	jmp	_278
_279
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
_278
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-4],ebx
	jle	_279
_66
	jmp	_280
_277
	mov	ebx,[_vcurrentrow]
	mov	[ebp-4],ebx
	jmp	_281
_282
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
_281
	mov	ebx,[_vcurrentrow]
	add	ebx,3
	cmp	[ebp-4],ebx
	jle	_282
_67
_280
	mov	eax,0
	jmp	_65_leave
	mov	eax,0
	jmp	_65_leave
_65_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxor_colour
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_283
_284
	mov	[ebp-8],0
	jmp	_285
_286
	mov	ebx,[_vrotation]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	mov	esi,_acolourbrick
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolourbrick]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jle	_287
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_288
	sub	esp,16
	mov	ebx,[_vshifter]
	imul	ebx,-16
	add	ebx,80
	mov	esi,[ebp-8]
	shl	esi,byte 4
	add	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[_vrotation]
	shl	esi,byte 2
	add	esi,[ebp-8]
	mov	edi,_acolourbrick
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_acolourbrick]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	edi,[_vcurrentrow]
	add	edi,[ebp-4]
	sub	edi,2
	shl	edi,byte 4
	mov	[esp+8],edi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	jmp	_289
_288
	sub	esp,16
	mov	ebx,[_vshifter]
	imul	ebx,-16
	add	ebx,80
	mov	esi,[ebp-8]
	shl	esi,byte 4
	add	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[_vcurrentrow]
	add	esi,[ebp-4]
	sub	esi,2
	shl	esi,byte 4
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[_vempty]
	mov	[esp],eax
	call	_fdrawblock
_289
_287
	add	[ebp-8],1
_285
	cmp	[ebp-8],3
	jle	_286
_70
	add	[ebp-4],1
_283
	cmp	[ebp-4],3
	jle	_284
_69
	mov	eax,0
	jmp	_68_leave
	mov	eax,0
	jmp	_68_leave
_68_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_83	.db	"3FF v1.2",0
_84	.db	"",0
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
_vscore	.dd	0
	.align	4
_vtiles	.dd	0
	.align	4
_vempty	.dd	0
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
	.align	4
_acolourbrick	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_anextcolourbrick	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_acolourlevel	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_152	.db	"Harlequin Software",0
_153	.db	"v1.2",0
_158	.db	"GAME OVER!",0
_178	.db	"0",0
_198	.db	"Lines:",0
_199	.db	"Score:",0
_263	.db	"PAUSED",0
_71	.db	"Play:",0
_72	.db	"Move:",0
_73	.db	"Rotate right:",0
_74	.db	"Rotate left:",0
_75	.db	"Pause:",0
_76	.db	"Quit:",0
_77	.db	"Enter",0
_78	.db	"Cursor keys",0
_79	.db	"Up-arrow",0
_80	.db	"L-Ctrl",0
_81	.db	"Spacebar",0
_82	.db	"Escape",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	88
	.dd	1
	.dd	80
	.dd	1
	.dd	192
	.dd	1
	.dd	220
	.dd	1
	.dd	174
	.dd	1
	.dd	132
	.dd	1
	.dd	108
	.dd	1
	.dd	162
	.dd	1
	.dd	196
	.dd	1
	.dd	145
	.dd	1
	.dd	98
	.dd	1
	.dd	200
	.dd	1
	.dd	140
	.dd	1
	.dd	166
	.dd	1
	.dd	100
	.dd	1
	.dd	188
	.dd	1
	.dd	186
	.dd	1
	.dd	4
	.dd	1
	.dd	156
	.dd	1
	.dd	94
	.dd	1
	.dd	92
	.dd	4
	.dd	_71
	.dd	4
	.dd	_72
	.dd	4
	.dd	_73
	.dd	4
	.dd	_74
	.dd	4
	.dd	_75
	.dd	4
	.dd	_76
	.dd	4
	.dd	_77
	.dd	4
	.dd	_78
	.dd	4
	.dd	_79
	.dd	4
	.dd	_80
	.dd	4
	.dd	_81
	.dd	4
	.dd	_82
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	50
	.dd	1
	.dd	60
	.dd	1
	.dd	-1
	.dd	1
	.dd	54
	.dd	1
	.dd	56
	.dd	1
	.dd	-1
	.dd	1
	.dd	54
	.dd	1
	.dd	56
	.dd	1
	.dd	-1
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	53
	.dd	1
	.dd	-1
	.dd	1
	.dd	53
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	53
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	50
	.dd	1
	.dd	61
	.dd	1
	.dd	-1
	.dd	1
	.dd	55
	.dd	1
	.dd	56
	.dd	1
	.dd	-1
	.dd	1
	.dd	55
	.dd	1
	.dd	56
	.dd	1
	.dd	-1
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	53
	.dd	1
	.dd	-1
	.dd	1
	.dd	53
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	53
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	50
	.dd	1
	.dd	57
	.dd	1
	.dd	-1
	.dd	1
	.dd	49
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	49
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	8
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
	.dd	-1
	.dd	1
	.dd	4
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	4
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	5
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	5
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	5
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	2
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	8
	.dd	1
	.dd	-1
	.dd	1
	.dd	5
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	2
	.dd	1
	.dd	10
	.dd	1
	.dd	10
	.dd	1
	.dd	8
	.dd	1
	.dd	-1
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
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
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	68
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	68
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	68
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	66
	.dd	1
	.dd	75
	.dd	1
	.dd	72
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	71
	.dd	1
	.dd	72
	.dd	1
	.dd	-1
	.dd	1
	.dd	66
	.dd	1
	.dd	78
	.dd	1
	.dd	72
	.dd	1
	.dd	-1
	.dd	1
	.dd	66
	.dd	1
	.dd	77
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	65
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	65
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	65
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
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
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	54
	.dd	1
	.dd	60
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	54
	.dd	1
	.dd	60
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	54
	.dd	1
	.dd	60
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	54
	.dd	1
	.dd	60
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	51
	.dd	1
	.dd	57
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	51
	.dd	1
	.dd	57
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	51
	.dd	1
	.dd	57
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	51
	.dd	1
	.dd	57
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
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
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	36
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	36
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	38
	.dd	1
	.dd	40
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	37
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	35
	.dd	1
	.dd	42
	.dd	1
	.dd	40
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	37
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	34
	.dd	1
	.dd	42
	.dd	1
	.dd	44
	.dd	1
	.dd	-1
	.dd	1
	.dd	34
	.dd	1
	.dd	41
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	33
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	33
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
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	20
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	18
	.dd	1
	.dd	28
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	20
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	21
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	22
	.dd	1
	.dd	26
	.dd	1
	.dd	24
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	21
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	18
	.dd	1
	.dd	26
	.dd	1
	.dd	25
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	19
	.dd	1
	.dd	24
	.dd	1
	.dd	-1
	.dd	1
	.dd	17
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	17
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
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
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	82
	.dd	1
	.dd	92
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	84
	.dd	1
	.dd	-1
	.dd	1
	.dd	82
	.dd	1
	.dd	92
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	84
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	83
	.dd	1
	.dd	88
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	86
	.dd	1
	.dd	89
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	83
	.dd	1
	.dd	88
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	86
	.dd	1
	.dd	89
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	81
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	81
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
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
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	102
	.dd	1
	.dd	104
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	100
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	102
	.dd	1
	.dd	104
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	100
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	98
	.dd	1
	.dd	105
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	99
	.dd	1
	.dd	108
	.dd	1
	.dd	-1
	.dd	1
	.dd	98
	.dd	1
	.dd	105
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	99
	.dd	1
	.dd	108
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	97
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	-1
	.dd	1
	.dd	97
	.dd	1
	.dd	-1
	.dd	0

