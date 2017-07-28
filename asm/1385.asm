
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
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1024
	mov	[esp],1280
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vball],eax
	mov	[_vxpos],640
	mov	[_vypos],928
	mov	[_vxvel],0
	mov	[_vyvel],0
	mov	[_vyvelram],0
	mov	[_vballactive],0
	mov	[_vgravity],1056964608
_l_2menuloop
	jmp	_6
_5
	call	_fcls
	call	_l_2startball
	call	_l_2moveball
	call	_l_2drawball
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_5
_3
	call	_fend
_l_2startball
	cmp	[_vballactive],1
	jnz	_7
	ret
_7
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_8
	mov	[_vyvelram],1098907648
	mov	[_vyvel],1098907648
	mov	[_vballactive],1
_8
	ret
_l_2moveball
	cmp	[_vballactive],0
	jnz	_9
	ret
_9
	mov	ebx,[_vyvel]
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
	mov	[_vyvel],ebx
	mov	ebx,[_vypos]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vyvel]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vypos],ebx
	cmp	[_vypos],928
	jl	_10
	jmp	_l_2bounceball
_10
	ret
_l_2bounceball
	mov	eax,[_vyvel]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_11
	mov	[_vballactive],0
	ret
_11
	mov	[_vypos],928
	mov	ebx,[_vyvelram]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vyvelram],ebx
	mov	ebx,[_vyvelram]
	mov	[_vyvel],ebx
	ret
_l_2drawball
	sub	esp,16
	mov	ebx,[_vypos]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vxpos]
	mov	[esp+4],esi
	mov	eax,[_vball]
	mov	[esp],eax
	call	_fdrawimage
	ret
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vball	.dd	0
_4	.db	"c:\bouncy\graphics\six.png",0
	.align	4
_vxpos	.dd	0
	.align	4
_vypos	.dd	0
	.align	4
_vxvel	.dd	0
	.align	4
_vyvel	.dd	0
	.align	4
_vyvelram	.dd	0
	.align	4
_vballactive	.dd	0
	.align	4
_vgravity	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

