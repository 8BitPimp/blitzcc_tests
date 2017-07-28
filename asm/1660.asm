
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,0
	jnz	_9
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
	call	_fend
_9
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-28]
	sub	ebx,19
	mov	[esp+4],ebx
	call	_fright
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-28]
	sub	ebx,19
	mov	[esp+4],ebx
	call	_fright
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,_abuffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,63
	mov	esi,_abuffer
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_abuffer
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abuffer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],12
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fsetfont
	jmp	_14
_13
	sub	esp,16
	mov	[esp],0
	mov	[esp+4],1000
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],100
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fng_putinbuffer
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	[esp+4],1120403456
	mov	[esp],1148846080
	call	_fng_updatenetgraph
	sub	esp,4
	mov	[esp],1
	call	_fflip
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_13
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fng_drawgraphbg
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],64
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],115
	mov	[esp+16],1
	mov	[esp+8],200
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],101
	mov	[esp+16],0
	mov	[esp+8],201
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	[esp+12],116
	mov	[esp+16],0
	mov	[esp+8],201
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],255
	mov	[esp],128
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1110704128
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1128464384
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1110704128
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1110704128
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1119748096
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1113325568
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1128464384
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1119748096
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1119748096
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fng_updatenetgraph
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fng_drawgraphbg
	mov	[ebp-4],1
	jmp	_15
_16
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1110441984
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1110441984
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1110441984
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1110441984
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119617024
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1119617024
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119617024
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1119617024
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],110
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1110441984
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,1084227584
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1110441984
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+20]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,1084227584
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119617024
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1082130432
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,1113325568
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119617024
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	esi,[esi]
	imul	esi,40
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,[ebp+24]
	push	edi
	fld	[esp]
	pop	edi
	fdivp	st(1)
	fsubp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1084227584
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	mov	edi,3
	imul	edi,[ebp-4]
	push	edi
	fild	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	mov	edx,1113325568
	push	edx
	fld	[esp]
	pop	edx
	faddp	st(1)
	push	edi
	fistp	[esp]
	pop	edi
	mov	[esp+12],edi
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,3
	imul	esi,[ebp-4]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
	cmp	[ebp-4],63
	jge	_17
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fng_updatebuffer
_17
	add	[ebp-4],1
_15
	cmp	[ebp-4],63
	jle	_16
_6
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,56
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_abuffer
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,63
	shl	ebx,byte 2
	add	ebx,[_abuffer]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_abuffer
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,63
	shl	ebx,byte 2
	add	ebx,[_abuffer]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120665600
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+28]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fng_putinbuffer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,63
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,63
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	[esi],ebx
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fng_updatebuffer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_abuffer]
	mov	ebx,[ebx]
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_abuffer]
	mov	ebx,[ebx]
	mov	esi,_abuffer
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abuffer]
	mov	[esi],ebx
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_10	.db	"netgraph.ngf",0
_11	.db	"NetGraph.ngf does not seem to exist. Please download again.",0
_12	.db	"netgraph.ngf",0
	.align	4
_vx	.dd	0
	.align	4
_vy	.dd	0
	.align	4
_va	.dd	0
	.align	4
_vb	.dd	0
	.align	4
_abuffer	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_18	.db	"NetGraph>> in::",0
_19	.db	"Ko/s | out::",0
_20	.db	"Ko/s",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
