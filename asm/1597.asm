
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreateplanettexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp+20],eax
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
	call	_fcls
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],80
	mov	[esp+4],160
	call	_frand
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],80
	mov	[esp+4],160
	call	_frand
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],80
	mov	[esp+4],160
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],1
	call	_frand
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_14
_15
	mov	[ebp-24],32
	jmp	_16
_17
	cmp	[ebp-16],0
	jnz	_18
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	shl	eax,byte 2
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	imul	esi,3
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	imul	eax,3
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,32
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	shl	eax,byte 2
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,64
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,96
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	imul	esi,3
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	imul	eax,5
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,128
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	imul	eax,3
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,160
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	imul	esi,3
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,192
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	imul	eax,3
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,224
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	imul	esi,3
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	imul	eax,5
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,224
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	imul	eax,3
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,256
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
_18
	cmp	[ebp-16],1
	jnz	_19
	sub	esp,12
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	sub	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,32
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,64
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	sub	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,96
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,128
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	sub	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,160
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,192
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	sub	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,224
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,224
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	add	eax,[ebp-20]
	sub	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,256
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
_19
	cmp	[ebp-16],2
	jnz	_20
	mov	[ebp-28],1
	jmp	_21
_22
	sub	esp,8
	mov	[esp],256
	mov	[esp+4],1
	call	_frand
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],256
	mov	[esp+4],1
	call	_frand
	mov	[ebp-36],eax
	sub	esp,12
	mov	eax,[ebp-36]
	mov	ecx,10
	cdq
	idiv	ecx
	add	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-64],eax
	mov	ebx,[ebp-36]
	mov	ecx,10
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-64]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	call	_fcolor
	sub	esp,24
	mov	[esp],5
	mov	[esp+4],30
	call	_frand
	add	eax,[ebp-32]
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,24
	mov	[esp],5
	mov	[esp+4],25
	call	_frand
	add	eax,[ebp-32]
	mov	[esp+8],eax
	mov	ebx,[ebp-36]
	add	ebx,1
	mov	[esp+12],ebx
	mov	ebx,[ebp-36]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fline
	add	[ebp-28],1
_21
	cmp	[ebp-28],300
	jle	_22
_6
_20
	cmp	[ebp-16],3
	jnz	_23
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	add	eax,[ebp-20]
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,32
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,32
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,64
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,64
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,96
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,96
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,128
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,128
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,160
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,160
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,192
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,192
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[ebp-12]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	ebx,[ebp-20]
	add	ebx,224
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],256
	mov	ebx,[ebp-20]
	add	ebx,224
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
_23
	cmp	[ebp-16],5
	jnz	_24
	mov	[ebp-28],1
	jmp	_25
_26
	sub	esp,20
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	add	eax,[ebp-8]
	mov	[esp+4],eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-64]
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-64]
	add	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,16
	mov	[esp],255
	mov	[esp+4],1
	call	_frand
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	[esp],255
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-28],1
_25
	cmp	[ebp-28],500
	jle	_26
_7
_24
	add	[ebp-24],-1
_16
	cmp	[ebp-24],0
	jge	_17
_5
	add	[ebp-20],1
_14
	cmp	[ebp-20],32
	jle	_15
_4
	cmp	[ebp-16],3
	jnz	_27
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],192
	call	_frand
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],192
	call	_frand
	mov	[ebp-44],eax
	mov	[ebp-20],1
	jmp	_28
_29
	sub	esp,8
	mov	[esp],-32
	mov	[esp+4],32
	call	_frand
	add	eax,[ebp-40]
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],-32
	mov	[esp+4],32
	call	_frand
	add	eax,[ebp-44]
	mov	[ebp-52],eax
	cmp	[ebp-48],1
	jge	_30
	mov	[ebp-48],1
_30
	cmp	[ebp-48],254
	jle	_31
	mov	[ebp-48],254
_31
	cmp	[ebp-52],1
	jge	_32
	mov	[ebp-52],1
_32
	cmp	[ebp-52],254
	jle	_33
	mov	[ebp-52],254
