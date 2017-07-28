
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
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	mov	[ebp-8],0
	mov	ebx,[ebp-4]
	neg	ebx
	mov	[ebp-12],ebx
	jmp	_6
_7
	mov	ebx,[ebp-4]
	neg	ebx
	mov	[ebp-16],ebx
	jmp	_8
_9
	sub	esp,12
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-28],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-28]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_10
	add	[ebp-8],1
_10
	add	[ebp-16],1
_8
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_9
_4
	add	[ebp-12],1
_6
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_7
_3
	sub	esp,8
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fdivrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],10000
	call	_fdelay
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_5	.db	"Enter a value for the radius (higher is more accurate, 2000 is best): ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

