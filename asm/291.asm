
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],200
	mov	[esp],400
	call	_fgraphics
	sub	esp,4
	mov	eax,_asnd
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,400
	mov	esi,_asnd
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asnd
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,256
	mov	esi,_acol
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acol
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acolmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,400
	mov	esi,_acolmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,200
	mov	esi,_acolmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolmap
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_8
_9
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	shl	ebx,byte 8
	shl	ebx,byte 8
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acol]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	shl	ebx,byte 8
	mov	esi,[ebp-4]
	add	esi,64
	shl	esi,byte 2
	add	esi,[_acol]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	mov	esi,[ebp-4]
	add	esi,128
	shl	esi,byte 2
	add	esi,[_acol]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	shl	ebx,byte 8
	shl	ebx,byte 8
	mov	esi,[ebp-4]
	shl	esi,byte 2
	shl	esi,byte 8
	add	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	ebx,esi
	mov	esi,[ebp-4]
	add	esi,192
	shl	esi,byte 2
	add	esi,[_acol]
	mov	[esi],ebx
	add	[ebp-4],1
_8
	cmp	[ebp-4],63
	jle	_9
_3
_10
	sub	esp,8
	mov	[esp],-66
	mov	[esp+4],66
	call	_frand
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_asnd]
	mov	[ebx],eax
	mov	[ebp-4],1
	jmp	_11
_12
	sub	esp,8
	mov	[esp],-10
	mov	[esp+4],10
	call	_frand
	mov	ebx,[ebp-4]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asnd]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asnd]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asnd]
	mov	ebx,[ebx]
	cmp	ebx,-200
	jge	_13
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_asnd]
	mov	eax,[eax]
	cmp	eax,400
	setz	al
	movzx	eax,al
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asnd]
	mov	[ebx],eax
_13
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asnd]
	mov	ebx,[ebx]
	cmp	ebx,200
	jle	_14
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asnd]
	mov	ebx,[ebx]
	sub	ebx,400
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asnd]
	mov	[esi],ebx
_14
	add	[ebp-4],1
_11
	cmp	[ebp-4],399
	jle	_12
_5
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	[esp+8],399
	mov	[esp+12],0
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],399
	mov	[esp+12],199
	mov	[esp+4],199
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],200
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],399
	mov	[esp+12],199
	mov	[esp+4],0
	mov	[esp],399
	call	_fline
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-8],0
	jmp	_15
_16
	mov	[ebp-12],0
	jmp	_17
_18
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_acolmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_acolmap]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_acolmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolmap]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_acolmap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-8]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_acolmap]
	mov	esi,[esi]
	mov	[ebp-24],esi
	mov	ebx,_acolmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolmap]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	cmp	[ebp-16],0
	jge	_19
	add	[ebp-16],256
_19
	cmp	[ebp-20],0
	jge	_20
	add	[ebp-20],256
_20
	cmp	[ebp-24],0
	jge	_21
	add	[ebp-24],256
_21
	cmp	[ebp-28],0
	jge	_22
	add	[ebp-28],256
_22
	mov	ebx,[ebp-16]
	add	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,[ebp-28]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-32]
	sar	ebx,byte 2
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jle	_23
	sub	[ebp-32],1
_23
	mov	ebx,[ebp-32]
	mov	esi,_acolmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_acolmap]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_acol]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_17
	cmp	[ebp-12],198
	jle	_18
_7
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asnd]
	mov	eax,[eax]
	mov	ecx,3
	cdq
	idiv	ecx
	add	eax,100
	mov	ebx,_acolmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acolmap]
	mov	ebx,255
	mov	[eax],ebx
	sub	esp,16
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asnd]
	mov	eax,[eax]
	mov	ecx,3
	cdq
	idiv	ecx
	add	eax,100
	mov	[esp+4],eax
	mov	[esp+8],16777215
	mov	[esp+12],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritepixelfast
	mov	ebx,eax
	add	[ebp-8],1
_15
	cmp	[ebp-8],399
	jle	_16
_6
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_10
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
	.align	4
_asnd	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acol	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acolmap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

