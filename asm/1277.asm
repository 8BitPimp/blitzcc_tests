
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
	sub	esp,4
	mov	eax,_afnt
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_afnt
	add	esi,12
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,_afnt
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afnt
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ashw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_ashw
	add	esi,12
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,_ashw
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashw
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vtboolshadow],-1
	mov	[_vtshadowdistx],1
	mov	[_vtshadowdisty],1
	mov	[_vtfontdefaultgrad],3
	mov	[_vtfontfont],1
	mov	[_vtfontbooldebug],-1
	mov	[_vfps_samplerate],5
	mov	[_vfps_samples],10
	mov	[_vfps_bufferindex],1
	sub	esp,4
	mov	eax,_afps_buffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_afps_buffer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afps_buffer
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftfontcreate
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
	mov	[ebp-4],31
	mov	[ebp-8],122
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],1
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-28],1
	jmp	_35
_36
	sub	esp,8
	mov	eax,_afnt
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_afnt]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_ttipofont
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-4]
	mov	[ebp-32],ebx
	jmp	_37
_38
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringheight
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringwidth
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	esi,[ebp-32]
	shl	esi,byte 2
	mov	edi,_afnt
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp+20]
	add	edi,[ebp-24]
	shl	edi,byte 2
	add	edi,[_afnt]
	mov	edi,[edi]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,_afnt
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_afnt]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	sar	eax,byte 1
	mov	[ebx],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,_afnt
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_afnt]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	ebx,esi
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringheight
	mov	[ebx],eax
	sub	esp,12
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_afnt
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_afnt]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolor
	sub	esp,24
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_afnt
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_afnt]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimagewidth
	mov	[esp+8],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,_afnt
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_afnt]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,16
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_afnt
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_afnt]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	call	_fmaskimage
	sub	esp,12
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_afnt
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_afnt]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1056964608
	mov	[esp+8],1056964608
	call	_fscaleimage
	add	[ebp-32],1
_37
	mov	ebx,[ebp-8]
	cmp	[ebp-32],ebx
	jle	_38
_13
	add	[ebp-12],63
	add	[ebp-16],63
	add	[ebp-20],63
	add	[ebp-24],1
	add	[ebp-28],1
_35
	cmp	[ebp-28],5
	jle	_36
_12
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],1
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-28],1
	jmp	_39
_40
	sub	esp,8
	mov	eax,_ashw
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_ashw]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_ttipofont
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-4]
	mov	[ebp-32],ebx
	jmp	_41
_42
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringheight
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringwidth
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	esi,[ebp-32]
	shl	esi,byte 2
	mov	edi,_ashw
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp+20]
	add	edi,[ebp-24]
	shl	edi,byte 2
	add	edi,[_ashw]
	mov	edi,[edi]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	esi,edi
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,_ashw
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ashw]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	sar	eax,byte 1
	mov	[ebx],eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,_ashw
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ashw]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	ebx,esi
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringheight
	mov	[ebx],eax
	sub	esp,12
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_ashw
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashw]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolor
	sub	esp,24
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_ashw
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashw]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimagewidth
	mov	[esp+8],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	mov	esi,_ashw
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ashw]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],50
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,16
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_ashw
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashw]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	call	_fmaskimage
	sub	esp,12
	mov	eax,[ebp-32]
	shl	eax,byte 2
	mov	ebx,_ashw
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashw]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1056964608
	mov	[esp+8],1056964608
	call	_fscaleimage
	add	[ebp-32],1
_41
	mov	ebx,[ebp-8]
	cmp	[ebp-32],ebx
	jle	_42
_15
	add	[ebp-12],63
	add	[ebp-16],63
	add	[ebp-20],63
	add	[ebp-24],1
	add	[ebp-28],1
_39
	cmp	[ebp-28],5
	jle	_40
_14
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-36]
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
	ret	word 20
	.align	16
