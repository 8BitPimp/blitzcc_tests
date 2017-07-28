
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
_fnextchild
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	cmp	eax,0
	jle	_6
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetchild
	jmp	_3_leave
_6
	mov	[ebp-8],0
	mov	[ebp-12],0
	jmp	_8
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetparent
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	jz	_9
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountchildren
	cmp	eax,1
	jle	_10
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountchildren
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	_fgetchild
	cmp	eax,[ebp+20]
	jz	_11
	mov	[ebp-4],1
	jmp	_12
_13
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-20],eax
	mov	ebx,[ebp+20]
	cmp	[ebp-20],ebx
	jnz	_14
	mov	[ebp-8],1
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[ebp-12],eax
_14
	add	[ebp-4],1
_12
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountchildren
	cmp	[ebp-4],eax
	jle	_13
_5
_11
_10
_9
	mov	ebx,[ebp-16]
	mov	[ebp+20],ebx
_8
	cmp	[ebp-8],0
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp+20],0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jnz	_7
_4
	mov	eax,[ebp-12]
	jmp	_3_leave
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
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

