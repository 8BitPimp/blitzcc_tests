
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
_6
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,8
	call	_fgraphicswidth
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fcreatemap
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_6
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreatemap
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
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	[esp],50
	mov	[esp+4],300
	call	_frand
	mov	ebx,[ebp+24]
	sub	ebx,100
	sar	ebx,byte 1
	add	ebx,eax
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	jmp	_7
_8
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,16
	mov	[esp],5
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsin
	mov	ebx,eax
	mov	eax,[ebp-16]
	fmulp	st(1)
	fchs
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],1
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp],esi
	mov	eax,esi
	call	_fsin
	mov	esi,eax
	mov	eax,[ebp-16]
	fmulp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_9
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
_9
	mov	eax,[ebp+24]
	sub	eax,150
	mov	ecx,3
	cdq
	idiv	ecx
	cmp	[ebp-8],eax
	jge	_10
	mov	eax,[ebp+24]
	sub	eax,150
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-8],eax
_10
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-12],1
_7
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_8
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

