
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vkeycodedelay],200
	mov	[_vkeycodenextkeydelay],10
	mov	[_vkeycodetiming],0
	mov	[_vkeycodetimingnext],0
	sub	esp,4
	mov	eax,_akeycodebase
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,305
	mov	esi,_akeycodebase
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeycodebase
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_akeycodevalid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_akeycodevalid
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeycodevalid
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vkeycodelastkeydown],0
	mov	[_vkeycodelastkeyhit],0
	mov	[_vkeycodevalidto],0
	mov	[_vkeycodecapslockon],0
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,256
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],34
	sub	esp,4
	mov	[esp],34
	call	_fchr
	mov	[esp+4],eax
	mov	[esp],0
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,257
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,258
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,259
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,260
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,261
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,262
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,263
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,264
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,265
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,266
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,267
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,268
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,269
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,270
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,271
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,272
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,273
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_51
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,274
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,275
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,276
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,277
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,278
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,279
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,280
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_66
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,281
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,282
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,283
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_71
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,284
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_74
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_73
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,285
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,286
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_78
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,287
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,288
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_82
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_81
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,289
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_84
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_83
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,290
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_85
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,291
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_87
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,292
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_89
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,293
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_92
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_91
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,294
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_94
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_93
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,295
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_96
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_95
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,296
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_98
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_97
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,297
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_100
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_99
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,298
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_102
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_101
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,299
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_104
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_103
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,300
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_106
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_105
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,301
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_108
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_107
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,302
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_110
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_109
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,303
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_111
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],1
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	esi,256
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_113
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_112
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,257
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_115
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_114
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,258
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_117
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_116
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,259
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_119
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_118
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,260
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_121
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_120
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,261
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_123
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_122
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,262
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_125
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_124
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,8
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,263
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_127
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_126
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,9
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,264
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_129
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_128
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,10
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,265
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_131
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_130
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,11
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,266
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_133
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_132
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,12
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,267
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_135
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_134
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,13
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_136
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],2
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,14
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_138
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_137
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],3
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,15
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,268
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,268
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_140
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_139
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,16
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,269
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,269
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_141
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,17
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,270
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,270
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_144
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_143
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,18
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,271
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,271
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_146
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_145
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,19
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,272
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,272
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_148
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_147
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,20
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,273
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,273
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_150
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_149
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,21
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,274
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,274
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_152
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_151
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,22
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,275
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,275
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_154
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_153
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,23
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,276
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,276
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_156
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_155
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,24
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,277
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,277
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_158
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_157
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,25
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,278
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_160
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_159
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,26
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,279
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_162
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_161
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,27
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_163
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],4
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,28
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_164
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],5
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,29
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	ebx,280
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,280
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_166
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_165
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,30
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,281
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,281
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_168
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_167
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,31
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,282
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,282
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_170
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_169
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,32
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,283
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,283
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_172
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_171
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,33
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,284
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,284
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_174
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_173
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,34
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,285
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,285
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_176
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_175
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,35
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,286
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,286
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_178
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_177
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,36
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,287
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,287
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_180
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_179
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,37
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,288
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,288
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_182
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_181
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,38
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,289
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_184
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_183
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,39
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,290
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_186
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_185
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,40
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,303
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_188
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_187
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,41
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_189
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],7
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,42
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	esi,291
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_190
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,43
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,293
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,293
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_193
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_192
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,44
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,294
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,294
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_195
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_194
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,45
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,295
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,295
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_197
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_196
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,46
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,296
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,296
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_199
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_198
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,47
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,297
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,297
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_201
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_200
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,48
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,298
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,298
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_203
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_202
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,49
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	ebx,299
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,299
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_205
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_204
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,50
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,300
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_207
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_206
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,51
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,301
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_209
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_208
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,52
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,302
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_211
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_210
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,53
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_212
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],8
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,54
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_214
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_213
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,55
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_215
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],15
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,56
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_217
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_216
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,57
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_219
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_218
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],12
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,58
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_220
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],16
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,59
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_221
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],17
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,60
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_222
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],18
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,61
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_223
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],19
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,62
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_224
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],20
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,63
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_225
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],21
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,64
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_226
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],22
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,65
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_227
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],23
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,66
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_228
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],24
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,67
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],25
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,68
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_230
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],11
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,69
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_231
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],13
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,70
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_233
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_232
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],95
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,71
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_235
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_234
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],96
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,72
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_237
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_236
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],97
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,73
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_239
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_238
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,74
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_241
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_240
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],98
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,75
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_243
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_242
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],99
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,76
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_245
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_244
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],100
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,77
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_247
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_246
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,78
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_249
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_248
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],101
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,79
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_251
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_250
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],102
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,80
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_253
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_252
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],103
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,81
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_255
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_254
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],104
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,82
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_257
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_256
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,83
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	esi,292
	shl	esi,byte 2
	add	esi,[_akeycodebase]
	mov	esi,[esi]
	mov	[esp+16],esi
	sub	esp,8
	mov	eax,_259
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_258
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],105
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,86
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_260
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],26
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,87
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_261
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],27
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,88
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_262
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],28
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,100
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_263
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],29
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,101
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_264
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],30
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,102
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_265
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],40
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,112
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_266
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],41
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,115
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_267
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],42
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,121
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_268
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],43
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,123
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_269
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],44
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,125
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_270
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],45
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,126
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_272
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_271
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],46
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,141
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_273
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],47
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,144
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_274
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],48
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,145
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_275
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],49
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,146
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_277
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],50
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,147
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_278
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],51
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,148
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_279
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],52
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,149
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_280
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],53
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,150
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],54
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,151
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_282
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],55
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,153
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_283
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],56
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,156
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],6
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,157
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_285
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],58
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,160
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_286
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],59
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,161
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_287
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],60
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,162
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_288
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],61
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,164
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_289
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],62
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,174
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_290
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],63
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,176
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_291
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],64
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,178
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_293
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_292
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],65
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,179
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,8
	mov	eax,_295
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_294
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp],66
	call	_felacreatekeycode
	mov	[esp+4],eax
	mov	ebx,181
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_296
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],67
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,183
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_297
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],68
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,184
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_298
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],69
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,197
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_299
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],70
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,199
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_300
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],71
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,200
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_301
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],72
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,201
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_302
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],73
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,203
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_303
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],74
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,205
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],75
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,207
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_305
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],76
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,208
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_306
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],77
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,209
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_307
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],78
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,210
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_308
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],79
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,211
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_309
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],80
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,219
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_310
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],81
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,220
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_311
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],82
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,221
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_312
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],83
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,222
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_313
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],84
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,223
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_314
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],85
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,227
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_315
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],86
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,229
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_316
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],87
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,230
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_317
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],88
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,231
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_318
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],89
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,232
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_319
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],90
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,233
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_320
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],91
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,234
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_321
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],92
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,235
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_322
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],93
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,236
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,28
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_323
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp],94
	mov	eax,ebx
	call	_felacreatekeycode
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	eax,237
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-4],eax
	jmp	_325
