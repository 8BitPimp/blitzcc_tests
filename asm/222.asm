
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
	sub	esp,4
	mov	eax,_awkey
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_awkey
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awkey
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,42
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_awkey]
	mov	[esi],ebx
	mov	ebx,54
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_awkey]
	mov	[esi],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],1117126656
	jmp	_6
_5
	call	_fcls
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetwagglespeed
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],40
	mov	[esp+8],40
	mov	[esp],40
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],201
	mov	[esp+4],100
	mov	[esp],100
	call	_frect
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],40
	mov	[esp],20
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],14
	mov	[esp+16],1
	mov	[esp+4],101
	mov	[esp],101
	call	_frect
	sub	esp,32
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
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
	mov	[esp+4],128
	mov	[esp],125
	call	_ftext
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_8
	cmp	[ebp-8],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
_8
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],100
	call	_fcolor
	sub	esp,40
	mov	ebx,[ebp-8]
	shl	ebx,byte 3
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],8
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],160
	mov	[esp],100
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],180
	mov	[esp],140
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_5
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
_fgetwagglespeed
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+24],1
	jnz	_12
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	mov	ebx,[_vwaggletoggle]
	shl	ebx,byte 1
	sub	ebx,1
	cmp	eax,ebx
	jnz	_13
	cmp	[_vwaggletoggle],0
	setz	al
	movzx	eax,al
	mov	[_vwaggletoggle],eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1085695590
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
_13
	jmp	_14
_12
	sub	esp,4
	mov	eax,[_vwaggletoggle]
	shl	eax,byte 2
	add	eax,[_awkey]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_15
	cmp	[_vwaggletoggle],0
	setz	al
	movzx	eax,al
	mov	[_vwaggletoggle],eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1090309325
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
_15
_14
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1063507722
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1063507722
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
_16
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	mov	[ebp+20],1120403456
_17
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_awkey	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vwaggletoggle	.dd	0
_7	.db	"Speed:",0
_9	.db	"Input Method: ",0
_10	.db	"KEYBOARDJOYSTICK",0
_11	.db	"(Press SPACEBAR to toggle)",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

