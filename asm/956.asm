
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
_flimitframerate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[_vframetime],0
	jnz	_5
	mov	eax,1000
	mov	ecx,[ebp+20]
	cdq
	idiv	ecx
	mov	[_vperiod],eax
	call	_fmillisecs
	mov	[_vframetime],eax
_5
	jmp	_7
_6
	sub	esp,4
	mov	[esp],1
	call	_fdelay
_7
	mov	ebx,[_vframetime]
	add	ebx,[_vperiod]
	call	_fmillisecs
	cmp	ebx,eax
	jg	_6
_4
	call	_fmillisecs
	mov	[_vframetime],eax
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vframetime	.dd	0
	.align	4
_vperiod	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

