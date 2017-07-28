
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,36
	mov	[esp],34
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_183
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_184
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_185
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_186
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,36
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_187
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_188
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_189
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_190
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fexecfile
	sub	esp,4
	mov	[esp],500
	call	_fdelay
	sub	esp,8
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_192
	sub	esp,12
	mov	eax,_193
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
	call	_fend
_192
	mov	[ebp-12],0
	jmp	_195
_194
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	cmp	[ebp-12],58
	jle	_196
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreatecommand
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbObjStore
_196
	add	[ebp-12],1
_195
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_194
_4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_197
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_198
	sub	esp,12
	mov	eax,_199
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
	call	_fend
_198
_200
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-28],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	mov	eax,_201
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+8],ebx
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_203
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_202
	jmp	_5
_202
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteline
	jmp	_200
_5
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],_tcommand
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_204
	sub	esp,36
	mov	eax,_205
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_206
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcommandinvoke
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp],9
	call	_fchr
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	add	[ebp-12],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_204
_6
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_207
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_208
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_209
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_210
	sub	esp,12
	mov	eax,_211
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
	call	_fend
_210
_212
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-28],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	mov	eax,_213
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+8],ebx
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_215
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_214
	jmp	_7
_214
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteline
	jmp	_212
_7
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],_tcommand
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_216
	sub	esp,16
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcommanddef
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-12],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_216
_8
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,12
	mov	eax,_217
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
	call	_fend
	ret
_2_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcommandinvoke
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_220
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],1
	jmp	_221
_222
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	cmp	[ebp-20],1
	jz	_224
	cmp	[ebp-20],2
	jz	_225
	cmp	[ebp-20],3
	jz	_226
	jmp	_223
_224
	sub	esp,20
	mov	eax,_227
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,96
	add	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,28
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_228
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_223
_225
	sub	esp,28
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,96
	add	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_230
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,28
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_231
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_223
_226
	sub	esp,28
	mov	eax,_232
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,96
	add	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_233
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,28
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_234
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_223
_223
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jge	_235
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_236
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_235
	add	[ebp-16],1
_221
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_222
_10
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	cmp	[ebp-24],0
	jz	_238
	cmp	[ebp-24],1
	jz	_239
	cmp	[ebp-24],2
	jz	_240
	cmp	[ebp-24],3
	jz	_241
	jmp	_237
_238
	sub	esp,36
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_242
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_237
_239
	sub	esp,52
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_243
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_244
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_245
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_237
_240
	sub	esp,52
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_246
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_247
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_248
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_237
_241
	sub	esp,52
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_249
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_250
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_251
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_237
_237
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_252
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcommanddef
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	cmp	[ebp-28],0
	jz	_254
	cmp	[ebp-28],1
	jz	_255
	cmp	[ebp-28],2
	jz	_256
	cmp	[ebp-28],3
	jz	_257
	jmp	_253
_254
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_258
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_253
_255
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_259
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_260
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_253
_256
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_261
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_262
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_253
_257
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_263
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_264
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_253
_253
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-32],1
	jmp	_265
_266
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	cmp	[ebp-36],1
	jz	_268
	cmp	[ebp-36],2
	jz	_269
	cmp	[ebp-36],3
	jz	_270
	jmp	_267
_268
	sub	esp,20
	mov	eax,_271
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,96
	add	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,_272
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_267
_269
	sub	esp,20
	mov	eax,_273
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,96
	add	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,_274
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_267
_270
	sub	esp,20
	mov	eax,_275
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,96
	add	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_267
_267
	sub	esp,28
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_277
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jge	_278
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_279
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_278
	add	[ebp-32],1
_265
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jle	_266
_15
	sub	esp,60
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_280
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_281
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_282
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_283
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_13_leave
	sub	esp,4
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	jmp	_13_leave
_13_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreatecommand
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_tcommand
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_285
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-8],ebx
	cmp	[ebp-8],2
	jle	_286
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-12],ebx
	sub	esp,20
	mov	ebx,[ebp-8]
	sub	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	[ebp-20],1
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_288
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_287
	mov	[ebp-20],2
	mov	ebx,[ebp-8]
	sub	ebx,2
	mov	[ebp-12],ebx
