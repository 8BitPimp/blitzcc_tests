
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
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,_ans
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,91
	mov	esi,_ans
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ans
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,91
	mov	esi,_aname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atms
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,91
	mov	esi,_atms
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atms
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aim
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,20
	mov	esi,_aim
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aim
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afm
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,20
	mov	esi,_afm
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afm
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asm
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,20
	mov	esi,_asm
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asm
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atyp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_atyp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atyp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-4],1
	jmp	_197
_198
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aname]
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_197
	cmp	[ebp-4],91
	jle	_198
_3
	mov	[ebp-4],1
	jmp	_199
_200
_201
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],91
	call	_frand
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atms]
	mov	ebx,[ebx]
	cmp	ebx,10
	jge	_201
_5
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atms]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atms]
	mov	[esi],ebx
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fbenchmark
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ans]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ans]
	mov	[ebx],esi
	add	[ebp-4],1
_199
	cmp	[ebp-4],910
	jle	_200
_4
	mov	[ebp-4],1
	sub	esp,8
	mov	eax,_202
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_203
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_204
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_206
_205
	cmp	[ebp-20],900
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-4],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_207
	mov	[ebp-20],0
	add	[ebp-24],12
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_208
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
_207
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ans]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,52
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_209
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
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_210
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
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_211
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-20],300
	add	[ebp-4],1
_206
	cmp	[ebp-4],91
	jle	_205
_6
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_212
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_213
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fexecfile
	ret
_2_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-16]
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
_fbenchmark
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,104
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
	sub	esp,12
	mov	eax,_tt
	mov	[esp],eax
	call	__bbObjFirst
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_216
	mov	[ebp-4],1
	jmp	_217
_218
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_tt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_atyp]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_217
	cmp	[ebp-4],100000
	jle	_218
_8
_216
	sub	esp,8
	mov	[esp],-2000000000
	mov	[esp+4],2000000000
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],-2000000000
	mov	[esp+4],2000000000
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],-20
	mov	[esp+4],20
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],20
	call	_frand
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],-823235800
	mov	[esp+4],1324247848
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],-823235800
	mov	[esp+4],1324247848
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1324247848
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],-1046478848
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[esp],-1082130432
	mov	[esp+4],1065353216
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,16
	mov	[esp],1
	mov	[esp+4],100000
	call	_frand
	shl	eax,byte 2
	add	eax,[_atyp]
	mov	eax,[eax]
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,16
	mov	[esp],2
	mov	[esp+4],99999
	call	_frand
	shl	eax,byte 2
	add	eax,[_atyp]
	mov	eax,[eax]
	mov	[esp+4],eax
	lea	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-100],eax
	mov	[ebp-104],eax
	sub	esp,8
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	__bbObjCompare
	mov	ebx,eax
	mov	eax,[ebp-104]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-100]
	or	eax,ebx
	and	eax,eax
	jz	_219
	call	_fstop
_219
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],20
	call	_frand
	mov	[ebp-56],eax
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	[esp],24
	call	_fcreatebank
	mov	[ebp-64],eax
	mov	[ebp-4],1
	jmp	_220
_221
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-56]
	cmp	[ebp-72],ebx
	jnz	_222
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
_222
	sub	esp,20
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_220
	cmp	[ebp-4],20
	jle	_221
_9
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_224
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_223
	sub	esp,4
	mov	eax,_tt
	mov	[esp],eax
	call	__bbObjDeleteEach
_223
	mov	[ebp-80],1
	call	_fmillisecs
	mov	[ebp-84],eax
	sub	esp,8
	lea	eax,[ebp-88]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_227
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_226
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_229
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_228
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_231
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_230
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_233
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_232
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_235
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_234
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_237
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_236
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_239
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_238
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_241
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_240
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_243
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_242
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_245
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_244
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_247
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_246
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_249
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_248
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_251
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_250
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_253
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_252
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_255
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_254
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_257
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_256
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_259
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_258
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_261
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_260
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_263
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_262
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_265
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_264
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_267
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_266
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_269
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_268
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_271
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_270
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_273
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_272
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_275
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_274
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_277
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_276
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_279
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_278
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_281
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_280
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_283
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_282
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_285
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_284
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_287
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_286
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_289
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_288
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_291
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_290
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_293
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_292
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_295
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_294
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_297
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_296
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_299
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_298
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_301
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_300
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_303
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_302
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_305
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_304
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_307
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_306
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_309
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_308
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_311
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_310
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_313
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_312
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_315
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_314
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_317
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_316
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_319
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_318
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_321
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_320
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_323
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_322
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_325
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_324
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_327
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_326
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_329
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_328
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_331
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_330
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_333
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_332
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_335
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_334
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_337
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_336
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_339
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_338
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_341
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_340
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_343
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_342
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_345
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_344
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_347
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_346
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_349
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_348
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_351
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_350
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_353
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_352
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_355
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_354
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_357
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_356
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_359
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_358
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_361
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_360
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_363
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_362
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_365
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_364
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_367
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_366
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_369
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_368
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_371
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_370
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_373
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_372
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_375
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_374
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_377
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_376
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_379
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_378
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_381
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_380
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_383
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_382
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_385
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_384
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_387
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_386
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_389
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_388
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_391
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_390
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_393
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_392
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_395
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_394
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_397
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_396
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_399
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_398
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_401
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_400
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_403
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_402
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_405
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_404
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_407
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_406
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_409
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_408
	jmp	_225
