
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,_avpos
	mov	[esp],eax
	call	__bbUndimArray
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	ebx,_avpos
	add	ebx,12
	mov	[ebx],eax
	mov	ebx,3
	mov	esi,_avpos
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avpos
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_7
_8
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,_avpos
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avpos]
	mov	[esi],ebx
	add	[ebp-12],1
_7
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_8
_3
	mov	[ebp-12],0
	jmp	_9
_10
	sub	esp,8
	mov	[esp],-1110651699
	mov	[esp+4],1036831949
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],-1110651699
	mov	[esp+4],1036831949
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],-1110651699
	mov	[esp+4],1036831949
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	[ebp-28],0
	jmp	_11
_12
	mov	eax,_avpos
	add	eax,12
	mov	eax,[eax]
	imul	eax,3
	add	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_avpos]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_13
	mov	eax,_avpos
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_avpos]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_avpos
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_avpos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	mov	[ebp-40],eax
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_avpos
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_avpos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_14
	sub	esp,20
	mov	ebx,_avpos
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_avpos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,_avpos
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_avpos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	esi,_avpos
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_avpos]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-16]
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fvertexcoords
	mov	ebx,1065353216
	mov	esi,_avpos
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_avpos]
	mov	[esi],ebx
_14
_13
	add	[ebp-28],1
_11
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-28],eax
	jle	_12
_5
	add	[ebp-12],1
_9
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_10
_4
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-36],eax
	sub	esp,20
	mov	[esp+12],-1007026176
	mov	[esp+16],0
	mov	[esp+8],1148846080
	mov	[esp+4],1148846080
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fpositionentity
_15
	sub	esp,20
	mov	[esp+12],1073741824
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_15
_6
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_avpos	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

