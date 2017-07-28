
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffactor
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	[esp],1024
	call	_fcreatebank
	mov	[_vfcbnk],eax
	mov	[ebp-4],1
_6
	add	[ebp-8],1
	add	[ebp-12],1
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jnz	_7
	add	[ebp-4],1
	mov	[ebp-12],1
_7
	sub	esp,32
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-4]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	cmp	[ebp-16],ebx
	jnz	_10
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[_vfcbnk]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,16
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	add	[ebp-20],3
_10
	mov	eax,[ebp+20]
	cmp	[ebp-16],eax
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp-12],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_6
_4
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vfcbnk	.dd	0
_5	.db	"Factor calculating function called",0
_8	.db	"Checking For Factor, ",0
_9	.db	" * ",0
_11	.db	"Factor Calculated,",0
_12	.db	"Factor of 1 reached, end computation.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

