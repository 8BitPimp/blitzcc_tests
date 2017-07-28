
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
	sub	esp,4
	mov	eax,_acrc_table
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_acrc_table
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acrc_table
	mov	[esp],eax
	call	__bbDimArray
	call	_fcrc_init
	sub	esp,16
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fcrc_string
	mov	[esp],eax
	call	_fhex
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcrc_init
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
	mov	[ebp-4],0
	jmp	_14
_15
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	mov	[ebp-8],0
	jmp	_16
_17
	mov	ebx,[ebp-12]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_18
	mov	ebx,[ebp-12]
	shr	ebx,byte 1
	mov	esi,-306674912
	xor	ebx,esi
	mov	[ebp-12],ebx
	jmp	_19
_18
	mov	ebx,[ebp-12]
	shr	ebx,byte 1
	mov	[ebp-12],ebx
_19
	add	[ebp-8],1
_16
	cmp	[ebp-8],7
	jle	_17
_5
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acrc_table]
	mov	[esi],ebx
	add	[ebp-4],1
_14
	cmp	[ebp-4],255
	jle	_15
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcrc_string
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-8],-1
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-16],eax
	mov	[ebp-12],1
	jmp	_20
_21
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-4],eax
	mov	ebx,[ebp-8]
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	xor	esi,ebx
	shl	esi,byte 2
	add	esi,[_acrc_table]
	mov	esi,[esi]
	mov	ebx,[ebp-8]
	shr	ebx,byte 8
	xor	ebx,esi
	mov	[ebp-8],ebx
	add	[ebp-12],1
_20
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_21
_7
	mov	eax,[ebp-8]
	mov	ebx,-1
	xor	eax,ebx
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcrc_bank
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
	mov	[ebp-8],-1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	mov	[ebp-16],eax
	mov	[ebp-12],0
	jmp	_22
_23
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-4],eax
	mov	ebx,[ebp-8]
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	xor	esi,ebx
	shl	esi,byte 2
	add	esi,[_acrc_table]
	mov	esi,[esi]
	mov	ebx,[ebp-8]
	shr	ebx,byte 8
	xor	ebx,esi
	mov	[ebp-8],ebx
	add	[ebp-12],1
_22
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_23
_9
	mov	eax,[ebp-8]
	mov	ebx,-1
	xor	eax,ebx
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcrc_file
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
	mov	[ebp-8],-1
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_24
	mov	eax,0
	jmp	_10_leave
_24
	jmp	_26
_25
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-4],eax
	mov	ebx,[ebp-8]
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	xor	esi,ebx
	shl	esi,byte 2
	add	esi,[_acrc_table]
	mov	esi,[esi]
	mov	ebx,[ebp-8]
	shr	ebx,byte 8
	xor	ebx,esi
	mov	[ebp-8],ebx
_26
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_25
_11
	mov	eax,[ebp-8]
	mov	ebx,-1
	xor	eax,ebx
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_acrc_table	.dd	0
	.dd	1
	.dd	1
	.dd	0
_12	.db	"ABC",0
_13	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

