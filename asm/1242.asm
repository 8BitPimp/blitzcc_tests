
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],400
	mov	[esp],600
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
_5
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_6
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
_6
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_7
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
_7
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	cmp	eax,1
	jnz	_8
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1119040307
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
_8
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	cmp	eax,1
	jnz	_9
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
_9
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_10
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	mov	ebx,5
	sub	ebx,eax
	mov	[ebp-8],ebx
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	mov	ebx,5
	sub	ebx,eax
	mov	[ebp-12],ebx
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],1
	call	_frand
	mov	ebx,5
	sub	ebx,eax
	mov	[ebp-16],ebx
	sub	esp,24
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	mov	[esp+20],esi
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-8]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-28],ebx
_10
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
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
_fline
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
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-4],eax
	sub	esp,20
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,20
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1036831949
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-12],eax
	sub	esp,20
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-16],esi
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	[ebp-20],eax
	sub	esp,20
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1028443341
	mov	[esp+16],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	[esp+4],1028443341
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
_11	.db	"Press Enter to Create a 3D Line",0
_12	.db	"Use Arrows to move arround",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

