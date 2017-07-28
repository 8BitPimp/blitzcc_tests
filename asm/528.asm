
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwhatiskey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jz	_6
	cmp	[ebp-4],1
	jz	_7
	cmp	[ebp-4],2
	jz	_8
	cmp	[ebp-4],3
	jz	_9
	cmp	[ebp-4],4
	jz	_10
	cmp	[ebp-4],5
	jz	_11
	cmp	[ebp-4],6
	jz	_12
	cmp	[ebp-4],7
	jz	_13
	cmp	[ebp-4],8
	jz	_14
	cmp	[ebp-4],9
	jz	_15
	cmp	[ebp-4],10
	jz	_16
	cmp	[ebp-4],11
	jz	_17
	cmp	[ebp-4],12
	jz	_18
	cmp	[ebp-4],13
	jz	_19
	cmp	[ebp-4],14
	jz	_20
	cmp	[ebp-4],15
	jz	_21
	cmp	[ebp-4],16
	jz	_22
	cmp	[ebp-4],17
	jz	_23
	cmp	[ebp-4],18
	jz	_24
	cmp	[ebp-4],19
	jz	_25
	cmp	[ebp-4],20
	jz	_26
	cmp	[ebp-4],21
	jz	_27
	cmp	[ebp-4],22
	jz	_28
	cmp	[ebp-4],23
	jz	_29
	cmp	[ebp-4],24
	jz	_30
	cmp	[ebp-4],25
	jz	_31
	cmp	[ebp-4],26
	jz	_32
	cmp	[ebp-4],27
	jz	_33
	cmp	[ebp-4],28
	jz	_34
	cmp	[ebp-4],29
	jz	_35
	cmp	[ebp-4],30
	jz	_36
	cmp	[ebp-4],31
	jz	_37
	cmp	[ebp-4],32
	jz	_38
	cmp	[ebp-4],33
	jz	_39
	cmp	[ebp-4],34
	jz	_40
	cmp	[ebp-4],35
	jz	_41
	cmp	[ebp-4],36
	jz	_42
	cmp	[ebp-4],37
	jz	_43
	cmp	[ebp-4],38
	jz	_44
	cmp	[ebp-4],39
	jz	_45
	cmp	[ebp-4],40
	jz	_46
	cmp	[ebp-4],41
	jz	_47
	cmp	[ebp-4],42
	jz	_48
	cmp	[ebp-4],43
	jz	_49
	cmp	[ebp-4],44
	jz	_50
	cmp	[ebp-4],45
	jz	_51
	cmp	[ebp-4],46
	jz	_52
	cmp	[ebp-4],47
	jz	_53
	cmp	[ebp-4],48
	jz	_54
	cmp	[ebp-4],49
	jz	_55
	cmp	[ebp-4],50
	jz	_56
	cmp	[ebp-4],51
	jz	_57
	cmp	[ebp-4],52
	jz	_58
	cmp	[ebp-4],53
	jz	_59
	cmp	[ebp-4],54
	jz	_60
	cmp	[ebp-4],55
	jz	_61
	cmp	[ebp-4],56
	jz	_62
	cmp	[ebp-4],57
	jz	_63
	cmp	[ebp-4],58
	jz	_64
	cmp	[ebp-4],59
	jz	_65
	cmp	[ebp-4],60
	jz	_66
	cmp	[ebp-4],61
	jz	_67
	cmp	[ebp-4],62
	jz	_68
	cmp	[ebp-4],63
	jz	_69
	cmp	[ebp-4],64
	jz	_70
	cmp	[ebp-4],65
	jz	_71
	cmp	[ebp-4],66
	jz	_72
	cmp	[ebp-4],67
	jz	_73
	cmp	[ebp-4],68
	jz	_74
	cmp	[ebp-4],69
	jz	_75
	cmp	[ebp-4],70
	jz	_76
	cmp	[ebp-4],71
	jz	_77
	cmp	[ebp-4],72
	jz	_78
	cmp	[ebp-4],73
	jz	_79
	cmp	[ebp-4],74
	jz	_80
	cmp	[ebp-4],75
	jz	_81
	cmp	[ebp-4],76
	jz	_82
	cmp	[ebp-4],77
	jz	_83
	cmp	[ebp-4],78
	jz	_84
	cmp	[ebp-4],79
	jz	_85
	cmp	[ebp-4],80
	jz	_86
	cmp	[ebp-4],81
	jz	_87
	cmp	[ebp-4],82
	jz	_88
	cmp	[ebp-4],83
	jz	_89
	cmp	[ebp-4],84
	jz	_90
	cmp	[ebp-4],85
	jz	_91
	cmp	[ebp-4],86
	jz	_92
	cmp	[ebp-4],87
	jz	_93
	cmp	[ebp-4],88
	jz	_94
	cmp	[ebp-4],89
	jz	_95
	cmp	[ebp-4],90
	jz	_96
	cmp	[ebp-4],91
	jz	_97
	cmp	[ebp-4],92
	jz	_98
	cmp	[ebp-4],93
	jz	_99
	cmp	[ebp-4],94
	jz	_100
	cmp	[ebp-4],95
	jz	_101
	cmp	[ebp-4],96
	jz	_102
	cmp	[ebp-4],97
	jz	_103
	cmp	[ebp-4],98
	jz	_104
	cmp	[ebp-4],99
	jz	_105
	cmp	[ebp-4],100
	jz	_106
	cmp	[ebp-4],101
	jz	_107
	cmp	[ebp-4],102
	jz	_108
	cmp	[ebp-4],103
	jz	_109
	cmp	[ebp-4],104
	jz	_110
	cmp	[ebp-4],105
	jz	_111
	cmp	[ebp-4],106
	jz	_112
	cmp	[ebp-4],107
	jz	_113
	cmp	[ebp-4],108
	jz	_114
	cmp	[ebp-4],109
	jz	_115
	cmp	[ebp-4],110
	jz	_116
	cmp	[ebp-4],111
	jz	_117
	cmp	[ebp-4],112
	jz	_118
	cmp	[ebp-4],113
	jz	_119
	cmp	[ebp-4],114
	jz	_120
	cmp	[ebp-4],115
	jz	_121
	cmp	[ebp-4],116
	jz	_122
	cmp	[ebp-4],117
	jz	_123
	cmp	[ebp-4],118
	jz	_124
	cmp	[ebp-4],119
	jz	_125
	cmp	[ebp-4],120
	jz	_126
	cmp	[ebp-4],121
	jz	_127
	cmp	[ebp-4],122
	jz	_128
	cmp	[ebp-4],123
	jz	_129
	cmp	[ebp-4],124
	jz	_130
	cmp	[ebp-4],125
	jz	_131
	cmp	[ebp-4],126
	jz	_132
	cmp	[ebp-4],127
	jz	_133
	cmp	[ebp-4],128
	jz	_134
	cmp	[ebp-4],129
	jz	_135
	cmp	[ebp-4],130
	jz	_136
	cmp	[ebp-4],131
	jz	_137
	cmp	[ebp-4],132
	jz	_138
	cmp	[ebp-4],133
	jz	_139
	cmp	[ebp-4],134
	jz	_140
	cmp	[ebp-4],135
	jz	_141
	cmp	[ebp-4],136
	jz	_142
	cmp	[ebp-4],137
	jz	_143
	cmp	[ebp-4],138
	jz	_144
	cmp	[ebp-4],139
	jz	_145
	cmp	[ebp-4],140
	jz	_146
	cmp	[ebp-4],141
	jz	_147
	cmp	[ebp-4],142
	jz	_148
	cmp	[ebp-4],143
	jz	_149
	cmp	[ebp-4],144
	jz	_150
	cmp	[ebp-4],145
	jz	_151
	cmp	[ebp-4],146
	jz	_152
	cmp	[ebp-4],147
	jz	_153
	cmp	[ebp-4],148
	jz	_154
	cmp	[ebp-4],149
	jz	_155
	cmp	[ebp-4],150
	jz	_156
	cmp	[ebp-4],151
	jz	_157
	cmp	[ebp-4],152
	jz	_158
	cmp	[ebp-4],153
	jz	_159
	cmp	[ebp-4],154
	jz	_160
	cmp	[ebp-4],155
	jz	_161
	cmp	[ebp-4],156
	jz	_162
	cmp	[ebp-4],157
	jz	_163
	cmp	[ebp-4],158
	jz	_164
	cmp	[ebp-4],159
	jz	_165
	cmp	[ebp-4],160
	jz	_166
	cmp	[ebp-4],161
	jz	_167
	cmp	[ebp-4],162
	jz	_168
	cmp	[ebp-4],163
	jz	_169
	cmp	[ebp-4],164
	jz	_170
	cmp	[ebp-4],165
	jz	_171
	cmp	[ebp-4],166
	jz	_172
	cmp	[ebp-4],167
	jz	_173
	cmp	[ebp-4],168
	jz	_174
	cmp	[ebp-4],169
	jz	_175
	cmp	[ebp-4],170
	jz	_176
	cmp	[ebp-4],171
	jz	_177
	cmp	[ebp-4],172
	jz	_178
	cmp	[ebp-4],173
	jz	_179
	cmp	[ebp-4],174
	jz	_180
	cmp	[ebp-4],175
	jz	_181
	cmp	[ebp-4],176
	jz	_182
	cmp	[ebp-4],177
	jz	_183
	cmp	[ebp-4],178
	jz	_184
	cmp	[ebp-4],179
	jz	_185
	cmp	[ebp-4],180
	jz	_186
	cmp	[ebp-4],181
	jz	_187
	cmp	[ebp-4],182
	jz	_188
	cmp	[ebp-4],183
	jz	_189
	cmp	[ebp-4],184
	jz	_190
	cmp	[ebp-4],185
	jz	_191
	cmp	[ebp-4],186
	jz	_192
	cmp	[ebp-4],187
	jz	_193
	cmp	[ebp-4],188
	jz	_194
	cmp	[ebp-4],189
	jz	_195
	cmp	[ebp-4],190
	jz	_196
	cmp	[ebp-4],191
	jz	_197
	cmp	[ebp-4],192
	jz	_198
	cmp	[ebp-4],193
	jz	_199
	cmp	[ebp-4],194
	jz	_200
	cmp	[ebp-4],195
	jz	_201
	cmp	[ebp-4],196
	jz	_202
	cmp	[ebp-4],197
	jz	_203
	cmp	[ebp-4],198
	jz	_204
	cmp	[ebp-4],199
	jz	_205
	cmp	[ebp-4],200
	jz	_206
	cmp	[ebp-4],201
	jz	_207
	cmp	[ebp-4],202
	jz	_208
	cmp	[ebp-4],203
	jz	_209
	cmp	[ebp-4],204
	jz	_210
	cmp	[ebp-4],205
	jz	_211
	cmp	[ebp-4],206
	jz	_212
	cmp	[ebp-4],207
	jz	_213
	cmp	[ebp-4],208
	jz	_214
	cmp	[ebp-4],209
	jz	_215
	cmp	[ebp-4],210
	jz	_216
	cmp	[ebp-4],211
	jz	_217
	cmp	[ebp-4],212
	jz	_218
	cmp	[ebp-4],213
	jz	_219
	cmp	[ebp-4],214
	jz	_220
	cmp	[ebp-4],215
	jz	_221
	cmp	[ebp-4],216
	jz	_222
	cmp	[ebp-4],217
	jz	_223
	cmp	[ebp-4],218
	jz	_224
	cmp	[ebp-4],219
	jz	_225
	cmp	[ebp-4],220
	jz	_226
	cmp	[ebp-4],221
	jz	_227
	cmp	[ebp-4],222
	jz	_228
	cmp	[ebp-4],223
	jz	_229
	cmp	[ebp-4],224
	jz	_230
	cmp	[ebp-4],225
	jz	_231
	cmp	[ebp-4],226
	jz	_232
	cmp	[ebp-4],227
	jz	_233
	cmp	[ebp-4],228
	jz	_234
	cmp	[ebp-4],229
	jz	_235
	cmp	[ebp-4],230
	jz	_236
	cmp	[ebp-4],231
	jz	_237
	cmp	[ebp-4],232
	jz	_238
	cmp	[ebp-4],233
	jz	_239
	cmp	[ebp-4],234
	jz	_240
	cmp	[ebp-4],235
	jz	_241
	cmp	[ebp-4],236
	jz	_242
	cmp	[ebp-4],237
	jz	_243
	cmp	[ebp-4],238
	jz	_244
	cmp	[ebp-4],239
	jz	_245
	cmp	[ebp-4],240
	jz	_246
	cmp	[ebp-4],241
	jz	_247
	cmp	[ebp-4],242
	jz	_248
	cmp	[ebp-4],243
	jz	_249
	cmp	[ebp-4],244
	jz	_250
	cmp	[ebp-4],245
	jz	_251
	cmp	[ebp-4],246
	jz	_252
	cmp	[ebp-4],247
	jz	_253
	cmp	[ebp-4],248
	jz	_254
	cmp	[ebp-4],249
	jz	_255
	cmp	[ebp-4],250
	jz	_256
	cmp	[ebp-4],251
	jz	_257
	cmp	[ebp-4],252
	jz	_258
	cmp	[ebp-4],253
	jz	_259
	cmp	[ebp-4],254
	jz	_260
	cmp	[ebp-4],255
	jz	_261
	jmp	_5
