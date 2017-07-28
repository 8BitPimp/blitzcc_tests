
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
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],700
	mov	[esp],500
	call	_fgraphics
	mov	[ebp-4],1
	jmp	_8
_9
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fprime
	cmp	eax,1
	jnz	_10
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_11
	call	_fend
_11
	add	[ebp-4],1
_8
	cmp	[ebp-4],100000
	jle	_9
_3
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fprime
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],2
	jmp	_12
_13
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	__bbMod
	cmp	eax,0
	jnz	_14
	mov	eax,0
	jmp	_4_leave
_14
	add	[ebp-4],1
_12
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	cmp	[ebp-4],eax
	jle	_13
_5
	cmp	[ebp+20],2
	jl	_15
	mov	eax,1
	jmp	_4_leave
	jmp	_16
_15
	mov	eax,0
	jmp	_4_leave
_16
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fprime2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-8],1
	jmp	_17
_18
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	add	[ebp-4],1
_19
	add	[ebp-8],1
_17
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_18
_7
	cmp	[ebp-4],2
	jnz	_20
	mov	eax,1
	jmp	_6_leave
	jmp	_21
_20
	mov	eax,0
	jmp	_6_leave
_21
	mov	eax,0
	jmp	_6_leave
_6_leave
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

