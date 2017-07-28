
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,4
	mov	eax,_ahil_scancodes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,238
	mov	esi,_ahil_scancodes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahil_scancodes
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vhil_specialjoystick],0
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],1
	jmp	_274
_275
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ahil_scancodes]
	mov	[esp],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_274
	cmp	[ebp-4],237
	jle	_275
_3
	sub	esp,8
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fhil_newkey
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fhil_flushanykeys
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,8
	mov	eax,_277
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fhil_newkey
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_279
_278
	sub	esp,16
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhil_keylabel
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_280
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhil_modifykey
_279
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jnz	_278
_4
	sub	esp,8
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fcls
	call	_fhil_testjoy
	call	_fend
_l_2hil_scancodes
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhil_anykeyhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	mov	[ebp-8],1
	jmp	_284
_285
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_286
	mov	[ebp-4],1
_286
	add	[ebp-8],1
_284
	cmp	[ebp-8],237
	jle	_285
_6
	mov	[ebp-8],1
	jmp	_287
_288
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_289
	mov	[ebp-4],2
_289
	add	[ebp-8],1
_287
	cmp	[ebp-8],30
	jle	_288
_7
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyydir
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_290
	mov	[ebp-4],2
_290
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyudir
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyvdir
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoypitch
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyyaw
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyroll
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	or	eax,ebx
	mov	ebx,[_vhil_specialjoystick]
	and	ebx,eax
	and	ebx,ebx
	jz	_291
	mov	[ebp-4],2
_291
	mov	[ebp-8],1
	jmp	_292
_293
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmousehit
	and	eax,eax
	jz	_294
	mov	[ebp-4],3
_294
	add	[ebp-8],1
_292
	cmp	[ebp-8],3
	jle	_293
_8
	mov	eax,[ebp-4]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhil_anykeydown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	mov	[ebp-8],1
	jmp	_295
_296
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_297
	mov	[ebp-4],1
_297
	add	[ebp-8],1
_295
	cmp	[ebp-8],237
	jle	_296
_10
	mov	[ebp-8],1
	jmp	_298
_299
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_300
	mov	[ebp-4],2
_300
	add	[ebp-8],1
_298
	cmp	[ebp-8],30
	jle	_299
_11
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyydir
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_301
	mov	[ebp-4],2
_301
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyudir
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyvdir
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoypitch
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyyaw
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	or	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyroll
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	or	eax,ebx
	mov	ebx,[_vhil_specialjoystick]
	and	ebx,eax
	and	ebx,ebx
	jz	_302
	mov	[ebp-4],2
_302
	mov	[ebp-8],1
	jmp	_303
_304
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmousedown
	and	eax,eax
	jz	_305
	mov	[ebp-4],3
_305
	add	[ebp-8],1
_303
	cmp	[ebp-8],3
	jle	_304
_12
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
	ret	word 0
	.align	16
_fhil_getvalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_307
	cmp	[ebp-4],2
	jz	_308
	cmp	[ebp-4],3
	jz	_309
	mov	eax,0
	jmp	_13_leave
	jmp	_306
_307
	mov	[ebp-8],1
	jmp	_310
_311
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_312
	mov	eax,[ebp-8]
	jmp	_13_leave
_312
	add	[ebp-8],1
_310
	cmp	[ebp-8],237
	jle	_311
_15
	jmp	_306
_308
	mov	[ebp-8],1
	jmp	_313
_314
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_315
	mov	eax,[ebp-8]
	jmp	_13_leave
_315
	add	[ebp-8],1
_313
	cmp	[ebp-8],30
	jle	_314
_16
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	jnz	_316
	mov	eax,-1
	jmp	_13_leave
_316
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	jnz	_317
	mov	eax,-2
	jmp	_13_leave
_317
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	jnz	_318
	mov	eax,-3
	jmp	_13_leave
_318
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	jnz	_319
	mov	eax,-4
	jmp	_13_leave
_319
	mov	ebx,[_vhil_specialjoystick]
	and	ebx,ebx
	jz	_320
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	cmp	eax,1
	jnz	_321
	mov	eax,-5
	jmp	_13_leave
_321
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	cmp	eax,-1
	jnz	_322
	mov	eax,-6
	jmp	_13_leave
_322
	sub	esp,4
	mov	[esp],0
	call	_fjoyudir
	cmp	eax,1
	jnz	_323
	mov	eax,-7
	jmp	_13_leave