_287
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_290
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_289
	mov	[ebp-20],3
	mov	ebx,[ebp-8]
	sub	ebx,2
	mov	[ebp-12],ebx
_289
	mov	ebx,[ebp-20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,20
	mov	[esp+4],1
	mov	esi,[ebp-12]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-8],1
	jmp	_291
_286
	sub	esp,16
	mov	eax,_292
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jnz	_293
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-4]
	jmp	_17_leave
_293
	sub	esp,20
	mov	[esp+4],1
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_291
	sub	esp,16
	mov	eax,_294
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-8],ebx
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_295
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],-1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_295
	sub	esp,24
	mov	eax,_296
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_297
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_298
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_299
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_300
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_301
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_302
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_303
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_305
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	mov	[ebp-8],1
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_307
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_306
	mov	eax,[ebp-4]
	jmp	_17_leave
_306
_308
	sub	esp,16
	mov	eax,_309
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jnz	_310
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-12],eax
_310
	cmp	[ebp-12],0
	jnz	_311
	mov	eax,[ebp-4]
	jmp	_17_leave
_311
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	[ebp-20],1
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_313
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_312
	mov	[ebp-20],2
_312
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_315
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_314
	mov	[ebp-20],3
_314
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-20]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	setg	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,10
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	and	eax,eax
	jz	_316
	mov	eax,[ebp-4]
	jmp	_17_leave
_316
	jmp	_308
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_183	.db	"c:\blitz\blitz3d\",0
_184	.db	"bin\blitzcc",0
_185	.db	"stublist.bat",0
_186	.db	"set blitzpath=c:\blitz\blitz3d\",0
_187	.db	" +k ",0
_188	.db	">",0
_189	.db	"commands.txt",0
_190	.db	"stublist",0
_191	.db	"commands.txt",0
_193	.db	"blitzcc command dump failure",0
_197	.db	"bootstrap.bb",0
_199	.db	"failed create bootstrap.bb file",0
_201	.db	"'",0
_203	.db	"",0
_205	.db	"Case ",0
_206	.db	":",0
_207	.db	"End Select",0
_208	.db	"Wend",0
_209	.db	"acidstub.h",0
_211	.db	"failed to create acidstub.h file",0
_213	.db	"'",0
_215	.db	"",0
_217	.db	"CreateStub Complete",0
	.align	4
_3	.dd	6
	.dd	11
	.dd	__bbIntType
	.align	4
_tcommand	.dd	5
_218	.dd	0
	.dd	_218
	.dd	_218
	.dd	0
	.dd	-1
