
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
	add	[ebp-4],1
	cmp	[ebp-8],0
	jnz	_3
	call	_fmillisecs
	mov	[ebp-8],eax
_3
	mov	ebx,[ebp-8]
	add	ebx,1001
	call	_fmillisecs
	cmp	ebx,eax
	jge	_4
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	call	_fmillisecs
	mov	[ebp-8],eax
_4
	sub	esp,32
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_5	.db	"fps: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