_323
	sub	esp,4
	mov	[esp],0
	call	_fjoyudir
	cmp	eax,-1
	jnz	_324
	mov	eax,-8
	jmp	_13_leave
_324
	sub	esp,4
	mov	[esp],0
	call	_fjoyvdir
	cmp	eax,1
	jnz	_325
	mov	eax,-9
	jmp	_13_leave
_325
	sub	esp,4
	mov	[esp],0
	call	_fjoyvdir
	cmp	eax,-1
	jnz	_326
	mov	eax,-10
	jmp	_13_leave
_326
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_327
	mov	eax,-11
	jmp	_13_leave
_327
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_328
	mov	eax,-12
	jmp	_13_leave
_328
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_329
	mov	eax,-13
	jmp	_13_leave
_329
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_330
	mov	eax,-14
	jmp	_13_leave
_330
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_331
	mov	eax,-15
	jmp	_13_leave
_331
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_332
	mov	eax,-16
	jmp	_13_leave
_332
_320
	jmp	_306
_309
	mov	[ebp-8],1
	jmp	_333
_334
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmousedown
	and	eax,eax
	jz	_335
	mov	eax,[ebp-8]
	jmp	_13_leave
_335
	add	[ebp-8],1
_333
	cmp	[ebp-8],3
	jle	_334
_17
	jmp	_306
_306
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
_fhil_newkey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_thil_key
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
_336
	call	_fhil_anykeyhit
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_336
_19
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fhil_getvalue
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	mov	eax,[ebp-4]
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhil_modifykey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_337
	sub	esp,4
	mov	eax,_thil_key
	mov	[esp],eax
	call	__bbObjNew
	mov	[ebp+20],eax
_337
_338
	call	_fhil_anykeyhit
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_338
_21
	mov	ebx,[ebp-4]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fhil_getvalue
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
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
_fhil_keydown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_339
	mov	eax,0
	jmp	_22_leave
_339
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_341
	cmp	[ebp-4],2
	jz	_342
	cmp	[ebp-4],3
	jz	_343
	jmp	_340
_341
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_344
	mov	eax,1
	jmp	_22_leave
_344
	jmp	_340
_342
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_346
	cmp	[ebp-8],-1
	jz	_347
	cmp	[ebp-8],-2
	jz	_348
	cmp	[ebp-8],-3
	jz	_349
	cmp	[ebp-8],-4
	jz	_350
	cmp	[ebp-8],-5
	jz	_351
	cmp	[ebp-8],-6
	jz	_352
	cmp	[ebp-8],-7
	jz	_353
	cmp	[ebp-8],-8
	jz	_354
	cmp	[ebp-8],-9
	jz	_355
	cmp	[ebp-8],-10
	jz	_356
	cmp	[ebp-8],-11
	jz	_357
	cmp	[ebp-8],-12
	jz	_358
	cmp	[ebp-8],-13
	jz	_359
	cmp	[ebp-8],-14
	jz	_360
	cmp	[ebp-8],-15
	jz	_361
	cmp	[ebp-8],-16
	jz	_362
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_363
	mov	eax,1
	jmp	_22_leave
_363
	jmp	_345
_346
	mov	eax,0
	jmp	_22_leave
	jmp	_345
_347
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	jnz	_364
	mov	eax,1
	jmp	_22_leave
_364
	jmp	_345
_348
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	jnz	_365
	mov	eax,1
	jmp	_22_leave
_365
	jmp	_345
_349
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	jnz	_366
	mov	eax,1
	jmp	_22_leave
_366
	jmp	_345
_350
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	jnz	_367
	mov	eax,1
	jmp	_22_leave
_367
	jmp	_345
_351
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	cmp	eax,1
	jnz	_368
	mov	eax,1
	jmp	_22_leave
_368
	jmp	_345
_352
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	cmp	eax,-1
	jnz	_369
	mov	eax,1
	jmp	_22_leave
_369
	jmp	_345
_353
	sub	esp,4
	mov	[esp],0
	call	_fjoyudir
	cmp	eax,1
	jnz	_370
	mov	eax,1
	jmp	_22_leave
_370
	jmp	_345
_354
	sub	esp,4
	mov	[esp],0
	call	_fjoyudir
	cmp	eax,-1
	jnz	_371
	mov	eax,1
	jmp	_22_leave
_371
	jmp	_345
