
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
	sub	esp,4
	mov	eax,_akey_commands
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_akey_commands
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_akey_commands
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akey_commands
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_akey_s_description
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_akey_s_description
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akey_s_description
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,3
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,4
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,6
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,8
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,9
	shl	eax,byte 2
	add	eax,[_akey_s_description]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,0
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,200
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,1
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,208
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,2
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,3
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,3
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,203
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,3
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,4
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,4
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,205
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,4
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,5
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,5
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,238
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,5
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,6
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,6
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,157
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,6
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,7
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,7
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,57
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,7
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,8
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,8
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,8
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,9
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,9
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_akey_commands
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,9
	shl	esi,byte 2
	add	esi,[_akey_commands]
	mov	[esi],ebx
	call	_fmousexspeed
	mov	[_vkey_mousexspeed_old],eax
	call	_fmouseyspeed
	mov	[_vkey_mouseyspeed_old],eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkey_s_friendly_name
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],238
	jge	_42
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jz	_44
	cmp	[ebp-4],1
	jz	_45
	cmp	[ebp-4],2
	jz	_46
	cmp	[ebp-4],3
	jz	_47
	cmp	[ebp-4],4
	jz	_48
	cmp	[ebp-4],5
	jz	_49
	cmp	[ebp-4],6
	jz	_50
	cmp	[ebp-4],7
	jz	_51
	cmp	[ebp-4],8
	jz	_52
	cmp	[ebp-4],9
	jz	_53
	cmp	[ebp-4],10
	jz	_54
	cmp	[ebp-4],11
	jz	_55
	cmp	[ebp-4],12
	jz	_56
	cmp	[ebp-4],13
	jz	_57
	cmp	[ebp-4],14
	jz	_58
	cmp	[ebp-4],15
	jz	_59
	cmp	[ebp-4],16
	jz	_60
	cmp	[ebp-4],17
	jz	_61
	cmp	[ebp-4],18
	jz	_62
	cmp	[ebp-4],19
	jz	_63
	cmp	[ebp-4],20
	jz	_64
	cmp	[ebp-4],21
	jz	_65
	cmp	[ebp-4],22
	jz	_66
	cmp	[ebp-4],23
	jz	_67
	cmp	[ebp-4],24
	jz	_68
	cmp	[ebp-4],25
	jz	_69
	cmp	[ebp-4],26
	jz	_70
	cmp	[ebp-4],27
	jz	_71
	cmp	[ebp-4],28
	jz	_72
	cmp	[ebp-4],29
	jz	_73
	cmp	[ebp-4],30
	jz	_74
	cmp	[ebp-4],31
	jz	_75
	cmp	[ebp-4],32
	jz	_76
	cmp	[ebp-4],33
	jz	_77
	cmp	[ebp-4],34
	jz	_78
	cmp	[ebp-4],35
	jz	_79
	cmp	[ebp-4],36
	jz	_80
	cmp	[ebp-4],37
	jz	_81
	cmp	[ebp-4],38
	jz	_82
	cmp	[ebp-4],39
	jz	_83
	cmp	[ebp-4],40
	jz	_84
	cmp	[ebp-4],41
	jz	_85
	cmp	[ebp-4],42
	jz	_86
	cmp	[ebp-4],43
	jz	_87
	cmp	[ebp-4],44
	jz	_88
	cmp	[ebp-4],45
	jz	_89
	cmp	[ebp-4],46
	jz	_90
	cmp	[ebp-4],47
	jz	_91
	cmp	[ebp-4],48
	jz	_92
	cmp	[ebp-4],49
	jz	_93
	cmp	[ebp-4],50
	jz	_94
	cmp	[ebp-4],51
	jz	_95
	cmp	[ebp-4],52
	jz	_96
	cmp	[ebp-4],53
	jz	_97
	cmp	[ebp-4],54
	jz	_98
	cmp	[ebp-4],55
	jz	_99
	cmp	[ebp-4],56
	jz	_100
	cmp	[ebp-4],57
	jz	_101
	cmp	[ebp-4],58
	jz	_102
	cmp	[ebp-4],59
	jz	_103
	cmp	[ebp-4],60
	jz	_104
	cmp	[ebp-4],61
	jz	_105
	cmp	[ebp-4],62
	jz	_106
	cmp	[ebp-4],63
	jz	_107
	cmp	[ebp-4],64
	jz	_108
	cmp	[ebp-4],65
	jz	_109
	cmp	[ebp-4],66
	jz	_110
	cmp	[ebp-4],67
	jz	_111
	cmp	[ebp-4],68
	jz	_112
	cmp	[ebp-4],69
	jz	_113
	cmp	[ebp-4],70
	jz	_114
	cmp	[ebp-4],71
	jz	_115
	cmp	[ebp-4],72
	jz	_116
	cmp	[ebp-4],73
	jz	_117
	cmp	[ebp-4],74
	jz	_118
	cmp	[ebp-4],75
	jz	_119
	cmp	[ebp-4],76
	jz	_120
	cmp	[ebp-4],77
	jz	_121
	cmp	[ebp-4],78
	jz	_122
	cmp	[ebp-4],79
	jz	_123
	cmp	[ebp-4],80
	jz	_124
	cmp	[ebp-4],81
	jz	_125
	cmp	[ebp-4],82
	jz	_126
	cmp	[ebp-4],83
	jz	_127
	cmp	[ebp-4],86
	jz	_128
	cmp	[ebp-4],87
	jz	_129
	cmp	[ebp-4],88
	jz	_130
	cmp	[ebp-4],128
	jz	_131
	cmp	[ebp-4],156
	jz	_132
	cmp	[ebp-4],157
	jz	_133
	cmp	[ebp-4],181
	jz	_134
	cmp	[ebp-4],184
	jz	_135
	cmp	[ebp-4],197
	jz	_136
	cmp	[ebp-4],199
	jz	_137
	cmp	[ebp-4],200
	jz	_138
	cmp	[ebp-4],201
	jz	_139
	cmp	[ebp-4],203
	jz	_140
	cmp	[ebp-4],205
	jz	_141
	cmp	[ebp-4],207
	jz	_142
	cmp	[ebp-4],208
	jz	_143
	cmp	[ebp-4],209
	jz	_144
	cmp	[ebp-4],210
	jz	_145
	cmp	[ebp-4],211
	jz	_146
	cmp	[ebp-4],219
	jz	_147
	cmp	[ebp-4],220
	jz	_148
	cmp	[ebp-4],221
	jz	_149
	jmp	_43
