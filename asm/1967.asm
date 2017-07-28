
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[_vib],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	eax,[_vib]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	mov	[esp+4],480
	mov	[esp+8],1
	mov	[esp],640
	call	_fcreateimage
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[_vib2],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[_vib2]
	mov	[esp+8],esi
	mov	[esp],0
	call	_freadpixel
	mov	[_vzero],eax
	sub	esp,4
	mov	eax,[_vib2]
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-12],0
	jmp	_9
_10
	mov	[ebp-16],0
	jmp	_11
_12
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[_vib]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[_vp],eax
	mov	ebx,[_vp]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[_vr],ebx
	mov	ebx,[_vp]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[_vg],ebx
	mov	ebx,[_vp]
	mov	esi,255
	and	ebx,esi
	mov	[_vb],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fpaint
	add	[ebp-16],1
_11
	cmp	[ebp-16],479
	jle	_12
_4
	add	[ebp-12],1
_9
	cmp	[ebp-12],639
	jle	_10
_3
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcheckpixel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	setl	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp+20],640
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	mov	[ebp-28],eax
	cmp	[ebp+24],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	mov	[ebp-28],eax
	cmp	[ebp+24],480
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_17
	mov	eax,0
	jmp	_5_leave
_17
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[_vib2]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadpixelfast
	cmp	eax,[_vzero]
	jz	_18
	mov	eax,0
	jmp	_5_leave
_18
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[_vib]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,[_vr]
	sub	esi,ebx
	mov	[ebp-8],esi
	mov	ebx,[ebp-4]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,[_vg]
	sub	esi,ebx
	mov	[ebp-12],esi
	mov	ebx,[ebp-4]
	mov	esi,255
	and	ebx,esi
	mov	esi,[_vb]
	sub	esi,ebx
	mov	[ebp-16],esi
	mov	ebx,[ebp-8]
	imul	ebx,[ebp-8]
	mov	esi,[ebp-12]
	imul	esi,[ebp-12]
	add	ebx,esi
	mov	esi,[ebp-16]
	imul	esi,[ebp-16]
	add	ebx,esi
	mov	[ebp-20],ebx
	cmp	[ebp-20],2304
	jle	_19
	mov	eax,0
	jmp	_5_leave
_19
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_tpaint
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-24]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[_vp]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixel
	sub	esp,16
	mov	[esp+8],-1
	mov	esi,[_vib2]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritepixelfast
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpaint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fcheckpixel
_20
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tpaint
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_21
	jmp	_7
_21
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp+20],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp+24],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fcheckpixel
	sub	esp,8
	mov	eax,[ebp+20]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fcheckpixel
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fcheckpixel
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fcheckpixel
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	jmp	_20
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vib	.dd	0
	.align	4
_vib2	.dd	0
	.align	4
_vp	.dd	0
	.align	4
_vr	.dd	0
	.align	4
_vg	.dd	0
	.align	4
_vb	.dd	0
_8	.db	"image3.jpg",0
	.align	4
_vzero	.dd	0
	.align	4
_tpaint	.dd	5
_13	.dd	0
	.dd	_13
	.dd	_13
	.dd	0
	.dd	-1
_14	.dd	0
	.dd	_14
	.dd	_14
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tpaint2	.dd	5
_15	.dd	0
	.dd	_15
	.dd	_15
	.dd	0
	.dd	-1
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

