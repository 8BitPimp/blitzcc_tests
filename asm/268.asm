
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[ebp-4],2
	jmp	_6
_5
	mov	[ebp-8],0
	jmp	_7
_8
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_9
	sub	esp,16
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	jmp	_4
_9
	add	[ebp-8],1
_7
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_8
_4
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
_10	.db	"joystick detected on port ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

