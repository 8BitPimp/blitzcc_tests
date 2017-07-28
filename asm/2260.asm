
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[ebp-8],eax
	mov	[ebp-12],5
	mov	[ebp-16],10
	mov	[ebp-20],5
	mov	[ebp-24],0
	mov	[ebp-28],1084227584
	mov	[ebp-32],32
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fentityfx
	sub	esp,4
	mov	eax,[ebp-32]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flog
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],1073741824
	mov	eax,ebx
	call	_flog
	mov	ebx,eax
	mov	eax,[ebp-76]
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-44],eax
	mov	[ebp-48],0
	sub	esp,4
	mov	eax,_axpos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_axpos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axpos
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aypos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_aypos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aypos
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_azpos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_azpos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_azpos
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adn
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_adn
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adn
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,20
	mov	ebx,[ebp-32]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-32]
	sar	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],-1041235968
	mov	[esp+16],0
	mov	[esp+8],1097859072
	mov	[esp+4],1098907648
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,4
	mov	eax,_avert
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-32]
	mov	esi,_avert
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	mov	esi,_avert
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avert
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apoly
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-32]
	shl	ebx,byte 1
	mov	esi,_apoly
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 1
	mov	esi,_apoly
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apoly
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-52],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fscaleentity
	mov	[ebp-56],0
	jmp	_13
_14
	mov	[ebp-60],0
	jmp	_15
_16
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-56]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	[ebx],eax
	add	[ebp-60],1
_15
	mov	ebx,[ebp-32]
	cmp	[ebp-60],ebx
	jle	_16
_4
	add	[ebp-56],1
_13
	mov	ebx,[ebp-32]
	cmp	[ebp-56],ebx
	jle	_14
_3
	mov	[ebp-56],1
	jmp	_17
_18
	mov	[ebp-60],1
	jmp	_19
_20
	sub	esp,16
	mov	ebx,[ebp-56]
	sub	ebx,1
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-60]
	sub	esi,1
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-60]
	sub	esi,1
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-56]
	sub	edi,1
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+4],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_faddtriangle
	mov	ebx,_apoly
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_apoly]
	mov	[ebx],eax
	sub	esp,16
	mov	ebx,[ebp-56]
	sub	ebx,1
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-60]
	sub	esi,1
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-60]
	add	edi,[ebp-56]
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+8],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_faddtriangle
	mov	ebx,[ebp-60]
	shl	ebx,byte 1
	mov	esi,_apoly
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-56]
	shl	esi,byte 1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_apoly]
	mov	[esi],eax
	add	[ebp-60],1
_19
	mov	ebx,[ebp-32]
	cmp	[ebp-60],ebx
	jle	_20
_6
	add	[ebp-56],1
_17
	mov	ebx,[ebp-32]
	cmp	[ebp-56],ebx
	jle	_18
_5
	sub	esp,28
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,28
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,28
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,28
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-32]
	add	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-76]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	jmp	_22
_21
	sub	esp,24
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-76]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-76],eax
	mov	ebx,[ebp-44]
	cmp	[ebp-48],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-76]
	and	eax,ebx
	and	eax,eax
	jz	_23
	mov	[ebp-64],1
	jmp	_24
_25
	mov	[ebp-68],1
	jmp	_26
_27
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	add	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	call	__bbFPow
	mov	esi,[ebp-32]
	push	esi
	fild	[esp]
	pop	esi
	fdivrp	st(1)
	mov	edi,[ebp-64]
	sub	edi,1
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	add	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	call	__bbFPow
	mov	esi,[ebp-32]
	push	esi
	fild	[esp]
	pop	esi
	fdivrp	st(1)
	mov	edi,[ebp-68]
	sub	edi,1
	push	edi
	fild	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	[esi],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	[esi],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	[esi],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	[esi],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	mov	esi,[ebp-64]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	[ebx],esi
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	[ebx],esi
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	mov	esi,[ebp-64]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	[ebx],esi
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	mov	esi,[ebp-68]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	[ebx],esi
	sub	esp,8
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-76]
	faddp	st(1)
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-76]
	faddp	st(1)
	mov	[ebp-76],eax
	sub	esp,8
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-76]
	faddp	st(1)
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fhvar
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	edi,0
	shl	edi,byte 2
	add	edi,[_azpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	edi,0
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	mov	[ebp-72],1
	jmp	_28
_29
	mov	ebx,0
	mov	esi,[ebp-72]
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-72]
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	add	[ebp-72],1
_28
	cmp	[ebp-72],4
	jle	_29
_10
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	add	esi,ebx
	cmp	esi,[ebp-32]
	jg	_30
	sub	esp,8
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	add	esi,ebx
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	esi,ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
_30
	sub	esp,8
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,2
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+4],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	faddp	st(1)
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,3
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_adn]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fhvar
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	cmp	esi,[ebp-32]
	jg	_31
	sub	esp,8
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
_31
	sub	esp,8
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,2
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+4],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	faddp	st(1)
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,3
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_adn]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fhvar
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	sub	esi,ebx
	cmp	esi,0
	jl	_32
	sub	esp,8
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	sub	esi,ebx
	mov	ebx,_avert
	add	ebx,12
	mov	ebx,[ebx]
	imul	esi,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
_32
	sub	esp,8
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,2
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+4],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	faddp	st(1)
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,3
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_adn]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fhvar
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	sub	esi,ebx
	cmp	esi,0
	jl	_33
	sub	esp,8
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_axpos]
	mov	ebx,[ebx]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	sub	esi,ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
_33
	sub	esp,8
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_azpos]
	mov	esi,[esi]
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,4
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+4],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexy
	faddp	st(1)
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_adn]
	mov	ebx,[ebx]
	add	ebx,3
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_adn]
	mov	[esi],ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_adn]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	call	_fhvar
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aypos]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	edi,1
	shl	edi,byte 2
	add	edi,[_azpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	edi,1
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	edi,2
	shl	edi,byte 2
	add	edi,[_azpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	edi,2
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	edi,3
	shl	edi,byte 2
	add	edi,[_azpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	edi,3
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_azpos]
	mov	ebx,[ebx]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_axpos]
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aypos]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	edi,4
	shl	edi,byte 2
	add	edi,[_azpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	edi,4
	shl	edi,byte 2
	add	edi,[_axpos]
	mov	edi,[edi]
	push	edi
	fild	[esp]
	pop	edi
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-68],1
_26
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
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
	cmp	[ebp-68],eax
	jle	_27
_9
	add	[ebp-64],1
_24
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
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
	cmp	[ebp-64],eax
	jle	_25
_8
	add	[ebp-48],1
_23
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	[esp],1073741824
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	mov	[ebp-72],0
	jmp	_34
_35
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-72]
	shl	eax,byte 2
	add	eax,[_aypos]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	ebx,20
	imul	ebx,[ebp-72]
	mov	[esp+4],ebx
	mov	[esp],50
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-72]
	shl	eax,byte 2
	add	eax,[_adn]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,20
	imul	ebx,[ebp-72]
	mov	[esp+4],ebx
	mov	[esp],200
	call	_ftext
	add	[ebp-72],1
_34
	cmp	[ebp-72],4
	jle	_35
_11
	sub	esp,4
	mov	[esp],1
	call	_fflip
_22
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_21
_7
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
_fhvar
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
	mov	[esp],1073741824
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_12_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_axpos	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aypos	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_azpos	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adn	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_avert	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_apoly	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

