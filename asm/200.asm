
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
	call	_fmillisecs
	mov	[_vlooptime],eax
	jmp	_5
_4
	call	_fmillisecs
	mov	ebx,[_vlooptime]
	add	ebx,2000
	cmp	eax,ebx
	jge	_6
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],480
	mov	[esp],342
	call	_ftext
	jmp	_8
_6
	call	_fmillisecs
	mov	ebx,[_vlooptime]
	add	ebx,2700
	cmp	eax,ebx
	jle	_9
	call	_fmillisecs
	mov	[_vlooptime],eax
_9
_8
	sub	esp,4
	mov	[esp],1
	call	_fflip
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_4
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vlooptime	.dd	0
_7	.db	"Press Space",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

