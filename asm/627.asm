
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1063256064
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],34
	call	_fentityfx
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1077936128
	mov	[esp+12],1077936128
	mov	[esp+4],1077936128
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],34
	call	_fentityfx
	call	_fcleartexturefilters
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],3
	call	_floadtexture
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fgetsurface
	mov	[ebp-20],eax
	mov	[ebp-24],0
	jmp	_7
_8
	sub	esp,16
	mov	[esp+8],1065420325
	mov	[esp+12],1065420325
	mov	[esp+4],1065420325
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1101004800
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotatemesh
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-28],esi
	mov	[ebp-32],0
	jmp	_9
_10
	sub	esp,24
	mov	[esp+16],1132396544
	mov	esi,[ebp-28]
	mov	[esp+20],esi
	mov	[esp+12],1132396544
	mov	[esp+8],1132396544
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-32],1
_9
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-32],eax
	jle	_10
_4
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_faddmesh
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1165815185
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
_7
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1130113270
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_8
_3
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreeentity
	jmp	_12
_11
	sub	esp,4
	mov	[esp],0
	call	_fflip
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],1022739087
	mov	[esp+16],0
	mov	[esp+8],1039516303
	mov	[esp+4],1022739087
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_11
_5
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"fur3.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

