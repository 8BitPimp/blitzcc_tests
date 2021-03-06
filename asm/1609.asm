
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
_fload_terrain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-60],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_10
	mov	eax,0
	jmp	_3_leave
_10
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
	sub	esp,16
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-16],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-20],eax
	mov	[ebp-24],0
	jmp	_12
_13
	mov	[ebp-28],0
	jmp	_14
_15
	sub	esp,28
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	sub	esi,1
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-12]
	sub	edi,1
	push	edi
	fild	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+20],esi
	mov	[esp+24],1065353216
	mov	esi,[ebp-24]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddvertex
	add	[ebp-28],1
_14
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_15
_5
	add	[ebp-24],1
_12
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_13
_4
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,16
	mov	[esp+8],65
	mov	[esp+12],64
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],65
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	mov	[ebp-24],0
	jmp	_16
_17
	mov	[ebp-28],0
	jmp	_18
_19
	mov	ebx,[ebp-24]
	imul	ebx,[ebp-12]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-24]
	add	ebx,1
	imul	ebx,[ebp-12]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-44],ebx
	sub	esp,16
	mov	ebx,[ebp-36]
	add	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	add	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	ebx,[ebp-32]
	add	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	add	esi,[ebp-44]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	add	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-28],1
_18
	mov	ebx,[ebp-8]
	sub	ebx,2
	cmp	[ebp-28],ebx
	jle	_19
_7
	add	[ebp-24],1
_16
	mov	ebx,[ebp-12]
	sub	ebx,2
	cmp	[ebp-24],ebx
	jle	_17
_6
	sub	esp,16
	mov	ebx,[ebp-8]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1073741824
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-24],0
	jmp	_20
_21
	mov	[ebp-28],0
	jmp	_22
_23
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fgetcolor
	mov	ebx,[ebp-24]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-28]
	mov	[ebp-48],ebx
	sub	esp,20
	call	_fcolorred
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexz
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+16],ebx
	mov	[ebp-64],eax
	sub	esp,8
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fvertexx
	mov	ebx,eax
	mov	eax,[ebp-64]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcoords
	add	[ebp-28],1
_22
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_23
_9
	add	[ebp-24],1
_20
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_21
_8
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fupdatenormals
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_24
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_floadtexture
	mov	[ebp-52],eax
	cmp	[ebp-52],0
	jnz	_26
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_26
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-52]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
_24
	sub	esp,12
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_28
	sub	esp,12
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	_floadtexture
	mov	[ebp-56],eax
	cmp	[ebp-56],0
	jnz	_30
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_30
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
_28
	sub	esp,12
	lea	eax,[ebp+44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_32
	sub	esp,12
	lea	eax,[ebp+44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+48]
	mov	[esp+4],ebx
	call	_floadtexture
	mov	[ebp-60],eax
	cmp	[ebp-60],0
	jnz	_34
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_34
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[ebp-60]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fentitytexture
_32
	mov	eax,[ebp-16]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp+36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp+44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
_11	.db	" image width = ",0
_25	.db	"",0
_27	.db	" Error in load_terrain() function: Texture1 not found from filename given",0
_29	.db	"",0
_31	.db	" Error in load_terrain() function: Texture2 not found from filename given",0
_33	.db	"",0
_35	.db	" Error in load_terrain() function: Texture3 not found from filename given",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

