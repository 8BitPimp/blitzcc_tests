
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
	mov	[_vxspd],1056964608
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldmillisecs],eax
	jmp	_5
_4
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vthistime],eax
	mov	ebx,[_vthistime]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_voldmillisecs]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vdeltatime],ebx
	mov	ebx,[_vthistime]
	mov	[_voldmillisecs],ebx
	call	_fcls
	mov	ebx,[_vdeltatime]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vxspd]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vx]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vx],esi
	mov	eax,[_vx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1142947840
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_6
	mov	[_vx],0
_6
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vx]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_4
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
	.align	4
_vdeltatime	.dd	0
	.align	4
_voldmillisecs	.dd	0
	.align	4
_vthistime	.dd	0
	.align	4
_vx	.dd	0
	.align	4
_vxspd	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