_44
	sub	esp,4
	mov	eax,_150
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_45
	sub	esp,4
	mov	eax,_151
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_46
	sub	esp,4
	mov	eax,_152
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_47
	sub	esp,4
	mov	eax,_153
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_48
	sub	esp,4
	mov	eax,_154
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_49
	sub	esp,4
	mov	eax,_155
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_50
	sub	esp,4
	mov	eax,_156
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_51
	sub	esp,4
	mov	eax,_157
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_52
	sub	esp,4
	mov	eax,_158
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_53
	sub	esp,4
	mov	eax,_159
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_54
	sub	esp,4
	mov	eax,_160
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_55
	sub	esp,4
	mov	eax,_161
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_56
	sub	esp,4
	mov	eax,_162
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_57
	sub	esp,4
	mov	eax,_163
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_58
	sub	esp,4
	mov	eax,_164
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_59
	sub	esp,4
	mov	eax,_165
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_60
	sub	esp,4
	mov	eax,_166
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_61
	sub	esp,4
	mov	eax,_167
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_62
	sub	esp,4
	mov	eax,_168
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_63
	sub	esp,4
	mov	eax,_169
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_64
	sub	esp,4
	mov	eax,_170
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_65
	sub	esp,4
	mov	eax,_171
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_66
	sub	esp,4
	mov	eax,_172
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_67
	sub	esp,4
	mov	eax,_173
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_68
	sub	esp,4
	mov	eax,_174
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_69
	sub	esp,4
	mov	eax,_175
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_70
	sub	esp,4
	mov	eax,_176
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_71
	sub	esp,4
	mov	eax,_177
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_72
	sub	esp,4
	mov	eax,_178
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_73
	sub	esp,4
	mov	eax,_179
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_74
	sub	esp,4
	mov	eax,_180
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_75
	sub	esp,4
	mov	eax,_181
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_76
	sub	esp,4
	mov	eax,_182
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_77
	sub	esp,4
	mov	eax,_183
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_78
	sub	esp,4
	mov	eax,_184
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_79
	sub	esp,4
	mov	eax,_185
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_80
	sub	esp,4
	mov	eax,_186
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_81
	sub	esp,4
	mov	eax,_187
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_82
	sub	esp,4
	mov	eax,_188
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_83
	sub	esp,4
	mov	eax,_189
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_84
	sub	esp,4
	mov	eax,_190
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_85
	sub	esp,4
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_86
	sub	esp,4
	mov	eax,_192
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_87
	sub	esp,4
	mov	eax,_193
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_88
	sub	esp,4
	mov	eax,_194
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_89
	sub	esp,4
	mov	eax,_195
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_90
	sub	esp,4
	mov	eax,_196
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_91
	sub	esp,4
	mov	eax,_197
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_92
	sub	esp,4
	mov	eax,_198
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_93
	sub	esp,4
	mov	eax,_199
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_94
	sub	esp,4
	mov	eax,_200
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_95
	sub	esp,4
	mov	eax,_201
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_96
	sub	esp,4
	mov	eax,_202
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_97
	sub	esp,4
	mov	eax,_203
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_98
	sub	esp,4
	mov	eax,_204
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_99
	sub	esp,4
	mov	eax,_205
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_100
	sub	esp,4
	mov	eax,_206
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_101
	sub	esp,4
	mov	eax,_207
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_102
	sub	esp,4
	mov	eax,_208
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_103
	sub	esp,4
	mov	eax,_209
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_104
	sub	esp,4
	mov	eax,_210
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_105
	sub	esp,4
	mov	eax,_211
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_106
	sub	esp,4
	mov	eax,_212
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_107
	sub	esp,4
	mov	eax,_213
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_108
	sub	esp,4
	mov	eax,_214
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_109
	sub	esp,4
	mov	eax,_215
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_110
	sub	esp,4
	mov	eax,_216
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_111
	sub	esp,4
	mov	eax,_217
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_112
	sub	esp,4
	mov	eax,_218
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_113
	sub	esp,4
	mov	eax,_219
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_114
	sub	esp,4
	mov	eax,_220
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_115
	sub	esp,4
	mov	eax,_221
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_116
	sub	esp,4
	mov	eax,_222
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_117
	sub	esp,4
	mov	eax,_223
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_118
	sub	esp,4
	mov	eax,_224
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_119
	sub	esp,4
	mov	eax,_225
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_120
	sub	esp,4
	mov	eax,_226
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_121
	sub	esp,4
	mov	eax,_227
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_122
	sub	esp,4
	mov	eax,_228
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_123
	sub	esp,4
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_124
	sub	esp,4
	mov	eax,_230
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_125
	sub	esp,4
	mov	eax,_231
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_126
	sub	esp,4
	mov	eax,_232
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_127
	sub	esp,4
	mov	eax,_233
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_128
	sub	esp,4
	mov	eax,_234
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_129
	sub	esp,4
	mov	eax,_235
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_130
	sub	esp,4
	mov	eax,_236
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_131
	sub	esp,4
	mov	eax,_237
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_132
	sub	esp,4
	mov	eax,_238
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_133
	sub	esp,4
	mov	eax,_239
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_134
	sub	esp,4
	mov	eax,_240
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_135
	sub	esp,4
	mov	eax,_241
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_136
	sub	esp,4
	mov	eax,_242
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_137
	sub	esp,4
	mov	eax,_243
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_138
	sub	esp,4
	mov	eax,_244
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_139
	sub	esp,4
	mov	eax,_245
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_140
	sub	esp,4
	mov	eax,_246
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_141
	sub	esp,4
	mov	eax,_247
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_142
	sub	esp,4
	mov	eax,_248
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_143
	sub	esp,4
	mov	eax,_249
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_144
	sub	esp,4
	mov	eax,_250
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_145
	sub	esp,4
	mov	eax,_251
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_146
	sub	esp,4
	mov	eax,_252
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_147
	sub	esp,4
	mov	eax,_253
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_148
	sub	esp,4
	mov	eax,_254
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_149
	sub	esp,4
	mov	eax,_255
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_43
_43
_42
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	cmp	[ebp-8],238
	jz	_257
	cmp	[ebp-8],239
	jz	_258
	cmp	[ebp-8],240
	jz	_259
	cmp	[ebp-8],241
	jz	_260
	cmp	[ebp-8],242
	jz	_261
	cmp	[ebp-8],243
	jz	_262
	cmp	[ebp-8],244
	jz	_263
	cmp	[ebp-8],245
	jz	_264
	cmp	[ebp-8],246
	jz	_265
	cmp	[ebp-8],247
	jz	_266
	cmp	[ebp-8],248
	jz	_267
	cmp	[ebp-8],249
	jz	_268
	cmp	[ebp-8],250
	jz	_269
	cmp	[ebp-8],251
	jz	_270
	cmp	[ebp-8],252
	jz	_271
	cmp	[ebp-8],253
	jz	_272
	cmp	[ebp-8],254
	jz	_273
	cmp	[ebp-8],255
	jz	_274
	cmp	[ebp-8],256
	jz	_275
	cmp	[ebp-8],257
	jz	_276
	cmp	[ebp-8],258
	jz	_277
	cmp	[ebp-8],259
	jz	_278
	cmp	[ebp-8],260
	jz	_279
	cmp	[ebp-8],261
	jz	_280
	cmp	[ebp-8],262
	jz	_281
	cmp	[ebp-8],263
	jz	_282
	cmp	[ebp-8],264
	jz	_283
	cmp	[ebp-8],265
	jz	_284
	cmp	[ebp-8],266
	jz	_285
	cmp	[ebp-8],267
	jz	_286
	cmp	[ebp-8],268
	jz	_287
	cmp	[ebp-8],269
	jz	_288
	cmp	[ebp-8],270
	jz	_289
	cmp	[ebp-8],271
	jz	_290
	cmp	[ebp-8],272
	jz	_291
	cmp	[ebp-8],273
	jz	_292
	cmp	[ebp-8],274
	jz	_293
	cmp	[ebp-8],275
	jz	_294
	cmp	[ebp-8],276
	jz	_295
	cmp	[ebp-8],277
	jz	_296
	cmp	[ebp-8],278
	jz	_297
	cmp	[ebp-8],279
	jz	_298
	cmp	[ebp-8],280
	jz	_299
	sub	esp,4
	mov	eax,_300
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_257
	sub	esp,4
	mov	eax,_301
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_258
	sub	esp,4
	mov	eax,_302
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_259
	sub	esp,4
	mov	eax,_303
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_260
	sub	esp,4
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_261
	sub	esp,4
	mov	eax,_305
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_262
	sub	esp,4
	mov	eax,_306
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_263
	sub	esp,4
	mov	eax,_307
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_264
	sub	esp,4
	mov	eax,_308
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_265
	sub	esp,4
	mov	eax,_309
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_266
	sub	esp,4
	mov	eax,_310
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_267
	sub	esp,4
	mov	eax,_311
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_268
	sub	esp,4
	mov	eax,_312
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_269
	sub	esp,4
	mov	eax,_313
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_270
	sub	esp,4
	mov	eax,_314
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_271
	sub	esp,4
	mov	eax,_315
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_272
	sub	esp,4
	mov	eax,_316
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_273
	sub	esp,4
	mov	eax,_317
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_274
	sub	esp,4
	mov	eax,_318
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_275
	sub	esp,4
	mov	eax,_319
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_276
	sub	esp,4
	mov	eax,_320
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_277
	sub	esp,4
	mov	eax,_321
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_278
	sub	esp,4
	mov	eax,_322
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_279
	sub	esp,4
	mov	eax,_323
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_280
	sub	esp,4
	mov	eax,_324
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_281
	sub	esp,4
	mov	eax,_325
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_282
	sub	esp,4
	mov	eax,_326
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_283
	sub	esp,4
	mov	eax,_327
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_284
	sub	esp,4
	mov	eax,_328
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_285
	sub	esp,4
	mov	eax,_329
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_286
	sub	esp,4
	mov	eax,_330
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_287
	sub	esp,4
	mov	eax,_331
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_288
	sub	esp,4
	mov	eax,_332
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_289
	sub	esp,4
	mov	eax,_333
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_290
	sub	esp,4
	mov	eax,_334
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_291
	sub	esp,4
	mov	eax,_335
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_292
	sub	esp,4
	mov	eax,_336
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_293
	sub	esp,4
	mov	eax,_337
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_294
	sub	esp,4
	mov	eax,_338
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_295
	sub	esp,4
	mov	eax,_339
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_296
	sub	esp,4
	mov	eax,_340
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_297
	sub	esp,4
	mov	eax,_341
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_298
	sub	esp,4
	mov	eax,_342
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_299
	sub	esp,4
	mov	eax,_343
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_256
_256
	sub	esp,4
	mov	eax,_344
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fkey_getcommand_by_scancode
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
	mov	[ebp-8],1
	jmp	_345
