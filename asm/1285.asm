
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
	mov	eax,_apr_trivisible
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_apr_trivisible
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apr_trivisible
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apr_tricost
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_apr_tricost
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apr_tricost
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apr_trivert
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_apr_trivert
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_apr_trivert
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apr_trivert
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apr_triconnect
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100000
	mov	esi,_apr_triconnect
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_apr_triconnect
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apr_triconnect
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vpr_trianglecount],0
	mov	[_vpr_vertexcount],0
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmeshpolygonsreduce
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fentityclass
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_17
	sub	esp,16
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentityclass
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
	mov	eax,0
	jmp	_3_leave
_17
	cmp	[ebp+24],0
	jg	_20
	mov	eax,0
	jmp	_3_leave
_20
	mov	eax,[ebp+24]
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcountsurfaces
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	ecx,ebx
	cdq
	idiv	ecx
	mov	[ebp+24],eax
	cmp	[ebp+24],1
	jge	_21
	mov	[ebp+24],1
_21
	mov	[ebp-4],1
	jmp	_22
_23
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[_vpr_currentsurface],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcalculatemeshdata
	mov	[ebp-8],1
	jmp	_24
_25
	call	_fleastneededtriangle
	mov	[ebp-12],eax
	cmp	[ebp-12],-1
	jz	_26
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fremovetriangle
_26
	add	[ebp-8],1
_24
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	jle	_25
_5
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	call	_fclearsurface
	mov	[ebp-8],0
	jmp	_27
_28
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_apr_trivisible]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_29
	sub	esp,16
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_apr_trivert]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_apr_trivert]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	call	_faddtriangle
_29
	add	[ebp-8],1
_27
	mov	ebx,[_vpr_trianglecount]
	cmp	[ebp-8],ebx
	jle	_28
_6
	add	[ebp-4],1
_22
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-4],eax
	jle	_23
_4
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fupdatenormals
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
_fcalculatemeshdata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[_vpr_trianglecount],0
	mov	[_vpr_vertexcount],0
	sub	esp,4
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	call	_fcountvertices
	mov	[_vpr_vertexcount],eax
	sub	esp,4
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	mov	[_vpr_trianglecount],eax
	mov	[ebp-4],0
	jmp	_30
_31
	mov	[ebp-8],0
	jmp	_32
_33
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	call	_ftrianglevertex
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	[ebx],eax
	add	[ebp-8],1
_32
	cmp	[ebp-8],2
	jle	_33
_9
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apr_trivisible]
	mov	[esi],ebx
	add	[ebp-4],1
_30
	mov	ebx,[_vpr_trianglecount]
	cmp	[ebp-4],ebx
	jle	_31
_8
	mov	[ebp-4],0
	jmp	_34
_35
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcalculatetrianglecost
	push	eax
	fstp	[esp]
	pop	eax
	add	[ebp-4],1
_34
	mov	ebx,[_vpr_trianglecount]
	cmp	[ebp-4],ebx
	jle	_35
_10
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fleastneededtriangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],1232348160
	mov	[ebp-8],-1
	mov	[ebp-12],0
	jmp	_36
_37
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apr_trivisible]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_38
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_apr_tricost]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_39
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apr_tricost]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
_39
_38
	add	[ebp-12],1
_36
	mov	ebx,[_vpr_trianglecount]
	cmp	[ebp-12],ebx
	jle	_37
_12
	mov	eax,[ebp-8]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fremovetriangle
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
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_trivisible]
	mov	[esi],ebx
	mov	ebx,_apr_triconnect
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_triconnect]
	mov	ebx,[ebx]
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,_apr_triconnect
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_triconnect]
	mov	ebx,[ebx]
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	jmp	_40
_41
	mov	[ebp-16],0
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jnz	_42
	mov	ebx,[ebp-8]
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_apr_trivert]
	mov	[esi],ebx
	mov	[ebp-16],1
_42
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jnz	_43
	mov	ebx,[ebp-8]
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_apr_trivert]
	mov	[esi],ebx
	mov	[ebp-16],1
_43
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jnz	_44
	mov	ebx,[ebp-8]
	mov	esi,_apr_trivert
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_apr_trivert]
	mov	[esi],ebx
	mov	[ebp-16],1
_44
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_45
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcalculatetrianglecost
	push	eax
	fstp	[esp]
	pop	eax
_45
	add	[ebp-12],1
_40
	mov	ebx,[_vpr_trianglecount]
	cmp	[ebp-12],ebx
	jle	_41
_14
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcalculatetrianglecost
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	eax,[_vpr_currentsurface]
	mov	[esp],eax
	mov	ebx,_apr_trivert
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_apr_trivert]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,12
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-60]
	faddp	st(1)
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-60]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,12
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-60]
	faddp	st(1)
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-60]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,12
	mov	eax,[ebp-28]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1073741824
	call	__bbFPow
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-60]
	faddp	st(1)
	mov	[ebp-60],eax
	sub	esp,8
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],1073741824
	mov	eax,ebx
	call	__bbFPow
	mov	ebx,eax
	mov	eax,[ebp-60]
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	mov	eax,[ebp-40]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_46
	mov	[ebp-52],1
_46
	mov	eax,[ebp-44]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_47
	mov	[ebp-52],2
_47
	mov	eax,[ebp-48]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-60],eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_48
	mov	[ebp-52],3
_48
	mov	ebx,[ebp-52]
	mov	[ebp-56],ebx
	cmp	[ebp-56],0
	jz	_50
	cmp	[ebp-56],1
	jz	_51
	cmp	[ebp-56],2
	jz	_52
	cmp	[ebp-56],3
	jz	_53
	jmp	_49
_50
	mov	ebx,1
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	jmp	_49
_51
	mov	ebx,1
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	jmp	_49
_52
	mov	ebx,2
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	jmp	_49
_53
	mov	ebx,0
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_apr_triconnect
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_triconnect]
	mov	[esi],ebx
	jmp	_49
_49
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_apr_tricost]
	mov	[esi],ebx
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_apr_trivisible	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apr_tricost	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_apr_trivert	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_apr_triconnect	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vpr_trianglecount	.dd	0
	.align	4
_vpr_vertexcount	.dd	0
	.align	4
_vpr_currentsurface	.dd	0
_18	.db	"Mesh",0
_19	.db	"Can't reduce polygons of a ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

