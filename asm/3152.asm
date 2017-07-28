
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
	mov	[_vmaxnums],10
	mov	ebx,[_vmaxnums]
	mov	[_vnums],ebx
	sub	esp,4
	mov	eax,_asx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnums]
	mov	esi,_asx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnums]
	mov	esi,_asy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnums]
	mov	esi,_asa
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asa
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_9
_10
	sub	esp,8
	call	_fgraphicswidth
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	[ebx],eax
	sub	esp,8
	call	_fgraphicsheight
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	[ebx],eax
	add	[ebp-4],1
_9
	mov	ebx,[_vnums]
	cmp	[ebp-4],ebx
	jle	_10
_3
	sub	esp,4
	mov	[esp],60
	call	_fcreatetimer
	mov	[ebp-8],eax
	jmp	_12
_11
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	mov	[ebp-32],eax
	cmp	[_vnums],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_13
	sub	[_vnums],1
_13
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[ebp-32],eax
	mov	ebx,[_vmaxnums]
	cmp	[_vnums],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_14
	add	[_vnums],1
	sub	esp,8
	call	_fgraphicswidth
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[_vnums]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	[ebx],eax
	sub	esp,8
	call	_fgraphicsheight
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[_vnums]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	[ebx],eax
_14
	mov	[ebp-4],0
	jmp	_15
_16
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	call	_fmousey
	mov	[esp+4],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgetangle
	mov	ebx,eax
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asa]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	[ebp-20],0
	mov	[ebp-24],0
	jmp	_18
_17
	sub	[ebp-16],1
	add	[ebp-20],1
	sub	esp,32
	mov	[esp+24],4
	mov	[esp+28],4
	mov	esi,[ebp-12]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	[esp+12],4
	mov	[esp+8],4
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_19
	mov	[ebp-24],1
_19
	cmp	[ebp-16],-180
	jg	_20
	mov	[ebp-16],181
_20
_18
	cmp	[ebp-24],0
	jz	_17
_6
	mov	[ebp-24],0
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asa]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	[ebp-28],0
	jmp	_22
_21
	add	[ebp-16],1
	add	[ebp-28],1
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_23
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
_23
	sub	esp,32
	mov	[esp+24],4
	mov	[esp+28],4
	mov	esi,[ebp-12]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	[esp+12],4
	mov	[esp+8],4
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_24
	mov	[ebp-24],1
_24
	cmp	[ebp-16],180
	jl	_25
	mov	[ebp-16],-181
_25
_22
	cmp	[ebp-24],0
	jz	_21
_7
	mov	ebx,[ebp-28]
	cmp	[ebp-20],ebx
	jle	_26
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asa]
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asa]
	mov	[esi],ebx
	jmp	_27
_26
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asa]
	mov	ebx,[ebx]
	add	ebx,3
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asa]
	mov	[esi],ebx
_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asa]
	mov	ebx,[ebx]
	cmp	ebx,180
	jle	_28
	mov	ebx,-180
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asa]
	mov	[esi],ebx
_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asa]
	mov	ebx,[ebx]
	cmp	ebx,-180
	jge	_29
	mov	ebx,180
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asa]
	mov	[esi],ebx
_29
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_asa]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asx]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_asa]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asy]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],6
	mov	[esp+16],1
	mov	[esp+8],6
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_asx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	add	[ebp-4],1
_15
	mov	ebx,[_vnums]
	cmp	[ebp-4],ebx
	jle	_16
_5
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_11
_4
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
_fgetangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
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
	.align	4
_vmaxnums	.dd	0
	.align	4
_vnums	.dd	0
	.align	4
_asx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_asa	.dd	0
	.dd	1
	.dd	1
	.dd	0
_30	.db	"Left mouse button to add (<max) missile, Right mouse button to remove missile.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

