
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,320
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,240
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adotmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,320
	mov	esi,_adotmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,240
	mov	esi,_adotmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adotmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],240
	mov	[esp+8],1
	mov	[esp],320
	call	_fcreateimage
	mov	[_vimage],eax
	sub	esp,12
	mov	eax,[_vimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],1
	call	_freadpixel
	mov	[_vbackcolor],eax
	sub	esp,20
	mov	[esp+12],240
	mov	[esp+16],0
	mov	[esp+8],320
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-4],0
	jmp	_32
_33
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,239
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-4],1
_32
	cmp	[ebp-4],319
	jle	_33
_3
	mov	[ebp-8],0
	jmp	_34
_35
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,319
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_34
	cmp	[ebp-8],239
	jle	_35
_4
	sub	esp,4
	mov	eax,_amovex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_amovex
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amovex
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amovey
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_amovey
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amovey
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,1
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_amovex]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_amovex]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_amovey]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_amovey]
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],250
	call	_fcreatetimer
	mov	[ebp-12],eax
_36
	sub	esp,12
	mov	eax,[_vimage]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcontrols
	call	_fdotsupdate
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fdrawfront
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwaittimer
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_37
	call	_fend
_37
	jmp	_36
_5
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawfront
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vimage]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	call	_fmousey
	mov	[esp+4],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdotsupdate
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
	call	_flockbuffer
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tdot
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_40
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_41
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,237
	jl	_42
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,0
	mov	[esi],ebx
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adotmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	mov	[ebp-12],-1
	jmp	_43
_44
	mov	[ebp-16],-1
	jmp	_45
_46
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,[ebp-16]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_47
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_47
	add	[ebp-16],1
_45
	cmp	[ebp-16],1
	jle	_46
_10
	add	[ebp-12],1
_43
	cmp	[ebp-12],0
	jle	_44
_9
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
	jmp	_48
_42
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,0
	jnz	_49
	mov	[ebp-20],-1
	jmp	_50
_51
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,[ebp-20]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_52
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	add	ebx,[ebp-20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_52
	add	[ebp-20],2
_50
	cmp	[ebp-20],1
	jle	_51
_11
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_53
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdotmove
	jmp	_54
_53
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbSgn
	add	ebx,eax
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	mov	edi,_amap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_55
	sub	esp,16
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbSgn
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdotmove
	mov	ebx,eax
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	jmp	_56
_55
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdotmove
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_56
_54
	jmp	_57
_49
	mov	[ebp-24],0
	mov	[ebp-28],1
	jmp	_58
_59
	mov	[ebp-20],-1
	jmp	_60
_61
	mov	ebx,[ebp-20]
	cmp	[ebp-24],ebx
	jz	_62
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	imul	esi,[ebp-20]
	add	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	edi,_amap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_63
	cmp	[ebp-24],0
	jz	_64
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,2
	jnz	_65
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_66
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdotcheckpressure
_66
_65
	jmp	_l_7dotdone
_64
	mov	ebx,[ebp-20]
	mov	[ebp-24],ebx
_63
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	imul	esi,[ebp-20]
	add	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	mov	edi,_amap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_67
	sub	esp,12
	mov	ebx,[ebp-28]
	imul	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdotmove
	jmp	_l_7dotdone
	jmp	_68
_67
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	imul	esi,[ebp-20]
	add	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	edi,_amap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_69
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	imul	esi,[ebp-20]
	add	ebx,esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	esi,1
	mov	edi,_adotmap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adotmap]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_70
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_71
	sub	esp,12
	mov	ebx,[ebp-28]
	imul	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdotmove
	jmp	_l_7dotdone
_71
_70
_69
_68
_62
	add	[ebp-20],2
_60
	cmp	[ebp-20],1
	jle	_61
_13
	add	[ebp-28],1
_58
	cmp	[ebp-28],321
	jle	_59
_12
_57
_48
_41
_l_7dotdone
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_40
_8
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdotmove
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
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adotmap]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,0
	mov	[esi],ebx
	cmp	[ebp+24],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp+28],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_72
	mov	[ebp-8],-1
	jmp	_73
_74
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,[ebp-8]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_75
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_75
	add	[ebp-8],1
_73
	cmp	[ebp-8],1
	jle	_74
_15
	jmp	_76
_72
	mov	[ebp-12],-1
	jmp	_77
_78
	mov	[ebp-8],-1
	jmp	_79
_80
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,[ebp-8]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_81
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_81
	add	[ebp-8],1
_79
	cmp	[ebp-8],1
	jle	_80
_17
	add	[ebp-12],1
_77
	cmp	[ebp-12],1
	jle	_78
_16
_76
	sub	esp,16
	mov	ebx,[_vbackcolor]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adotmap]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,2
	mov	[esi],ebx
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_82
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_82
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_83
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_83
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_84
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_84
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_85
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_85
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_86
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_86
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fdotcheckpressure
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	mov	ebx,[ebp-8]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-24],ebx
_87
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	esi,3
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_amovex]
	mov	ebx,[ebx]
	add	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_amovey]
	mov	ebx,[ebx]
	add	ebx,[ebp-24]
	mov	[ebp-36],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_88
	mov	ebx,[ebp-32]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-36]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-16],ebx
	jmp	_89
_88
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amovex]
	mov	ebx,[ebx]
	add	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amovey]
	mov	ebx,[ebx]
	add	ebx,[ebp-24]
	mov	[ebp-36],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_90
	mov	ebx,[ebp-32]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-36]
	mov	[ebp-24],ebx
	jmp	_91
