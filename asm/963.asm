
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
_fweighted_random
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,4
	mov	eax,_4
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-4],eax
	mov	ebx,10
	mov	esi,0
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,4
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,8
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,12
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,16
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	[ebp-8],0
	mov	[ebp-12],0
	jmp	_7
_8
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	[ebp-8],ebx
	add	[ebp-12],1
_7
	cmp	[ebp-12],4
	jle	_8
_5
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-16],eax
	mov	[ebp-12],0
	jmp	_9
_10
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-16]
	jle	_11
	mov	eax,[ebp-12]
	jmp	_3_leave
_11
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	sub	[ebp-16],ebx
	add	[ebp-12],1
_9
	cmp	[ebp-12],4
	jle	_10
_6
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],_4
	mov	eax,ebx
	call	__bbVecFree
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_4	.dd	6
	.dd	6
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