_346
	mov	ebx,_akey_commands
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_akey_commands]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_347
	mov	ebx,[ebp-8]
	mov	[ebp-4],ebx
	jmp	_7
_347
	add	[ebp-8],1
_345
	cmp	[ebp-8],9
	jle	_346
_7
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
_fkey_getscancode_by_command
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,_akey_commands
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_akey_commands]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
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
_fkey_gettype_by_command
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,_akey_commands
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_akey_commands]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
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
_fkey_getvector_by_command
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,_akey_commands
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_akey_commands]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
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
	ret	word 4
	.align	16
_fkey_get_scancode_of_input
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
	mov	[ebp-4],0
	mov	[ebp-8],1
	jmp	_348
_349
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fkey_get_scancode_keyboard_input
	and	eax,eax
	jz	_350
	mov	ebx,[ebp-8]
	mov	[ebp-4],ebx
	jmp	_12
_350
	add	[ebp-8],1
_348
	cmp	[ebp-8],237
	jle	_349
_12
	cmp	[ebp-4],0
	jz	_351
	mov	eax,[ebp-4]
	jmp	_11_leave
_351
	mov	[ebp-12],238
	jmp	_352
_353
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fkey_get_scancode_mouse_input
	and	eax,eax
	jz	_354
	mov	ebx,[ebp-12]
	mov	[ebp-4],ebx
	jmp	_13