_226
	mov	[ebp-4],1
	jmp	_410
_411
	mov	ebx,[ebp-12]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_410
	cmp	[ebp-4],100000
	jle	_411
_11
	jmp	_225
_228
	mov	[ebp-4],1
	jmp	_412
_413
	mov	ebx,[ebp-12]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_412
	cmp	[ebp-4],100000
	jle	_413
_12
	jmp	_225
_230
	mov	[ebp-4],1
	jmp	_414
_415
	mov	ebx,[ebp-12]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-32]
	mov	[ebp-96],ebx
	add	[ebp-4],1
_414
	cmp	[ebp-4],100000
	jle	_415
_13
	jmp	_225
_232
	mov	[ebp-4],1
	jmp	_416
_417
	mov	ebx,[ebp-12]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	add	[ebp-4],1
_416
	cmp	[ebp-4],100000
	jle	_417
_14
	jmp	_225
_234
	mov	[ebp-4],1
	jmp	_418
_419
	mov	ebx,[ebp-12]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	add	[ebp-4],1
_418
	cmp	[ebp-4],100000
	jle	_419
_15
	jmp	_225
_236
	mov	[ebp-4],1
	jmp	_420
_421
	mov	ebx,[ebp-12]
	add	ebx,[ebp-16]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_420
	cmp	[ebp-4],100000
	jle	_421
_16
	jmp	_225
_238
	mov	[ebp-4],1
	jmp	_422
_423
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	add	[ebp-4],1
_422
	cmp	[ebp-4],100000
	jle	_423
_17
	jmp	_225
_240
	mov	[ebp-4],1
	jmp	_424
_425
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-16]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_424
	cmp	[ebp-4],100000
	jle	_425
_18
	jmp	_225
_242
	mov	[ebp-4],1
	jmp	_426
_427
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	add	[ebp-4],1
_426
	cmp	[ebp-4],100000
	jle	_427
_19
	jmp	_225
_244
	mov	[ebp-4],1
	jmp	_428
_429
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-16]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_428
	cmp	[ebp-4],100000
	jle	_429
_20
	jmp	_225
_246
	mov	[ebp-4],1
	jmp	_430
_431
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	add	[ebp-4],1
_430
	cmp	[ebp-4],100000
	jle	_431
_21
	jmp	_225
_248
	mov	[ebp-4],1
	jmp	_432
_433
	mov	eax,[ebp-12]
	mov	ecx,[ebp-16]
	cdq
	idiv	ecx
	mov	[ebp-92],eax
	add	[ebp-4],1
_432
	cmp	[ebp-4],100000
	jle	_433
_22
	jmp	_225
_250
	mov	[ebp-4],1
	jmp	_434
_435
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	add	[ebp-4],1
_434
	cmp	[ebp-4],100000
	jle	_435
_23
	jmp	_225
_252
	mov	[ebp-4],1
	jmp	_436
_437
	sub	esp,8
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-92],eax
	add	[ebp-4],1
_436
	cmp	[ebp-4],10000
	jle	_437
_24
	mov	[ebp-80],10
	jmp	_225
_254
	mov	[ebp-4],1
	jmp	_438
_439
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_438
	cmp	[ebp-4],10000
	jle	_439
_25
	mov	[ebp-80],10
	jmp	_225
_256
	mov	[ebp-4],1
	jmp	_440
_441
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-92],eax
	add	[ebp-4],1
_440
	cmp	[ebp-4],100000
	jle	_441
_26
	jmp	_225
_258
	mov	[ebp-4],1
	jmp	_442