_324
	add	[_vkeycodevalidto],1
	mov	ebx,[ebp-4]
	mov	esi,[_vkeycodevalidto]
	shl	esi,byte 2
	add	esi,[_akeycodevalid]
	mov	[esi],ebx
	call	__bbReadInt
	mov	[ebp-4],eax
_325
	cmp	[ebp-4],0
	jnz	_324
_3
_l_2keycodesusethesekeycodes
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_326
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	[esp],500
	call	_felasetkeydelay
	sub	esp,4
	mov	[esp],20
	call	_felasetnextkeydelay
_327
	call	_fcls
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_felascancode
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_328
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fgraphicswidth
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	eax,ebx
	jle	_329
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_330
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_329
_328
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_331
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],15
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_327
_4
	call	_fend
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
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
_felacreatekeycode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_telakeycode
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,[ebp-4]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_felasetkeydelay
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vkeycodedelay],ebx
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
_felasetnextkeydelay
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vkeycodenextkeydelay],ebx
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
_felasetspacespertab
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	eax,_334
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fstring
	mov	[esp+4],eax
	mov	ebx,15
	shl	ebx,byte 2
	add	ebx,[_akeycodebase]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
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
_felacapslockstatus
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vkeycodecapslockon],ebx
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
_felalastkeycodedown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[_vkeycodelastkeydown]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	jmp	_10_leave
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
_felalastscancodedown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[_vkeycodelastkeydown]
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
_felalastkeycodehit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[_vkeycodelastkeyhit]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_felalastscancodehit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[_vkeycodelastkeyhit]
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
_felascancode
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
	mov	[esp],58
	call	_fkeyhit
	and	eax,eax
	jz	_335
	mov	ebx,1
	sub	ebx,[_vkeycodecapslockon]
	mov	[_vkeycodecapslockon],ebx