_354
	add	[ebp-12],1
_352
	cmp	[ebp-12],244
	jle	_353
_13
	cmp	[ebp-4],0
	jz	_355
	mov	eax,[ebp-4]
	jmp	_11_leave
_355
	mov	[ebp-16],245
	jmp	_356
_357
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fkey_get_scancode_controller_input
	and	eax,eax
	jz	_358
	mov	ebx,[ebp-16]
	mov	[ebp-4],ebx
	jmp	_14
_358
	add	[ebp-16],1
_356
	cmp	[ebp-16],264
	jle	_357
_14
	cmp	[ebp-4],0
	jz	_359
	mov	eax,[ebp-4]
	jmp	_11_leave
_359
	sub	esp,4
	call	_fkey_get_mousex_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jle	_360
	mov	[ebp-4],265
_360
	cmp	[ebp-4],0
	jz	_361
	mov	eax,[ebp-4]
	jmp	_11_leave
_361
	sub	esp,4
	call	_fkey_get_mousey_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jle	_362
	mov	[ebp-4],266
_362
	cmp	[ebp-4],0
	jz	_363
	mov	eax,[ebp-4]
	jmp	_11_leave
_363
	call	_fkey_get_mousewheel_input
	cmp	eax,0
	jz	_364
	mov	[ebp-4],267
