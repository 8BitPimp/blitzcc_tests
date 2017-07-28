
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vmapwidth],100
	mov	[_vmapheight],100
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapwidth]
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapheight]
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	call	_fdomidpoint
	call	_fgraphicswidth
	mov	ecx,[_vmapwidth]
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	ecx,[_vmapheight]
	cdq
	idiv	ecx
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_9
_10
	mov	[ebp-16],0
	jmp	_11
_12
	sub	esp,12
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_amap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-12]
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	add	[ebp-16],1
_11
	mov	ebx,[_vmapwidth]
	cmp	[ebp-16],ebx
	jle	_12
_4
	add	[ebp-12],1
_9
	mov	ebx,[_vmapheight]
	cmp	[ebp-12],ebx
	jle	_10
_3
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
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
_fdomidpoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_13
_14
	mov	[ebp-8],0
	jmp	_15
_16
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_15
	mov	ebx,[_vmapwidth]
	cmp	[ebp-8],ebx
	jle	_16
_7
	add	[ebp-4],1
_13
	mov	ebx,[_vmapheight]
	cmp	[ebp-4],ebx
	jle	_14
_6
	mov	ebx,128
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,128
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[_vmapwidth]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,128
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vmapheight]
	add	esi,[_vmapwidth]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,128
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vmapheight]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[_vmapwidth]
	mov	[esp+8],ebx
	mov	esi,[_vmapheight]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_fmidpoint
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
_fmidpoint
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
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	cmp	eax,2
	setl	al
	movzx	eax,al
	mov	[ebp-36],eax
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	cmp	ebx,2
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_17
	mov	eax,0
	jmp	_8_leave
_17
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sar	ebx,byte 1
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sar	ebx,byte 1
	mov	[ebp-16],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_18
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,eax
	sub	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_18
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_19
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-32]
	add	ebx,[ebp-28]
	add	ebx,eax
	sub	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_19
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_20
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-20]
	add	ebx,[ebp-32]
	add	ebx,eax
	sub	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_20
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_21
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-24]
	add	ebx,[ebp-28]
	add	ebx,eax
	sub	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_21
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-20]
	add	ebx,[ebp-24]
	add	ebx,[ebp-28]
	add	ebx,[ebp-32]
	add	ebx,eax
	sub	ebx,[ebp-8]
	sar	ebx,byte 2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmidpoint
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmidpoint
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fmidpoint
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmidpoint
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_vmapwidth	.dd	0
	.align	4
_vmapheight	.dd	0
	.align	4
_amap	.dd	0
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

