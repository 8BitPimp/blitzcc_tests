
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fgraphicsheight
	mov	[ebp-4],eax
	call	_fgraphicswidth
	mov	[ebp-8],eax
	mov	[ebp-12],20
	mov	[ebp-16],0
	jmp	_7
_8
	mov	[ebp-20],0
	jmp	_9
_10
	mov	ebx,[ebp-20]
	add	ebx,[ebp-16]
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbMod
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	eax,ebx
	jnz	_11
	cmp	[ebp-28],0
	jnz	_12
	mov	[ebp-28],1
	jmp	_13
_12
	mov	[ebp-28],0
_13
_11
	cmp	[ebp-28],0
	jnz	_14
	mov	[ebp-32],95
	mov	[ebp-36],95
	mov	[ebp-40],95
	jmp	_15
_14
	mov	[ebp-32],191
	mov	[ebp-36],191
	mov	[ebp-40],0
_15
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-20],1
_9
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_10
_4
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbMod
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	eax,ebx
	jnz	_16
	cmp	[ebp-28],0
	jnz	_17
	mov	[ebp-28],1
	jmp	_18
_17
	mov	[ebp-28],0
_18
_16
	add	[ebp-16],1
_7
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_8
_3
	call	_fmousewait
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_5	.db	"Striscie diagonali by Stefano Maria Regattin",0
_6	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