_90
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,3
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_amovex]
	mov	ebx,[ebx]
	add	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_amovey]
	mov	ebx,[ebx]
	add	ebx,[ebp-24]
	mov	[ebp-36],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_92
	mov	ebx,[ebp-32]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-36]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-16],ebx
	jmp	_93
_92
	mov	ebx,[ebp-16]
	add	ebx,2
	mov	esi,3
	and	ebx,esi
	mov	[ebp-16],ebx
_93
_91
_89
	mov	ebx,[ebp-4]
	cmp	[ebp-24],ebx
	jle	_94
	cmp	[ebp-16],1
	jz	_95
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_96
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	sub	esi,1
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,4
	mov	edi,[edi]
	sub	esi,edi
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdotmove
	mov	eax,1
	jmp	_18_leave
_96
_95
_94
	mov	eax,[ebp-8]
	cmp	[ebp-20],eax
	setz	al
	movzx	eax,al
	mov	[ebp-44],eax
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_97
	mov	eax,0
	jmp	_18_leave
_97
	jmp	_87
_19
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
_fcontrols
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
	sub	esp,4
	mov	[esp],28
	call	_fkeydown
	and	eax,eax
	jz	_98
	mov	[ebp-8],1
	jmp	_99
_100
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_tdot
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],1134460928
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,0
	jle	_101
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjDelete
	jmp	_102
_101
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adotmap]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,2
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritepixel
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdotmove
_102
	add	[ebp-8],1
_99
	cmp	[ebp-8],10
	jle	_100
_22
_98
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	mov	[ebp-40],eax
	sub	esp,4
	mov	[esp],3
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	and	eax,eax
	jz	_103
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_tdot
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbObjStore
	call	_fmousex
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	call	_fmousey
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,1
	jge	_104
	mov	ebx,1
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_104
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,1
	jge	_105
	mov	ebx,1
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_105
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,318
	jle	_106
	mov	ebx,318
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_106
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,238
	jle	_107
	mov	ebx,238
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_107
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,0
	jle	_108
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjDelete
	jmp	_109
_108
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,8
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_adotmap]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,2
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritepixel
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdotmove
_109
_103
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_110
	call	_fmousex
	mov	[ebp-16],eax
	call	_fmousey
	mov	[ebp-20],eax
	mov	[ebp-24],0
	jmp	_111
_112
	mov	[ebp-28],0
	jmp	_113
_114
	sub	esp,12
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-16]
	add	eax,[ebp-28]
	mov	[esp],eax
	call	_finscreen
	and	eax,eax
	jz	_115
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,0
	jnz	_116
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,1
	mov	[esi],ebx
	sub	esp,24
	mov	eax,[ebp-24]
	imul	eax,20
	add	eax,55
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-24]
	imul	ebx,20
	add	ebx,155
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 8
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	add	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixel
_116
_115
	add	[ebp-28],1
_113
	cmp	[ebp-28],5
	jle	_114
_24
	add	[ebp-24],1
_111
	cmp	[ebp-24],5
	jle	_112
_23
_110
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_117
	call	_fmousex
	mov	[ebp-16],eax
	call	_fmousey
	mov	[ebp-20],eax
	mov	[ebp-24],0
	jmp	_118
_119
	mov	[ebp-28],0
	jmp	_120
_121
	sub	esp,12
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-16]
	add	eax,[ebp-28]
	mov	[esp],eax
	call	_finscreen
	and	eax,eax
	jz	_122
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,1
	jnz	_123
	sub	esp,16
	mov	ebx,[_vbackcolor]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-20]
	add	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	add	eax,[ebp-28]
	mov	[esp],eax
	call	_fwritepixel
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,0
	mov	[esi],ebx
	mov	[ebp-32],-1
	jmp	_124
_125
	mov	[ebp-36],-1
	jmp	_126
_127
	sub	esp,8
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,[ebp-32]
	mov	esi,_adotmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	add	esi,[ebp-36]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_adotmap]
	mov	esi,[esi]
	mov	[esp+4],esi
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_128
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_128
	add	[ebp-36],1
_126
	cmp	[ebp-36],1
	jle	_127
_28
	add	[ebp-32],1
_124
	cmp	[ebp-32],1
	jle	_125
_27
_123
_122
	add	[ebp-28],1
_120
	cmp	[ebp-28],5
	jle	_121
_26
	add	[ebp-24],1
_118
	cmp	[ebp-24],5
	jle	_119
_25
_117
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finscreen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+28]
	cmp	[ebp+20],eax
	setge	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[ebp+28]
	cmp	[ebp+24],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,320
	sub	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,240
	sub	ebx,[ebp+28]
	cmp	[ebp+24],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	jmp	_29_leave
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwritepixelfast2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_finscreen
	cmp	eax,0
	jnz	_129
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_130
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_ferror
_129
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixel
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ferror
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,16
	mov	eax,_131
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
	mov	eax,0
	jmp	_31_leave
_31_leave
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
_vmovers	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adotmap	.dd	0
	.dd	5
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vimage	.dd	0
	.align	4
_vbackcolor	.dd	0
	.align	4
_amovex	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_amovey	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_tdot	.dd	5
_38	.dd	0
	.dd	_38
	.dd	_38
	.dd	0
	.dd	-1
_39	.dd	0
	.dd	_39
	.dd	_39
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_130	.db	" ",0
_131	.db	"Error: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

