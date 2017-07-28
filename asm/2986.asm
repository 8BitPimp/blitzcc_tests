
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
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,4
	mov	eax,_aspheres
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1000
	mov	esi,_aspheres
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspheres
	mov	[esp],eax
	call	__bbDimArray
_7
	mov	[ebp-8],1
	jmp	_8
_9
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatesphere
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aspheres]
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],1008981770
	mov	[esp+16],0
	mov	[esp+8],1008981770
	mov	[esp+4],1008981770
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aspheres]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,28
	mov	eax,[ebp-8]
	neg	eax
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	neg	ebx
	mov	[esp],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-8]
	neg	ebx
	mov	[esp],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aspheres]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-8],1
_8
	cmp	[ebp-8],1000
	jle	_9
_4
	sub	esp,4
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmovecamera
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,8
	mov	[esp],1092616192
	mov	[esp+4],1092616192
	call	_fshowfps
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_7
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmovecamera
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_10
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1082130432
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_11
_10
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_12
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1065353216
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_12
_11
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_13
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_14
_13
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_15
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmoveentity
_15
_14
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fshowfps
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_16
	mov	ebx,[ebp-4]
	add	ebx,1000
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	jmp	_17
_16
	add	[ebp-12],1
_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vcamera	.dd	0
	.align	4
_aspheres	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

