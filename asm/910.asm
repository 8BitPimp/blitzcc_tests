
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
	sub	esp,4
	mov	eax,_asin2
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,360
	mov	esi,_asin2
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asin2
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acos2
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,360
	mov	esi,_acos2
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acos2
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_4
_5
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asin2]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acos2]
	mov	[ebx],eax
	add	[ebp-4],1
_4
	cmp	[ebp-4],359
	jle	_5
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
_asin2	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_acos2	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