_355
	sub	esp,4
	mov	[esp],0
	call	_fjoyvdir
	cmp	eax,1
	jnz	_372
	mov	eax,1
	jmp	_22_leave
_372
	jmp	_345
_356
	sub	esp,4
	mov	[esp],0
	call	_fjoyvdir
	cmp	eax,-1
	jnz	_373
	mov	eax,1
	jmp	_22_leave
_373
	jmp	_345
_357
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_374
	mov	eax,1
	jmp	_22_leave
_374
	jmp	_345
_358
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_375
	mov	eax,1
	jmp	_22_leave
_375
	jmp	_345
_359
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_376
	mov	eax,1
	jmp	_22_leave
_376
	jmp	_345
_360
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_377
	mov	eax,1
	jmp	_22_leave
_377
	jmp	_345
_361
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_378
	mov	eax,1
	jmp	_22_leave
_378
	jmp	_345
_362
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_379
	mov	eax,1
	jmp	_22_leave
_379
	jmp	_345
_345
	jmp	_340
_343
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmousedown
	and	eax,eax
	jz	_380
	mov	eax,1
	jmp	_22_leave
_380
	jmp	_340
_340
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
_fhil_keyhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_381
	mov	eax,0
	jmp	_25_leave
_381
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_383
	cmp	[ebp-4],2
	jz	_384
	cmp	[ebp-4],3
	jz	_385
	jmp	_382
_383
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_386
	mov	eax,1
	jmp	_25_leave
_386
	jmp	_382
_384
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_388
	cmp	[ebp-8],-1
	jz	_389
	cmp	[ebp-8],-2
	jz	_390
	cmp	[ebp-8],-3
	jz	_391
	cmp	[ebp-8],-4
	jz	_392
	cmp	[ebp-8],-5
	jz	_393
	cmp	[ebp-8],-6
	jz	_394
	cmp	[ebp-8],-7
	jz	_395
	cmp	[ebp-8],-8
	jz	_396
	cmp	[ebp-8],-9
	jz	_397
	cmp	[ebp-8],-10
	jz	_398
	cmp	[ebp-8],-11
	jz	_399
	cmp	[ebp-8],-12
	jz	_400
	cmp	[ebp-8],-13
	jz	_401
	cmp	[ebp-8],-14
	jz	_402
	cmp	[ebp-8],-15
	jz	_403
	cmp	[ebp-8],-16
	jz	_404
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_405
	mov	eax,1
	jmp	_25_leave
_405
	jmp	_387
_388
	mov	eax,0
	jmp	_25_leave
	jmp	_387
_389
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	jnz	_406
	mov	eax,1
	jmp	_25_leave
_406
	jmp	_387
_390
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	jnz	_407
	mov	eax,1
	jmp	_25_leave
_407
	jmp	_387
_391
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	jnz	_408
	mov	eax,1
	jmp	_25_leave
_408
	jmp	_387
_392
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	jnz	_409
	mov	eax,1
	jmp	_25_leave
_409
	jmp	_387
_393
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	cmp	eax,1
	jnz	_410
	mov	eax,1
	jmp	_25_leave
_410
	jmp	_387
_394
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	cmp	eax,-1
	jnz	_411
	mov	eax,1
	jmp	_25_leave
_411
	jmp	_387
_395
	sub	esp,4
	mov	[esp],0
	call	_fjoyudir
	cmp	eax,1
	jnz	_412
	mov	eax,1
	jmp	_25_leave
_412
	jmp	_387
_396
	sub	esp,4
	mov	[esp],0
	call	_fjoyudir
	cmp	eax,-1
	jnz	_413
	mov	eax,1
	jmp	_25_leave
_413
	jmp	_387
_397
	sub	esp,4
	mov	[esp],0
	call	_fjoyvdir
	cmp	eax,1
	jnz	_414
	mov	eax,1
	jmp	_25_leave
_414
	jmp	_387
_398
	sub	esp,4
	mov	[esp],0
	call	_fjoyvdir
	cmp	eax,-1
	jnz	_415
	mov	eax,1
	jmp	_25_leave
_415
	jmp	_387
_399
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_416
	mov	eax,1
	jmp	_25_leave
_416
	jmp	_387
_400
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_417
	mov	eax,1
	jmp	_25_leave
_417
	jmp	_387
_401
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_418
	mov	eax,1
	jmp	_25_leave
