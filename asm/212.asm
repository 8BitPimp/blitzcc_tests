
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	mov	[ebp-4],100
	mov	[ebp-8],100
	mov	[ebp-12],200
	mov	[ebp-16],200
	mov	[ebp-20],10
	mov	[ebp-24],10
_5
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_6
	sub	[ebp-8],1
_6
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_7
	add	[ebp-8],1
_7
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_8
	sub	[ebp-4],1
_8
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_9
	add	[ebp-4],1
_9
	sub	esp,24
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcheckcollide
	and	eax,eax
	jz	_10
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fclscolor
	jmp	_11
_10
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
_11
	call	_fcls
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],50
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
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
_fcheckcollide
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,4
	mov	eax,[ebp+20]
	sub	eax,[ebp+28]
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,[ebp+36]
	setl	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	sub	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-8]
	cmp	ebx,[ebp+40]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_12
	mov	eax,1
	jmp	_4_leave
_12
	mov	eax,0
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

