
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-8],eax
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-12],0
	jmp	_8
_9
	sub	esp,4
	mov	eax,[ebp-4]
	mov	ecx,200
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-12]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,20
	mov	eax,[ebp-8]
	mov	ecx,50
	cdq
	idiv	ecx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-8]
	mov	ecx,50
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	add	eax,[ebp-16]
	mov	[esp],eax
	call	_frect
	add	[ebp-12],1
_8
	cmp	[ebp-12],359
	jle	_9
_3
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdelay
	mov	ebx,[ebp-8]
	neg	ebx
	sar	ebx,byte 1
	mov	[ebp-24],ebx
	mov	ebx,[ebp-8]
	neg	ebx
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	sub	esp,20
	mov	eax,[ebp-8]
	mov	ecx,25
	cdq
	idiv	ecx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-8]
	mov	ecx,25
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdelay
	mov	ebx,[ebp-8]
	neg	ebx
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-8]
	neg	ebx
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	sub	esp,20
	mov	eax,[ebp-8]
	mov	ecx,25
	cdq
	idiv	ecx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-8]
	mov	ecx,25
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdelay
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	mov	ebx,[ebp-8]
	neg	ebx
	sar	ebx,byte 1
	mov	[ebp-24],ebx
	mov	[ebp-32],0
	jmp	_10
_11
	sub	esp,4
	mov	eax,[ebp-4]
	mov	ecx,20
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
	add	[ebp-24],5
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	sub	esp,20
	mov	eax,[ebp-8]
	mov	ecx,50
	cdq
	idiv	ecx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-8]
	mov	ecx,50
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_frect
	add	[ebp-32],1
_10
	mov	eax,[ebp-8]
	mov	ecx,5
	cdq
	idiv	ecx
	cmp	[ebp-32],eax
	jle	_11
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdelay
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-36],ebx
	mov	ebx,[ebp-24]
	mov	[ebp-40],ebx
	mov	[ebp-32],1
	jmp	_12
_13
	sub	esp,4
	mov	eax,[ebp-4]
	mov	ecx,200
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
	mov	ebx,[ebp-8]
	neg	ebx
	sar	ebx,byte 1
	add	ebx,5
	mov	[ebp-24],ebx
	mov	eax,[ebp-8]
	mov	ecx,100
	cdq
	idiv	ecx
	sub	[ebp-28],eax
	sub	esp,20
	mov	eax,[ebp-8]
	mov	ecx,50
	cdq
	idiv	ecx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-8]
	mov	ecx,50
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	eax,[ebp-4]
	mov	ecx,200
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
	mov	ebx,[ebp-40]
	mov	[ebp-44],ebx
	mov	eax,[ebp-8]
	mov	ecx,100
	cdq
	idiv	ecx
	sub	[ebp-36],eax
	sub	esp,20
	mov	eax,[ebp-8]
	mov	ecx,50
	cdq
	idiv	ecx
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	ebx,[ebp-8]
	mov	ecx,50
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	add	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	eax,[ebp-4]
	mov	ecx,200
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
	add	[ebp-32],1
_12
	mov	eax,[ebp-8]
	mov	ecx,15
	cdq
	idiv	ecx
	cmp	[ebp-32],eax
	jle	_13
_5
	sub	esp,4
	mov	eax,[ebp-4]
	mov	ecx,500
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"Drawing Speed In Milli-Seconds (1000 Milli-Seconds = 1 Second - ",0
_7	.db	"Size of smiley? (250-400 recommended) - ",0
_14	.db	"I'm so happy!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

