
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
	jmp	_9
_8
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	call	_fmillisecs
	mov	[ebp-4],eax
	call	_fmousex
	mov	[ebp-8],eax
	call	_fmousey
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_10
_11
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	[esp+4],240
	mov	[esp],320
	call	_fline2
	add	[ebp-16],1
_10
	cmp	[ebp-16],10000
	jle	_11
_4
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,32
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,953267991
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],0
	call	_fflip
	call	_fcls
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
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
_fline2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,4
	mov	eax,[ebp+24]
	sub	eax,[ebp+32]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	sub	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	eax,ebx
	jg	_14
	mov	ebx,[ebp+28]
	cmp	[ebp+20],ebx
	jle	_15
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+32]
	mov	[ebp+24],ebx
	mov	ebx,[ebp-4]
	mov	[ebp+28],ebx
	mov	ebx,[ebp-8]
	mov	[ebp+32],ebx
_15
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	jmp	_16
_17
	mov	eax,[ebp-12]
	sub	eax,[ebp+20]
	mov	ebx,[ebp+32]
	sub	ebx,[ebp+24]
	imul	eax,ebx
	mov	ecx,[ebp+28]
	sub	ecx,[ebp+20]
	cdq
	idiv	ecx
	add	eax,[ebp+24]
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],16777215
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-12],1
_16
	mov	ebx,[ebp+28]
	cmp	[ebp-12],ebx
	jle	_17
_6
	jmp	_18
_14
	mov	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	jle	_19
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+32]
	mov	[ebp+24],ebx
	mov	ebx,[ebp-4]
	mov	[ebp+28],ebx
	mov	ebx,[ebp-8]
	mov	[ebp+32],ebx
_19
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	jmp	_20
_21
	mov	eax,[ebp-16]
	sub	eax,[ebp+24]
	mov	ebx,[ebp+28]
	sub	ebx,[ebp+20]
	imul	eax,ebx
	mov	ecx,[ebp+32]
	sub	ecx,[ebp+24]
	cdq
	idiv	ecx
	add	eax,[ebp+20]
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],16777215
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-16],1
_20
	mov	ebx,[ebp+32]
	cmp	[ebp-16],ebx
	jle	_21
_7
_18
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_12	.db	"Millisecs per line: ",0
_13	.db	"The line you see is drawn 10.000 times to measure the correct time!!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

