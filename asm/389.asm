
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
_fbeginmerge
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	cmp	eax,0
	jle	_7
	mov	[ebp-8],1
	jmp	_8
_9
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmergemesh
	mov	ebx,eax
	add	[ebp-8],1
_8
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	cmp	[ebp-8],eax
	jle	_9
_4
_7
	mov	eax,[ebp-4]
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
	.align	16
_fmergemesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,24
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_frotatemesh
	sub	esp,24
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcountchildren
	cmp	eax,0
	jle	_10
	mov	[ebp-4],1
	jmp	_11
_12
	sub	esp,16
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmergemesh
	mov	ebx,eax
	add	[ebp-4],1
_11
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcountchildren
	cmp	[ebp-4],eax
	jle	_12
_6
_10
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
