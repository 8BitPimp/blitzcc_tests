
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],512
	mov	[esp],512
	call	_fgraphics
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_aiimage
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,512
	mov	esi,_aiimage
	add	esi,12
	mov	[esi],ebx
	mov	ebx,512
	mov	esi,_aiimage
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aiimage
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amtransform
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_amtransform
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amtransform
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amtransform
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amvalue
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_amvalue
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amvalue
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amvalue
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vfactnorm],0
	sub	esp,12
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadimageinbuffer
	call	_fapplytransformationmatrix
	mov	[_vfactnorm],0
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadimageinbuffer
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	mov	[ebp-8],0
	jmp	_27
_28
	mov	[ebp-12],0
	jmp	_29
_30
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetcolor
	cmp	[ebp+24],1
	jnz	_31
	call	_fcolorred
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fcolorgreen
	mov	ebx,eax
	mov	eax,[ebp-16]
	add	eax,ebx
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fcolorblue
	mov	ebx,eax
	mov	eax,[ebp-16]
	add	eax,ebx
	mov	ecx,3
	cdq
	idiv	ecx
	mov	ebx,_aiimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aiimage]
	mov	[ebx],eax
	jmp	_32
_31
	call	_fcolorred
	mov	ebx,_aiimage
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aiimage]
	mov	[ebx],eax
_32
	add	[ebp-12],1
_29
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	cmp	[ebp-12],eax
	jle	_30
_5
	add	[ebp-8],1
_27
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	cmp	[ebp-8],eax
	jle	_28
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_finitmatrixflouuniforme
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
	jmp	_33
_34
	mov	[ebp-8],0
	jmp	_35
_36
	mov	ebx,1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,_amtransform
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amtransform]
	mov	ebx,[ebx]
	add	[_vfactnorm],ebx
	add	[ebp-8],1
_35
	cmp	[ebp-8],2
	jle	_36
_8
	add	[ebp-4],1
_33
	cmp	[ebp-4],2
	jle	_34
_7
	sub	esp,4
	mov	eax,[_vfactnorm]
	mov	[esp],eax
	call	__bbAbs
	mov	[_vfactnorm],eax
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
_finitmatrixprewitt
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
	jmp	_37
_38
	mov	[ebp-8],0
	jmp	_39
_40
	cmp	[ebp-8],0
	jnz	_41
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
_41
	cmp	[ebp-8],1
	jnz	_42
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
_42
	cmp	[ebp-8],2
	jnz	_43
	mov	ebx,1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
_43
	add	[ebp-8],1
_39
	cmp	[ebp-8],2
	jle	_40
_11
	add	[ebp-4],1
_37
	cmp	[ebp-4],2
	jle	_38
_10
	mov	[_vfactnorm],3
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
_finitmatrixroberts
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
	jmp	_44
_45
	mov	[ebp-8],0
	jmp	_46
_47
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	add	[ebp-8],1
_46
	cmp	[ebp-8],2
	jle	_47
_14
	add	[ebp-4],1
_44
	cmp	[ebp-4],2
	jle	_45
_13
	mov	ebx,1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	[_vfactnorm],1
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
_finitmatrixsobel
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
	jmp	_48
_49
	mov	[ebp-8],0
	jmp	_50
_51
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	add	[ebp-8],1
_50
	cmp	[ebp-8],2
	jle	_51
_17
	add	[ebp-4],1
_48
	cmp	[ebp-4],2
	jle	_49
_16
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-2
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	[_vfactnorm],4
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
_finitmatrixkirsch
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,-3
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-3
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-3
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-3
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-3
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	[_vfactnorm],15
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
_finitmatrixlog
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	[_vfactnorm],4
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
_finitmatrixharris
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,-1
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_amtransform
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_amtransform]
	mov	[esi],ebx
	mov	[_vfactnorm],4
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
_fapplytransformationmatrix
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
	mov	[ebp-4],1
	jmp	_52
_53
	mov	[ebp-8],1
	jmp	_54
_55
	mov	[ebp-12],0
	mov	[ebp-16],0
	jmp	_56
_57
	mov	[ebp-20],0
	jmp	_58
_59
	mov	ebx,[ebp-4]
	add	ebx,[ebp-16]
	sub	ebx,1
	mov	esi,_aiimage
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	add	esi,[ebp-20]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_aiimage]
	mov	esi,[esi]
	mov	ebx,_amtransform
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amtransform]
	mov	ebx,[ebx]
	imul	esi,ebx
	mov	ebx,_amvalue
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amvalue]
	mov	[ebx],esi
	mov	ebx,_amvalue
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amvalue]
	mov	ebx,[ebx]
	add	[ebp-12],ebx
	add	[ebp-20],1
_58
	cmp	[ebp-20],2
	jle	_59
_25
	add	[ebp-16],1
_56
	cmp	[ebp-16],2
	jle	_57
_24
	sub	esp,4
	mov	eax,[ebp-12]
	mov	ecx,[_vfactnorm]
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-12],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-8],1
_54
	cmp	[ebp-8],511
	jle	_55
_23
	add	[ebp-4],1
_52
	cmp	[ebp-4],511
	jle	_53
_22
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aiimage	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_amtransform	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_amvalue	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vfactnorm	.dd	0
_26	.db	"essai2.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

