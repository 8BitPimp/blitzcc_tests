
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vunit_x],10
	mov	[_vunit_y],7
	mov	[_vrange],6
_12
	call	_fdrawtiles
	sub	esp,20
	mov	ebx,[_vtarget_y]
	mov	[esp+12],ebx
	mov	esi,[_vrange]
	mov	[esp+16],esi
	mov	esi,[_vtarget_x]
	mov	[esp+8],esi
	mov	ebx,[_vunit_y]
	mov	[esp+4],ebx
	mov	eax,[_vunit_x]
	mov	[esp],eax
	call	_ffunc_checkrange
	mov	[ebp-4],eax
	cmp	[ebp-4],1
	jnz	_13
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	jmp	_15
_13
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
_15
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_12
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
_ffunc_checkrange
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
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+24]
	shl	ebx,byte 5
	mov	esi,[ebp+36]
	shl	esi,byte 5
	sub	ebx,esi
	add	ebx,16
	mov	[esp+4],ebx
	mov	esi,[ebp+36]
	shl	esi,byte 6
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	edi,[ebp+36]
	shl	edi,byte 6
	mov	[esp+8],edi
	mov	eax,[ebp+20]
	shl	eax,byte 5
	mov	esi,[ebp+36]
	shl	esi,byte 5
	sub	eax,esi
	add	eax,16
	mov	[esp],eax
	call	_foval
	mov	[ebp-4],0
	jmp	_19
_20
	sub	esp,4
	mov	[esp],100
	call	_fdelay
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	add	ebx,16
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	shl	ebx,byte 5
	add	ebx,16
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	add	ebx,16
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	shl	esi,byte 5
	add	esi,16
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	eax,[ebp-8]
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	sub	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	ebx,[ebp+24]
	shl	ebx,byte 5
	sub	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_ttiledata
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_21
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	sub	ebx,[ebp-8]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 5
	add	esi,[ebp-8]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+24]
	shl	esi,byte 5
	sub	esi,[ebp-12]
	cmp	ebx,esi
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+24]
	shl	esi,byte 5
	add	esi,[ebp-12]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_22
	sub	esp,12
	mov	[esp+4],220
	mov	[esp+8],0
	mov	[esp],220
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],0
	mov	[esp+8],32
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_frect
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp+28]
	shl	ebx,byte 5
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+32]
	shl	esi,byte 5
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_23
	mov	eax,1
	jmp	_4_leave
_23
_22
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_21
_6
	add	[ebp-4],5
_19
	cmp	[ebp-4],90
	jle	_20
_5
	mov	eax,0
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
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
	ret	word 20
	.align	16
_fdrawtiles
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
	call	_fcls
	mov	[ebp-4],0
	mov	[ebp-8],0
	sub	esp,12
	mov	[esp+4],111
	mov	[esp+8],111
	mov	[esp],111
	call	_fcolor
	mov	[ebp-12],1
	jmp	_24
_25
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],0
	mov	[esp+8],32
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	add	[ebp-4],32
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_ttiledata
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-4]
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	cmp	[ebp-4],640
	jl	_26
	mov	[ebp-4],0
	add	[ebp-8],32
_26
	add	[ebp-12],1
_24
	cmp	[ebp-12],300
	jle	_25
_8
	sub	esp,12
	mov	[esp+4],220
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	ebx,[_vunit_y]
	shl	ebx,byte 5
	mov	[esp+4],ebx
	mov	eax,[_vunit_x]
	shl	eax,byte 5
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	[esp],19
	mov	[esp+4],1
	call	_frand
	mov	[_vtarget_x],eax
	sub	esp,8
	mov	[esp],14
	mov	[esp+4],1
	call	_frand
	mov	[_vtarget_y],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	ebx,[_vtarget_y]
	shl	ebx,byte 5
	mov	[esp+4],ebx
	mov	eax,[_vtarget_x]
	shl	eax,byte 5
	mov	[esp],eax
	call	_frect
	mov	eax,0
	jmp	_7_leave
_7_leave
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
_ffunc_realcheckrange
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
	jmp	_27
_28
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	add	ebx,16
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	shl	ebx,byte 5
	add	ebx,16
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	sub	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	ebx,[ebp+24]
	shl	ebx,byte 5
	sub	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_ttiledata
	call	__bbObjEachFirst
	and	eax,eax
	jz	_11
_29
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp+20]
	shl	ebx,byte 5
	sub	ebx,[ebp-8]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 5
	add	esi,[ebp-8]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+24]
	shl	esi,byte 5
	sub	esi,[ebp-12]
	cmp	ebx,esi
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+24]
	shl	esi,byte 5
	add	esi,[ebp-12]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_30
	mov	eax,[ebp-16]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	ebx,[ebp+28]
	shl	ebx,byte 5
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+32]
	shl	esi,byte 5
	cmp	ebx,esi
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_31
	mov	eax,1
	jmp	_9_leave
_31
_30
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_29
_11
	add	[ebp-4],5
_27
	cmp	[ebp-4],90
	jle	_28
_10
	mov	eax,0
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	ret	word 20
	.align	4
_vunit_x	.dd	0
	.align	4
_vunit_y	.dd	0
	.align	4
_vtarget_x	.dd	0
	.align	4
_vtarget_y	.dd	0
	.align	4
_vrange	.dd	0
_14	.db	"Target is in range!! hooah!",0
_16	.db	"Target not in range",0
	.align	4
_ttiledata	.dd	5
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
_18	.dd	0
	.dd	_18
	.dd	_18
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