_443
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	add	[ebp-4],1
_442
	cmp	[ebp-4],100000
	jle	_443
_27
	jmp	_225
_260
	mov	[ebp-4],1
	jmp	_444
_445
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fceil
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-92],eax
	add	[ebp-4],1
_444
	cmp	[ebp-4],100000
	jle	_445
_28
	jmp	_225
_262
	mov	[ebp-4],1
	jmp	_446
_447
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-92],eax
	add	[ebp-4],1
_446
	cmp	[ebp-4],100000
	jle	_447
_29
	jmp	_225
_264
	mov	[ebp-4],1
	jmp	_448
_449
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_448
	cmp	[ebp-4],100000
	jle	_449
_30
	jmp	_225
_266
	mov	[ebp-4],1
	jmp	_450
_451
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbSgn
	mov	[ebp-92],eax
	add	[ebp-4],1
_450
	cmp	[ebp-4],100000
	jle	_451
_31
	jmp	_225
_268
	mov	[ebp-4],1
	jmp	_452
_453
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	__bbFSgn
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_452
	cmp	[ebp-4],100000
	jle	_453
_32
	jmp	_225
_270
	mov	[ebp-4],1
	jmp	_454
_455
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-92],eax
	add	[ebp-4],1
_454
	cmp	[ebp-4],100000
	jle	_455
_33
	jmp	_225
_272
	mov	[ebp-4],1
	jmp	_456
_457
	mov	ebx,[ebp-12]
	mov	esi,[ebp-16]
	and	ebx,esi
	mov	[ebp-92],ebx
	add	[ebp-4],1
_456
	cmp	[ebp-4],100000
	jle	_457
_34
	jmp	_225
_274
	mov	[ebp-4],1
	jmp	_458
_459
	mov	ebx,[ebp-12]
	mov	esi,[ebp-16]
	or	ebx,esi
	mov	[ebp-92],ebx
	add	[ebp-4],1
_458
	cmp	[ebp-4],100000
	jle	_459
_35
	jmp	_225
_276
	mov	[ebp-4],1
	jmp	_460
_461
	mov	ebx,[ebp-12]
	mov	esi,[ebp-16]
	xor	ebx,esi
	mov	[ebp-92],ebx
	add	[ebp-4],1
_460
	cmp	[ebp-4],100000
	jle	_461
_36
	jmp	_225
_278
	mov	[ebp-4],1
	jmp	_462
_463
	mov	ebx,[ebp-12]
	mov	ecx,[ebp-24]
	shl	ebx,cl
	mov	[ebp-92],ebx
	add	[ebp-4],1
_462
	cmp	[ebp-4],100000
	jle	_463
_37
	jmp	_225
_280
	mov	[ebp-4],1
	jmp	_464
_465
	mov	ebx,[ebp-12]
	mov	ecx,[ebp-24]
	sar	ebx,cl
	mov	[ebp-92],ebx
	add	[ebp-4],1
_464
	cmp	[ebp-4],100000
	jle	_465
_38
	jmp	_225
_282
	mov	[ebp-4],1
	jmp	_466
_467
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_466
	cmp	[ebp-4],100000
	jle	_467
_39
	jmp	_225
_284
	mov	[ebp-4],1
	jmp	_468
_469
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_468
	cmp	[ebp-4],100000
	jle	_469
_40
	jmp	_225
_286
	mov	[ebp-4],1
	jmp	_470
_471
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ftan
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_470
	cmp	[ebp-4],100000
	jle	_471
_41
	jmp	_225
_288
	mov	[ebp-4],1
	jmp	_472
_473
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fasin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_472
	cmp	[ebp-4],100000
	jle	_473
_42
	jmp	_225
_290
	mov	[ebp-4],1
	jmp	_474
_475
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_facos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_474
	cmp	[ebp-4],100000
	jle	_475
_43
	jmp	_225
_292
	mov	[ebp-4],1
	jmp	_476
_477
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fatan
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_476
	cmp	[ebp-4],100000
	jle	_477
_44
	jmp	_225
_294
	mov	[ebp-4],1
	jmp	_478
_479
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_478
	cmp	[ebp-4],100000
	jle	_479
_45
	jmp	_225
_296
	mov	[ebp-4],1
	jmp	_480
_481
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1
	call	_frand
	mov	[ebp-92],eax
	add	[ebp-4],1
_480
	cmp	[ebp-4],100000
	jle	_481
_46
	jmp	_225
_298
	mov	[ebp-4],1
	jmp	_482
