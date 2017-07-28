
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_agenmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_agenmap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,_agenmap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agenmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],32
	mov	[esp+4],0
	mov	[esp],0
	call	_fsubdivide
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-8],eax
	call	_fdrawmap
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
	jmp	_11
_10
	cmp	[ebp-12],0
	jnz	_12
	call	_fcls
	call	_fdrawmap
	mov	[ebp-12],1
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],800
	mov	[esp+4],580
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],580
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_12
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_14
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	[ebp-16],0
	jmp	_15
_16
	mov	[ebp-20],0
	jmp	_17
_18
	mov	ebx,0
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_agenmap]
	mov	[esi],ebx
	add	[ebp-20],1
_17
	cmp	[ebp-20],100
	jle	_18
_5
	add	[ebp-16],1
_15
	cmp	[ebp-16],100
	jle	_16
_4
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],32
	mov	[esp+4],0
	mov	[esp],0
	call	_fsubdivide
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-8],eax
	mov	[ebp-12],0
_14
	sub	esp,4
	mov	[esp],100
	call	_fdelay
_11
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_10
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
_fdrawmap
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
	jmp	_19
_20
	mov	[ebp-8],0
	jmp	_21
_22
	sub	esp,12
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	add	ebx,50
	mov	[esp+4],ebx
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_agenmap]
	mov	esi,[esi]
	add	esi,50
	mov	[esp+8],esi
	mov	eax,_agenmap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_agenmap]
	mov	eax,[eax]
	add	eax,50
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-8]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_21
	cmp	[ebp-8],32
	jle	_22
_8
	add	[ebp-4],1
_19
	cmp	[ebp-4],32
	jle	_20
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsubdivide
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
	jz	_23
	mov	eax,0
	jmp	_9_leave
_23
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
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_24
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
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_agenmap]
	mov	[esi],ebx
_24
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+32]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_25
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
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_agenmap]
	mov	[esi],ebx
_25
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_26
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
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_agenmap]
	mov	[esi],ebx
_26
	mov	ebx,_agenmap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+28]
	shl	ebx,byte 2
	add	ebx,[_agenmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_27
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
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_agenmap]
	mov	[esi],ebx
_27
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
	mov	esi,_agenmap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_agenmap]
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
	call	_fsubdivide
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fsubdivide
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsubdivide
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fsubdivide
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_agenmap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_13	.db	"Alt+printscreen - Painter Inspiration / paint ontop (crom design) - [Cursor right]",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

