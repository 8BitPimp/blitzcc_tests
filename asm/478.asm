
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	mov	[ebp-4],1036831949
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcam],eax
	sub	esp,20
	mov	[esp+12],600
	mov	[esp+16],400
	mov	[esp+8],100
	mov	[esp+4],100
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,16
	mov	[esp+8],1120403456
	mov	[esp+12],1120403456
	mov	[esp+4],1120403456
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,8
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,8
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fcamerazoom
	sub	esp,20
	mov	[esp+12],-1007026176
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],1132396544
	call	_fambientlight
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	jmp	_6
_5
	call	_fcls
	sub	esp,4
	mov	[esp],78
	call	_fkeydown
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1008981770
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,4
	mov	[esp],74
	call	_fkeydown
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[_vcam]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fcamerazoom
	sub	esp,24
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],208
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,esi
	call	_fkeydown
	mov	esi,eax
	mov	eax,[ebp-12]
	sub	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,8
	call	_fmousex
	mov	[esp],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fproject2dto3dortho
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_5
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
_fproject2dto3dortho
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	cmp	[ebp+20],100
	setge	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp+20],700
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	cmp	[ebp+24],100
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	cmp	[ebp+24],500
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_7
	mov	ebx,[ebp+20]
	sub	ebx,100
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	sub	ebx,100
	mov	[ebp-8],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	_fprojectedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],1065353216
	mov	eax,[_vcam]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	call	_fprojectedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-20]
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
	mov	[ebp-28],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	sub	esp,32
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
_7
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vcam	.dd	0
_8	.db	"Cursor is at World position X : ",0
_9	.db	"                            Y : ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

