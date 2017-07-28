
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
	sub	esp,4
	mov	eax,_avertex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,99
	mov	esi,_avertex
	add	esi,12
	mov	[esi],ebx
	mov	ebx,99
	mov	esi,_avertex
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertex
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcreatemeshplane
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	[ebp+20],1
	sub	[ebp+24],1
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_8
_9
	mov	[ebp-16],0
	jmp	_10
_11
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	[ebx],eax
	add	[ebp-16],1
_10
	mov	ebx,[ebp+24]
	cmp	[ebp-16],ebx
	jle	_11
_5
	add	[ebp-12],1
_8
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_9
_4
	mov	[ebp-12],0
	jmp	_12
_13
	mov	[ebp-16],0
	jmp	_14
_15
	sub	esp,24
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],1065353216
	mov	[esp+8],0
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],1065353216
	mov	[esp+8],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,24
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	[esp+16],0
	mov	[esp+20],0
	mov	[esp+12],0
	mov	[esp+8],1065353216
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertextexcoords
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	add	esi,1
	mov	edi,_avertex
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-12]
	add	edi,1
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_avertex]
	mov	edi,[edi]
	mov	[esp+12],edi
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	edi,_avertex
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-16]
	add	ebx,edi
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	edi,_avertex
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-16]
	add	edi,[ebp-12]
	shl	edi,byte 2
	add	edi,[_avertex]
	mov	edi,[edi]
	mov	[esp+12],edi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-16],1
_14
	mov	ebx,[ebp+24]
	cmp	[ebp-16],ebx
	jle	_15
_7
	add	[ebp-12],1
_12
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_13
_6
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentityparent
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
	ret	word 12
	.align	4
_avertex	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