_483
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_482
	cmp	[ebp-4],100000
	jle	_483
_47
	jmp	_225
_300
	mov	[ebp-4],1
	jmp	_484
_485
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fintf
	mov	[ebp-92],eax
	add	[ebp-4],1
_484
	cmp	[ebp-4],100000
	jle	_485
_48
	jmp	_225
_302
	mov	[ebp-4],1
	jmp	_486
_487
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ffloatf
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_486
	cmp	[ebp-4],100000
	jle	_487
_49
	jmp	_225
_304
	mov	[ebp-4],1
	jmp	_488
_489
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_488
	cmp	[ebp-4],100000
	jle	_489
_50
	jmp	_225
_306
	mov	[ebp-4],1
	jmp	_490
_491
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_tt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_490
	cmp	[ebp-4],100000
	jle	_491
_51
	jmp	_225
_308
	mov	[ebp-4],1
	jmp	_492
_493
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_atyp]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbObjDelete
	add	[ebp-4],1
_492
	cmp	[ebp-4],100000
	jle	_493
_52
	jmp	_225
_310
	mov	[ebp-4],1
	jmp	_494
_495
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjPrev
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_494
	cmp	[ebp-4],100000
	jle	_495
_53
	jmp	_225
_312
	mov	[ebp-4],1
	jmp	_496
_497
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_496
	cmp	[ebp-4],100000
	jle	_497
_54
	jmp	_225
_314
	mov	[ebp-4],1
	jmp	_498
_499
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_tt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_498
	cmp	[ebp-4],100000
	jle	_499
_55
	jmp	_225
_316
	mov	[ebp-4],1
	jmp	_500
_501
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_tt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjLast
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_500
	cmp	[ebp-4],100000
	jle	_501
_56
	jmp	_225
_318
	mov	[ebp-4],1
	jmp	_502
_503
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjInsBefore
	add	[ebp-4],1
_502
	cmp	[ebp-4],100000
	jle	_503
_57
	jmp	_225
_320
	mov	[ebp-4],1
	jmp	_504
_505
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjInsAfter
	add	[ebp-4],1
_504
	cmp	[ebp-4],100000
	jle	_505
_58
	jmp	_225
_322
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tt
	call	__bbObjEachFirst
	and	eax,eax
	jz	_59
_506
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_506
_59
	jmp	_225
_324
	mov	[ebp-4],1
	jmp	_507
_508
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	__bbObjToHandle
	mov	[ebp-92],eax
	add	[ebp-4],1
_507
	cmp	[ebp-4],100000
	jle	_508
_60
	jmp	_225
_326
	mov	[ebp-4],1
	jmp	_509
_510
	sub	esp,20
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	__bbObjToHandle
	mov	[esp],eax
	mov	[esp+4],_tt
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	add	[ebp-4],1
_509
	cmp	[ebp-4],100000
	jle	_510
_61
	jmp	_225
_328
	sub	esp,4
	mov	eax,_tt
	mov	[esp],eax
	call	__bbObjDeleteEach
	jmp	_225
_330
	mov	[ebp-4],1
	jmp	_511
_512
	sub	esp,8
	lea	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_511
	cmp	[ebp-4],10000
	jle	_512
_62
	mov	[ebp-80],10
	jmp	_225
_332
	mov	[ebp-4],1
	jmp	_513
_514
	sub	esp,20
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_513
	cmp	[ebp-4],10000
	jle	_514
_63
	mov	[ebp-80],10
	jmp	_225
_334
	mov	[ebp-4],1
	jmp	_515
_516
	sub	esp,20
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	[esp+8],20
	sub	esp,4
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_515
	cmp	[ebp-4],10000
	jle	_516
_64
	mov	[ebp-80],10
	jmp	_225
_336
	mov	[ebp-4],1
	jmp	_517
_518
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_517
	cmp	[ebp-4],100000
	jle	_518
_65
	jmp	_225
_338
	mov	[ebp-4],1
	jmp	_519
_520
	sub	esp,20
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],20
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_519
	cmp	[ebp-4],10000
	jle	_520
_66
	mov	[ebp-80],10
	jmp	_225
_340
	mov	[ebp-4],1
	jmp	_521
_522
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_flog
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_521
	cmp	[ebp-4],100000
	jle	_522
_67
	jmp	_225
_342
	mov	[ebp-4],1
	jmp	_523
_524
	sub	esp,20
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],20
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_523
	cmp	[ebp-4],10000
	jle	_524
_68
	mov	[ebp-80],10
	jmp	_225
