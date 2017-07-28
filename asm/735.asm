
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
	mov	eax,_atrilist
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_atrilist
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atrilist
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atrilist
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_avertlist
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_avertlist
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_avertlist
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertlist
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
_fremovetri
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcounttriangles
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_21
_22
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	add	[ebp-8],1
_21
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_22
_4
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fclearsurface
	mov	[ebp-8],0
	jmp	_23
_24
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	jz	_25
	sub	esp,16
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddtriangle
_25
	add	[ebp-8],1
_23
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_24
_5
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fremovevert
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
	call	_fcounttriangles
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_26
_27
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	add	[ebp-8],1
_26
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_27
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-12],eax
	mov	[ebp-8],0
	jmp	_28
_29
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	[ebx],eax
	add	[ebp-8],1
_28
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_29
_8
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fclearsurface
	mov	[ebp-8],0
	jmp	_30
_31
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	jz	_32
	sub	esp,28
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	ebx,[ebx]
	mov	[esp+20],ebx
	mov	[esp+24],1065353216
	mov	esi,_avertlist
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_avertlist]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	esi,_avertlist
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_avertlist]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,_avertlist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertlist]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddvertex
_32
	add	[ebp-8],1
_30
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_31
_9
	mov	[ebp-8],0
	jmp	_33
_34
	mov	eax,_atrilist
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_atrilist]
	mov	eax,[eax]
	cmp	eax,[ebp+24]
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	and	eax,eax
	jz	_35
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_tctri
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-8]
	mov	esi,[ebp-16]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_35
	add	[ebp-8],1
_33
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_34
_10
	mov	[ebp-8],0
	jmp	_36
_37
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jle	_38
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	[esi],ebx
_38
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jle	_39
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	[esi],ebx
_39
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jle	_40
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	[esi],ebx
_40
	add	[ebp-8],1
_36
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_37
_11
	mov	[ebp-8],0
	jmp	_41
_42
	mov	[ebp-20],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_tctri
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],_tctri
	call	__bbObjEachFirst
	and	eax,eax
	jz	_13
_43
	mov	ebx,[ebp-16]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jnz	_44
	mov	[ebp-20],1
_44
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_43
_13
	cmp	[ebp-20],0
	jnz	_45
	sub	esp,16
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_atrilist
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_atrilist]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddtriangle
_45
	add	[ebp-8],1
_41
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_42
_12
	sub	esp,4
	mov	eax,_tctri
	mov	[esp],eax
	call	__bbObjDeleteEach
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fremove_iso_verts
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
	mov	[ebp-24],ebx
	mov	[ebp-4],0
	jmp	_46
_47
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcounttriangles
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_48
_49
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	[ebx],eax
	add	[ebp-12],1
_48
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_49
_16
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_50
_51
	mov	[ebp-24],0
	mov	[ebp-12],0
	jmp	_52
_53
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jnz	_54
	mov	[ebp-24],1
_54
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jnz	_55
	mov	[ebp-24],1
_55
	mov	ebx,_atrilist
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrilist]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jnz	_56
	mov	[ebp-24],1
_56
	add	[ebp-12],1
_52
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_53
_18
	cmp	[ebp-24],0
	jnz	_57
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fremovevert
_57
	add	[ebp-20],1
_50
	mov	ebx,[ebp-16]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_51
_17
	add	[ebp-4],1
_46
	cmp	[ebp-4],2
	jle	_47
_15
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_atrilist	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_avertlist	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_tctri	.dd	5
_19	.dd	0
	.dd	_19
	.dd	_19
	.dd	0
	.dd	-1
_20	.dd	0
	.dd	_20
	.dd	_20
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