_335
	mov	[ebp-4],1
	jmp	_336
_337
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_akeycodevalid]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeydown
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_338
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_akeycodevalid]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	cmp	[_vkeycodelastkeydown],ebx
	jz	_339
	mov	[_vkeycodetiming],0
_339
	mov	ebx,[ebp-12]
	mov	[_vkeycodelastkeydown],ebx
	cmp	[_vkeycodetiming],0
	jnz	_340
	call	_fmillisecs
	mov	[_vkeycodetiming],eax
	mov	ebx,[ebp-12]
	mov	[_vkeycodelastkeyhit],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_felakeycodereturnkey
	jmp	_14_leave
	jmp	_341
_340
	call	_fmillisecs
	sub	eax,[_vkeycodetiming]
	cmp	eax,[_vkeycodedelay]
	jle	_342
	cmp	[_vkeycodetimingnext],0
	jnz	_343
	call	_fmillisecs
	mov	[_vkeycodetimingnext],eax
	mov	[_vkeycodelastkeyhit],0
	mov	eax,0
	jmp	_14_leave
	jmp	_344
_343
	call	_fmillisecs
	sub	eax,[_vkeycodetimingnext]
	cmp	eax,[_vkeycodenextkeydelay]
	jle	_345
	mov	[_vkeycodetimingnext],0
	mov	ebx,[ebp-12]
	mov	[_vkeycodelastkeyhit],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_felakeycodereturnkey
	jmp	_14_leave
	jmp	_346
_345
	mov	[_vkeycodelastkeyhit],0
	mov	eax,0
	jmp	_14_leave
_346
_344
	jmp	_347
_342
	mov	eax,0
	jmp	_14_leave
_347
_341
_338
	add	[ebp-4],1
_336
	mov	ebx,[_vkeycodevalidto]
	cmp	[ebp-4],ebx
	jle	_337
_15
	mov	[_vkeycodetimingnext],0
	mov	[_vkeycodelastkeydown],0
	mov	[_vkeycodetiming],0
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
	ret	word 0
	.align	16
_felakeycodereturnkey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],42
	call	_fkeydown
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],54
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_348
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_349
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	jmp	_16_leave
	jmp	_350
_349
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	jmp	_16_leave
_350
	jmp	_351
_348
	cmp	[_vkeycodecapslockon],0
	jz	_352
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_353
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	jmp	_16_leave
	jmp	_354
_353
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	jmp	_16_leave
_354
	jmp	_355
_352
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeycodebase]
	mov	eax,[eax]
	jmp	_16_leave
_355
_351
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
	.align	4
_vkeycodedelay	.dd	0
	.align	4
_vkeycodenextkeydelay	.dd	0
	.align	4
_vkeycodetiming	.dd	0
	.align	4
_vkeycodetimingnext	.dd	0
	.align	4
_akeycodebase	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_akeycodevalid	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vkeycodelastkeydown	.dd	0
	.align	4
_vkeycodelastkeyhit	.dd	0
	.align	4
_vkeycodevalidto	.dd	0
	.align	4
