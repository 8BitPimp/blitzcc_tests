
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
_fdirtyrectscreate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tdirtyrects
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-8],0
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_trecttype2
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-8],1
_20
	cmp	[ebp-8],1000
	jle	_21
_5
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdirtyrectsdelete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_22
	mov	eax,0
	jmp	_6_leave
_22
	mov	[ebp-4],0
	jmp	_23
_24
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	eax,ebx
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbObjDelete
	add	[ebp-4],1
_23
	cmp	[ebp-4],1000
	jle	_24
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,1
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdirtyrectsadd
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	esi,[ebp+24]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	esi,[ebp+32]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	esi,[ebp+36]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fdirtyrectsaddimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	esi,[ebp+24]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	esi,[ebp-4]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	esi,[ebp-8]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fdirtyrectsaddspecial
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	esi,[ebp+24]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	esi,[ebp+32]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	esi,[ebp+36]
	mov	[ebx],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	esi,[ebp+40]
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fdirtyrectsdrawall
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
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_25
_26
	sub	esp,8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	[esp+24],ebx
	mov	[esp+28],0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcopyrect
	add	[ebp-8],1
_25
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_26
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdirtyrectsdrawspecial
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_27
_28
	sub	esp,8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjStore
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	cmp	ebx,[ebp+28]
	jnz	_29
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	[esp+24],ebx
	mov	[esp+28],0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcopyrect
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-16],ebx
	jmp	_30
_31
	sub	esp,8
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjStore
	sub	esp,8
	mov	ebx,[ebp-16]
	add	ebx,1
	shl	ebx,byte 2
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbObjStore
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-24]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	add	[ebp-16],1
_30
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_31
_15
_29
	add	[ebp-8],1
_27
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_28
_14
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_trecttype2	.dd	5
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_3	.dd	6
	.dd	1001
	.dd	_trecttype2
	.align	4
_tdirtyrects	.dd	5
_18	.dd	0
	.dd	_18
	.dd	_18
	.dd	0
	.dd	-1
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
	.dd	2
	.dd	_3
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