_364
	cmp	[ebp-4],0
	jz	_365
	mov	eax,[ebp-4]
	jmp	_11_leave
_365
	sub	esp,4
	call	_fkey_get_controllerx_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jz	_366
	mov	[ebp-4],268
_366
	cmp	[ebp-4],0
	jz	_367
	mov	eax,[ebp-4]
	jmp	_11_leave
_367
	sub	esp,4
	call	_fkey_get_controllery_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jz	_368
	mov	[ebp-4],269
_368
	cmp	[ebp-4],0
	jz	_369
	mov	eax,[ebp-4]
	jmp	_11_leave
_369
	sub	esp,4
	call	_fkey_get_controller_throttle_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jz	_370
	mov	[ebp-4],270
_370
	cmp	[ebp-4],0
	jz	_371
	mov	eax,[ebp-4]
	jmp	_11_leave
_371
	sub	esp,4
	call	_fkey_get_controllerx2_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jz	_372
	mov	[ebp-4],276
_372
	cmp	[ebp-4],0
	jz	_373
	mov	eax,[ebp-4]
	jmp	_11_leave
_373
	sub	esp,4
	call	_fkey_get_controllery2_input
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jz	_374
	mov	ebx,[ebp-20]
	mov	[ebp-4],ebx
_374
	cmp	[ebp-4],0
	jz	_375
	mov	eax,[ebp-4]
	jmp	_11_leave
_375
	call	_fkey_get_controller_hatx_input
	cmp	eax,1
	jnz	_376
	mov	[ebp-4],273
_376
	call	_fkey_get_controller_hatx_input
	cmp	eax,-1
	jnz	_377
	mov	[ebp-4],275
_377
	cmp	[ebp-4],0
	jz	_378
	mov	eax,[ebp-4]
	jmp	_11_leave
_378
	call	_fkey_get_controller_haty_input
	cmp	eax,1
	jnz	_379
	mov	[ebp-4],272
_379
	call	_fkey_get_controller_haty_input
	cmp	eax,-1
	jnz	_380
	mov	[ebp-4],274
_380
	cmp	[ebp-4],0
	jz	_381
	mov	eax,[ebp-4]
	jmp	_11_leave
_381
	sub	esp,4
	call	_fkey_get_controller_pitch_input
	imul	eax,278
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_382
	mov	eax,[ebp-4]
	jmp	_11_leave
_382
	sub	esp,4
	call	_fkey_get_controller_yaw_input
	imul	eax,279
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_383
	mov	eax,[ebp-4]
	jmp	_11_leave
_383
	sub	esp,4
	call	_fkey_get_controller_roll_input
	imul	eax,279
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-4],eax
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
	ret	word 0
	.align	16
_fkey_getcommand_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	cmp	[ebp+20],0
	jnz	_384
	mov	eax,0
	jmp	_15_leave
_384
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkey_gettype_by_command
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkey_getvector_by_command
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkey_getscancode_by_command
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_386
	cmp	[ebp-20],1
	jz	_387
	cmp	[ebp-20],2
	jz	_388
	cmp	[ebp-20],3
	jz	_389
	cmp	[ebp-20],4
	jz	_390
	cmp	[ebp-20],5
	jz	_391
	cmp	[ebp-20],6
	jz	_392
	cmp	[ebp-20],7
	jz	_393
	cmp	[ebp-20],8
	jz	_394
	cmp	[ebp-20],9
	jz	_395
	cmp	[ebp-20],10
	jz	_396
	cmp	[ebp-20],11
	jz	_397
	cmp	[ebp-20],12
	jz	_398
	cmp	[ebp-20],13
	jz	_399
	cmp	[ebp-20],14
	jz	_400
	cmp	[ebp-20],15
	jz	_401
	jmp	_385
