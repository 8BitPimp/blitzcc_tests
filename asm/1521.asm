
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcam],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vcube],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1073741824
	mov	[esp+4],1073741824
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fpositionmesh
	jmp	_13
_12
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	and	eax,eax
	jz	_14
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fmirror_mesh
_14
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	and	eax,eax
	jz	_15
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fmirror_mesh
_15
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	and	eax,eax
	jz	_16
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fmirror_mesh
_16
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_12
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmirror_mesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	cmp	[ebp+24],0
	setl	al
	movzx	eax,al
	mov	[ebp-48],eax
	cmp	[ebp+24],2
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	or	eax,ebx
	and	eax,eax
	jz	_17
	mov	eax,0
	jmp	_4_leave
_17
	cmp	[ebp+28],0
	jnz	_18
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_19
_18
	mov	[ebp-12],0
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	cmp	[ebp+28],ebx
	jnz	_22
	mov	ebx,[ebp-16]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-8],ebx
_22
	add	[ebp-12],1
_20
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-12],eax
	jle	_21
_5
_19
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmeshwidth
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmeshheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmeshdepth
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	cmp	[ebp+24],0
	jnz	_23
	mov	ebx,[ebp-8]
	mov	[ebp-32],ebx
	jmp	_24
_25
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp+28],eax
	mov	[ebp-12],0
	jmp	_26
_27
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,28
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexnormal
	add	[ebp-12],1
_26
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_27
_7
	add	[ebp-32],1
_24
	mov	ebx,[ebp-4]
	cmp	[ebp-32],ebx
	jle	_25
_6
	jmp	_28
_23
	cmp	[ebp+24],1
	jnz	_29
	mov	ebx,[ebp-8]
	mov	[ebp-32],ebx
	jmp	_30
_31
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp+28],eax
	mov	[ebp-12],0
	jmp	_32
_33
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,28
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexnormal
	add	[ebp-12],1
_32
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_33
_9
	add	[ebp-32],1
_30
	mov	ebx,[ebp-4]
	cmp	[ebp-32],ebx
	jle	_31
_8
	jmp	_34
_29
	cmp	[ebp+24],2
	jnz	_35
	mov	ebx,[ebp-8]
	mov	[ebp-32],ebx
	jmp	_36
_37
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp+28],eax
	mov	[ebp-12],0
	jmp	_38
_39
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,28
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	ebx,[ebp-28]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-48],eax
	sub	esp,8
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexcoords
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+12],ebx
	mov	esi,[ebp-40]
	mov	[esp+16],esi
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fvertexnormal
	add	[ebp-12],1
_38
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_39
_11
	add	[ebp-32],1
_36
	mov	ebx,[ebp-4]
	cmp	[ebp-32],ebx
	jle	_37
_10
_35
_34
_28
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fflipmesh
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_vcam	.dd	0
	.align	4
_vlight	.dd	0
	.align	4
_vcube	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