_vkeycodecapslockon	.dd	0
_17	.db	"!",0
_18	.db	"!",0
_19	.db	"£",0
_20	.db	"£",0
_21	.db	"$",0
_22	.db	"$",0
_23	.db	"%",0
_24	.db	"%",0
_25	.db	"^",0
_26	.db	"^",0
_27	.db	"&",0
_28	.db	"&",0
_29	.db	"*",0
_30	.db	"*",0
_31	.db	"(",0
_32	.db	"(",0
_33	.db	")",0
_34	.db	")",0
_35	.db	"_",0
_36	.db	"_",0
_37	.db	"+",0
_38	.db	"+",0
_39	.db	"Q",0
_40	.db	"Q",0
_41	.db	"W",0
_42	.db	"W",0
_43	.db	"E",0
_44	.db	"E",0
_45	.db	"R",0
_46	.db	"R",0
_47	.db	"T",0
_48	.db	"T",0
_49	.db	"Y",0
_50	.db	"Y",0
_51	.db	"U",0
_52	.db	"U",0
_53	.db	"I",0
_54	.db	"I",0
_55	.db	"O",0
_56	.db	"O",0
_57	.db	"P",0
_58	.db	"P",0
_59	.db	"{",0
_60	.db	"{",0
_61	.db	"}",0
_62	.db	"}",0
_63	.db	"A",0
_64	.db	"A",0
_65	.db	"S",0
_66	.db	"S",0
_67	.db	"D",0
_68	.db	"D",0
_69	.db	"F",0
_70	.db	"F",0
_71	.db	"G",0
_72	.db	"G",0
_73	.db	"H",0
_74	.db	"H",0
_75	.db	"J",0
_76	.db	"J",0
_77	.db	"K",0
_78	.db	"K",0
_79	.db	"L",0
_80	.db	"L",0
_81	.db	":",0
_82	.db	":",0
_83	.db	"@",0
_84	.db	"@",0
_85	.db	"~",0
_86	.db	"~",0
_87	.db	"|",0
_88	.db	"|",0
_89	.db	"Z",0
_90	.db	"Z",0
_91	.db	"X",0
_92	.db	"X",0
_93	.db	"C",0
_94	.db	"C",0
_95	.db	"V",0
_96	.db	"V",0
_97	.db	"B",0
_98	.db	"B",0
_99	.db	"N",0
_100	.db	"N",0
_101	.db	"M",0
_102	.db	"M",0
_103	.db	"<",0
_104	.db	"<",0
_105	.db	">",0
_106	.db	">",0
_107	.db	"?",0
_108	.db	"?",0
_109	.db	"¬",0
_110	.db	"¬",0
_111	.db	"",0
_112	.db	"1",0
_113	.db	"1",0
_114	.db	"2",0
_115	.db	"2",0
_116	.db	"3",0
_117	.db	"3",0
_118	.db	"4",0
_119	.db	"4",0
_120	.db	"5",0
_121	.db	"5",0
_122	.db	"6",0
_123	.db	"6",0
_124	.db	"7",0
_125	.db	"7",0
_126	.db	"8",0
_127	.db	"8",0
_128	.db	"9",0
_129	.db	"9",0
_130	.db	"0",0
_131	.db	"0",0
_132	.db	"-",0
_133	.db	"-",0
_134	.db	"=",0
_135	.db	"=",0
_136	.db	"",0
_137	.db	"    ",0
_138	.db	"	",0
_139	.db	"q",0
_140	.db	"q",0
_141	.db	"w",0
_142	.db	"w",0
_143	.db	"e",0
_144	.db	"e",0
_145	.db	"r",0
_146	.db	"r",0
_147	.db	"t",0
_148	.db	"t",0
_149	.db	"y",0
_150	.db	"y",0
_151	.db	"u",0
_152	.db	"u",0
_153	.db	"i",0
_154	.db	"i",0
_155	.db	"o",0
_156	.db	"o",0
_157	.db	"p",0
_158	.db	"p",0
_159	.db	"[",0
_160	.db	"[",0
_161	.db	"]",0
_162	.db	"]",0
_163	.db	"",0
_164	.db	"",0
_165	.db	"a",0
_166	.db	"a",0
_167	.db	"s",0
_168	.db	"s",0
_169	.db	"d",0
_170	.db	"d",0
_171	.db	"f",0
_172	.db	"f",0
_173	.db	"g",0
_174	.db	"g",0
_175	.db	"h",0
_176	.db	"h",0
_177	.db	"j",0
_178	.db	"j",0
_179	.db	"k",0
_180	.db	"k",0
_181	.db	"l",0
_182	.db	"l",0
_183	.db	";",0
_184	.db	";",0
_185	.db	"'",0
_186	.db	"'",0
_187	.db	"`",0
_188	.db	"`",0
_189	.db	"",0
_190	.db	"#",0
_191	.db	"#",0
_192	.db	"z",0
_193	.db	"z",0
_194	.db	"x",0
_195	.db	"x",0
_196	.db	"c",0
_197	.db	"c",0
_198	.db	"v",0
_199	.db	"v",0
_200	.db	"b",0
_201	.db	"b",0
_202	.db	"n",0
_203	.db	"n",0
_204	.db	"m",0
_205	.db	"m",0
_206	.db	",",0
_207	.db	",",0
_208	.db	".",0
_209	.db	".",0
_210	.db	"/",0
_211	.db	"/",0
_212	.db	"",0
_213	.db	"*",0
_214	.db	"*",0
_215	.db	"",0
_216	.db	" ",0
_217	.db	" ",0
_218	.db	"",0
_219	.db	"",0
_220	.db	"F1",0
_221	.db	"F2",0
_222	.db	"F3",0
_223	.db	"F4",0
_224	.db	"F5",0
_225	.db	"F6",0
_226	.db	"F7",0
_227	.db	"F8",0
_228	.db	"F9",0
_229	.db	"F10",0
_230	.db	"",0
_231	.db	"",0
_232	.db	"7",0
_233	.db	"7",0
_234	.db	"8",0
_235	.db	"8",0
_236	.db	"9",0
_237	.db	"9",0
_238	.db	"-",0
_239	.db	"-",0
_240	.db	"4",0
_241	.db	"4",0
_242	.db	"5",0
_243	.db	"5",0
_244	.db	"6",0
_245	.db	"6",0
_246	.db	"+",0
_247	.db	"+",0
_248	.db	"1",0
_249	.db	"1",0
_250	.db	"2",0
_251	.db	"2",0
_252	.db	"3",0
_253	.db	"3",0
_254	.db	"0",0
_255	.db	"0",0
_256	.db	".",0
_257	.db	".",0
_258	.db	"\",0
_259	.db	"\",0
_260	.db	"F11",0
_261	.db	"F12",0
_262	.db	"F13",0
_263	.db	"F14",0
_264	.db	"F15",0
_265	.db	"",0
_266	.db	"",0
_267	.db	"",0
_268	.db	"",0
_269	.db	"",0
_270	.db	"",0
_271	.db	"=",0
_272	.db	"=",0
_273	.db	"",0
_274	.db	"",0
_275	.db	":",0
_276	.db	":",0
_277	.db	"",0
_278	.db	"",0
_279	.db	"",0
_280	.db	"",0
_281	.db	"",0
_282	.db	"",0
_283	.db	"",0
_284	.db	"",0
_285	.db	"",0
_286	.db	"",0
_287	.db	"",0
_288	.db	"",0
_289	.db	"",0
_290	.db	"",0
_291	.db	"",0
_292	.db	",",0
_293	.db	",",0
_294	.db	"/",0
_295	.db	"/",0
_296	.db	"",0
_297	.db	"",0
_298	.db	"",0
_299	.db	"",0
_300	.db	"",0
_301	.db	"",0
_302	.db	"",0
_303	.db	"",0
_304	.db	"",0
_305	.db	"",0
_306	.db	"",0
_307	.db	"",0
_308	.db	"",0
_309	.db	"",0
_310	.db	"",0
_311	.db	"",0
_312	.db	"",0
_313	.db	"",0
_314	.db	"",0
_315	.db	"",0
_316	.db	"",0
_317	.db	"",0
_318	.db	"",0
_319	.db	"",0
_320	.db	"",0
_321	.db	"",0
_322	.db	"",0
_323	.db	"",0
_326	.db	"",0
_330	.db	"",0
_331	.db	"Type something....",0
	.align	4
