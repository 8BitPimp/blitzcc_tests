
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[_vwindowsize],208
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[_vwindowsize]
	mov	[esp+4],esi
	mov	eax,[_vwindowsize]
	mov	[esp],eax
	call	_fgraphics
	mov	[ebp-4],0
	jmp	_9
_10
	sub	esp,12
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,63
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,63
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,63
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	call	_fgraphicswidth
	mov	ebx,[ebp-4]
	shl	ebx,byte 1
	sub	eax,ebx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,[ebp-4]
	shl	esi,byte 1
	sub	ebx,esi
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	add	[ebp-4],1
_9
	cmp	[ebp-4],7
	jle	_10
_3
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-8],0
_11
	call	_fgetkey
	mov	[ebp-12],eax
	cmp	[ebp-12],27
	jnz	_12
	mov	[ebp-8],1
_12
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	cmp	eax,1
	jnz	_13
	mov	[ebp-8],1
_13
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_14
	call	_fmousex
	mov	[ebp-16],eax
	call	_fmousey
	mov	[ebp-16],eax
	cmp	[ebp-16],8
	setge	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[_vwindowsize]
	sub	ebx,8
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_15
	cmp	[ebp-20],8
	setge	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[_vwindowsize]
	sub	ebx,8
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,8
	mov	eax,[ebp-16]
	sub	eax,8
	mov	[esp],eax
	mov	[esp+4],64
	call	__bbMod
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-20]
	sub	eax,8
	mov	[esp],eax
	mov	[esp+4],64
	call	__bbMod
	mov	[ebp-28],eax
	mov	[ebp-32],0
	jmp	_17
_18
	mov	[ebp-36],0
	jmp	_19
_20
	mov	ebx,[ebp-36]
	shl	ebx,byte 6
	mov	[ebp-40],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 6
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	add	eax,[ebp-40]
	add	eax,8
	mov	[esp],eax
	mov	ebx,[ebp-28]
	add	ebx,[ebp-32]
	add	ebx,8
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-36],1
_19
	cmp	[ebp-36],2
	jle	_20
_6
	add	[ebp-32],1
_17
	cmp	[ebp-32],2
	jle	_18
_5
_16
_15
_14
	cmp	[ebp-8],1
	jnz	_11
_4
	call	_fendgraphics
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
_vwindowsize	.dd	0
_7	.db	"PatternImage public by Stefano Maria Regattin",0
_8	.db	"Press RMB or Esc to leave.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