_418
	jmp	_387
_402
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_419
	mov	eax,1
	jmp	_25_leave
_419
	jmp	_387
_403
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,1
	jnz	_420
	mov	eax,1
	jmp	_25_leave
_420
	jmp	_387
_404
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	cmp	eax,-1
	jnz	_421
	mov	eax,1
	jmp	_25_leave
_421
	jmp	_387
_387
	jmp	_382
_385
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmousehit
	and	eax,eax
	jz	_422
	mov	eax,1
	jmp	_25_leave
_422
	jmp	_382
_382
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
_fhil_waitanykey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	jmp	_424
_423
_424
	call	_fhil_anykeyhit
	cmp	eax,0
	jz	_423
_29
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
_fhil_flushanykeys
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fflushkeys
	call	_fflushmouse
	call	_fflushjoy
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
_fhil_keylabel
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_425
	sub	esp,4
	mov	eax,_426
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
_425
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_428
	cmp	[ebp-4],2
	jz	_429
	cmp	[ebp-4],3
	jz	_430
	sub	esp,4
	mov	eax,_431
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_427
_428
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_ahil_scancodes]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_31_leave
	jmp	_427
_429
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_433
	cmp	[ebp-8],-1
	jz	_434
	cmp	[ebp-8],-2
	jz	_435
	cmp	[ebp-8],-3
	jz	_436
	cmp	[ebp-8],-4
	jz	_437
	cmp	[ebp-8],-5
	jz	_438
	cmp	[ebp-8],-6
	jz	_439
	cmp	[ebp-8],-7
	jz	_440
	cmp	[ebp-8],-8
	jz	_441
	cmp	[ebp-8],-9
	jz	_442
	cmp	[ebp-8],-10
	jz	_443
	cmp	[ebp-8],-11
	jz	_444
	cmp	[ebp-8],-12
	jz	_445
	cmp	[ebp-8],-13
	jz	_446
	cmp	[ebp-8],-14
	jz	_447
	cmp	[ebp-8],-15
	jz	_448
	cmp	[ebp-8],-16
	jz	_449
	sub	esp,12
	mov	eax,_450
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_31_leave
	jmp	_432
_433
	sub	esp,4
	mov	eax,_451
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_434
	sub	esp,4
	mov	eax,_452
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_435
	sub	esp,4
	mov	eax,_453
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_436
	sub	esp,4
	mov	eax,_454
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_437
	sub	esp,4
	mov	eax,_455
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_438
	sub	esp,4
	mov	eax,_456
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_439
	sub	esp,4
	mov	eax,_457
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_440
	sub	esp,4
	mov	eax,_458
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_441
	sub	esp,4
	mov	eax,_459
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_442
	sub	esp,4
	mov	eax,_460
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_443
	sub	esp,4
	mov	eax,_461
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_444
	sub	esp,4
	mov	eax,_462
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_445
	sub	esp,4
	mov	eax,_463
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_446
	sub	esp,4
	mov	eax,_464
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_447
	sub	esp,4
	mov	eax,_465
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_448
	sub	esp,4
	mov	eax,_466
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_449
	sub	esp,4
	mov	eax,_467
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_432
_432
	jmp	_427
_430
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-12],1
	jz	_469
	cmp	[ebp-12],2
	jz	_470
	cmp	[ebp-12],3
	jz	_471
	sub	esp,4
	mov	eax,_472
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_468
_469
	sub	esp,4
	mov	eax,_473
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_468
_470
	sub	esp,4
	mov	eax,_474
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_468
_471
	sub	esp,4
	mov	eax,_475
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
	jmp	_468
_468
	jmp	_427
_427
	sub	esp,4
	mov	eax,_476
	mov	[esp],eax
	call	__bbStrConst
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fhil_testjoy
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	jmp	_478
_477
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_479
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_480
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyxdir
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_481
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyydir
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_482
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyzdir
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],60
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_483
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyudir
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],80
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_484
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyvdir
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],100
	mov	[esp],0
	call	_ftext
	sub	esp,36
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_485
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],120
	mov	[esp],0
	call	_ftext
	sub	esp,36
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_486
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],140
	mov	[esp],0
	call	_ftext
	sub	esp,36
	mov	[esp],0
	call	_fjoyroll
	mov	ebx,1127481344
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_487
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],160
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
_478
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_477
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
_ahil_scancodes	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_vhil_specialjoystick	.dd	0
_276	.db	"Choose the key to exit",0
_277	.db	"Press some keys...",0
_280	.db	" is the wrong key... retry!",0
_281	.db	"Ok!",0
	.align	4
