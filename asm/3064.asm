
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	mov	[ebp-4],800
	mov	[ebp-8],600
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_9
_8
	add	[ebp-12],1
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_10
	mov	[ebp-12],0
_10
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],1
	mov	[esp+8],800
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	call	_fmillisecs
	sub	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frect
	call	_fmillisecs
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,1
	jnz	_8
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
_fflip
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	call	_fgraphicswidth
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	[ebp-8],eax
	cmp	[ebp+20],0
	jz	_11
_12
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	call	_fscanline
	mov	[ebp-12],eax
	mov	eax,[ebp-16]
	cmp	[ebp-12],eax
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_12
_5
_11
	sub	esp,32
	call	_fbackbuffer
	mov	[esp+24],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_ffrontbuffer
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+28],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fvwait
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
_13
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	call	_fscanline
	mov	[ebp-4],eax
	mov	eax,[ebp-8]
	cmp	[ebp-4],eax
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_13
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