_219	.dd	0
	.dd	_219
	.dd	_219
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbStrType
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	_3
_220	.db	"",0
_227	.db	"v",0
_228	.db	"=argint():",0
_229	.db	"f",0
_230	.db	"#",0
_231	.db	"=argfloat():",0
_232	.db	"s",0
_233	.db	"$",0
_234	.db	"=argstring():",0
_236	.db	",",0
_242	.db	" ",0
_243	.db	"PokeInt(out,0,",0
_244	.db	"(",0
_245	.db	"))",0
_246	.db	"PokeFloat(out,0,",0
_247	.db	"(",0
_248	.db	"))",0
_249	.db	"PokeString(out,0,",0
_250	.db	"(",0
_251	.db	"))",0
_252	.db	"",0
_258	.db	"void ",0
_259	.db	"int ",0
_260	.db	"return *(int*)result;",0
_261	.db	"float ",0
_262	.db	"return *(float*)result;",0
_263	.db	"char *",0
_264	.db	"return (char*)result;",0
_271	.db	"v",0
_272	.db	"int ",0
_273	.db	"f",0
_274	.db	"float ",0
_275	.db	"s",0
_276	.db	"char *",0
_277	.db	",",0
_279	.db	",",0
_280	.db	"(",0
_281	.db	") {invoke(",0
_282	.db	");",0
_283	.db	"}",0
_284	.db	"",0
_285	.db	"(",0
_288	.db	"#",0
_290	.db	"$",0
_292	.db	" ",0
_294	.db	" ",0
_296	.db	"(",0
_297	.db	"",0
_298	.db	")",0
_299	.db	"",0
_300	.db	"[",0
_301	.db	"",0
_302	.db	"]",0
_303	.db	"",0
_304	.db	" ",0
_305	.db	"",0
_307	.db	"",0
_309	.db	",",0
_313	.db	"#",0
_315	.db	"$",0
_19	.db	"; bootstrap.bb",0
_20	.db	"; launchpad for acidstub.dll",0
_21	.db	" ",0
_22	.db	"Function PokeString(bank,offset,a$)",0
_23	.db	"	l=Len(a$)",0
_24	.db	"	If (l>4000) l=4000",0
_25	.db	"	PokeInt bank,offset,l",0
_26	.db	"	For i=1 To l",0
_27	.db	"		PokeByte bank,offset+3+i,Asc(Mid$(a$,i,1))",0
_28	.db	"	Next",0
_29	.db	"End Function",0
_30	.db	" ",0
_31	.db	"Function argstring$()",0
_32	.db	"	l=PeekInt(in,arg)",0
_33	.db	"	arg=arg+4",0
_34	.db	"	If (l>4000) l=4000",0
_35	.db	"	For i=1 To l",0
_36	.db	"		a$=a$+Chr$(PeekByte(in,arg))",0
_37	.db	"		arg=arg+1",0
_38	.db	"	Next",0
_39	.db	"	Return a$",0
_40	.db	"End Function",0
_41	.db	" ",0
_42	.db	"Function argint()",0
_43	.db	"	arg=arg+4",0
_44	.db	"	Return PeekInt(in,arg-4)",0
_45	.db	"End Function",0
_46	.db	" ",0
_47	.db	"Function argfloat()",0
_48	.db	"	arg=arg+4",0
_49	.db	"	Return PeekFloat(in,arg-4)",0
_50	.db	"End Function",0
_51	.db	" ",0
_52	.db	"Global in=CreateBank(4096)",0
_53	.db	"Global out=CreateBank(4096)",0
_54	.db	"Global arg",0
_55	.db	" ",0
_56	.db	"While True",0
_57	.db	"	res=CallDLL('acidstub','call',in,out)",0
_58	.db	"	arg=0",0
_59	.db	"	Select res",0
_60	.db	"",0
_61	.db	"// acidstub.h",0
_62	.db	" ",0
_63	.db	"DWORD WINAPI StubMain(void *);",0
_64	.db	"const void	*result;",0
_65	.db	"char		*argptr;",0
_66	.db	"int			stubcmd;",0
_67	.db	"void arg(char *a);",0
_68	.db	"void arg(int a) {*(int*)argptr=a;argptr+=4;}",0
_69	.db	"void arg(float a) {*(float*)argptr=a;argptr+=4;}",0
_70	.db	"void invoke(int cmd);",0
_71	.db	"void invoke(int cmd,int i0) {arg(i0);invoke(cmd);}",0
_72	.db	"void invoke(int cmd,int i0,int i1) {arg(i0);arg(i1);invoke(cmd);}",0
_73	.db	"void invoke(int cmd,int i0,int i1,int i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_74	.db	"void invoke(int cmd,int i0,int i1,int i2,int i3) {arg(i0);arg(i1);arg(i2);arg(i3);invoke(cmd);}",0
_75	.db	"void invoke(int cmd,int i0,int i1,int i2,int i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_76	.db	"void invoke(int cmd,int i0,int i1,int i2,int i3,int i4,int i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_77	.db	"void invoke(int cmd,int i0,int i1,int i2,int i3,int i4,int i5,int i6) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);invoke(cmd);}",0
_78	.db	"void invoke(int cmd,int i0,int i1,int i2,int i3,int i4,int i5,int i6,int i7) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);invoke(cmd);}",0
_79	.db	"void invoke(int cmd,int i0,int i1,float i2,int i3,int i4,int i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_80	.db	"void invoke(int cmd,int i0,int i1,float i2,float i3,int i4,int i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_81	.db	"void invoke(int cmd,int i0,int i1,float i2,float i3,float i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_82	.db	"void invoke(int cmd,int i0,int i1,float i2,int i3,float i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_83	.db	"void invoke(int cmd,int i0,int i1,int i2,float i3,float i4,float i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_84	.db	"void invoke(int cmd,int i0,int i1,float i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_85	.db	"void invoke(int cmd,int i0,int i1,int i2,float i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_86	.db	"void invoke(int cmd,int i0,int i1,float i2,float i3,float i4,int i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i5);invoke(cmd);}",0
_87	.db	"void invoke(int cmd,int i0,char *c1) {arg(i0);arg(c1);invoke(cmd);}",0
_88	.db	"void invoke(int cmd,int i0,char *c1,int i2) {arg(i0);arg(c1);arg(i2);invoke(cmd);}",0
_89	.db	"void invoke(int cmd,int i0,char *i1,int i2,int i3) {arg(i0);arg(i1);arg(i2);arg(i3);invoke(cmd);}",0
_90	.db	"void invoke(int cmd,int i0,char *i1,int i2,int i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_91	.db	"void invoke(int cmd,int i0,int i1,char *i2,int i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_92	.db	"void invoke(int cmd,int i0,float i1) {arg(i0);arg(i1);invoke(cmd);}",0
_93	.db	"void invoke(int cmd,int i0,float i1,float i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_94	.db	"void invoke(int cmd,int i0,float i1,int i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_95	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3) {arg(i0);arg(i1);arg(i2);arg(i3);invoke(cmd);}",0
_96	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,float i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_97	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,float i4,float i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_98	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,float i4,float i5,float i6) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);invoke(cmd);}",0
_99	.db	"void invoke(int cmd,int i0,float i1,float i2,int i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_100	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,int i4,int i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_101	.db	"void invoke(int cmd,int i0,float i1,float i2,int i3,int i4,int i5,int i6,int i7) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);invoke(cmd);}",0
_102	.db	"void invoke(int cmd,int i0,float i1,float i2,int i3,int i4,int i5,int i6) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);invoke(cmd);}",0
_103	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,float i4,float i5,int i6,int i7) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);invoke(cmd);}",0
_104	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,int i4,float i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_105	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_106	.db	"void invoke(int cmd,int i0,int i1,float i2,int i3,int i4,float i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_107	.db	"void invoke(int cmd,int i0,int i1,float i2,float i3,float i4,float i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_108	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,float i4,float i5,float i6,float i7) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);invoke(cmd);}",0
_109	.db	"void invoke(int cmd,int i0,float i1,float i2,float i3,float i4,float i5,float i6,int i7) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);invoke(cmd);}",0
_110	.db	"void invoke(int cmd,float i0) {arg(i0);invoke(cmd);}",0
_111	.db	"void invoke(int cmd,float i0,float i1) {arg(i0);arg(i1);invoke(cmd);}",0
_112	.db	"void invoke(int cmd,float i0,float i1,float i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_113	.db	"void invoke(int cmd,float i0,float i1,float i2,int i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_114	.db	"void invoke(int cmd,float i0,float i1,float i2,float i3,float i4,int i5,int i6) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);invoke(cmd);}",0
_115	.db	"void invoke(int cmd,float i0,float i1,float i2,float i3,float i4,float i5,float i6) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);invoke(cmd);}",0
_116	.db	"void invoke(int cmd,char *c0) {arg(c0);invoke(cmd);}",0
_117	.db	"void invoke(int cmd,char *c0,char *c1) {arg(c0);arg(c1);invoke(cmd);}",0
_118	.db	"void invoke(int cmd,char *i0,int i1,int i2,int i3,int i4,int i5) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);invoke(cmd);}",0
_119	.db	"void invoke(int cmd,char *i0,float i1,float i2,float i3,float i4,float i5,float i6,float i7) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);invoke(cmd);}",0
_120	.db	"void invoke(int cmd,char *i0,float i1,float i2,float i3,float i4,float i5,float i6,float i7,float i8,float i9) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);arg(i5);arg(i6);arg(i7);arg(i8);arg(i9);invoke(cmd);}",0
_121	.db	"void invoke(int cmd,char *i0,int i1) {arg(i0);arg(i1);invoke(cmd);}",0
_122	.db	"void invoke(int cmd,char *i0,int i1,int i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_123	.db	"void invoke(int cmd,char *i0,int i1,int i2,int i3) {arg(i0);arg(i1);arg(i2);arg(i3);invoke(cmd);}",0
_124	.db	"void invoke(int cmd,char *i0,int i1,int i2,int i3,int i4) {arg(i0);arg(i1);arg(i2);arg(i3);arg(i4);invoke(cmd);}",0
_125	.db	"void invoke(int cmd,char *i0,char *i1,char *i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_126	.db	"void invoke(int cmd,char *i0,float i1,int i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_127	.db	"void invoke(int cmd,char *i0,char *i1,int i2) {arg(i0);arg(i1);arg(i2);invoke(cmd);}",0
_128	.db	"void invoke(int cmd,char *i0,char *i1,int i2,int i3) {arg(i0);arg(i1);arg(i2);arg(i3);invoke(cmd);}",0
_129	.db	"void invoke(int cmd,char *i0,int i1,float i2,float i3) {arg(i0);arg(i1);arg(i2);arg(i3);invoke(cmd);}",0
_130	.db	"DWORD		threadid=0;",0
_131	.db	"HANDLE		thread,callevent,resevent;",0
_132	.db	"int __stdcall DllMain(int,int,void *)",0
_133	.db	"{",0
_134	.db	"	return 1;",0
_135	.db	"}",0
_136	.db	"extern 'C' _declspec(dllexport) int _cdecl call(const void *in,int ibytes,void *out,int outbytes)",0
_137	.db	"{",0
_138	.db	"	DWORD		res;",0
_139	.db	"	result=out;",0
_140	.db	"	argptr=(char*)in;",0
_141	.db	"	if (threadid==0)",0
_142	.db	"	{",0
_143	.db	"		callevent=CreateEvent(0,0,0,0);",0
_144	.db	"		resevent=CreateEvent(0,0,0,0);",0
_145	.db	"		thread=CreateThread(0,0,StubMain,0,0,&threadid);",0
_146	.db	"	}",0
_147	.db	"	else",0
_148	.db	"	{",0
_149	.db	"		SetEvent(resevent);",0
_150	.db	"	}",0
_151	.db	"	while (true)",0
_152	.db	"	{",0
_153	.db	"		res=WaitForSingleObject(callevent,INFINITE);",0
_154	.db	"		if (res==WAIT_OBJECT_0) break;",0
_155	.db	"	}",0
_156	.db	"	return stubcmd;",0
_157	.db	"}",0
_158	.db	"void invoke(int cmd)",0
_159	.db	"{",0
_160	.db	"	DWORD	res;",0
_161	.db	"	stubcmd=cmd;",0
_162	.db	"	SetEvent(callevent);",0
_163	.db	"	while (true)",0
_164	.db	"	{",0
_165	.db	"		res=WaitForSingleObject(resevent,INFINITE);",0
_166	.db	"		if (res==WAIT_OBJECT_0) break;",0
_167	.db	"	}",0
_168	.db	"}",0
_169	.db	"void arg(char *a)",0
_170	.db	"{",0
_171	.db	"	int		n;",0
_172	.db	"	char	*p;",0
_173	.db	"	p=argptr+4;n=0;",0
_174	.db	"	while (*p++=*a++)",0
_175	.db	"	{",0
_176	.db	"		n++;",0
_177	.db	"		if (n==4000) {*p++=0;break;}",0
_178	.db	"	}",0
_179	.db	"	*(int*)argptr=n-1;",0
_180	.db	"	argptr=p;",0
_181	.db	"}",0
_182	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_19
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	4
	.dd	_24
	.dd	4
	.dd	_25
	.dd	4
	.dd	_26
	.dd	4
	.dd	_27
	.dd	4
	.dd	_28
	.dd	4
	.dd	_29
	.dd	4
	.dd	_30
	.dd	4
	.dd	_31
	.dd	4
	.dd	_32
	.dd	4
	.dd	_33
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	4
	.dd	_36
	.dd	4
	.dd	_37
	.dd	4
	.dd	_38
	.dd	4
	.dd	_39
	.dd	4
	.dd	_40
	.dd	4
	.dd	_41
	.dd	4
	.dd	_42
	.dd	4
	.dd	_43
	.dd	4
	.dd	_44
	.dd	4
	.dd	_45
	.dd	4
	.dd	_46
	.dd	4
	.dd	_47
	.dd	4
	.dd	_48
	.dd	4
	.dd	_49
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
	.dd	4
	.dd	_62
	.dd	4
	.dd	_63
	.dd	4
	.dd	_64
	.dd	4
	.dd	_65
	.dd	4
	.dd	_66
	.dd	4
	.dd	_67
	.dd	4
	.dd	_68
	.dd	4
	.dd	_69
	.dd	4
	.dd	_70
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
	.dd	4
	.dd	_83
	.dd	4
	.dd	_84
	.dd	4
	.dd	_85
	.dd	4
	.dd	_86
	.dd	4
	.dd	_87
	.dd	4
	.dd	_88
	.dd	4
	.dd	_89
	.dd	4
	.dd	_90
	.dd	4
	.dd	_91
	.dd	4
	.dd	_92
	.dd	4
	.dd	_93
	.dd	4
	.dd	_94
	.dd	4
	.dd	_95
	.dd	4
	.dd	_96
	.dd	4
	.dd	_97
	.dd	4
	.dd	_98
	.dd	4
	.dd	_99
	.dd	4
	.dd	_100
	.dd	4
	.dd	_101
	.dd	4
	.dd	_102
	.dd	4
	.dd	_103
	.dd	4
	.dd	_104
	.dd	4
	.dd	_105
	.dd	4
	.dd	_106
	.dd	4
	.dd	_107
	.dd	4
	.dd	_108
	.dd	4
	.dd	_109
	.dd	4
	.dd	_110
	.dd	4
	.dd	_111
	.dd	4
	.dd	_112
	.dd	4
	.dd	_113
	.dd	4
	.dd	_114
	.dd	4
	.dd	_115
	.dd	4
	.dd	_116
	.dd	4
	.dd	_117
	.dd	4
	.dd	_118
	.dd	4
	.dd	_119
	.dd	4
	.dd	_120
	.dd	4
	.dd	_121
	.dd	4
	.dd	_122
	.dd	4
	.dd	_123
	.dd	4
	.dd	_124
	.dd	4
	.dd	_125
	.dd	4
	.dd	_126
	.dd	4
	.dd	_127
	.dd	4
	.dd	_128
	.dd	4
	.dd	_129
	.dd	4
	.dd	_130
	.dd	4
	.dd	_131
	.dd	4
	.dd	_132
	.dd	4
	.dd	_133
	.dd	4
	.dd	_134
	.dd	4
	.dd	_135
	.dd	4
	.dd	_136
	.dd	4
	.dd	_137
	.dd	4
	.dd	_138
	.dd	4
	.dd	_139
	.dd	4
	.dd	_140
	.dd	4
	.dd	_141
	.dd	4
	.dd	_142
	.dd	4
	.dd	_143
	.dd	4
	.dd	_144
	.dd	4
	.dd	_145
	.dd	4
	.dd	_146
	.dd	4
	.dd	_147
	.dd	4
	.dd	_148
	.dd	4
	.dd	_149
	.dd	4
	.dd	_150
	.dd	4
	.dd	_151
	.dd	4
	.dd	_152
	.dd	4
	.dd	_153
	.dd	4
	.dd	_154
	.dd	4
	.dd	_155
	.dd	4
	.dd	_156
	.dd	4
	.dd	_157
	.dd	4
	.dd	_158
	.dd	4
	.dd	_159
	.dd	4
	.dd	_160
	.dd	4
	.dd	_161
	.dd	4
	.dd	_162
	.dd	4
	.dd	_163
	.dd	4
	.dd	_164
	.dd	4
	.dd	_165
	.dd	4
	.dd	_166
	.dd	4
	.dd	_167
	.dd	4
	.dd	_168
	.dd	4
	.dd	_169
	.dd	4
	.dd	_170
	.dd	4
	.dd	_171
	.dd	4
	.dd	_172
	.dd	4
	.dd	_173
	.dd	4
	.dd	_174
	.dd	4
	.dd	_175
	.dd	4
	.dd	_176
	.dd	4
	.dd	_177
	.dd	4
	.dd	_178
	.dd	4
	.dd	_179
	.dd	4
	.dd	_180
	.dd	4
	.dd	_181
	.dd	4
	.dd	_182
	.dd	0

