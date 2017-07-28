
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1109393408
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vsphere],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[_vsphere]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vlevel],eax
	sub	esp,4
	mov	eax,_acube
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acube
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acube
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_7
_8
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acube]
	mov	[ebx],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 1
	add	ebx,-10
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1054867456
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acube]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acube]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,12
	mov	ebx,[_vlevel]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acube]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	add	[ebp-4],1
_7
	cmp	[ebp-4],10
	jle	_8
_3
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],2
	mov	[esp],1
	call	_fcollisions
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],1
	mov	[esp],1
	call	_fcollisions
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],2
	mov	[esp+4],3
	mov	[esp],1
	call	_fcollisions
	jmp	_10
_9
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_11
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1036831949
	mov	eax,[_vlevel]
	mov	[esp],eax
	call	_fmoveentity
_11
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	and	eax,eax
	jz	_12
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1110651699
	mov	eax,[_vlevel]
	mov	[esp],eax
	call	_fmoveentity
_12
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	and	eax,eax
	jz	_13
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1110651699
	mov	[esp+4],0
	mov	eax,[_vlevel]
	mov	[esp],eax
	call	_fmoveentity
_13
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	and	eax,eax
	jz	_14
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[_vlevel]
	mov	[esp],eax
	call	_fmoveentity
_14
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	call	_fupdatecubes
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_9
_4
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
_fupdatecubes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_15
_16
	sub	esp,28
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acube]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acube]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-8]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acube]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	add	[ebp-4],1
_15
	cmp	[ebp-4],10
	jle	_16
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vlight	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vsphere	.dd	0
	.align	4
_vlevel	.dd	0
	.align	4
_acube	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

