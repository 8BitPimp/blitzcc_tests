
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vperiod],1098907648
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vperiod]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vtime],eax
	jmp	_9
_8
_10
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vtime]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_velapsed],eax
	mov	ebx,[_velapsed]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	and	ebx,ebx
	jz	_10
_4
	mov	ebx,[_velapsed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vperiod]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vtween],ebx
	jmp	_12
_11
	mov	ebx,[_vtime]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vperiod]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vtime],ebx
	mov	ebx,[_vtween]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vtween],ebx
	call	_fupdategame
_12
	mov	eax,[_vtween]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jnz	_11
_5
	call	_fdrawgame
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
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
_fupdategame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx],ebx
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
	jz	_13
	mov	[_vx],0
_13
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawgame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fcls
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],32
	mov	eax,[_vx]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	[esp+4],64
	mov	eax,[_vx]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_foval
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vx	.dd	0
	.align	4
_vperiod	.dd	0
	.align	4
_vtime	.dd	0
	.align	4
_vtween	.dd	0
	.align	4
_velapsed	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

