
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
_fline2
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
	cmp	[ebp+36],0
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp+40],-1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_5
	mov	ebx,[ebp+36]
	mov	[ebp-4],ebx
	jmp	_6
_5
	cmp	[ebp+36],-1
	jnz	_7
	call	_fcolorblue
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fcolorgreen
	mov	ebx,eax
	mov	eax,[ebp-20]
	shl	ebx,byte 8
	or	eax,ebx
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fcolorred
	mov	ebx,eax
	mov	eax,[ebp-20]
	shl	ebx,byte 16
	or	eax,ebx
	mov	[ebp-4],eax
	jmp	_8
_7
	mov	ebx,[ebp+44]
	mov	esi,[ebp+40]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp+36]
	shl	esi,byte 16
	or	ebx,esi
	mov	[ebp-4],ebx
_8
_6
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbFAbs
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_9
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	jmp	_10
_9
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
_10
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+28],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+32],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-16],ebx
	jmp	_11
_12
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fwritepixelfast
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp+24],ebx
	add	[ebp-16],-1
_11
	cmp	[ebp-16],1
	jge	_12
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