_344
	mov	[ebp-4],1
	jmp	_525
_526
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fasc
	mov	[ebp-92],eax
	add	[ebp-4],1
_525
	cmp	[ebp-4],100000
	jle	_526
_69
	jmp	_225
_346
	mov	[ebp-4],1
	jmp	_527
_528
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_flog10
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_527
	cmp	[ebp-4],100000
	jle	_528
_70
	jmp	_225
_348
	mov	[ebp-4],1
	jmp	_529
_530
	sub	esp,20
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],20
	call	_fstring
	mov	[esp+4],eax
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_529
	cmp	[ebp-4],10000
	jle	_530
_71
	mov	[ebp-80],10
	jmp	_225
_350
	mov	[ebp-4],1
	jmp	_531
_532
	sub	esp,8
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-92],eax
	add	[ebp-4],1
_531
	cmp	[ebp-4],10000
	jle	_532
_72
	mov	[ebp-80],10
	jmp	_225
_352
	mov	[ebp-4],1
	jmp	_533
_534
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fexp
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_533
	cmp	[ebp-4],100000
	jle	_534
_73
	jmp	_225
_354
	mov	[ebp-4],1
	jmp	_535
_536
	sub	esp,8
	lea	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_535
	cmp	[ebp-4],10000
	jle	_536
_74
	mov	[ebp-80],10
	jmp	_225
_356
	mov	[ebp-4],1
	jmp	_537
_538
	sub	esp,16
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-92],ebx
	add	[ebp-4],1
_537
	cmp	[ebp-4],10000
	jle	_538
_75
	mov	[ebp-80],10
	jmp	_225
_358
	mov	[ebp-4],1
	jmp	_539
_540
	sub	esp,24
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_541
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+8],ebx
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-68]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-4],1
_539
	cmp	[ebp-4],10000
	jle	_540
_76
	mov	[ebp-80],10
	jmp	_225
_360
	mov	[ebp-4],1
	jmp	_542
_543
	sub	esp,8
	lea	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	[ebp-104],eax
	sub	esp,4
	lea	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringf
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_542
	cmp	[ebp-4],10000
	jle	_543
_77
	mov	[ebp-80],10
	jmp	_225
_362
	mov	[ebp-4],1
	jmp	_544
_545
	sub	esp,12
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-4],1
_544
	cmp	[ebp-4],100000
	jle	_545
_78
	jmp	_225
_364
	mov	[ebp-4],1
	jmp	_546
_547
	sub	esp,12
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	esi,[ebp-92]
	mov	[esp+8],esi
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-4],1
_546
	cmp	[ebp-4],100000
	jle	_547
_79
	jmp	_225
_366
	mov	[ebp-4],1
	jmp	_548
_549
	sub	esp,12
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fpokefloat
	add	[ebp-4],1
_548
	cmp	[ebp-4],100000
	jle	_549
_80
	jmp	_225
_368
	mov	[ebp-4],1
	jmp	_550
_551
	sub	esp,8
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-92],eax
	add	[ebp-4],1
_550
	cmp	[ebp-4],100000
	jle	_551
_81
	jmp	_225
_370
	mov	[ebp-4],1
	jmp	_552
_553
	sub	esp,8
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-92],eax
	add	[ebp-4],1
_552
	cmp	[ebp-4],100000
	jle	_553
_82
	jmp	_225
_372
	mov	[ebp-4],1
	jmp	_554
_555
	sub	esp,8
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fpeekfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_554
	cmp	[ebp-4],100000
	jle	_555
_83
	jmp	_225
_374
	mov	[ebp-4],1
	jmp	_556
_557
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_aim]
	mov	ebx,[ebx]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_556
	cmp	[ebp-4],100000
	jle	_557
_84
	jmp	_225
_376
	mov	[ebp-4],1
	jmp	_558
_559
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_afm]
	mov	ebx,[ebx]
	mov	[ebp-96],ebx
	add	[ebp-4],1
_558
	cmp	[ebp-4],100000
	jle	_559
_85
	jmp	_225
_378
	mov	[ebp-4],1
	jmp	_560
_561
	sub	esp,8
	lea	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_asm]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_560
	cmp	[ebp-4],100000
	jle	_561
_86
	jmp	_225
_380
	mov	[ebp-4],1
	jmp	_562
_563
	mov	ebx,[ebp-52]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-92],ebx
	add	[ebp-4],1
_562
	cmp	[ebp-4],100000
	jle	_563
_87
	jmp	_225
