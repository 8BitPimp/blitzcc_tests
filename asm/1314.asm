
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-4],399
	mov	[ebp-8],299
	mov	[ebp-12],3
	mov	[ebp-16],3
	mov	[ebp-20],1
	mov	[ebp-24],1
	mov	[ebp-28],1
	jmp	_5
_4
_l_2red
	cmp	[ebp-24],255
	jl	_6
	mov	[ebp-4],399
	mov	[ebp-8],299
	mov	[ebp-12],3
	mov	[ebp-16],3
	mov	[ebp-24],255
	mov	[ebp-28],-1
	jmp	_7
_6
	cmp	[ebp-24],0
	jg	_8
	mov	[ebp-4],399
	mov	[ebp-8],299
	mov	[ebp-12],3
	mov	[ebp-16],3
	mov	[ebp-24],0
	mov	[ebp-28],1
_8
_7
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+16],esi
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_foval
	mov	[ebp-20],0
	sub	[ebp-4],1
	sub	[ebp-8],1
	add	[ebp-12],2
	add	[ebp-16],2
	mov	ebx,[ebp-28]
	add	[ebp-24],ebx
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

