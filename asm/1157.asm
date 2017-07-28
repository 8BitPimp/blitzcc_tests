
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
	sub	esp,4
	mov	eax,_areturnreadbits
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_areturnreadbits
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_areturnreadbits
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	mov	[ebp-8],1
	mov	[ebp-12],0
	mov	[ebp-16],1
	sub	esp,36
	mov	ebx,[ebp-12]
	mov	[esp+28],ebx
	mov	esi,[ebp-8]
	mov	[esp+32],esi
	mov	esi,[ebp-16]
	mov	[esp+24],esi
	mov	[esp+20],1
	mov	[esp+16],0
	mov	[esp+12],1
	mov	[esp+8],1
	mov	[esp+4],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritebits8
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fsreadbits8
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_areturnreadbits]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_areturnreadbits]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_areturnreadbits]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fclosefile
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwritebits8
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+52]
	shl	ebx,byte 7
	mov	esi,[ebp+48]
	shl	esi,byte 6
	add	ebx,esi
	mov	esi,[ebp+44]
	shl	esi,byte 5
	add	ebx,esi
	mov	esi,[ebp+40]
	shl	esi,byte 4
	add	ebx,esi
	mov	esi,[ebp+36]
	shl	esi,byte 3
	add	ebx,esi
	mov	esi,[ebp+32]
	shl	esi,byte 2
	add	ebx,esi
	mov	esi,[ebp+28]
	shl	esi,byte 1
	add	ebx,esi
	add	ebx,[ebp+24]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fwritebyte
	mov	eax,[ebp-4]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 36
	.align	16
_fsreadbits8
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_8
_9
	mov	ebx,[ebp-4]
	mov	ecx,[ebp-8]
	shr	ebx,cl
	mov	esi,1
	and	ebx,esi
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_areturnreadbits]
	mov	[esi],ebx
	add	[ebp-8],1
_8
	cmp	[ebp-8],7
	jle	_9
_5
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_10
	mov	eax,[ebp-16]
	jmp	_4_leave
_10
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_areturnreadbits	.dd	0
	.dd	1
	.dd	1
	.dd	0
_6	.db	"file.file",0
_7	.db	"file.file",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

