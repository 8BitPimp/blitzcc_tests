
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_finit_particles
	jmp	_15
_14
	call	_fcls
	call	_fdraw_particles
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	eax,_tparticle
	mov	[esp],eax
	call	__bbObjFirst
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tsub_particle
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	__bbObjCompare
	mov	ebx,eax
	mov	eax,[ebp-8]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_16
	call	_finit_particles
	jmp	_17
_16
	call	_fupdate_particles
_17
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_14
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
_finit_particles
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[ebp-4],0
	mov	[ebp-8],1060655596
	call	_fgraphicswidth
	shr	eax,byte 1
	mov	[ebp-12],eax
	call	_fgraphicsheight
	shr	eax,byte 1
	mov	[ebp-16],eax
_22
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_tparticle
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1045220557
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1112014848
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],esi
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],esi
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	jmp	_24
_23
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
	mov	[ebp-32],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
_24
	sub	esp,4
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFSgn
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-48]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFSgn
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbFSgn
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jnz	_23
_6
	mov	ebx,1132396544
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,32
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_22
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdate_particles
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tsub_particle
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_25
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_26
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	jmp	_27
_26
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
_27
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_25
_8
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tparticle
	call	__bbObjEachFirst
	and	eax,eax
	jz	_9
_28
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_29
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,28
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	jmp	_30
_29
	mov	[ebp-12],0
	mov	[ebp-16],1093926912
	sub	esp,8
	mov	[esp],50
	mov	[esp+4],255
	call	_frand
	mov	[ebp-20],eax
	mov	[ebp-24],0
	sub	esp,8
	mov	[esp],50
	mov	[esp+4],255
	call	_frand
	mov	[ebp-28],eax
_31
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_tsub_particle
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1082130432
	call	_frnd
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcos
	mov	ebx,eax
	mov	eax,[ebp-36]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1082130432
	call	_frnd
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-36]
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,20
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	mov	esi,[ebp-32]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_31
_10
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
_30
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_28
_9
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdraw_particles
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tparticle
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_32
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_32
_12
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_tsub_particle
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_33
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_33
_13
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	.align	4
_tparticle	.dd	5
_18	.dd	0
	.dd	_18
	.dd	_18
	.dd	0
	.dd	-1
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
	.dd	9
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.align	4
_tsub_particle	.dd	5
_20	.dd	0
	.dd	_20
	.dd	_20
	.dd	0
	.dd	-1
_21	.dd	0
	.dd	_21
	.dd	_21
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