_386
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fkey_get_scancode_keyboard_input
	mov	[ebp-4],eax
	jmp	_385
_387
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fkey_get_scancode_mouse_input
	mov	[ebp-4],eax
	jmp	_385
_388
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fkey_get_scancode_controller_input
	mov	[ebp-4],eax
	jmp	_385
_389
	call	_fkey_get_mousex_input
	mov	[ebp-24],eax
	call	_fmousexspeed
	mov	[_vkey_mousexspeed_old],eax
	mov	eax,[ebp-12]
	cmp	[ebp-24],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_402
	cmp	[ebp-24],0
	jz	_403
	mov	[ebp-4],1
_403
_402
	jmp	_385
_390
	call	_fkey_get_controllerx_input
	mov	[ebp-28],eax
	mov	eax,[ebp-12]
	cmp	[ebp-28],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_404
	cmp	[ebp-28],0
	jz	_405
	mov	[ebp-4],1
_405
_404
	jmp	_385
_391
	call	_fkey_get_mousey_input
	mov	[ebp-32],eax
	call	_fmouseyspeed
	mov	[_vkey_mouseyspeed_old],eax
	mov	eax,[ebp-12]
	cmp	[ebp-32],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_406
	cmp	[ebp-32],0
	jz	_407
	mov	[ebp-4],1
_407
_406
	jmp	_385
_392
	call	_fkey_get_controllery_input
	mov	[ebp-36],eax
	mov	eax,[ebp-12]
	cmp	[ebp-36],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_408
	cmp	[ebp-36],0
	jz	_409
	mov	[ebp-4],1
_409
_408
	jmp	_385
_393
	call	_fkey_get_mousewheel_input
	mov	[ebp-40],eax
	mov	eax,[ebp-12]
	cmp	[ebp-40],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_410
	cmp	[ebp-40],0
	jz	_411
	mov	[ebp-4],1
_411
_410
	jmp	_385
_394
	call	_fkey_get_controllerx2_input
	mov	[ebp-44],eax
	mov	eax,[ebp-12]
	cmp	[ebp-44],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_412
	cmp	[ebp-44],0
	jz	_413
	mov	[ebp-4],1
_413
_412
	jmp	_385
_395
	call	_fkey_get_controllery2_input
	mov	[ebp-48],eax
	mov	eax,[ebp-12]
	cmp	[ebp-48],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_414
	cmp	[ebp-48],0
	jz	_415
	mov	[ebp-4],1
_415
_414
	jmp	_385
_396
	call	_fkey_get_controller_throttle_input
	mov	[ebp-52],eax
	mov	eax,[ebp-12]
	cmp	[ebp-52],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_416
	cmp	[ebp-52],0
	jz	_417
	mov	[ebp-4],1
_417
_416
	jmp	_385
_397
	call	_fkey_get_controller_hatx_input
	mov	[ebp-56],eax
	mov	eax,[ebp-12]
	cmp	[ebp-56],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	mov	[ebp-76],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_418
	cmp	[ebp-56],0
	jz	_419
	mov	[ebp-4],1
_419
_418
	jmp	_385
_398
	call	_fkey_get_controller_haty_input
	mov	[ebp-60],eax
	mov	eax,[ebp-12]
	cmp	[ebp-60],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	mov	[ebp-76],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_420
	cmp	[ebp-60],0
	jz	_421
	mov	[ebp-4],1
_421
_420
	jmp	_385
_399
	call	_fkey_get_controller_pitch_input
	mov	[ebp-64],eax
	mov	eax,[ebp-12]
	cmp	[ebp-64],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_422
	cmp	[ebp-64],0
	jz	_423
	mov	[ebp-4],1
_423
_422
	jmp	_385
_400
	call	_fkey_get_controller_yaw_input
	mov	[ebp-68],eax
	mov	eax,[ebp-12]
	cmp	[ebp-68],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_424
	cmp	[ebp-68],0
	jz	_425
	mov	[ebp-4],1
_425
_424
	jmp	_385
_401
	call	_fkey_get_controller_roll_input
	mov	[ebp-72],eax
	mov	eax,[ebp-12]
	cmp	[ebp-72],eax
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	cmp	[ebp-12],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	or	eax,ebx
	and	eax,eax
	jz	_426
	cmp	[ebp-72],0
	jz	_427
	mov	[ebp-4],1
_427
_426
	jmp	_385
_385
	mov	eax,[ebp-4]
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
_fkey_get_scancode_keyboard_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkeyhit
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_428
	mov	[ebp-4],1
_428
	mov	eax,[ebp-4]
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
_fkey_get_scancode_mouse_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	[ebp+20],237
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmousehit
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_429
	mov	[ebp-4],1
_429
	mov	eax,[ebp-4]
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
_fkey_get_scancode_controller_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	[ebp+20],244
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoyhit
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_430
	mov	[ebp-4],1
