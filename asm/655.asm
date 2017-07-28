
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
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
	mov	[ebp-4],eax
	sub	esp,20
	call	_fgraphicswidth
	mov	[esp+12],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+16],ebx
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadanimmesh
	mov	[_vzombie],eax
	sub	esp,8
	mov	eax,[_vzombie]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_ffindchild
	mov	[_vwaist],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1084227584
	mov	[esp+4],0
	mov	eax,[_vzombie]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vzombie]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1036831949
	mov	[esp+4],1
	mov	eax,[_vzombie]
	mov	[esp],eax
	call	_fanimate
	jmp	_7
_6
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	and	eax,eax
	jz	_8
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[_vzombie]
	mov	[esp],eax
	call	_fmoveentity
_8
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	and	eax,eax
	jz	_9
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1082130432
	mov	[esp+4],0
	mov	eax,[_vzombie]
	mov	[esp],eax
	call	_fmoveentity
_9
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_10
	add	[_vrotation],1
_10
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	and	eax,eax
	jz	_11
	sub	[_vrotation],1
_11
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,20
	mov	ebx,[_vrotation]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vwaist]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_6
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vzombie	.dd	0
_4	.db	"zombie.b3d",0
	.align	4
_vwaist	.dd	0
_5	.db	"Joint8",0
	.align	4
_vrotation	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

