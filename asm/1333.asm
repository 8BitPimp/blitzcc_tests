
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	mov	[ebp-4],5
	sub	esp,4
	mov	eax,_atextcolor
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_atextcolor
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atextcolor
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_ax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_ay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aspeed
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aspeed
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aspeed
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],255
	mov	[ebp-12],2
	mov	[ebp-16],1
	jmp	_7
_8
	mov	ebx,[ebp-8]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atextcolor]
	mov	[esi],ebx
	mov	eax,200
	mov	ecx,[ebp-4]
	cdq
	idiv	ecx
	sub	[ebp-8],eax
	add	[ebp-16],1
_7
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_8
_3
	mov	[ebp-20],1
	jmp	_9
_10
	mov	ebx,[ebp-12]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aspeed]
	mov	[esi],ebx
	add	[ebp-12],1
	add	[ebp-20],1
_9
	mov	ebx,[ebp-4]
	cmp	[ebp-20],ebx
	jle	_10
_4
	jmp	_12
_11
	call	_fcls
	mov	ebx,[ebp-4]
	mov	[ebp-24],ebx
	jmp	_13
_14
	call	_fmousex
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	sub	eax,ebx
	mov	ecx,[ebp-24]
	shl	ecx,byte 2
	add	ecx,[_aspeed]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
	call	_fmousey
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	sub	eax,ebx
	mov	ecx,[ebp-24]
	shl	ecx,byte 2
	add	ecx,[_aspeed]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	sub	esp,12
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_atextcolor]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_atextcolor]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_atextcolor]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	add	eax,10
	mov	[esp],eax
	call	_ftext
	add	[ebp-24],-1
_13
	cmp	[ebp-24],1
	jge	_14
_6
	sub	esp,4
	mov	[esp],1
	call	_fflip
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_11
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
_atextcolor	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ax	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ay	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aspeed	.dd	0
	.dd	1
	.dd	1
	.dd	0
_15	.db	"This is the followtext demo",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