_6
	sub	esp,4
	mov	eax,_262
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_7
	sub	esp,4
	mov	eax,_263
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_8
	sub	esp,4
	mov	eax,_264
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_9
	sub	esp,4
	mov	eax,_265
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_10
	sub	esp,4
	mov	eax,_266
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_11
	sub	esp,4
	mov	eax,_267
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_12
	sub	esp,4
	mov	eax,_268
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_13
	sub	esp,4
	mov	eax,_269
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_14
	sub	esp,4
	mov	eax,_270
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_15
	sub	esp,4
	mov	eax,_271
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_16
	sub	esp,4
	mov	eax,_272
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_17
	sub	esp,4
	mov	eax,_273
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_18
	sub	esp,4
	mov	eax,_274
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_19
	sub	esp,4
	mov	eax,_275
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_20
	sub	esp,4
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_21
	sub	esp,4
	mov	eax,_277
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_22
	sub	esp,4
	mov	eax,_278
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_23
	sub	esp,4
	mov	eax,_279
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_24
	sub	esp,4
	mov	eax,_280
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_25
	sub	esp,4
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_26
	sub	esp,4
	mov	eax,_282
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_27
	sub	esp,4
	mov	eax,_283
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_28
	sub	esp,4
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_29
	sub	esp,4
	mov	eax,_285
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_30
	sub	esp,4
	mov	eax,_286
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_31
	sub	esp,4
	mov	eax,_287
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_32
	sub	esp,4
	mov	eax,_288
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_33
	sub	esp,4
	mov	eax,_289
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_34
	sub	esp,4
	mov	eax,_290
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_35
	sub	esp,4
	mov	eax,_291
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_36
	sub	esp,4
	mov	eax,_292
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_37
	sub	esp,4
	mov	eax,_293
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_38
	sub	esp,4
	mov	eax,_294
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_39
	sub	esp,4
	mov	eax,_295
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_40
	sub	esp,4
	mov	eax,_296
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_41
	sub	esp,4
	mov	eax,_297
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_42
	sub	esp,4
	mov	eax,_298
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_43
	sub	esp,4
	mov	eax,_299
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_44
	sub	esp,4
	mov	eax,_300
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_45
	sub	esp,4
	mov	eax,_301
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_46
	sub	esp,4
	mov	eax,_302
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_47
	sub	esp,4
	mov	eax,_303
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_48
	sub	esp,4
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_49
	sub	esp,4
	mov	eax,_305
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_50
	sub	esp,4
	mov	eax,_306
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_51
	sub	esp,4
	mov	eax,_307
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_52
	sub	esp,4
	mov	eax,_308
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_53
	sub	esp,4
	mov	eax,_309
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_54
	sub	esp,4
	mov	eax,_310
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_55
	sub	esp,4
	mov	eax,_311
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_56
	sub	esp,4
	mov	eax,_312
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_57
	sub	esp,4
	mov	eax,_313
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_58
	sub	esp,4
	mov	eax,_314
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_59
	sub	esp,4
	mov	eax,_315
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_60
	sub	esp,4
	mov	eax,_316
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_61
	sub	esp,4
	mov	eax,_317
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_62
	sub	esp,4
	mov	eax,_318
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_63
	sub	esp,4
	mov	eax,_319
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_64
	sub	esp,4
	mov	eax,_320
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_65
	sub	esp,4
	mov	eax,_321
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_66
	sub	esp,4
	mov	eax,_322
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_67
	sub	esp,4
	mov	eax,_323
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_68
	sub	esp,4
	mov	eax,_324
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_69
	sub	esp,4
	mov	eax,_325
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_70
	sub	esp,4
	mov	eax,_326
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_71
	sub	esp,4
	mov	eax,_327
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_72
	sub	esp,4
	mov	eax,_328
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_73
	sub	esp,4
	mov	eax,_329
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_74
	sub	esp,4
	mov	eax,_330
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_75
	sub	esp,4
	mov	eax,_331
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_76
	sub	esp,4
	mov	eax,_332
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_77
	sub	esp,4
	mov	eax,_333
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_78
	sub	esp,4
	mov	eax,_334
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_79
	sub	esp,4
	mov	eax,_335
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_80
	sub	esp,4
	mov	eax,_336
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_81
	sub	esp,4
	mov	eax,_337
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_82
	sub	esp,4
	mov	eax,_338
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_83
	sub	esp,4
	mov	eax,_339
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_84
	sub	esp,4
	mov	eax,_340
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_85
	sub	esp,4
	mov	eax,_341
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_86
	sub	esp,4
	mov	eax,_342
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_87
	sub	esp,4
	mov	eax,_343
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_88
	sub	esp,4
	mov	eax,_344
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_89
	sub	esp,4
	mov	eax,_345
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_90
	sub	esp,4
	mov	eax,_346
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_91
	sub	esp,4
	mov	eax,_347
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_92
	sub	esp,4
	mov	eax,_348
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_93
	sub	esp,4
	mov	eax,_349
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_94
	sub	esp,4
	mov	eax,_350
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_95
	sub	esp,4
	mov	eax,_351
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_96
	sub	esp,4
	mov	eax,_352
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_97
	sub	esp,4
	mov	eax,_353
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_98
	sub	esp,4
	mov	eax,_354
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_99
	sub	esp,4
	mov	eax,_355
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_100
	sub	esp,4
	mov	eax,_356
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_101
	sub	esp,4
	mov	eax,_357
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_102
	sub	esp,4
	mov	eax,_358
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_103
	sub	esp,4
	mov	eax,_359
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_104
	sub	esp,4
	mov	eax,_360
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_105
	sub	esp,4
	mov	eax,_361
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_106
	sub	esp,4
	mov	eax,_362
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_107
	sub	esp,4
	mov	eax,_363
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_108
	sub	esp,4
	mov	eax,_364
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_109
	sub	esp,4
	mov	eax,_365
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_110
	sub	esp,4
	mov	eax,_366
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_111
	sub	esp,4
	mov	eax,_367
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_112
	sub	esp,4
	mov	eax,_368
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_113
	sub	esp,4
	mov	eax,_369
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_114
	sub	esp,4
	mov	eax,_370
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_115
	sub	esp,4
	mov	eax,_371
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_116
	sub	esp,4
	mov	eax,_372
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_117
	sub	esp,4
	mov	eax,_373
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_118
	sub	esp,4
	mov	eax,_374
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_119
	sub	esp,4
	mov	eax,_375
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_120
	sub	esp,4
	mov	eax,_376
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_121
	sub	esp,4
	mov	eax,_377
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_122
	sub	esp,4
	mov	eax,_378
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_123
	sub	esp,4
	mov	eax,_379
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_124
	sub	esp,4
	mov	eax,_380
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_125
	sub	esp,4
	mov	eax,_381
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_126
	sub	esp,4
	mov	eax,_382
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_127
	sub	esp,4
	mov	eax,_383
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_128
	sub	esp,4
	mov	eax,_384
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_129
	sub	esp,4
	mov	eax,_385
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_130
	sub	esp,4
	mov	eax,_386
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_131
	sub	esp,4
	mov	eax,_387
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_132
	sub	esp,4
	mov	eax,_388
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_133
	sub	esp,4
	mov	eax,_389
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_134
	sub	esp,4
	mov	eax,_390
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_135
	sub	esp,4
	mov	eax,_391
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_136
	sub	esp,4
	mov	eax,_392
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_137
	sub	esp,4
	mov	eax,_393
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_138
	sub	esp,4
	mov	eax,_394
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_139
	sub	esp,4
	mov	eax,_395
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_140
	sub	esp,4
	mov	eax,_396
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_141
	sub	esp,4
	mov	eax,_397
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_142
	sub	esp,4
	mov	eax,_398
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_143
	sub	esp,4
	mov	eax,_399
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_144
	sub	esp,4
	mov	eax,_400
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_145
	sub	esp,4
	mov	eax,_401
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_146
	sub	esp,4
	mov	eax,_402
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_147
	sub	esp,4
	mov	eax,_403
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_148
	sub	esp,4
	mov	eax,_404
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_149
	sub	esp,4
	mov	eax,_405
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_150
	sub	esp,4
	mov	eax,_406
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_151
	sub	esp,4
	mov	eax,_407
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_152
	sub	esp,4
	mov	eax,_408
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_153
	sub	esp,4
	mov	eax,_409
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_154
	sub	esp,4
	mov	eax,_410
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_155
	sub	esp,4
	mov	eax,_411
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_156
	sub	esp,4
	mov	eax,_412
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_157
	sub	esp,4
	mov	eax,_413
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_158
	sub	esp,4
	mov	eax,_414
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_159
	sub	esp,4
	mov	eax,_415
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_160
	sub	esp,4
	mov	eax,_416
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_161
	sub	esp,4
	mov	eax,_417
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_162
	sub	esp,4
	mov	eax,_418
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_163
	sub	esp,4
	mov	eax,_419
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_164
	sub	esp,4
	mov	eax,_420
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_165
	sub	esp,4
	mov	eax,_421
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_166
	sub	esp,4
	mov	eax,_422
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_167
	sub	esp,4
	mov	eax,_423
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_168
	sub	esp,4
	mov	eax,_424
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_169
	sub	esp,4
	mov	eax,_425
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_170
	sub	esp,4
	mov	eax,_426
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_171
	sub	esp,4
	mov	eax,_427
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_172
	sub	esp,4
	mov	eax,_428
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_173
	sub	esp,4
	mov	eax,_429
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_174
	sub	esp,4
	mov	eax,_430
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_175
	sub	esp,4
	mov	eax,_431
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_176
	sub	esp,4
	mov	eax,_432
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_177
	sub	esp,4
	mov	eax,_433
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_178
	sub	esp,4
	mov	eax,_434
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_179
	sub	esp,4
	mov	eax,_435
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_180
	sub	esp,4
	mov	eax,_436
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_181
	sub	esp,4
	mov	eax,_437
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_182
	sub	esp,4
	mov	eax,_438
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_183
	sub	esp,4
	mov	eax,_439
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_184
	sub	esp,4
	mov	eax,_440
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_185
	sub	esp,4
	mov	eax,_441
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_186
	sub	esp,4
	mov	eax,_442
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_187
	sub	esp,4
	mov	eax,_443
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_188
	sub	esp,4
	mov	eax,_444
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_189
	sub	esp,4
	mov	eax,_445
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_190
	sub	esp,4
	mov	eax,_446
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_191
	sub	esp,4
	mov	eax,_447
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_192
	sub	esp,4
	mov	eax,_448
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_193
	sub	esp,4
	mov	eax,_449
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_194
	sub	esp,4
	mov	eax,_450
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_195
	sub	esp,4
	mov	eax,_451
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_196
	sub	esp,4
	mov	eax,_452
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_197
	sub	esp,4
	mov	eax,_453
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_198
	sub	esp,4
	mov	eax,_454
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_199
	sub	esp,4
	mov	eax,_455
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_200
	sub	esp,4
	mov	eax,_456
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_201
	sub	esp,4
	mov	eax,_457
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_202
	sub	esp,4
	mov	eax,_458
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_203
	sub	esp,4
	mov	eax,_459
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_204
	sub	esp,4
	mov	eax,_460
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_205
	sub	esp,4
	mov	eax,_461
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_206
	sub	esp,4
	mov	eax,_462
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_207
	sub	esp,4
	mov	eax,_463
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_208
	sub	esp,4
	mov	eax,_464
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_209
	sub	esp,4
	mov	eax,_465
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_210
	sub	esp,4
	mov	eax,_466
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_211
	sub	esp,4
	mov	eax,_467
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_212
	sub	esp,4
	mov	eax,_468
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_213
	sub	esp,4
	mov	eax,_469
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_214
	sub	esp,4
	mov	eax,_470
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_215
	sub	esp,4
	mov	eax,_471
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_216
	sub	esp,4
	mov	eax,_472
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_217
	sub	esp,4
	mov	eax,_473
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_218
	sub	esp,4
	mov	eax,_474
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_219
	sub	esp,4
	mov	eax,_475
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_220
	sub	esp,4
	mov	eax,_476
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_221
	sub	esp,4
	mov	eax,_477
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_222
	sub	esp,4
	mov	eax,_478
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_223
	sub	esp,4
	mov	eax,_479
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_224
	sub	esp,4
	mov	eax,_480
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_225
	sub	esp,4
	mov	eax,_481
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_226
	sub	esp,4
	mov	eax,_482
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_227
	sub	esp,4
	mov	eax,_483
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_228
	sub	esp,4
	mov	eax,_484
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_229
	sub	esp,4
	mov	eax,_485
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_230
	sub	esp,4
	mov	eax,_486
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_231
	sub	esp,4
	mov	eax,_487
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_232
	sub	esp,4
	mov	eax,_488
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_233
	sub	esp,4
	mov	eax,_489
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_234
	sub	esp,4
	mov	eax,_490
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_235
	sub	esp,4
	mov	eax,_491
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_236
	sub	esp,4
	mov	eax,_492
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_237
	sub	esp,4
	mov	eax,_493
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_238
	sub	esp,4
	mov	eax,_494
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_239
	sub	esp,4
	mov	eax,_495
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_240
	sub	esp,4
	mov	eax,_496
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_241
	sub	esp,4
	mov	eax,_497
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_242
	sub	esp,4
	mov	eax,_498
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_243
	sub	esp,4
	mov	eax,_499
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_244
	sub	esp,4
	mov	eax,_500
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_245
	sub	esp,4
	mov	eax,_501
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_246
	sub	esp,4
	mov	eax,_502
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_247
	sub	esp,4
	mov	eax,_503
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_248
	sub	esp,4
	mov	eax,_504
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_249
	sub	esp,4
	mov	eax,_505
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_250
	sub	esp,4
	mov	eax,_506
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_251
	sub	esp,4
	mov	eax,_507
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_252
	sub	esp,4
	mov	eax,_508
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_253
	sub	esp,4
	mov	eax,_509
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_254
	sub	esp,4
	mov	eax,_510
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_255
	sub	esp,4
	mov	eax,_511
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_256
	sub	esp,4
	mov	eax,_512
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_257
	sub	esp,4
	mov	eax,_513
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_258
	sub	esp,4
	mov	eax,_514
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_259
	sub	esp,4
	mov	eax,_515
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_260
	sub	esp,4
	mov	eax,_516
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_261
	sub	esp,4
	mov	eax,_517
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
	jmp	_5
