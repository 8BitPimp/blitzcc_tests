
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
_freaddouble
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,_4
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-24],eax
	mov	[ebp-8],0
	jmp	_7
_8
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[ebp-4]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	mov	[ebx],eax
	add	[ebp-8],1
_7
	cmp	[ebp-8],7
	jle	_8
_5
	sub	esp,4
	mov	[esp],4
	call	_fcreatebank
	mov	[ebp-12],eax
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	ebx,28
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,127
	and	ebx,esi
	shl	ebx,byte 4
	mov	esi,24
	add	esi,[ebp-4]
	mov	esi,[esi]
	mov	edi,240
	and	esi,edi
	shr	esi,byte 4
	add	ebx,esi
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_9
	mov	ebx,[ebp-16]
	sub	ebx,1024
	add	ebx,128
	mov	[ebp-20],ebx
	jmp	_10
_9
	mov	[ebp-20],0
_10
	mov	ebx,28
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,128
	and	ebx,esi
	mov	esi,[ebp-20]
	shr	esi,byte 1
	add	ebx,esi
	mov	esi,12
	add	esi,[ebp-24]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,1
	and	ebx,esi
	shl	ebx,byte 7
	mov	esi,24
	add	esi,[ebp-4]
	mov	esi,[esi]
	mov	edi,15
	and	esi,edi
	shl	esi,byte 3
	add	ebx,esi
	mov	esi,20
	add	esi,[ebp-4]
	mov	esi,[esi]
	mov	edi,224
	and	esi,edi
	shr	esi,byte 5
	add	ebx,esi
	mov	esi,8
	add	esi,[ebp-24]
	mov	[esi],ebx
	mov	ebx,20
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,31
	and	ebx,esi
	shl	ebx,byte 3
	mov	esi,16
	add	esi,[ebp-4]
	mov	esi,[esi]
	mov	edi,224
	and	esi,edi
	shr	esi,byte 5
	add	ebx,esi
	mov	esi,4
	add	esi,[ebp-24]
	mov	[esi],ebx
	mov	ebx,16
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,31
	and	ebx,esi
	shl	ebx,byte 3
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	mov	edi,224
	and	esi,edi
	shr	esi,byte 5
	add	ebx,esi
	mov	esi,0
	add	esi,[ebp-24]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],0
	mov	esi,0
	add	esi,[ebp-24]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],1
	mov	esi,4
	add	esi,[ebp-24]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],2
	mov	esi,8
	add	esi,[ebp-24]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,12
	mov	[esp+4],3
	mov	esi,12
	add	esi,[ebp-24]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebank
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_3_leave
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],_4
	mov	eax,ebx
	call	__bbVecFree
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,8
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	[esp+4],_6
	mov	eax,esi
	call	__bbVecFree
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_4	.dd	6
	.dd	8
	.dd	__bbIntType
	.align	4
_6	.dd	6
	.dd	4
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

