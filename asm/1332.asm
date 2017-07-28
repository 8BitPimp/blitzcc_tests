
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,8
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_13
	mov	[ebp-8],255
_13
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-16],0
	jmp	_15
_16
	sub	esp,24
	mov	eax,[ebp-16]
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	add	eax,[ebp-16]
	add	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+16],eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-16]
	mov	ecx,[ebp-8]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-24]
	add	ebx,[ebp-16]
	add	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp-16]
	mov	ecx,[ebp-8]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-24]
	add	ebx,[ebp-16]
	add	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetgamma
	add	[ebp-16],1
_15
	cmp	[ebp-16],255
	jle	_16
_3
	sub	esp,4
	mov	[esp],0
	call	_fupdategamma
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1008981770
	mov	[esp+8],1176256512
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	jmp	_18
_17
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_19
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
_19
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
_20
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	cmp	eax,1
	jnz	_21
	sub	esp,16
	mov	[esp+8],1028443341
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_21
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	cmp	eax,1
	jnz	_22
	sub	esp,16
	mov	[esp+8],-1119040307
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_22
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	cmp	eax,1
	jnz	_23
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_23
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	cmp	eax,1
	jnz	_24
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1119040307
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_24
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	cmp	eax,1
	jnz	_25
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1028443341
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_25
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	cmp	eax,1
	jnz	_26
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1119040307
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_26
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_17
_4
	call	_fend
	ret
_2_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_5	.db	"             Low------High",0
_6	.db	"Brightness < 0   50   100 (high # =high brightness",0
_7	.db	"                          low # =low brightness)  ",0
_8	.db	"",0
_9	.db	"Contrast   > 8   4    2   (low # =high contrast   ",0
_10	.db	"                          high # =low contrast)   ",0
_11	.db	"Brightness(0<100)   =",0
_12	.db	"Contrast  (8>2)     =",0
_14	.db	"Load Level (level.b3d)=",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

