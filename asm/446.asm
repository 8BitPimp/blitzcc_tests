
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
_fcel_shade
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopymesh
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fentityfx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-8],eax
	mov	[ebp-12],1
	jmp	_6
_7
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	[ebp-20],eax
	mov	[ebp-24],0
	jmp	_8
_9
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,20
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-36]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+16],edi
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	edi
	fstp	[esp]
	pop	edi
	mov	[esp+8],edi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-24],1
_8
	mov	ebx,[ebp-20]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_9
_5
	add	[ebp-12],1
_6
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_7
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-52],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-52]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentityparent
	mov	eax,0
	jmp	_3_leave
_3_leave
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