_382
	mov	[ebp-4],1
	jmp	_564
_565
	mov	ebx,[ebp-52]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-96],ebx
	add	[ebp-4],1
_564
	cmp	[ebp-4],100000
	jle	_565
_88
	jmp	_225
_384
	mov	[ebp-4],1
	jmp	_566
_567
	sub	esp,8
	lea	eax,[ebp-68]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_566
	cmp	[ebp-4],100000
	jle	_567
_89
	jmp	_225
_386
	mov	[ebp-4],1
	jmp	_568
_569
	mov	ebx,[ebp-96]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	add	[ebp-4],1
_568
	cmp	[ebp-4],100000
	jle	_569
_90
	jmp	_225
_388
	mov	[ebp-4],1
	jmp	_570
_571
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	add	[ebp-4],1
_570
	cmp	[ebp-4],100000
	jle	_571
_91
	jmp	_225
_390
	mov	[ebp-4],1
	jmp	_572
_573
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_572
	cmp	[ebp-4],10000
	jle	_573
_92
	mov	[ebp-80],10
	jmp	_225
_392
	mov	[ebp-4],1
	jmp	_574
_575
	mov	ebx,[ebp-92]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	add	[ebp-4],1
_574
	cmp	[ebp-4],100000
	jle	_575
_93
	mov	[ebp-80],10
	jmp	_225
_394
	mov	[ebp-4],1
	jmp	_576
_577
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_576
	cmp	[ebp-4],10000
	jle	_577
_94
	jmp	_225
_396
	mov	[ebp-4],1
	jmp	_578
_579
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-92],eax
	add	[ebp-4],1
_578
	cmp	[ebp-4],100000
	jle	_579
_95
	jmp	_225
_398
	mov	[ebp-4],1
	jmp	_580
_581
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jnz	_582
_582
	add	[ebp-4],1
_580
	cmp	[ebp-4],100000
	jle	_581
_96
	jmp	_225
_400
	mov	[ebp-4],1
	jmp	_583
_584
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_585
_585
	add	[ebp-4],1
_583
	cmp	[ebp-4],100000
	jle	_584
_97
	jmp	_225
_402
	mov	[ebp-4],1
	jmp	_586
_587
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_588
_588
	add	[ebp-4],1
_586
	cmp	[ebp-4],100000
	jle	_587
_98
	jmp	_225
_404
	mov	[ebp-4],1
	jmp	_589
_590
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_591
_591
	add	[ebp-4],1
_589
	cmp	[ebp-4],100000
	jle	_590
_99
	jmp	_225
_406
	mov	[ebp-4],1
	jmp	_592
_593
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_594
_594
	add	[ebp-4],1
_592
	cmp	[ebp-4],100000
	jle	_593
_100
	jmp	_225
_408
	mov	[ebp-4],1
	jmp	_595
_596
	sub	esp,12
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	lea	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_597
_597
	add	[ebp-4],1
_595
	cmp	[ebp-4],100000
	jle	_596
_101
	jmp	_225
_225
	call	_fmillisecs
	sub	eax,[ebp-84]
	mov	[ebp-84],eax
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_599
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_598
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_tt
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-4],1
	jmp	_600
_601
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_atyp]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_600
	cmp	[ebp-4],100000
	jle	_601
_102
_598
	mov	eax,[ebp-84]
	imul	eax,[ebp-80]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	esi,[ebp-88]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	esi,[ebp-68]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	esi,[ebp-52]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-100]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fintf
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	jmp	_103_leave
	mov	eax,0
	jmp	_103_leave
_103_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffloatf
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_104_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_104_leave
_104_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fstringf
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_105_leave
	sub	esp,4
	mov	eax,_602
	mov	[esp],eax
	call	__bbStrConst
	jmp	_105_leave
_105_leave
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
	.align	4
_ans	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_atms	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aim	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afm	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asm	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_atyp	.dd	0
	.dd	5
	.dd	1
	.dd	0
_202	.db	"btable.htm",0
_203	.db	"<HTML><BODY><TABLE>",0
_204	.db	"<TR>",0
_208	.db	"</TR><TR>",0
_209	.db	"<TD>",0
_210	.db	": ",0
_211	.db	" ns</TD>",0
_212	.db	"</TR></TABLE></BODY></HTML>",0
_213	.db	"btable.htm",0
	.align	4
_tt	.dd	5
_214	.dd	0
	.dd	_214
	.dd	_214
	.dd	0
	.dd	-1
