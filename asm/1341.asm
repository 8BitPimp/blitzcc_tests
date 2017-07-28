
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
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
	call	_fapptitle
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	call	_fcls
	sub	esp,12
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_floadtexture
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[_vflipper],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[_vflipper]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,20
	mov	[esp+12],-1056440320
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vflipper]
	mov	[esp],eax
	call	_fpositionentity
	call	_fmillisecs
	mov	[ebp-12],eax
	mov	[_vb],0
	mov	[_vghost],1
	jmp	_11
_10
	mov	ebx,[_vghost]
	mov	[ebp-16],ebx
	cmp	[ebp-16],1
	jz	_13
	cmp	[ebp-16],0
	jz	_14
	jmp	_12
_13
	call	_ffadein
	jmp	_12
_14
	call	_ffadeout
	jmp	_12
_12
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vb]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
_11
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_10
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
_ffadein
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fmillisecs
	mov	ebx,[ebp-4]
	add	ebx,1500
	cmp	eax,ebx
	jle	_16
	mov	ebx,[_vb]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vb],ebx
	mov	eax,[_vb]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_17
	mov	[_vb],1065353216
	mov	[_vghost],0
_17
	sub	esp,8
	mov	eax,[_vflipper]
	mov	[esp],eax
	mov	ebx,[_vb]
	mov	[esp+4],ebx
	call	_fentityalpha
	call	_fmillisecs
	mov	[ebp-4],eax
_16
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffadeout
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fmillisecs
	mov	ebx,[ebp-4]
	add	ebx,1500
	cmp	eax,ebx
	jle	_18
	mov	ebx,[_vb]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vb],ebx
	mov	eax,[_vb]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,981668463
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_19
	mov	[_vb],0
	mov	[_vghost],1
_19
	sub	esp,8
	mov	eax,[_vflipper]
	mov	[esp],eax
	mov	ebx,[_vb]
	mov	[esp+4],ebx
	call	_fentityalpha
	call	_fmillisecs
	mov	[ebp-4],eax
_18
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_7	.db	"FADER 1.0",0
_8	.db	"",0
_9	.db	"image/TWSintro.png",0
	.align	4
_vghost	.dd	0
	.align	4
_vb	.dd	0
	.align	4
_vflipper	.dd	0
_15	.db	"ALPHA: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

