
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	[ebp-4],33
	jmp	_5
_4
	call	_fmillisecs
	mov	[ebp-8],eax
	call	_fmillisecs
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	sub	ebx,[ebp-8]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-16]
	mov	[ebp-20],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdelay
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_4
_3
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

