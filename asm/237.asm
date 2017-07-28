
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_3
	mov	ebx,[ebp-4]
	add	ebx,1000
	mov	[ebp-8],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-12],ebx
	mov	[ebp-16],0
	jmp	_4
_3
	add	[ebp-16],1
_4
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

