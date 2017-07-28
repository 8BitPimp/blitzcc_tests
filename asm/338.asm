
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	mov	eax,_apal
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_apal
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apal
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vblur],0
	mov	[_vfade],0
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-12],eax
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-16],0
	jmp	_13
_14
	mov	[ebp-20],0
	jmp	_15
_16
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[ebp-8]
	add	[ebp-24],ebx
	cmp	[ebp-24],640
	jl	_17
	mov	[ebp-24],0
_17
	add	[ebp-20],1
_15
	mov	eax,640
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	cmp	[ebp-20],eax
	jle	_16
_4
	mov	ebx,[ebp-12]
	add	[ebp-28],ebx
	add	[ebp-16],1
_13
	mov	eax,480
	mov	ecx,[ebp-12]
	cdq
	idiv	ecx
	cmp	[ebp-16],eax
	jle	_14
_3
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],24
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],320
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],260
	mov	[esp],320
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],0
	jmp	_22
_23
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,12
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_24
	call	_fupdate_screen_1
_24
	sub	esp,12
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_26
	mov	[_vfade],1
	call	_fupdate_screen_1
_26
	sub	esp,12
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_28
	call	_fupdate_screen_2
	call	_fupdate_screen_1
_28
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_funlockbuffer
	add	[ebp-16],1
_22
	cmp	[ebp-16],0
	jle	_23
_5
	sub	esp,4
	mov	[esp],4000
	call	_fdelay
	ret
_2_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdate_screen_1
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],1
	jmp	_30
_31
	mov	[ebp-8],1
	jmp	_32
_33
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	sub	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_apal]
	mov	eax,[eax]
	imul	eax,[_vblur]
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ecx,4
	add	ecx,[_vblur]
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jg	_34
	mov	[ebp-12],0
_34
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	add	esi,[_vfade]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_32
	cmp	[ebp-8],640
	jle	_33
_8
	add	[ebp-4],1
_30
	cmp	[ebp-4],480
	jle	_31
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
_fupdate_screen_2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],1
	jmp	_35
_36
	mov	[ebp-8],1
	jmp	_37
_38
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	sub	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	sub	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,8
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	sub	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	ebx,9
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	[ebx],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apal]
	mov	ebx,[ebx]
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_apal]
	mov	esi,[esi]
	add	ebx,esi
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_apal]
	mov	eax,[eax]
	imul	eax,[_vblur]
	add	eax,ebx
	mov	ecx,8
	add	ecx,[_vblur]
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jg	_39
	mov	[ebp-12],0
_39
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_37
	cmp	[ebp-8],640
	jle	_38
_11
	add	[ebp-4],1
_35
	cmp	[ebp-4],480
	jle	_36
_10
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_apal	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vblur	.dd	0
	.align	4
_vfade	.dd	0
_12	.db	"YourFile.bmp",0
_18	.db	"Arial",0
_19	.db	"Blur and Fade using Wirtepixelfast",0
_20	.db	"and Readpixelfast..",0
_21	.db	"Press 1. for standard blur/fade. Press 2. or 3. for a diffrent kind :)",0
_25	.db	"1",0
_27	.db	"2",0
_29	.db	"3",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