_33
	sub	esp,12
	mov	ebx,[ebp-8]
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
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1060320051
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	shl	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	mov	[esp+12],esi
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-48]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-52]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-44]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-40]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-48]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-52]
	mov	[ebp-44],ebx
	add	[ebp-20],1
_28
	cmp	[ebp-20],5000
	jle	_29
_8
_27
	cmp	[ebp-16],4
	jnz	_34
	sub	esp,12
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],255
	mov	[esp+16],1
	mov	[esp+8],255
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-20],1
	jmp	_35
_36
	sub	esp,8
	mov	[esp],-64
	mov	[esp+4],255
	call	_frand
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],-64
	mov	[esp+4],255
	call	_frand
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	mov	[ebp-40],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	add	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	add	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	add	eax,[ebp-40]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	sar	ebx,byte 1
	add	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	sar	eax,byte 1
	add	eax,[ebp-48]
	mov	[esp],eax
	call	_foval
	sub	esp,12
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	sub	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	sub	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	sar	ebx,byte 1
	add	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	sar	eax,byte 1
	add	eax,[ebp-48]
	mov	[esp],eax
	call	_foval
	add	[ebp-20],1
_35
	cmp	[ebp-20],20000
	jle	_36
_9
_34
	cmp	[ebp-16],6
	jnz	_37
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],255
	mov	[esp+16],1
	mov	[esp+8],255
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	mov	[ebp-20],1
	jmp	_38
_39
	sub	esp,8
	mov	[esp],-64
	mov	[esp+4],255
	call	_frand
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],-64
	mov	[esp+4],255
	call	_frand
	mov	[ebp-52],eax
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],1
	call	_frand
	mov	[ebp-40],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	add	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	add	eax,[ebp-40]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	sar	ebx,byte 1
	add	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	sar	eax,byte 1
	add	eax,[ebp-48]
	mov	[esp],eax
	call	_foval
	sub	esp,12
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	sub	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-40]
	sub	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp-40]
	sar	ebx,byte 1
	add	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	sar	eax,byte 1
	add	eax,[ebp-48]
	mov	[esp],eax
	call	_foval
	add	[ebp-20],1
_38
	cmp	[ebp-20],500
	jle	_39
_10
_37
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,3
	setl	al
	movzx	eax,al
	mov	[ebp-64],eax
	cmp	[ebp-16],2
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	ebx,eax
	cmp	[ebp-16],3
	setl	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_40
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],192
	call	_frand
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],192
	call	_frand
	mov	[ebp-44],eax
	mov	[ebp-20],20
	jmp	_41
_42
	sub	esp,12
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	shl	eax,byte 1
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-20]
	shl	esi,byte 1
	mov	[esp+8],esi
	mov	ebx,[ebp-44]
	sub	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	sub	eax,[ebp-20]
	mov	[esp],eax
	call	_foval
	add	[ebp-20],-1
_41
	cmp	[ebp-20],0
	jge	_42
_11
_40
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	cmp	eax,7
	setg	al
	movzx	eax,al
	mov	[ebp-64],eax
	cmp	[ebp-16],2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	ebx,eax
	and	ebx,ebx
	jz	_43
	mov	[ebp-20],1
	jmp	_44
_45
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],192
	call	_frand
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],192
	call	_frand
	mov	[ebp-44],eax
	mov	[ebp-24],1
	jmp	_46
_47
	sub	esp,8
	mov	[esp],-30
	mov	[esp+4],30
	call	_frand
	add	eax,[ebp-40]
	mov	[ebp-56],eax
	sub	esp,8
	mov	[esp],-30
	mov	[esp+4],30
	call	_frand
	add	eax,[ebp-44]
	mov	[ebp-60],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	esi,[ebp-36]
	sub	esi,[ebp-60]
	sar	esi,byte 3
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	sub	eax,[ebp-56]
	sar	eax,byte 3
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,28
	mov	[esp],16
	mov	[esp+4],1
	call	_frand
	mov	[esp+8],eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],1
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	eax,[ebp-56]
	mov	[esp],eax
	call	_foval
	add	[ebp-24],1
_46
	cmp	[ebp-24],50
	jle	_47
_13
	add	[ebp-20],1
_44
	cmp	[ebp-20],10
	jle	_45
_12
_43
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

