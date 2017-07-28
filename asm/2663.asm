
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
	mov	[_vtimescalemul],1065353216
	mov	[_vtimescalelibpresent],1
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsynclagscale
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	sub	ebx,[_vtimescalelasttime]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	cmp	[_vtimescalelasttime],0
	jnz	_5
	mov	[_vlagscale],1065353216
	jmp	_6
_5
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1148846080
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1112014848
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlagscale],ebx
_6
	mov	ebx,[ebp-4]
	mov	[_vtimescalelasttime],ebx
	mov	ebx,[_vlagscale]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vtimescalemul]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vtimescale],ebx
	mov	eax,[_vtimescale]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1086324736
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_7
	mov	[_vtimescale],1086324736
_7
	mov	eax,[_vtimescale]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1101004800
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_8
	mov	[_vtimescale],1065353216
_8
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
_fsettimescale
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	[_vtimescalemul],ebx
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
_vtimescale	.dd	0
	.align	4
_vlagscale	.dd	0
	.align	4
_vtimescalemul	.dd	0
	.align	4
_vtimescalelasttime	.dd	0
	.align	4
_vtimescalelibpresent	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

