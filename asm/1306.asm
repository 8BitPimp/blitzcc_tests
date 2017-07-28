
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
	mov	[ebp-12],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	jmp	_5
_4
	call	_fcls
	add	[ebp-4],3
	cmp	[ebp-12],0
	jnz	_6
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclscolor
	mov	[ebp-8],0
	jmp	_7
_6
	cmp	[ebp-12],1
	jnz	_8
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
	mov	[ebp-8],0
	jmp	_9
_8
	cmp	[ebp-12],2
	jnz	_10
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fclscolor
	mov	[ebp-8],0
	jmp	_11
_10
	cmp	[ebp-12],3
	jnz	_12
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclscolor
	mov	[ebp-8],0
	jmp	_13
_12
	cmp	[ebp-12],4
	jnz	_14
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclscolor
	mov	[ebp-8],0
	jmp	_15
_14
	cmp	[ebp-12],5
	jnz	_16
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fclscolor
	mov	[ebp-8],0
_16
_15
_13
_11
_9
_7
	cmp	[ebp-4],250
	jle	_17
	mov	[ebp-4],0
	add	[ebp-12],1
_17
	cmp	[ebp-12],6
	jnz	_18
	mov	[ebp-12],0
_18
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

