
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
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],306
	call	_floadtexture
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_floadalphachannel
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadalphachannel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],2
	call	_floadtexture
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_8
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftexturewidth
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftexturewidth
	mov	ebx,eax
	mov	eax,[ebp-40]
	cmp	eax,ebx
	jnz	_9
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftextureheight
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftextureheight
	mov	ebx,eax
	mov	eax,[ebp-40]
	cmp	eax,ebx
	jnz	_10
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-8],0
	jmp	_11
_12
	mov	[ebp-12],0
	jmp	_13
_14
	sub	esp,20
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-28],ebx
	mov	eax,[ebp-20]
	add	eax,[ebp-24]
	add	eax,[ebp-28]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-32],eax
	cmp	[ebp-32],255
	jle	_15
	mov	[ebp-32],255
_15
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-36],eax
	sub	esp,16
	mov	ebx,[ebp-36]
	mov	esi,[ebp-32]
	shl	esi,byte 24
	or	ebx,esi
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_13
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-12],eax
	jle	_14
_5
	add	[ebp-8],1
_11
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_12
_4
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_10
_9
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreetexture
_8
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_6	.db	"data\hud.jpg",0
_7	.db	"data\hud_mask.png",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

