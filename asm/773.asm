
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	[ebp-4],1024
	mov	[ebp-8],768
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1148846080
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_floadpixie
	mov	[ebp-16],eax
	jmp	_10
_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1065353216
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_9
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
_floadpixie
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftextureheight
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-24],eax
	mov	eax,[ebp-8]
	cmp	[ebp-20],eax
	setnz	al
	movzx	eax,al
	mov	[ebp-80],eax
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-80]
	or	eax,ebx
	and	eax,eax
	jz	_11
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-32],eax
	mov	[ebp-36],0
	jmp	_12
_13
	mov	[ebp-40],0
	jmp	_14
_15
	sub	esp,28
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_freadpixel
	mov	[esp+8],eax
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-40],1
_14
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_15
_6
	add	[ebp-36],1
_12
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_13
_5
	sub	esp,12
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fild	[esp]
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
	mov	edi,[ebp-24]
	push	edi
	fild	[esp]
	pop	edi
	fdivp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaletexture
	mov	ebx,[ebp-20]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-24]
	mov	[ebp-12],ebx
_11
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreeimage
	call	_fgraphicswidth
	mov	[ebp-44],eax
	call	_fgraphicsheight
	mov	[ebp-48],eax
	mov	[ebp-52],0
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountchildren
	mov	[ebp-56],eax
	mov	[ebp-60],1
	jmp	_16
_17
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[esp],eax
	call	_fentityname
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_18
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetchild
	mov	[ebp-52],eax
_18
	add	[ebp-60],1
_16
	mov	ebx,[ebp-56]
	cmp	[ebp-60],ebx
	jle	_17
_7
	cmp	[ebp-52],0
	jnz	_20
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcreatepivot
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-52]
	mov	[esp],eax
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp+4],ebx
	call	_fnameentity
	mov	ebx,[ebp-48]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-64],ebx
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	[esp+4],-1082130432
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fpositionentity
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	sub	esp,20
	mov	ebx,[ebp-68]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fcreatepivot
	mov	[ebp-52],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1090519040
	mov	[esp+4],-1090519040
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fpositionentity
_20
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[ebp-72],eax
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[ebp-76],eax
	sub	esp,8
	mov	eax,[ebp-76]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fbrushfx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fbrushtexture
	sub	esp,8
	mov	eax,[ebp-72]
	mov	[esp],eax
	mov	ebx,[ebp-76]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,4
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_ffreebrush
	sub	esp,8
	mov	eax,[ebp-72]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fspriteviewmode
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-68],ebx
	sub	esp,12
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-68]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp-68]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fscalesprite
	mov	eax,[ebp-72]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-80],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_8	.db	"simon.bmp",0
_19	.db	"pixiespace",0
_21	.db	"pixiespace",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

