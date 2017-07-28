
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
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,39
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,29
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],3
	call	_fmakepoint
_14
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_15
	call	_fend
_15
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,39
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,29
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tpoint
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_16
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmapcircle
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,9
	jle	_17
	mov	ebx,-1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_17
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	ebx,2
	jge	_18
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_18
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_16
_4
	call	_fdrawmap
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-8],0
	jmp	_19
_20
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_21
	call	_fend
_21
	add	[ebp-8],1
_19
	cmp	[ebp-8],100
	jle	_20
_5
	jmp	_14
_3
	call	_fend
	ret
_2_leave
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
_fmapcircle
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
	mov	ebx,[ebp+28]
	neg	ebx
	mov	[ebp-4],ebx
	jmp	_24
_25
	mov	ebx,[ebp+28]
	neg	ebx
	mov	[ebp-8],ebx
	jmp	_26
_27
	mov	eax,[ebp-4]
	imul	eax,[ebp-4]
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-8]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1061997773
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+28]
	imul	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_28
	mov	ebx,[ebp+20]
	add	ebx,[ebp-8]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	add	ebx,[ebp-4]
	mov	[ebp-16],ebx
	cmp	[ebp-12],0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-12],39
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],29
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_29
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_29
_28
	add	[ebp-8],1
_26
	mov	ebx,[ebp+28]
	cmp	[ebp-8],ebx
	jle	_27
_8
	add	[ebp-4],1
_24
	mov	ebx,[ebp+28]
	cmp	[ebp-4],ebx
	jle	_25
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fmakepoint
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
	jmp	_30
_31
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tpoint
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],39
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],29
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1
	call	_frand
	cmp	eax,1
	jnz	_32
	mov	ebx,1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	jmp	_33
_32
	mov	ebx,-1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_33
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],9
	call	_frand
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	add	[ebp-4],1
_30
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_31
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	ret	word 4
	.align	16
_fdrawmap
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
	jmp	_34
_35
	mov	[ebp-8],0
	jmp	_36
_37
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_38
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_39
_38
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_40
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_40
_39
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_36
	cmp	[ebp-8],39
	jle	_37
_13
	add	[ebp-4],1
_34
	cmp	[ebp-4],29
	jle	_35
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_tpoint	.dd	5
_22	.dd	0
	.dd	_22
	.dd	_22
	.dd	0
	.dd	-1
_23	.dd	0
	.dd	_23
	.dd	_23
	.dd	0
	.dd	-1
	.dd	4
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