_ftfontdraw
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
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	mov	ebx,[_vtfontdefaultgrad]
	mov	[ebp-20],ebx
	mov	ebx,[_vtfontfont]
	mov	[ebp-12],ebx
	cmp	[_vtfontbooldebug],0
	jle	_43
	sub	esp,76
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_44
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
	mov	ebx,[_vtfontdefaultgrad]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_45
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
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_46
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
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_47
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
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftfontgetwidth
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_43
	cmp	[ebp-20],0
	jz	_48
	mov	ebx,[ebp-20]
	mov	[ebp-24],ebx
_48
	mov	[ebp-28],1
	jmp	_49
_50
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-16],eax
	cmp	[ebp-20],0
	jnz	_51
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	call	_ftextractcolorsingle
	mov	[ebp-24],eax
_51
	cmp	[_vtboolshadow],0
	jle	_52
	sub	esp,16
	mov	eax,[ebp-16]
	shl	eax,byte 2
	mov	ebx,_ashw
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ashw]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	add	ebx,[_vtshadowdisty]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	add	esi,[_vtshadowdistx]
	mov	[esp+4],esi
	call	_fdrawimage
_52
	sub	esp,16
	mov	eax,[ebp-16]
	shl	eax,byte 2
	mov	ebx,_afnt
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_afnt]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	call	_fdrawimage
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	esi,_afnt
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_afnt]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	add	[ebp-4],ebx
	add	[ebp-28],1
_49
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-28],eax
	jle	_50
_17
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 12
	.align	16
_ftfontset
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vtfontfont],ebx
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
_ftfontgetwidth
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
	mov	[ebp-4],0
	mov	ebx,[_vtfontfont]
	mov	[ebp-12],ebx
	mov	[ebp-16],1
	jmp	_53
_54
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,_afnt
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_afnt]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	add	[ebp-4],ebx
	add	[ebp-16],1
_53
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-16],eax
	jle	_54
_20
	mov	eax,[ebp-4]
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ftfontshadow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],0
	setg	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[ebp+20],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_55
	mov	[_vtboolshadow],1
_55
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[ebp+20],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_56
	mov	[_vtboolshadow],-1
_56
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ftfontshadowdistance
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vtshadowdistx],ebx
	mov	ebx,[ebp+24]
	mov	[_vtshadowdisty],ebx
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ftextractcolorsingle
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
	mov	[ebp-32],ebx
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fbackbuffer
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],63
	mov	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	ecx,[ebp-24]
	cdq
	idiv	ecx
	mov	[ebp-28],eax
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-32],ebx
	cmp	[ebp-32],5
	jle	_57
	mov	[ebp-32],5
_57
	mov	eax,[ebp-32]
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ftextractcolormultiple
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
	mov	[ebp-44],ebx
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,2
	mov	[esp+4],ebx
	call	_fbackbuffer
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	add	eax,2
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	eax,[ebp-20]
	add	eax,63
	mov	ecx,3
	cdq
	idiv	ecx
	mov	ecx,63
	cdq
	idiv	ecx
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp+24]
	add	ebx,6
	mov	[esp+4],ebx
	call	_fbackbuffer
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	add	eax,6
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-28]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-28]
	mov	esi,255
	and	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	eax,[ebp-32]
	add	eax,63
	mov	ecx,3
	cdq
	idiv	ecx
	mov	ecx,63
	cdq
	idiv	ecx
	mov	[ebp-36],eax
	mov	ebx,[ebp-24]
	add	ebx,[ebp-36]
	sar	ebx,byte 1
	mov	[ebp-40],ebx
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	mov	ebx,[ebp-40]
	add	ebx,1
	mov	[ebp-44],ebx
	cmp	[ebp-44],5
	jle	_58
	mov	[ebp-44],5
_58
	mov	eax,[ebp-44]
	jmp	_24_leave
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ftfontsetgrad
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],5
	jle	_59
	mov	[ebp+20],5
_59
	cmp	[ebp+20],0
	jge	_60
	mov	[ebp-4],0
