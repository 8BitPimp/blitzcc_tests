
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
	mov	[ebp-32],ebx
	mov	[ebp-4],9
	mov	[ebp-8],1092616192
	mov	[ebp-12],1086324736
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],700
	mov	[esp],1024
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_avert
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_avert
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,_avert
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avert
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],-1022623744
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1176256512
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftileablerandomdiamondsquareterrain
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fcopymesh
	mov	[ebp-24],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1036779520
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fcopymesh
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],1110704128
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1036779520
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fcopymesh
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],1110704128
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_14
_13
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_13
_3
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
_ftileablerandomdiamondsquareterrain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,132
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
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	mov	[ebp-128],ebx
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	sub	eax,1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flog2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],5
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreategrid
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-20],eax
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-24],1
	jmp	_15
_16
	mov	eax,[ebp+20]
	sub	eax,1
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	mov	[ebp-28],eax
	mov	[ebp-32],1
	jmp	_17
_18
	mov	[ebp-36],1
	jmp	_19
_20
	mov	ebx,[ebp-36]
	sub	ebx,1
	imul	ebx,[ebp-28]
	add	ebx,0
	mov	esi,[ebp-32]
	sub	esi,1
	imul	esi,[ebp-28]
	imul	esi,[ebp+20]
	add	ebx,esi
	mov	[ebp-40],ebx
	mov	ebx,[ebp-40]
	add	ebx,[ebp-28]
	mov	[ebp-44],ebx
	mov	ebx,[ebp-28]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-40]
	mov	[ebp-48],ebx
	mov	ebx,[ebp-48]
	add	ebx,[ebp-28]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-40]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	imul	esi,[ebp+20]
	add	ebx,esi
	mov	[ebp-56],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	ebx,1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
	mov	ebx,[ebp-56]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-64],ebx
	mov	ebx,[ebp-64]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	imul	esi,[ebp+20]
	sub	ebx,esi
	mov	[ebp-68],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-68]
	mov	[ebp-72],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-64]
	mov	[ebp-76],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-72]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
	mov	eax,[ebp-64]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	[ebp-132],eax
	mov	ebx,[ebp-64]
	mov	ecx,[ebp+20]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	mov	ebx,[ebp-64]
	add	ebx,[ebp+20]
	sub	ebx,1
	mov	[ebp-80],ebx
	sub	esp,28
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
_21
	mov	ebx,[ebp-56]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	imul	esi,[ebp+20]
	sub	ebx,esi
	mov	[ebp-84],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-84]
	mov	[ebp-88],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	imul	ebx,[ebp+20]
	add	ebx,[ebp-88]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-92]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-96],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-92]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-96]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-84]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
	mov	ebx,[ebp+20]
	cmp	[ebp-84],ebx
	jge	_22
	mov	ebx,[ebp+20]
	sub	ebx,1
	imul	ebx,[ebp+20]
	add	ebx,[ebp-84]
	mov	[ebp-80],ebx
	sub	esp,28
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
_22
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-56]
	mov	[ebp-100],ebx
	mov	ebx,[ebp-100]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-104],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	imul	ebx,[ebp+20]
	add	ebx,[ebp-104]
	mov	[ebp-108],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-108]
	mov	[ebp-112],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-104]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-108]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-100]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-100]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-100]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
	mov	eax,[ebp-100]
	sub	eax,[ebp+20]
	add	eax,1
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fdivp	st(1)
	mov	[ebp-132],eax
	mov	ebx,[ebp-100]
	sub	ebx,[ebp+20]
	add	ebx,1
	mov	ecx,[ebp+20]
	sub	ecx,1
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	mov	ebx,[ebp-100]
	sub	ebx,[ebp+20]
	add	ebx,1
	mov	[ebp-80],ebx
	sub	esp,28
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-100]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
_23
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	imul	ebx,[ebp+20]
	add	ebx,[ebp-56]
	mov	[ebp-116],ebx
	mov	ebx,[ebp-116]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	imul	esi,[ebp+20]
	sub	ebx,esi
	mov	[ebp-120],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-120]
	mov	[ebp-124],ebx
	mov	ebx,[ebp-28]
	sar	ebx,byte 1
	add	ebx,[ebp-116]
	mov	[ebp-128],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-104]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-108]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexy
	mov	ebx,eax
	mov	eax,[ebp-132]
	faddp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,28
	mov	eax,[ebp-60]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-116]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-116]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-116]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
	mov	ebx,[ebp+20]
	sub	ebx,1
	imul	ebx,[ebp+20]
	cmp	[ebp-116],ebx
	jle	_24
	mov	ebx,[ebp-116]
	mov	esi,[ebp+20]
	sub	esi,1
	imul	esi,[ebp+20]
	sub	ebx,esi
	mov	[ebp-80],ebx
	sub	esp,28
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-116]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-132],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-132]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
_24
	add	[ebp-36],1
_19
	mov	eax,[ebp-4]
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	cmp	[ebp-36],eax
	jle	_20
_7
	add	[ebp-32],1
_17
	mov	eax,[ebp-4]
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	cmp	[ebp-32],eax
	jle	_18
_6
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	[ebp-4],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+24],ebx
	add	[ebp-24],1
_15
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-24],ebx
	jle	_16
_5
	mov	eax,[ebp-16]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcreategrid
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
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_25
_26
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	imul	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	[esi],ebx
	add	[ebp-12],1
_25
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_26
_9
	mov	[ebp-20],1
	jmp	_27
_28
	mov	[ebp-12],0
	jmp	_29
_30
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp+32]
	neg	ebx
	imul	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	imul	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	[esi],ebx
	cmp	[ebp-12],0
	jle	_31
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_avert
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avert]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-12]
	sub	edi,1
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avert]
	mov	edi,[edi]
	mov	[esp+12],edi
	mov	esi,[ebp-20]
	sub	esi,1
	mov	edi,_avert
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
_31
	add	[ebp-12],1
_29
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_30
_11
	add	[ebp-20],1
_27
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_28
_10
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
	ret	word 16
	.align	16
_flog2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_flog
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],1073741824
	mov	eax,ebx
	call	_flog
	mov	ebx,eax
	mov	eax,[ebp-4]
	fdivp	st(1)
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
	ret	word 4
	.align	4
_avert	.dd	0
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