_thil_key	.dd	5
_282	.dd	0
	.dd	_282
	.dd	_282
	.dd	0
	.dd	-1
_283	.dd	0
	.dd	_283
	.dd	_283
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
_426	.db	"",0
_431	.db	"",0
_450	.db	"Joystick button ",0
_451	.db	"Joystick button",0
_452	.db	"Joystick x-axis (+)",0
_453	.db	"Joystick x-axis (-)",0
_454	.db	"Joystick y-axis (+)",0
_455	.db	"Joystick y-axis (-)",0
_456	.db	"Joystick z-axis (+)",0
_457	.db	"Joystick z-axis (-)",0
_458	.db	"Joystick u-axis (+)",0
_459	.db	"Joystick u-axis (-)",0
_460	.db	"Joystick v-axis (+)",0
_461	.db	"Joystick v-axis (-)",0
_462	.db	"Joystick pitch (+)",0
_463	.db	"Joystick pitch (-)",0
_464	.db	"Joystick yaw (+)",0
_465	.db	"Joystick yaw (-)",0
_466	.db	"Joystick roll (+)",0
_467	.db	"Joystick roll (-)",0
_472	.db	"Mouse button",0
_473	.db	"Left Mouse button",0
_474	.db	"Right Mouse button",0
_475	.db	"Middle Mouse button",0
_476	.db	"",0
_479	.db	"Move joystick to output values onto screen",0
_480	.db	"JoyXDir(): ",0
_481	.db	"JoyYDir(): ",0
_482	.db	"JoyZDir(): ",0
_483	.db	"JoyUDir(): ",0
_484	.db	"JoyVDir(): ",0
_485	.db	"JoyPitchDir(): ",0
_486	.db	"JoyYawDir(): ",0
_487	.db	"JoyRollDir(): ",0
_37	.db	"ESCAPE",0
_38	.db	"1",0
_39	.db	"2",0
_40	.db	"3",0
_41	.db	"4",0
_42	.db	"5",0
_43	.db	"6",0
_44	.db	"7",0
_45	.db	"8",0
_46	.db	"9",0
_47	.db	"0",0
_48	.db	"Minus (-)",0
_49	.db	"Equals (=)",0
_50	.db	"Backspace",0
_51	.db	"Tab",0
_52	.db	"Q",0
_53	.db	"W",0
_54	.db	"E",0
_55	.db	"R",0
_56	.db	"T",0
_57	.db	"Y",0
_58	.db	"U",0
_59	.db	"I",0
_60	.db	"O",0
_61	.db	"P",0
_62	.db	"Left Bracket ([)",0
_63	.db	"Right Bracket (])",0
_64	.db	"Return/Enter",0
_65	.db	"Left Control",0
_66	.db	"A",0
_67	.db	"S",0
_68	.db	"D",0
_69	.db	"F",0
_70	.db	"G",0
_71	.db	"H",0
_72	.db	"J",0
_73	.db	"K",0
_74	.db	"L",0
_75	.db	"Semi-Colon (;)",0
_76	.db	"Apostrophe (')",0
_77	.db	"Grave",0
_78	.db	"Left Shift",0
_79	.db	"Backslash (\)",0
_80	.db	"Z",0
_81	.db	"X",0
_82	.db	"C",0
_83	.db	"V",0
_84	.db	"B",0
_85	.db	"N",0
_86	.db	"M",0
_87	.db	"Comma (,)",0
_88	.db	"Period (.)",0
_89	.db	"Slash (/)",0
_90	.db	"Right Shift",0
_91	.db	"Multiply (*)",0
_92	.db	"Left Alt/Menu",0
_93	.db	"Space",0
_94	.db	"Capital",0
_95	.db	"F1",0
_96	.db	"F2",0
_97	.db	"F3",0
_98	.db	"F4",0
_99	.db	"F5",0
_100	.db	"F6",0
_101	.db	"F7",0
_102	.db	"F8",0
_103	.db	"F9",0
_104	.db	"F10",0
_105	.db	"NumLock",0
_106	.db	"Scroll Lock",0
_107	.db	"NumPad 7",0
_108	.db	"NumPad 8",0
_109	.db	"NumPad 9",0
_110	.db	"Subtract (-)",0
_111	.db	"NumPad 4",0
_112	.db	"NumPad 5",0
_113	.db	"NumPad 6",0
_114	.db	"Add (+)",0
_115	.db	"NumPad 1",0
_116	.db	"NumPad 2",0
_117	.db	"NumPad 3",0
_118	.db	"NumPad 0",0
_119	.db	"Decimal (.)",0
_120	.db	"Unknown",0
_121	.db	"Unknown",0
_122	.db	"OEM_102",0
_123	.db	"F11",0
_124	.db	"F12",0
_125	.db	"Unknown",0
_126	.db	"Unknown",0
_127	.db	"Unknown",0
_128	.db	"Unknown",0
_129	.db	"Unknown",0
_130	.db	"Unknown",0
_131	.db	"Unknown",0
_132	.db	"Unknown",0
_133	.db	"Unknown",0
_134	.db	"Unknown",0
_135	.db	"Unknown",0
_136	.db	"F13",0
_137	.db	"F14",0
_138	.db	"F15",0
_139	.db	"Unknown",0
_140	.db	"Unknown",0
_141	.db	"Unknown",0
_142	.db	"Unknown",0
_143	.db	"Unknown",0
_144	.db	"Unknown",0
_145	.db	"Unknown",0
_146	.db	"Unknown",0
_147	.db	"Unknown",0
_148	.db	"Kana",0
_149	.db	"Unknown",0
_150	.db	"Unknown",0
_151	.db	"ABNT_C1",0
_152	.db	"Unknown",0
_153	.db	"Unknown",0
_154	.db	"Unknown",0
_155	.db	"Unknown",0
_156	.db	"Unknown",0
_157	.db	"Convert",0
_158	.db	"Unknown",0
_159	.db	"NoConvert",0
_160	.db	"Unknown",0
_161	.db	"Yen",0
_162	.db	"ABNT_C2",0
_163	.db	"Unknown",0
_164	.db	"Unknown",0
_165	.db	"Unknown",0
_166	.db	"Unknown",0
_167	.db	"Unknown",0
_168	.db	"Unknown",0
_169	.db	"Unknown",0
_170	.db	"Unknown",0
_171	.db	"Unknown",0
_172	.db	"Unknown",0
_173	.db	"Unknown",0
_174	.db	"Unknown",0
_175	.db	"Unknown",0
_176	.db	"Unknown",0
_177	.db	"Equals",0
_178	.db	"Unknown",0
_179	.db	"Unknown",0
_180	.db	"PrevTrack",0
_181	.db	"AT",0
_182	.db	"Colon (:)",0
_183	.db	"Underline",0
_184	.db	"Kanji",0
_185	.db	"Stop",0
_186	.db	"AX",0
_187	.db	"Unlabeled",0
_188	.db	"Unknown",0
_189	.db	"Next Track",0
_190	.db	"Unknown",0
_191	.db	"Unknown",0
_192	.db	"Enter",0
_193	.db	"Right Control",0
_194	.db	"Unknown",0
_195	.db	"Unknown",0
_196	.db	"Mute",0
_197	.db	"Calculator",0
_198	.db	"Play/Pause",0
_199	.db	"Unknown",0
_200	.db	"Media Stop",0
_201	.db	"Unknown",0
_202	.db	"Unknown",0
_203	.db	"Unknown",0
_204	.db	"Unknown",0
_205	.db	"Unknown",0
_206	.db	"Unknown",0
_207	.db	"Unknown",0
_208	.db	"Unknown",0
_209	.db	"Unknown",0
_210	.db	"Volume Down",0
_211	.db	"Unknown",0
_212	.db	"Volume Up",0
_213	.db	"Unknown",0
_214	.db	"Web Home",0
_215	.db	"Comma (,)",0
_216	.db	"Unknown",0
_217	.db	"Divide (/)",0
_218	.db	"Unknown",0
_219	.db	"SysReq",0
_220	.db	"Right Alt/Menu",0
_221	.db	"Unknown",0
_222	.db	"Unknown",0
_223	.db	"Unknown",0
_224	.db	"Unknown",0
_225	.db	"Unknown",0
_226	.db	"Unknown",0
_227	.db	"Unknown",0
_228	.db	"Unknown",0
_229	.db	"Unknown",0
_230	.db	"Unknown",0
_231	.db	"Unknown",0
_232	.db	"Unknown",0
_233	.db	"Pause",0
_234	.db	"Unknown",0
_235	.db	"Home",0
_236	.db	"Up",0
_237	.db	"Page Up/Prior",0
_238	.db	"Unknown",0
_239	.db	"Left",0
_240	.db	"Unknown",0
_241	.db	"Right",0
_242	.db	"Unknown",0
_243	.db	"End",0
_244	.db	"Down",0
_245	.db	"Next",0
_246	.db	"Insert",0
_247	.db	"Delete",0
_248	.db	"Unknown",0
_249	.db	"Unknown",0
_250	.db	"Unknown",0
_251	.db	"Unknown",0
_252	.db	"Unknown",0
_253	.db	"Unknown",0
_254	.db	"Unknown",0
_255	.db	"Left Windows",0
_256	.db	"Right Windows",0
_257	.db	"Apps",0
_258	.db	"Power",0
_259	.db	"Sleep",0
_260	.db	"Unknown",0
_261	.db	"Unknown",0
_262	.db	"Unknown",0
_263	.db	"Wake",0
_264	.db	"Unknown",0
_265	.db	"Web Search",0
_266	.db	"Web Favorites",0
_267	.db	"Web Refresh",0
_268	.db	"Web Stop",0
_269	.db	"Web Forward",0
_270	.db	"Web Back",0
_271	.db	"My Computer",0
_272	.db	"Mail",0
_273	.db	"Media Select",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
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
	.dd	4
	.dd	_197
	.dd	4
	.dd	_198
	.dd	4
	.dd	_199
	.dd	4
	.dd	_200
	.dd	4
	.dd	_201
	.dd	4
	.dd	_202
	.dd	4
	.dd	_203
	.dd	4
	.dd	_204
	.dd	4
	.dd	_205
	.dd	4
	.dd	_206
	.dd	4
	.dd	_207
	.dd	4
	.dd	_208
	.dd	4
	.dd	_209
	.dd	4
	.dd	_210
	.dd	4
	.dd	_211
	.dd	4
	.dd	_212
	.dd	4
	.dd	_213
	.dd	4
	.dd	_214
	.dd	4
	.dd	_215
	.dd	4
	.dd	_216
	.dd	4
	.dd	_217
	.dd	4
	.dd	_218
	.dd	4
	.dd	_219
	.dd	4
	.dd	_220
	.dd	4
	.dd	_221
	.dd	4
	.dd	_222
	.dd	4
	.dd	_223
	.dd	4
	.dd	_224
	.dd	4
	.dd	_225
	.dd	4
	.dd	_226
	.dd	4
	.dd	_227
	.dd	4
	.dd	_228
	.dd	4
	.dd	_229
	.dd	4
	.dd	_230
	.dd	4
	.dd	_231
	.dd	4
	.dd	_232
	.dd	4
	.dd	_233
	.dd	4
	.dd	_234
	.dd	4
	.dd	_235
	.dd	4
	.dd	_236
	.dd	4
	.dd	_237
	.dd	4
	.dd	_238
	.dd	4
	.dd	_239
	.dd	4
	.dd	_240
	.dd	4
	.dd	_241
	.dd	4
	.dd	_242
	.dd	4
	.dd	_243
	.dd	4
	.dd	_244
	.dd	4
	.dd	_245
	.dd	4
	.dd	_246
	.dd	4
	.dd	_247
	.dd	4
	.dd	_248
	.dd	4
	.dd	_249
	.dd	4
	.dd	_250
	.dd	4
	.dd	_251
	.dd	4
	.dd	_252
	.dd	4
	.dd	_253
	.dd	4
	.dd	_254
	.dd	4
	.dd	_255
	.dd	4
	.dd	_256
	.dd	4
	.dd	_257
	.dd	4
	.dd	_258
	.dd	4
	.dd	_259
	.dd	4
	.dd	_260
	.dd	4
	.dd	_261
	.dd	4
	.dd	_262
	.dd	4
	.dd	_263
	.dd	4
	.dd	_264
	.dd	4
	.dd	_265
	.dd	4
	.dd	_266
	.dd	4
	.dd	_267
	.dd	4
	.dd	_268
	.dd	4
	.dd	_269
	.dd	4
	.dd	_270
	.dd	4
	.dd	_271
	.dd	4
	.dd	_272
	.dd	4
	.dd	_273
	.dd	0