_telakeycode	.dd	5
_332	.dd	0
	.dd	_332
	.dd	_332
	.dd	0
	.dd	-1
_333	.dd	0
	.dd	_333
	.dd	_333
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	_telakeycode
	.dd	_telakeycode
_334	.db	" ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	7
	.dd	1
	.dd	8
	.dd	1
	.dd	9
	.dd	1
	.dd	10
	.dd	1
	.dd	11
	.dd	1
	.dd	12
	.dd	1
	.dd	13
	.dd	1
	.dd	14
	.dd	1
	.dd	15
	.dd	1
	.dd	16
	.dd	1
	.dd	17
	.dd	1
	.dd	18
	.dd	1
	.dd	19
	.dd	1
	.dd	20
	.dd	1
	.dd	21
	.dd	1
	.dd	22
	.dd	1
	.dd	23
	.dd	1
	.dd	24
	.dd	1
	.dd	25
	.dd	1
	.dd	26
	.dd	1
	.dd	27
	.dd	1
	.dd	28
	.dd	1
	.dd	29
	.dd	1
	.dd	30
	.dd	1
	.dd	31
	.dd	1
	.dd	32
	.dd	1
	.dd	33
	.dd	1
	.dd	34
	.dd	1
	.dd	35
	.dd	1
	.dd	36
	.dd	1
	.dd	37
	.dd	1
	.dd	38
	.dd	1
	.dd	39
	.dd	1
	.dd	40
	.dd	1
	.dd	41
	.dd	1
	.dd	43
	.dd	1
	.dd	44
	.dd	1
	.dd	45
	.dd	1
	.dd	46
	.dd	1
	.dd	47
	.dd	1
	.dd	48
	.dd	1
	.dd	49
	.dd	1
	.dd	50
	.dd	1
	.dd	51
	.dd	1
	.dd	52
	.dd	1
	.dd	53
	.dd	1
	.dd	55
	.dd	1
	.dd	56
	.dd	1
	.dd	57
	.dd	1
	.dd	59
	.dd	1
	.dd	60
	.dd	1
	.dd	61
	.dd	1
	.dd	62
	.dd	1
	.dd	63
	.dd	1
	.dd	64
	.dd	1
	.dd	65
	.dd	1
	.dd	66
	.dd	1
	.dd	67
	.dd	1
	.dd	68
	.dd	1
	.dd	69
	.dd	1
	.dd	70
	.dd	1
	.dd	71
	.dd	1
	.dd	72
	.dd	1
	.dd	73
	.dd	1
	.dd	74
	.dd	1
	.dd	75
	.dd	1
	.dd	76
	.dd	1
	.dd	77
	.dd	1
	.dd	78
	.dd	1
	.dd	79
	.dd	1
	.dd	80
	.dd	1
	.dd	81
	.dd	1
	.dd	82
	.dd	1
	.dd	83
	.dd	1
	.dd	86
	.dd	1
	.dd	87
	.dd	1
	.dd	88
	.dd	1
	.dd	100
	.dd	1
	.dd	101
	.dd	1
	.dd	102
	.dd	1
	.dd	112
	.dd	1
	.dd	115
	.dd	1
	.dd	121
	.dd	1
	.dd	123
	.dd	1
	.dd	125
	.dd	1
	.dd	126
	.dd	1
	.dd	141
	.dd	1
	.dd	144
	.dd	1
	.dd	145
	.dd	1
	.dd	146
	.dd	1
	.dd	147
	.dd	1
	.dd	148
	.dd	1
	.dd	149
	.dd	1
	.dd	150
	.dd	1
	.dd	151
	.dd	1
	.dd	153
	.dd	1
	.dd	156
	.dd	1
	.dd	157
	.dd	1
	.dd	160
	.dd	1
	.dd	161
	.dd	1
	.dd	162
	.dd	1
	.dd	164
	.dd	1
	.dd	174
	.dd	1
	.dd	176
	.dd	1
	.dd	178
	.dd	1
	.dd	179
	.dd	1
	.dd	181
	.dd	1
	.dd	183
	.dd	1
	.dd	184
	.dd	1
	.dd	197
	.dd	1
	.dd	199
	.dd	1
	.dd	200
	.dd	1
	.dd	201
	.dd	1
	.dd	203
	.dd	1
	.dd	205
	.dd	1
	.dd	207
	.dd	1
	.dd	208
	.dd	1
	.dd	209
	.dd	1
	.dd	210
	.dd	1
	.dd	211
	.dd	1
	.dd	219
	.dd	1
	.dd	220
	.dd	1
	.dd	221
	.dd	1
	.dd	222
	.dd	1
	.dd	223
	.dd	1
	.dd	227
	.dd	1
	.dd	229
	.dd	1
	.dd	230
	.dd	1
	.dd	231
	.dd	1
	.dd	232
	.dd	1
	.dd	233
	.dd	1
	.dd	234
	.dd	1
	.dd	235
	.dd	1
	.dd	236
	.dd	1
	.dd	237
	.dd	1
	.dd	0
	.dd	0

