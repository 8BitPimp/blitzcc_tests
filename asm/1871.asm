
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[ebp-4],1065353216
	mov	[ebp-8],1065353216
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],86
	mov	[esp],250
	call	_fcolor
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_10
_9
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],86
	mov	[esp],250
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_12
_11
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],50
	mov	[esp],50
	call	_fcolor
	sub	esp,40
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	mov	[ebp-20],0
	mov	[ebp-24],1
	jmp	_17
_16
	mov	[ebp-20],1
_17
_15
	sub	esp,4
	mov	[esp],20
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_18
	call	_fend
_18
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	[ebp-20],1
	mov	[ebp-24],1
_19
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	mov	[ebp-20],0
	mov	[ebp-24],1
_20
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
_12
	cmp	[ebp-24],0
	jz	_11
_4
	cmp	[ebp-20],1
	jnz	_21
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],86
	mov	[esp],250
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_23
_21
	cmp	[ebp-20],0
	jnz	_24
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],86
	mov	[esp],250
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],255
	mov	[esp],50
	call	_fcolor
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
_24
_23
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],2000
	call	_fdelay
	mov	[ebp-24],0
	mov	[ebp-20],0
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	[ebp-8],1065353216
	mov	[ebp-12],0
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_9
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
_5	.db	"Prime Finder",0
_6	.db	"",0
_7	.db	"PRIME FINDER",0
_8	.db	"What number do you want me to start with? ",0
_13	.db	" = ",0
_14	.db	" / ",0
_22	.db	"PRIME",0
_25	.db	"NOT PRIME",0
_26	.db	" ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