_430
	mov	eax,[ebp-4]
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
_fkey_get_mousex_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	esp,4
	call	_fmousexspeed
	sub	eax,[_vkey_mousexspeed_old]
	mov	[esp],eax
	call	__bbSgn
	mov	[ebp-4],eax
	call	_fmousexspeed
	mov	[_vkey_mousexspeed_old],eax
	mov	eax,[ebp-4]
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkey_get_mousey_input
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
	sub	esp,4
	call	_fmouseyspeed
	sub	eax,[_vkey_mouseyspeed_old]
	mov	[esp],eax
	call	__bbSgn
	mov	[ebp-4],eax
	call	_fmouseyspeed
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
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
_fkey_get_controllerx_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_431
	mov	eax,0
	jmp	_22_leave
_431
	sub	esp,8
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
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
	ret	word 0
	.align	16
_fkey_get_controllery_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_432
	mov	eax,0
	jmp	_23_leave
_432
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
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
_fkey_get_mousewheel_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	sub	esp,4
	call	_fmousezspeed
	mov	[esp],eax
	call	__bbSgn
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
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
_fkey_get_controllerx2_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_433
	mov	eax,0
	jmp	_25_leave
_433
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
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
_fkey_get_controllery2_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_434
	mov	eax,0
	jmp	_26_leave
_434
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	jmp	_26_leave
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
_fkey_get_controller_throttle_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_435
	mov	eax,0
	jmp	_27_leave
_435
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
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
_fkey_get_controller_hatx_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],0
	call	_fjoyhat
	mov	[ebp-4],eax
	cmp	[ebp-4],44
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-4],136
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_436
	mov	eax,1
	jmp	_28_leave
	jmp	_437
_436
	cmp	[ebp-4],224
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-4],316
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_438
	mov	eax,-1
	jmp	_28_leave
	jmp	_439
_438
	mov	eax,0
	jmp	_28_leave
_439
_437
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
_fkey_get_controller_haty_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],0
	call	_fjoyhat
	mov	[ebp-4],eax
	cmp	[ebp-4],314
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-4],46
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	mov	[ebp-8],eax
	cmp	[ebp-4],-1
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_440
	mov	eax,1
	jmp	_29_leave
	jmp	_441
_440
	cmp	[ebp-4],134
	setg	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-4],226
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_442
	mov	eax,-1
	jmp	_29_leave
	jmp	_443
_442
	mov	eax,0
	jmp	_29_leave
_443
_441
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
_fkey_get_controller_pitch_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_444
	mov	eax,0
	jmp	_30_leave
_444
	sub	esp,8
	mov	[esp],0
	call	_fjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	jmp	_30_leave
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkey_get_controller_yaw_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_445
	mov	eax,0
	jmp	_31_leave
_445
	sub	esp,8
	mov	[esp],0
	call	_fjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
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
_fkey_get_controller_roll_input
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],0
	call	_fjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_446
	mov	eax,0
	jmp	_32_leave
_446
	sub	esp,8
	mov	[esp],0
	call	_fjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	jmp	_32_leave
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_akey_commands	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_akey_s_description	.dd	0
	.dd	3
	.dd	1
	.dd	0
_33	.db	"MOVE FORWARD",0
_34	.db	"MOVE BACKWARDS",0
_35	.db	"SIDESTEP LEFT",0
_36	.db	"SIDESTEP RIGHT",0
_37	.db	"PRIMARY WEAPON",0
_38	.db	"SNEAK",0
_39	.db	"JUMP",0
_40	.db	"TURN AROUND",0
_41	.db	"LOOK UP & DOWN",0
	.align	4
_vkey_mousexspeed_old	.dd	0
	.align	4
