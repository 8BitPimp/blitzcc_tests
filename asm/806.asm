
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
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],255
	mov	[ebp-8],127
	mov	[ebp-12],63
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	jmp	_5
_4
	call	_fcls
	sub	esp,4
	mov	eax,[ebp-16]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	__bbSgn
	add	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-20]
	sub	eax,[ebp-8]
	mov	[esp],eax
	call	__bbSgn
	add	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-24]
	sub	eax,[ebp-12]
	mov	[esp],eax
	call	__bbSgn
	add	[ebp-12],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],200
	mov	[esp+4],0
	mov	[esp],0
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
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

