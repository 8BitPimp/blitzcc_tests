
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
_fdot
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	mov	ebx,[ebp+40]
	sub	ebx,[ebp+32]
	imul	eax,ebx
	mov	ebx,[ebp+36]
	sub	ebx,[ebp+28]
	mov	esi,[ebp+32]
	sub	esi,[ebp+24]
	imul	ebx,esi
	sub	eax,ebx
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_finsidequad
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	[esp+16],ebx
	mov	esi,[ebp+24]
	mov	[esp+20],esi
	mov	esi,[ebp+40]
	mov	[esp+12],esi
	mov	ebx,[ebp+36]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fdot
	cmp	eax,0
	jle	_5
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	[esp+16],ebx
	mov	esi,[ebp+24]
	mov	[esp+20],esi
	mov	esi,[ebp+48]
	mov	[esp+12],esi
	mov	ebx,[ebp+44]
	mov	[esp+8],ebx
	mov	esi,[ebp+40]
	mov	[esp+4],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fdot
	cmp	eax,0
	jle	_6
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	[esp+16],ebx
	mov	esi,[ebp+24]
	mov	[esp+20],esi
	mov	esi,[ebp+56]
	mov	[esp+12],esi
	mov	ebx,[ebp+52]
	mov	[esp+8],ebx
	mov	esi,[ebp+48]
	mov	[esp+4],esi
	mov	eax,[ebp+44]
	mov	[esp],eax
	call	_fdot
	cmp	eax,0
	jle	_7
	sub	esp,24
	mov	ebx,[ebp+20]
	mov	[esp+16],ebx
	mov	esi,[ebp+24]
	mov	[esp+20],esi
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+56]
	mov	[esp+4],esi
	mov	eax,[ebp+52]
	mov	[esp],eax
	call	_fdot
	cmp	eax,0
	jle	_8
	mov	eax,1
	jmp	_4_leave
_8
_7
_6
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 40
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

