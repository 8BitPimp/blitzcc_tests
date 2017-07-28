
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
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	call	_fgraphicswidth
	mov	[_vmaxx],eax
	call	_fgraphicsheight
	mov	[_vmaxy],eax
	mov	[_vpeepsize],10
	mov	[_vmaxpeeps],30
	mov	[_vnumpeeps],0
	mov	[_vtargets],3
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],100
	mov	[esp],0
	call	_fclscolor
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[ebp-4],eax
	mov	[ebp-8],0
	call	_fmaketargets
	call	_fmakepeople
	jmp	_19
_18
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vnumpeeps]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],20
	call	_ftext
	cmp	[ebp-8],0
	jnz	_21
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],450
	mov	[esp],300
	call	_ftext
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_23
	mov	[ebp-8],1
_23
_21
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_24
	call	_fdopeople
_24
	call	_fdrawtargets
	call	_fdrawpeople
	sub	esp,4
	mov	[esp],1
	call	_fflip
	cmp	[_vnumpeeps],0
	jnz	_25
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_ttarget
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_26
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_26
_4
	call	_fmaketargets
	call	_fmakepeople
_25
_19
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_18
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
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
	ret	word 0
	.align	16
_fmakepeople
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
	sub	esp,12
	mov	ebx,[_vpeepsize]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vpeepsize]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vpeepsize]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vpeepsize]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vpeepsize]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vpeepsize]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	mov	[ebp-8],0
	jmp	_31
_32
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_tperson
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[_vmaxx]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[_vmaxy]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcopyimage
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	add	[_vnumpeeps],1
	sub	esp,4
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmidhandle
	add	[ebp-8],1
_31
	mov	ebx,[_vmaxpeeps]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_32
_6
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeimage
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
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
	ret	word 0
	.align	16
_fmaketargets
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
	jmp	_33
_34
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_ttarget
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[_vmaxx]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[_vmaxy]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	add	[ebp-4],1
_33
	mov	ebx,[_vtargets]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_34
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
_fchoosetarget
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
	mov	[ebp-4],999999
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_ttarget
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_35
	sub	esp,12
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-16]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jge	_36
	mov	ebx,[ebp-12]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_36
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_35
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 4
	.align	16
_fdopeople
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
	mov	[esp+4],_tperson
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_37
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fchoosetarget
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_38
	mov	ebx,-1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
_38
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_39
	mov	ebx,-1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
_39
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_40
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
_40
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_41
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
_41
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tperson
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_42
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jz	_43
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-28]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-28]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-28]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	ebx,[_vpeepsize]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	jge	_44
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_45
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
_45
_44
_43
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_42
_13
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_46
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	sub	[_vnumpeeps],1
_46
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_37
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawtargets
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
	mov	[esp+4],_ttarget
	call	__bbObjEachFirst
	and	eax,eax
	jz	_15
_47
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	sub	eax,10
	mov	[esp],eax
	call	_foval
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],20
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	sub	eax,10
	mov	[esp],eax
	call	_foval
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_47
_15
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawpeople
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tperson
	call	__bbObjEachFirst
	and	eax,eax
	jz	_17
_48
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_48
_17
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmaxx	.dd	0
	.align	4
_vmaxy	.dd	0
	.align	4
_vpeepsize	.dd	0
	.align	4
_vmaxpeeps	.dd	0
	.align	4
_vnumpeeps	.dd	0
	.align	4
_vtargets	.dd	0
_20	.db	"Left: ",0
_22	.db	"press space",0
	.align	4
_tperson	.dd	5
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
_28	.dd	0
	.dd	_28
	.dd	_28
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_ttarget	.dd	5
_29	.dd	0
	.dd	_29
	.dd	_29
	.dd	0
	.dd	-1
_30	.dd	0
	.dd	_30
	.dd	_30
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
