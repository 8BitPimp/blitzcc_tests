
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[ebp-4],640
	mov	[ebp-8],480
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,20
	mov	eax,[ebp-4]
	mov	ecx,12
	cdq
	idiv	ecx
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	add	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,20
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp-8]
	sub	esi,20
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	ecx,12
	cdq
	idiv	ecx
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	sub	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpythtree
	mov	ebx,eax
	jmp	_9
_8
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_8
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpythtree
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
	mov	[ebp-28],ebx
	mov	ebx,[ebp+20]
	sub	ebx,[ebp+24]
	add	ebx,[ebp+32]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp+24]
	sub	ebx,[ebp+28]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	sub	ebx,[ebp+28]
	add	ebx,[ebp+32]
	mov	[ebp-16],ebx
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	sub	esi,[ebp-8]
	add	esi,[ebp-12]
	add	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	add	esi,[ebp-8]
	sub	esi,[ebp-12]
	add	esi,[ebp-16]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+36]
	imul	ebx,22
	mov	[ebp-28],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolour_line
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcolour_line
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcolour_line
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolour_line
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolour_line
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-28]
	mov	[esp+16],esi
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcolour_line
	cmp	[ebp+36],12
	jge	_10
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	add	esi,1
	mov	[esp+16],esi
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpythtree
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	add	esi,1
	mov	[esp+16],esi
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpythtree
_10
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
_fcolour_line
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,255
	sub	ebx,[ebp+36]
	mov	[esp+4],ebx
	mov	esi,96
	add	esi,[ebp+36]
	mov	[esp+8],esi
	mov	eax,[ebp+36]
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
_6	.db	"Pythagoras Tree",0
_7	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

