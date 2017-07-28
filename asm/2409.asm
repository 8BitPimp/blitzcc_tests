
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
_fterrainedit
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
	mov	[ebp-16],ebx
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	add	ebx,[ebp+36]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	jmp	_6
_7
	mov	ebx,[ebp+28]
	mov	[ebp-16],ebx
	jmp	_8
_9
	sub	esp,20
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmodifyterrain
	add	[ebp-16],1
_8
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_9
_5
	add	[ebp-12],1
_6
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_7
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

