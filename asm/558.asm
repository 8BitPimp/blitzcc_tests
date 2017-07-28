
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
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],11
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],21
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],31
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-12],eax
	mov	[ebp-16],0
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-20],eax
_13
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-16],1
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_13
_3
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,_atextlines
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_atextlines
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atextlines
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atextcolour
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_atextcolour
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_atextcolour
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atextcolour
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atextsize
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_atextsize
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atextsize
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aimages
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-16]
	mov	esi,_aimages
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimages
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-20],eax
	mov	[ebp-28],1
	jmp	_16
_17
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],3
	call	_fleft
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,_atextcolour
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atextcolour]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+4],4
	mov	[esp+8],3
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,_atextcolour
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atextcolour]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+4],7
	mov	[esp+8],3
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,_atextcolour
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atextcolour]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+4],10
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atextsize]
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+4],11
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,10
	mov	[esp+8],eax
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atextlines]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,_atextcolour
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atextcolour]
	mov	ebx,[ebx]
	mov	esi,_atextcolour
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_atextcolour]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,_atextcolour
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_atextcolour]
	mov	esi,[esi]
	add	ebx,esi
	cmp	ebx,2997
	jnz	_18
	sub	esp,8
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_atextlines]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_aimages]
	mov	[ebx],eax
_18
	add	[ebp-28],1
_16
	mov	ebx,[ebp-16]
	cmp	[ebp-28],ebx
	jle	_17
_4
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fclosefile
	call	_l_2scroller
	call	_fend
_l_2scroller
	mov	[ebp-32],60
	mov	[ebp-36],20
	mov	[ebp-40],1
	jmp	_19
_20
	mov	[ebp-44],1
	jmp	_21
_22
	call	_fcls
	mov	[ebp-28],0
	jmp	_23
_24
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],640
	mov	ebx,[ebp-28]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	add	[ebp-28],1
_23
	cmp	[ebp-28],240
	jle	_24
_7
	mov	[ebp-28],0
	jmp	_25
_26
	sub	esp,12
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	mov	esi,_atextcolour
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atextcolour]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	add	esi,[ebp-40]
	mov	edi,_atextcolour
	add	edi,12
	mov	edi,[edi]
	imul	edi,3
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atextcolour]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	add	eax,[ebp-40]
	mov	esi,_atextcolour
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	eax,esi
	shl	eax,byte 2
	add	eax,[_atextcolour]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_atextsize]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_27
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
_27
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_atextsize]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_28
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fsetfont
_28
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_atextsize]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_29
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fsetfont
_29
	mov	ebx,[ebp-28]
	add	ebx,[ebp-40]
	mov	esi,_atextcolour
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atextcolour]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	add	esi,[ebp-40]
	mov	edi,_atextcolour
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atextcolour]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-28]
	add	esi,[ebp-40]
	mov	edi,_atextcolour
	add	edi,12
	mov	edi,[edi]
	imul	edi,3
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atextcolour]
	mov	esi,[esi]
	add	ebx,esi
	cmp	ebx,2997
	jge	_30
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[ebp-28]
	add	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_atextlines]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-28]
	imul	ebx,30
	sub	ebx,[ebp-44]
	sub	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	[esp],320
	call	_ftext
	jmp	_31
_30
	sub	esp,16
	mov	ebx,320
	sub	esp,4
	mov	eax,[ebp-28]
	add	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_aimages]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimagewidth
	sar	eax,byte 1
	sub	ebx,eax
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	imul	esi,30
	sub	esi,[ebp-44]
	sub	esi,[ebp-32]
	sub	esp,4
	mov	eax,[ebp-28]
	add	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_aimages]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimageheight
	sar	eax,byte 1
	sub	esi,eax
	mov	[esp+8],esi
	mov	[esp+12],0
	mov	eax,[ebp-28]
	add	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_aimages]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawimage
_31
	add	[ebp-28],1
_25
	mov	ebx,[ebp-36]
	cmp	[ebp-28],ebx
	jle	_26
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_32
	ret
_32
	sub	esp,4
	mov	[esp],1
	call	_fvwait
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],20
	call	_fdelay
	add	[ebp-44],1
_21
	cmp	[ebp-44],30
	jle	_22
_6
	add	[ebp-40],1
_19
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-36]
	cmp	[ebp-40],ebx
	jle	_20
_5
	ret
	ret
_2_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_9	.db	"Arial.TTF",0
_10	.db	"Arial.TTF",0
_11	.db	"Times.TTF",0
_12	.db	"credits.txt",0
_14	.db	"end",0
	.align	4
_atextlines	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_atextcolour	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atextsize	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aimages	.dd	0
	.dd	1
	.dd	1
	.dd	0
_15	.db	"credits.txt",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

