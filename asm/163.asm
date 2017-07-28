
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[ebp-32],ebx
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fgraphicsheight
	mov	[ebp-4],eax
	mov	[ebp-8],0
	mov	[ebp-12],1092406477
	mov	[ebp-16],0
	call	_fcls
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	call	_fcls
	jmp	_9
_8
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-32],esi
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	fmulp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
	pop	esi
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	fmulp	st(1)
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubrp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	mov	ebx,[ebp-4]
	cmp	[ebp-28],ebx
	jl	_8
_3
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fflushkeys
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_4	.db	"Basic Projectile Motion Example",0
_5	.db	"",0
_6	.db	"Enter Velocity/Power:",0
_7	.db	"Enter Angle:",0
_10	.db	"Press any key to exit...",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
