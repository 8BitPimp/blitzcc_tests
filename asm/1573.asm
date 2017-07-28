
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
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vx],1137180672
	mov	[_vy],1141063680
	mov	[_vgravity],1082130432
	mov	[_vjump],0
	jmp	_6
_5
	call	_fcls
	call	_fupdate_movement
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_5
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
_fupdate_movement
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	cmp	eax,1
	jnz	_7
	mov	[_vjump],1
_7
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_8
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx],ebx
_8
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_9
	mov	ebx,[_vx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vx],ebx
_9
	cmp	[_vjump],1
	jnz	_10
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgravity]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vy],ebx
	mov	ebx,[_vgravity]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1034147594
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vgravity],ebx
	mov	eax,[_vy]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1141047296
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	[_vjump],0
	mov	[_vgravity],1082130432
_11
_10
	sub	esp,20
	mov	[esp+12],25
	mov	[esp+16],0
	mov	[esp+8],25
	mov	ebx,[_vy]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
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
	mov	[esp+12],50
	mov	[esp+16],1
	mov	[esp+8],800
	mov	[esp+4],550
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vx	.dd	0
	.align	4
_vy	.dd	0
	.align	4
_vgravity	.dd	0
	.align	4
_vjump	.dd	0
_12	.db	"Press L and R arrow keys to move left and right",0
_13	.db	"Press space bar to jump",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

