
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
_fsetzonecount
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vgintzonecount],ebx
	sub	esp,4
	mov	eax,[_vgintzonecount]
	shl	eax,byte 3
	mov	[esp],eax
	call	_fcreatebank
	mov	[_vgintzonebank],eax
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcreatezone
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	sub	ebx,1
	shl	ebx,byte 3
	mov	[ebp-4],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,2
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	[esp+4],ebx
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,6
	mov	[esp+4],ebx
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fzoneproperty
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	sub	ebx,1
	shl	ebx,byte 3
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	sub	ebx,1
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekshort
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdeletezone
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	sub	ebx,1
	shl	ebx,byte 3
	mov	[ebp-4],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,6
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_fpokeshort
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
_ffreezones
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vgintzonecount],0
	sub	esp,4
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmousezone
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	call	_fmousex
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fzone
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fzone
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_12
_11
	mov	ebx,[ebp-8]
	shl	ebx,byte 3
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,2
	mov	[esp+4],ebx
	call	_fpeekshort
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fpeekshort
	add	eax,[ebp-16]
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[_vgintzonebank]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,6
	mov	[esp+4],ebx
	call	_fpeekshort
	add	eax,[ebp-20]
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	sub	ebx,[ebp-16]
	mov	esi,[ebp+20]
	sub	esi,[ebp-24]
	xor	ebx,esi
	mov	esi,[ebp+24]
	sub	esi,[ebp-20]
	mov	edi,[ebp+24]
	sub	edi,[ebp-28]
	xor	esi,edi
	and	ebx,esi
	mov	esi,-2147483648
	and	ebx,esi
	and	ebx,ebx
	jz	_13
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-4],ebx
_13
	add	[ebp-8],1
_12
	mov	eax,[_vgintzonecount]
	cmp	[ebp-8],eax
	setl	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jnz	_11
_10
	mov	eax,[ebp-4]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vgintzonebank	.dd	0
	.align	4
_vgintzonecount	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