_215	.dd	0
	.dd	_215
	.dd	_215
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbStrType
_224	.db	"I.T=New T",0
_227	.db	"template",0
_229	.db	"A=B",0
_231	.db	"D#=E#",0
_233	.db	"A=E#",0
_235	.db	"D#=B",0
_237	.db	"A=B+C",0
_239	.db	"D#=E#+F#",0
_241	.db	"A=B-C",0
_243	.db	"D#=E#-F#",0
_245	.db	"A=B*C",0
_247	.db	"D#=E#*F#",0
_249	.db	"A=B/C",0
_251	.db	"D#=E#/F#",0
_253	.db	"A=B^P",0
_255	.db	"D#=E#^F#",0
_257	.db	"A=Floor(E#)",0
_259	.db	"A=Int(E#)",0
_261	.db	"A=Ceil(E#)",0
_263	.db	"A=Abs(B)",0
_265	.db	"D#=Abs(E#)",0
_267	.db	"A=Sgn(B)",0
_269	.db	"D#=Sgn(E#)",0
_271	.db	"A=B Mod PP",0
_273	.db	"A=B And C",0
_275	.db	"A=B Or C",0
_277	.db	"A=B Xor C",0
_279	.db	"A=B Shl PP",0
_281	.db	"A=B Sar PP",0
_283	.db	"D#=Sin(E#)",0
_285	.db	"D#=Cos(E#)",0
_287	.db	"D#=Tan(E#)",0
_289	.db	"D#=ASin(R#)",0
_291	.db	"D#=ACos(R#)",0
_293	.db	"D#=ATan(E#)",0
_295	.db	"D#=ATan2(E#,F#)",0
_297	.db	"A=Rand()",0
_299	.db	"D#=Rnd()",0
_301	.db	"A=INTF(B)",0
_303	.db	"D#=FLOATF#(E#)",0
_305	.db	"I.T=J.T",0
_307	.db	"I.T=New T",0
_309	.db	"Delete I.T",0
_311	.db	"I.T=Before J.T",0
_313	.db	"I.T=After J.T",0
_315	.db	"I.T=First T",0
_317	.db	"I.T=Last T",0
_319	.db	"Insert I.T Before J.T",0
_321	.db	"Insert I.T After J.T",0
_323	.db	"For I.T=Each T",0
_325	.db	"A=Handle(J.T)",0
_327	.db	"I.T=Object(Handle)",0
_329	.db	"Delete Each T",0
_331	.db	"L$=M$",0
_333	.db	"L$=M$+S$",0
_335	.db	"L$=Mid$(M$,SPOS,SQ)",0
_337	.db	"D#=Sqr(E#)",0
_339	.db	"L$=Left$(M$,SQ)",0
_341	.db	"D#=Log(G#)",0
_343	.db	"L$=Right$(M$,SQ)",0
_345	.db	"A=Asc(S$)",0
_347	.db	"D#=Log10(G#)",0
_349	.db	"L$=String$(S$,SYMQ)",0
_351	.db	"A=Len(M$)",0
_353	.db	"D#=Exp(O#)",0
_355	.db	"L$=Chr$(SYM)",0
_357	.db	"A=Instr(M$,S$)",0
_359	.db	"L$=Replace$(M$,S$,' ')",0
_361	.db	"L$=STRINGF$(M$)",0
_363	.db	"PokeByte",0
_365	.db	"PokeInt",0
_367	.db	"PokeFloat",0
_369	.db	"PeekByte",0
_371	.db	"PeekInt",0
_373	.db	"PeekFloat",0
_375	.db	"A=im(spos)",0
_377	.db	"D#=fm#(spos)",0
_379	.db	"L$=sm$(spos)",0
_381	.db	"A=J\i",0
_383	.db	"D#=J\f#",0
_385	.db	"L$=J\s$",0
_387	.db	"A=D#",0
_389	.db	"D#=S$",0
_391	.db	"S$=A",0
_393	.db	"D#=A",0
_395	.db	"S$=D#",0
_397	.db	"A=S$",0
_399	.db	"IF B=C",0
_401	.db	"IF E#=F#",0
_403	.db	"IF I.T=J.T",0
_405	.db	"IF B>C",0
_407	.db	"IF E#>F#",0
_409	.db	"IF M$=L$",0
_541	.db	" ",0
_599	.db	"I.T=New T",0
_602	.db	"",0
_106	.db	"template",0
_107	.db	"A=B",0
_108	.db	"D#=E#",0
_109	.db	"I.T=J.T",0
_110	.db	"A=B+C",0
_111	.db	"D#=E#+F#",0
_112	.db	"I.T=New T",0
_113	.db	"A=B-C",0
_114	.db	"D#=E#-F#",0
_115	.db	"Delete I.T",0
_116	.db	"A=B*C",0
_117	.db	"D#=E#*F#",0
_118	.db	"I.T=Before J.T",0
_119	.db	"A=B/C",0
_120	.db	"D#=E#/F#",0
_121	.db	"I.T=After J.T",0
_122	.db	"A=B^P",0
_123	.db	"D#=E#^F#",0
_124	.db	"I.T=First T",0
_125	.db	"A=Abs(B)",0
_126	.db	"D#=Abs(E#)",0
_127	.db	"I.T=Last T",0
_128	.db	"A=Sgn(B)",0
_129	.db	"D#=Sgn(E#)",0
_130	.db	"Insert I.T Before J.T",0
_131	.db	"A=Floor(E#)",0
_132	.db	"D#=Sin(E#)",0
_133	.db	"Insert I.T After J.T",0
_134	.db	"A=Int(E#)",0
_135	.db	"D#=Cos(E#)",0
_136	.db	"For I.T=Each T",0
_137	.db	"A=Ceil(E#)",0
_138	.db	"D#=Tan(E#)",0
_139	.db	"Delete Each T",0
_140	.db	"A=B And C",0
_141	.db	"D#=ASin(R#)",0
_142	.db	"A=Handle(J.T)",0
_143	.db	"A=B Or C",0
_144	.db	"D#=ACos(R#)",0
_145	.db	"I.T=Object(Handle)",0
_146	.db	"A=B Xor C",0
_147	.db	"D#=ATan(E#)",0
_148	.db	"L$=M$",0
_149	.db	"A=B Mod PP",0
_150	.db	"D#=ATan2(E#,F#)",0
_151	.db	"L$=M$+S$",0
_152	.db	"A=B Shl PP",0
_153	.db	"D#=Sqr(E#)",0
_154	.db	"L$=Left$(M$,SQ)",0
_155	.db	"A=B Sar PP",0
_156	.db	"D#=Log(G#)",0
_157	.db	"L$=Right$(M$,SQ)",0
_158	.db	"A=Asc(S$)",0
_159	.db	"D#=Log10(G#)",0
_160	.db	"L$=Chr$(SYM)",0
_161	.db	"A=Len(M$)",0
_162	.db	"D#=Exp(O#)",0
_163	.db	"L$=Mid$(M$,SPOS,SQ)",0
_164	.db	"A=Instr(M$,S$)",0
_165	.db	"",0
_166	.db	"L$=String$(S$,SYMQ)",0
_167	.db	"A=Rand()",0
_168	.db	"D#=Rnd()",0
_169	.db	"L$=Replace$(M$,S$,' ')",0
_170	.db	"A=INTF(B)",0
_171	.db	"D#=FLOATF#(E#)",0
_172	.db	"L$=STRINGF$(M$)",0
_173	.db	"A=im(spos)",0
_174	.db	"D#=fm#(spos)",0
_175	.db	"L$=sm$(spos)",0
_176	.db	"A=J\i",0
_177	.db	"D#=J\f#",0
_178	.db	"L$=J\s$",0
_179	.db	"PokeByte",0
_180	.db	"PokeFloat",0
_181	.db	"PokeInt",0
_182	.db	"PeekByte",0
_183	.db	"PeekFloat",0
_184	.db	"PeekInt",0
_185	.db	"A=D#",0
_186	.db	"D#=S$",0
_187	.db	"S$=A",0
_188	.db	"D#=A",0
_189	.db	"S$=D#",0
_190	.db	"A=S$",0
_191	.db	"IF B=C",0
_192	.db	"IF E#=F#",0
_193	.db	"IF I.T=J.T",0
_194	.db	"IF B>C",0
_195	.db	"IF E#>F#",0
_196	.db	"IF M$=L$",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
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
	.dd	4
	.dd	_183
	.dd	4
	.dd	_184
	.dd	4
	.dd	_185
	.dd	4
	.dd	_186
	.dd	4
	.dd	_187
	.dd	4
	.dd	_188
	.dd	4
	.dd	_189
	.dd	4
	.dd	_190
	.dd	4
	.dd	_191
	.dd	4
	.dd	_192
	.dd	4
	.dd	_193
	.dd	4
	.dd	_194
	.dd	4
	.dd	_195
	.dd	4
	.dd	_196
	.dd	0

