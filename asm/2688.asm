
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],444
	mov	[esp],444
	call	_fgraphics
	mov	[ebp-4],1
	jmp	_4
_5
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp],1
	call	_ftext
	sub	esp,4
	mov	[esp],100
	call	_fdelay
	add	[ebp-4],3
_4
	cmp	[ebp-4],100
	jle	_5
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"Hiya. Welcome to Star WarsTM",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