_5
	sub	esp,4
	mov	eax,_518
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
_262	.db	"Unbound",0
_263	.db	"Escape",0
_264	.db	"1",0
_265	.db	"2",0
_266	.db	"3",0
_267	.db	"4",0
_268	.db	"5",0
_269	.db	"6",0
_270	.db	"7",0
_271	.db	"8",0
_272	.db	"9",0
_273	.db	"0",0
_274	.db	"-",0
_275	.db	"=",0
_276	.db	"Backspace",0
_277	.db	"Tab",0
_278	.db	"Q",0
_279	.db	"W",0
_280	.db	"E",0
_281	.db	"R",0
_282	.db	"T",0
_283	.db	"Y",0
_284	.db	"U",0
_285	.db	"I",0
_286	.db	"O",0
_287	.db	"P",0
_288	.db	"[",0
_289	.db	"]",0
_290	.db	"Enter/Return",0
_291	.db	"Left CTRL",0
_292	.db	"A",0
_293	.db	"S",0
_294	.db	"D",0
_295	.db	"F",0
_296	.db	"G",0
_297	.db	"H",0
_298	.db	"J",0
_299	.db	"K",0
_300	.db	"L",0
_301	.db	";",0
_302	.db	"'",0
_303	.db	"`",0
_304	.db	"Left Shift",0
_305	.db	"\",0
_306	.db	"Z",0
_307	.db	"X",0
_308	.db	"C",0
_309	.db	"V",0
_310	.db	"B",0
_311	.db	"N",0
_312	.db	"M",0
_313	.db	",",0
_314	.db	".",0
_315	.db	"/",0
_316	.db	"Right Shift",0
_317	.db	"Keypad *",0
_318	.db	"Left Alt",0
_319	.db	"Space",0
_320	.db	"Caps Lock",0
_321	.db	"F1",0
_322	.db	"F2",0
_323	.db	"F3",0
_324	.db	"F4",0
_325	.db	"F5",0
_326	.db	"F6",0
_327	.db	"F7",0
_328	.db	"F8",0
_329	.db	"F9",0
_330	.db	"F10",0
_331	.db	"Num Lock",0
_332	.db	"Scroll Lock",0
_333	.db	"Numpad 7",0
_334	.db	"Numpad 8",0
_335	.db	"Numpad 9",0
_336	.db	"Numpad -",0
_337	.db	"Numpad 4",0
_338	.db	"Numpad 5",0
_339	.db	"Numpad 6",0
_340	.db	"Numpad +",0
_341	.db	"Numpad 1",0
_342	.db	"Numpad 2",0
_343	.db	"Numpad 3",0
_344	.db	"Numpad 0",0
_345	.db	"Numpad .",0
_346	.db	"?",0
_347	.db	"?",0
_348	.db	"OEM 102",0
_349	.db	"F11",0
_350	.db	"F12",0
_351	.db	"?",0
_352	.db	"?",0
_353	.db	"?",0
_354	.db	"?",0
_355	.db	"?",0
_356	.db	"?",0
_357	.db	"?",0
_358	.db	"?",0
_359	.db	"?",0
_360	.db	"?",0
_361	.db	"?",0
_362	.db	"F13",0
_363	.db	"F14",0
_364	.db	"F15",0
_365	.db	"?",0
_366	.db	"?",0
_367	.db	"?",0
_368	.db	"?",0
_369	.db	"?",0
_370	.db	"?",0
_371	.db	"?",0
_372	.db	"?",0
_373	.db	"?",0
_374	.db	"Kana",0
_375	.db	"?",0
_376	.db	"?",0
_377	.db	"ABNT C1",0
_378	.db	"?",0
_379	.db	"?",0
_380	.db	"?",0
_381	.db	"?",0
_382	.db	"?",0
_383	.db	"Convert",0
_384	.db	"?",0
_385	.db	"NoConvert",0
_386	.db	"?",0
_387	.db	"Yen",0
_388	.db	"ABNT C2",0
_389	.db	"?",0
_390	.db	"?",0
_391	.db	"?",0
_392	.db	"?",0
_393	.db	"?",0
_394	.db	"?",0
_395	.db	"?",0
_396	.db	"?",0
_397	.db	"?",0
_398	.db	"?",0
_399	.db	"?",0
_400	.db	"?",0
_401	.db	"?",0
_402	.db	"?",0
_403	.db	"Keypad =",0
_404	.db	"?",0
_405	.db	"?",0
_406	.db	"Prev Track",0
_407	.db	"AT",0
_408	.db	":",0
_409	.db	"Underline",0
_410	.db	"Kanji",0
_411	.db	"Stop",0
_412	.db	"AX",0
_413	.db	"Unlabeled",0
_414	.db	"?",0
_415	.db	"Next Track",0
_416	.db	"?",0
_417	.db	"?",0
_418	.db	"Keypad Enter",0
_419	.db	"Right CTRL",0
_420	.db	"?",0
_421	.db	"?",0
_422	.db	"Mute",0
_423	.db	"Calculator",0
_424	.db	"Play/Pause",0
_425	.db	"?",0
_426	.db	"Media Stop",0
_427	.db	"?",0
_428	.db	"?",0
_429	.db	"?",0
_430	.db	"?",0
_431	.db	"?",0
_432	.db	"?",0
_433	.db	"?",0
_434	.db	"?",0
_435	.db	"?",0
_436	.db	"Volume Down",0
_437	.db	"?",0
_438	.db	"Volume Up",0
_439	.db	"?",0
_440	.db	"Web Home",0
_441	.db	"Keypad ,",0
_442	.db	"?",0
_443	.db	"Keypad /",0
_444	.db	"?",0
_445	.db	"System Request",0
_446	.db	"Right Alt",0
_447	.db	"?",0
_448	.db	"?",0
_449	.db	"?",0
_450	.db	"?",0
_451	.db	"?",0
_452	.db	"?",0
_453	.db	"?",0
_454	.db	"?",0
_455	.db	"?",0
_456	.db	"?",0
_457	.db	"?",0
_458	.db	"?",0
_459	.db	"Pause",0
_460	.db	"?",0
_461	.db	"Home",0
_462	.db	"Cursor Up",0
_463	.db	"Page Up",0
_464	.db	"?",0
_465	.db	"Cursor Left",0
_466	.db	"?",0
_467	.db	"Cursor Right",0
_468	.db	"?",0
_469	.db	"End",0
_470	.db	"Cursor Down",0
_471	.db	"Page Down",0
_472	.db	"Insert",0
_473	.db	"Delete",0
_474	.db	"?",0
_475	.db	"?",0
_476	.db	"?",0
_477	.db	"?",0
_478	.db	"?",0
_479	.db	"?",0
_480	.db	"?",0
_481	.db	"Left Windows Key",0
_482	.db	"Right Windows Key",0
_483	.db	"Windows Menu Key",0
_484	.db	"Power",0
_485	.db	"Sleep",0
_486	.db	"?",0
_487	.db	"?",0
_488	.db	"?",0
_489	.db	"Wake",0
_490	.db	"?",0
_491	.db	"Web Search",0
_492	.db	"Favorites",0
_493	.db	"Web Refresh",0
_494	.db	"Web Stop",0
_495	.db	"Web Forward",0
_496	.db	"Web Back",0
_497	.db	"My Computer",0
_498	.db	"Mail",0
_499	.db	"Media Select",0
_500	.db	"?",0
_501	.db	"?",0
_502	.db	"?",0
_503	.db	"?",0
_504	.db	"?",0
_505	.db	"?",0
_506	.db	"?",0
_507	.db	"?",0
_508	.db	"?",0
_509	.db	"?",0
_510	.db	"?",0
_511	.db	"?",0
_512	.db	"?",0
_513	.db	"?",0
_514	.db	"?",0
_515	.db	"?",0
_516	.db	"?",0
_517	.db	"?",0
_518	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

