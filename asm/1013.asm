
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
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
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
	mov	[esp+12],-1054867456
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	[_vsprite],eax
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],4
	call	_floadtexture
	mov	[_vtex],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtex]
	mov	[esp+4],esi
	mov	eax,[_vsprite]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1073741824
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1065353216
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1086324736
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	eax,[_vtex]
	mov	[esp],eax
	call	_fprepare_texture
	jmp	_12
_11
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],55
	mov	[esp+8],255
	mov	[esp+4],0
	mov	eax,[_vtex]
	mov	[esp],eax
	call	_ftexture_mask_colour
_13
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	and	eax,eax
	jz	_14
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],50
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vtex]
	mov	[esp],eax
	call	_ftexture_mask_colour
_14
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_15
	sub	esp,8
	mov	eax,[_vsprite]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
_15
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
	mov	eax,_16
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
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_11
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
_fprepare_texture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_19
_20
	mov	[ebp-8],0
	jmp	_21
_22
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-12]
	mov	esi,-16777216
	and	ebx,esi
	shr	ebx,byte 24
	mov	[ebp-28],ebx
	mov	[ebp-28],255
	mov	ebx,[ebp-28]
	shl	ebx,byte 24
	mov	esi,[ebp-16]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,[ebp-20]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-24]
	or	ebx,esi
	mov	[ebp-32],ebx
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_21
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_22
_6
	add	[ebp-4],1
_19
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_20
_5
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ftexture_mask_colour
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_23
_24
	mov	[ebp-8],0
	jmp	_25
_26
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-12]
	mov	esi,-16777216
	and	ebx,esi
	shr	ebx,byte 24
	mov	[ebp-28],ebx
	mov	eax,[ebp+24]
	sub	eax,[ebp+36]
	cmp	[ebp-16],eax
	setge	al
	movzx	eax,al
	mov	[ebp-36],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp+36]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	mov	[ebp-36],eax
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+36]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	mov	[ebp-36],eax
	mov	ebx,[ebp+28]
	add	ebx,[ebp+36]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	mov	[ebp-36],eax
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+36]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	mov	[ebp-36],eax
	mov	ebx,[ebp+32]
	add	ebx,[ebp+36]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_27
	mov	[ebp-28],0
_27
	mov	ebx,[ebp-28]
	shl	ebx,byte 24
	mov	esi,[ebp-16]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,[ebp-20]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-24]
	or	ebx,esi
	mov	[ebp-32],ebx
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_25
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_26
_9
	add	[ebp-4],1
_23
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_24
_8
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	4
_vsprite	.dd	0
	.align	4
_vtex	.dd	0
_10	.db	"image1.png",0
_16	.db	" Press 1 to mask green from the texture",0
_17	.db	" Press 3 to mask black from the texture",0
_18	.db	" Press 2 to turn on entityalpha ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