_vkey_mouseyspeed_old	.dd	0
_150	.db	"",0
_151	.db	"ESCAPE",0
_152	.db	"1",0
_153	.db	"2",0
_154	.db	"3",0
_155	.db	"4",0
_156	.db	"5",0
_157	.db	"6",0
_158	.db	"7",0
_159	.db	"8",0
_160	.db	"9",0
_161	.db	"0",0
_162	.db	"MINUS",0
_163	.db	"PLUS",0
_164	.db	"BACKSPACE",0
_165	.db	"TAB",0
_166	.db	"Q",0
_167	.db	"W",0
_168	.db	"E",0
_169	.db	"R",0
_170	.db	"T",0
_171	.db	"Y",0
_172	.db	"U",0
_173	.db	"I",0
_174	.db	"O",0
_175	.db	"P",0
_176	.db	"LEFTBRACKET",0
_177	.db	"RIGHTBRACKET",0
_178	.db	"RETURN",0
_179	.db	"LCTRL",0
_180	.db	"A",0
_181	.db	"S",0
_182	.db	"D",0
_183	.db	"F",0
_184	.db	"G",0
_185	.db	"H",0
_186	.db	"J",0
_187	.db	"K",0
_188	.db	"L",0
_189	.db	"SEMICOLON",0
_190	.db	"APOSTROPHE",0
_191	.db	"TILDE",0
_192	.db	"LSHIFT",0
_193	.db	"HASH",0
_194	.db	"Z",0
_195	.db	"X",0
_196	.db	"C",0
_197	.db	"V",0
_198	.db	"B",0
_199	.db	"N",0
_200	.db	"M",0
_201	.db	"COMMA",0
_202	.db	"FULLSTOP",0
_203	.db	"SLASH",0
_204	.db	"RSHIFT",0
_205	.db	"NUM ASTERISK",0
_206	.db	"LALT",0
_207	.db	"SPACEBAR",0
_208	.db	"CAPSLOCK",0
_209	.db	"FUNC 1",0
_210	.db	"FUNC 2",0
_211	.db	"FUNC 3",0
_212	.db	"FUNC 4",0
_213	.db	"FUNC 5",0
_214	.db	"FUNC 6",0
_215	.db	"FUNC 7",0
_216	.db	"FUNC 8",0
_217	.db	"FUNC 9",0
_218	.db	"FUNC 10",0
_219	.db	"PAUSE",0
_220	.db	"SCROLL LOCK",0
_221	.db	"NUM 7",0
_222	.db	"NUM 8",0
_223	.db	"NUM 9",0
_224	.db	"NUM MINUS",0
_225	.db	"NUM 4",0
_226	.db	"NUM 5",0
_227	.db	"NUM 6",0
_228	.db	"NUM PLUS",0
_229	.db	"NUM 1",0
_230	.db	"NUM 2",0
_231	.db	"NUM 3",0
_232	.db	"NUM 0",0
_233	.db	"NUM DEL",0
_234	.db	"BAR",0
_235	.db	"F11",0
_236	.db	"F12",0
_237	.db	"MISC MEDIA CONTROL",0
_238	.db	"NUM ENTER",0
_239	.db	"RCTRL",0
_240	.db	"NUM SLASH",0
_241	.db	"RALT",0
_242	.db	"NUMLOCK",0
_243	.db	"HOME",0
_244	.db	"UPARROW",0
_245	.db	"PG UP",0
_246	.db	"LEFTARROW",0
_247	.db	"RIGHTARROW",0
_248	.db	"END",0
_249	.db	"DOWNARROW",0
_250	.db	"PG DOWN",0
_251	.db	"INSERT",0
_252	.db	"DELETE",0
_253	.db	"LMICROSOFTWIN",0
_254	.db	"RMICROSOFTWIN",0
_255	.db	"CONTEXT MENU",0
_300	.db	"INVALID KEY",0
_301	.db	"LEFT MOUSE",0
_302	.db	"RIGHT MOUSE",0
_303	.db	"MIDDLE MOUSE",0
_304	.db	"MOUSE 4",0
_305	.db	"MOUSE 5",0
_306	.db	"MOUSE 6",0
_307	.db	"MOUSE 7",0
_308	.db	"CONTROLLER 1",0
_309	.db	"CONTROLLER 2",0
_310	.db	"CONTROLLER 3",0
_311	.db	"CONTROLLER 4",0
_312	.db	"CONTROLLER 5",0
_313	.db	"CONTROLLER 6",0
_314	.db	"CONTROLLER 7",0
_315	.db	"CONTROLLER 8",0
_316	.db	"CONTROLLER 9",0
_317	.db	"CONTROLLER 10",0
_318	.db	"CONTROLLER 11",0
_319	.db	"CONTROLLER 12",0
_320	.db	"CONTROLLER 13",0
_321	.db	"CONTROLLER 14",0
_322	.db	"CONTROLLER 15",0
_323	.db	"CONTROLLER 16",0
_324	.db	"CONTROLLER 17",0
_325	.db	"CONTROLLER 18",0
_326	.db	"CONTROLLER 19",0
_327	.db	"CONTROLLER 20",0
_328	.db	"MOUSE X",0
_329	.db	"MOUSE Y",0
_330	.db	"MOUSEWHEEL",0
_331	.db	"CONTROLLER X",0
_332	.db	"CONTROLLER Y",0
_333	.db	"CONTROLLER Z",0
_334	.db	"CONTROLLER ^",0
_335	.db	"CONTROLLER ^1",0
_336	.db	"CONTROLLER ^2",0
_337	.db	"CONTROLLER ^3",0
_338	.db	"CONTROLLER ^4",0
_339	.db	"CONTROLLER X2",0
_340	.db	"CONTROLLER Y2",0
_341	.db	"CONTROLLER PITCH",0
_342	.db	"CONTROLLER YAW",0
_343	.db	"CONTROLLER ROLL",0
_344	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

