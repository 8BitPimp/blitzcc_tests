
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
	mov	[ebp-4],640
	mov	[ebp-8],480
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,8
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-16],eax
	mov	[ebp-20],640
	mov	[ebp-24],-8
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_6
_5
	call	_fcls
	mov	ebx,[ebp-24]
	add	[ebp-20],ebx
	mov	ebx,[ebp-20]
	add	ebx,[ebp-16]
	cmp	ebx,[ebp-4]
	jle	_7
	sub	esp,16
	mov	[esp+8],100
	mov	[esp+12],0
	mov	esi,[ebp-20]
	sub	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawimage
_7
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_8
	mov	ebx,[ebp-24]
	mov	[ebp-20],ebx
_8
	cmp	[ebp-20],0
	jge	_9
	sub	esp,16
	mov	[esp+8],100
	mov	[esp+12],0
	mov	esi,[ebp-4]
	add	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawimage
_9
	mov	ebx,[ebp-20]
	add	ebx,[ebp-16]
	cmp	ebx,0
	jge	_10
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-16]
	add	ebx,[ebp-24]
	mov	[ebp-20],ebx
_10
	sub	esp,16
	mov	[esp+8],100
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawimage
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_4	.db	"Sprite.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

