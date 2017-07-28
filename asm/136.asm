
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	sub	esp,4
	mov	eax,_axval
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,20
	mov	esi,_axval
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axval
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ayval
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,20
	mov	esi,_ayval
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ayval
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,24
	mov	[esp+16],30
	mov	[esp+20],20
	mov	[esp+12],20
	mov	[esp+8],80
	mov	[esp+4],0
	mov	[esp],50
	call	_ftriangle
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
_ftriangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],3
	call	_fpoly
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fquad
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	mov	ebx,[ebp+44]
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_axval]
	mov	[esi],ebx
	mov	ebx,[ebp+48]
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ayval]
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],4
	call	_fpoly
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fpoly
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	call	_fgraphicswidth
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	sub	ebx,1
	mov	[ebp-12],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	jmp	_11
_10
	add	[ebp-20],1
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	cmp	[ebp-24],ebx
	jge	_12
	mov	ebx,[ebp-24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
_12
_11
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jnz	_10
_6
	mov	ebx,[ebp-28]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-32],ebx
	jmp	_14
_13
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jnz	_15
	jmp	_17
_16
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_axval]
	mov	ebx,[ebx]
	shl	ebx,byte 16
	mov	[ebp-36],ebx
	add	[ebp-20],1
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jle	_18
	mov	ebx,[ebp-40]
	mov	[ebp-20],ebx
_18
	mov	ebx,[ebp-32]
	cmp	[ebp-20],ebx
	jnz	_19
	mov	eax,0
	jmp	_5_leave
_19
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_20
	mov	eax,0
	jmp	_5_leave
_20
_17
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jz	_16
_8
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	sub	ebx,[ebp-16]
	mov	[ebp-44],ebx
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_axval]
	mov	eax,[eax]
	shl	eax,byte 16
	sub	eax,[ebp-36]
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-48],eax
_15
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jnz	_21
	jmp	_23
_22
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_axval]
	mov	ebx,[ebx]
	shl	ebx,byte 16
	mov	[ebp-52],ebx
	sub	[ebp-28],1
	mov	ebx,[ebp-40]
	cmp	[ebp-28],ebx
	jge	_24
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
_24
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_25
	mov	eax,0
	jmp	_5_leave
_25
_23
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jz	_22
_9
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ayval]
	mov	ebx,[ebx]
	sub	ebx,[ebp-16]
	mov	[ebp-44],ebx
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_axval]
	mov	eax,[eax]
	shl	eax,byte 16
	sub	eax,[ebp-52]
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-56],eax
_21
	mov	ebx,[ebp-52]
	sar	ebx,byte 16
	mov	[ebp-60],ebx
	mov	ebx,[ebp-36]
	sar	ebx,byte 16
	sub	ebx,[ebp-60]
	add	ebx,1
	mov	[ebp-64],ebx
	cmp	[ebp-64],0
	setg	al
	movzx	eax,al
	mov	[ebp-68],eax
	cmp	[ebp-16],-1
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-60],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	mov	[ebp-68],eax
	mov	ebx,[ebp-60]
	add	ebx,[ebp-64]
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	and	eax,eax
	jz	_26
	cmp	[ebp-60],0
	jge	_27
	mov	ebx,[ebp-60]
	add	[ebp-64],ebx
	mov	[ebp-60],0
_27
	mov	ebx,[ebp-60]
	add	ebx,[ebp-64]
	cmp	ebx,[ebp-4]
	jle	_28
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-60]
	mov	[ebp-64],ebx
_28
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_frect
_26
	mov	ebx,[ebp-48]
	add	[ebp-36],ebx
	mov	ebx,[ebp-56]
	add	[ebp-52],ebx
	add	[ebp-16],1
_14
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jl	_13
_7
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_axval	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ayval	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

