
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1157234688
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-998637568
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1140457472
	mov	[esp+16],0
	mov	[esp+8],1140457472
	mov	[esp+4],1140457472
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1148846080
	mov	[esp+12],-998637568
	mov	[esp+4],1148846080
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
	sub	esp,16
	mov	[esp+8],8
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-16],eax
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-20],0
	jmp	_6
_7
	sub	esp,8
	mov	[esp],1115684864
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1124073472
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],1115684864
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],1115684864
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,20
	mov	ebx,2
	add	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,2
	add	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	add	ebx,2
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	add	eax,2
	mov	[esp],eax
	call	_frect
	add	[ebp-20],1
_6
	cmp	[ebp-20],511
	jle	_7
_3
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[ebp-44],eax
	sub	esp,12
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-20],0
	jmp	_8
_9
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,28
	mov	[esp],1082130432
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],0
	call	_frnd
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],1
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
	add	[ebp-20],1
_8
	cmp	[ebp-20],100
	jle	_9
_4
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1045220557
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	[esp+4],1056964608
	mov	[esp+8],1045220557
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],3
	call	_ftextureblend
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_11
_10
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1119040307
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_11
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_10
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
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
