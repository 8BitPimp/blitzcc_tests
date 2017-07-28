
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	[_vgamefps],50
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vbox],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1084227584
	mov	[esp+4],0
	mov	eax,[_vbox]
	mov	[esp],eax
	call	_fmoveentity
	mov	eax,1000
	mov	ecx,[_vgamefps]
	cdq
	idiv	ecx
	mov	[ebp-8],eax
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-12],eax
_7
_8
	call	_fmillisecs
	sub	eax,[ebp-12]
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_8
_4
	mov	eax,[ebp-16]
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	[ebp-28],1
	jmp	_9
_10
	mov	ebx,[ebp-20]
	cmp	[ebp-28],ebx
	jnz	_11
	call	_fcaptureworld
_11
	mov	ebx,[ebp-8]
	add	[ebp-12],ebx
	call	_fupdategame
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	add	[ebp-28],1
_9
	mov	ebx,[ebp-20]
	cmp	[ebp-28],ebx
	jle	_10
_5
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	and	eax,eax
	jz	_12
	mov	ebx,1
	sub	ebx,[ebp-32]
	mov	[ebp-32],ebx
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwireframe
_12
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_7
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
_fupdategame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],0
	mov	eax,[_vbox]
	mov	[esp],eax
	call	_fturnentity
_13
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_14
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1090519040
	mov	[esp+4],0
	mov	eax,[_vbox]
	mov	[esp],eax
	call	_fturnentity
_14
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vgamefps	.dd	0
	.align	4
_vbox	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