_60
	mov	ebx,[ebp+20]
	mov	[_vtfontdefaultgrad],ebx
	mov	eax,[ebp+20]
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
_ftfontsetautograd
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vtfontdefaultgrad],0
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
_ftfontdebugon
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vtfontbooldebug],-1
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
_ftfontdebugoff
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vtfontbooldebug],1
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
_fget_fps
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	call	_fmillisecs
	mov	[_vfps_newtime],eax
	add	[_vfps_ticks],1
	mov	ebx,[_vfps_samplerate]
	cmp	[_vfps_ticks],ebx
	jle	_61
	mov	ebx,[_vfps_newtime]
	sub	ebx,[_vfps_oldtime]
	mov	[_vfps_current],ebx
	cmp	[_vfps_current],0
	jnz	_62
	mov	[_vfps_current],1000
	jmp	_63
_62
	mov	eax,1000
	mov	ecx,[_vfps_current]
	cdq
	idiv	ecx
	mov	[_vfps_current],eax
_63
	mov	ebx,[_vfps_current]
	mov	esi,[_vfps_bufferindex]
	shl	esi,byte 2
	add	esi,[_afps_buffer]
	mov	[esi],ebx
	add	[_vfps_bufferindex],1
	mov	ebx,[_vfps_samples]
	cmp	[_vfps_bufferindex],ebx
	jle	_64
	mov	[ebp-4],1
	jmp	_65
_66
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_afps_buffer]
	mov	ebx,[ebx]
	add	[ebp-8],ebx
	add	[ebp-4],1
_65
	mov	ebx,[_vfps_samples]
	cmp	[ebp-4],ebx
	jle	_66
_30
	mov	eax,[ebp-8]
	mov	ecx,[_vfps_samples]
	cdq
	idiv	ecx
	mov	[_vfps_final],eax
	mov	[_vfps_bufferindex],1
_64
	mov	[_vfps_ticks],0
_61
	call	_fmillisecs
	mov	[_vfps_oldtime],eax
	sub	esp,32
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_vfps_final]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_afnt	.dd	0
	.dd	5
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ashw	.dd	0
	.dd	5
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vtboolshadow	.dd	0
	.align	4
_vtshadowdistx	.dd	0
	.align	4
_vtshadowdisty	.dd	0
	.align	4
_vtfontdefaultgrad	.dd	0
	.align	4
_vtfontfont	.dd	0
	.align	4
_vtfontbooldebug	.dd	0
	.align	4
_vfps_oldtime	.dd	0
	.align	4
_vfps_newtime	.dd	0
	.align	4
_vfps_ticks	.dd	0
	.align	4
_vfps_current	.dd	0
	.align	4
_vfps_final	.dd	0
	.align	4
_vfps_samplerate	.dd	0
	.align	4
_vfps_samples	.dd	0
	.align	4
_vfps_bufferindex	.dd	0
	.align	4
_vfps_font	.dd	0
	.align	4
_afps_buffer	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_3	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_4	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_5	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_6	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_ttipofont	.dd	5
_31	.dd	0
	.dd	_31
	.dd	_31
	.dd	0
	.dd	-1
_32	.dd	0
	.dd	_32
	.dd	_32
	.dd	0
	.dd	-1
	.dd	6
	.dd	_3
	.dd	_4
	.dd	_5
	.dd	_6
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_7	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_8	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_9	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_10	.dd	6
	.dd	256
	.dd	__bbIntType
	.align	4
_ttiposhadow	.dd	5
_33	.dd	0
	.dd	_33
	.dd	_33
	.dd	0
	.dd	-1
_34	.dd	0
	.dd	_34
	.dd	_34
	.dd	0
	.dd	-1
	.dd	6
	.dd	_7
	.dd	_8
	.dd	_9
	.dd	_10
	.dd	__bbIntType
	.dd	__bbIntType
_44	.db	" -> ",0
_45	.db	", ",0
_46	.db	", ",0
_47	.db	", ",0
_67	.db	"iFPS:",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

