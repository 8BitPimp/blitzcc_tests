
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],18
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	mov	[_vplaswidth],127
	mov	[_vplasheight],63
	sub	esp,12
	mov	ebx,[_vplasheight]
	add	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vplaswidth]
	add	eax,3
	mov	[esp],eax
	call	_fcreateimage
	mov	[_vbuffer],eax
	mov	[_vfntheight],12
	mov	ebx,[_vplaswidth]
	add	ebx,1
	sar	ebx,byte 1
	mov	[_vtxtx],ebx
	mov	ebx,[_vplasheight]
	sub	ebx,[_vfntheight]
	mov	[_vtxty],ebx
	sub	esp,4
	mov	eax,_atxt
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,128
	mov	esi,_atxt
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atxt
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vt],1
	mov	[ebp-8],0
	mov	[ebp-12],18
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_ar
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ar
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ag
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_ag
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ag
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_ab
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fdefinetxt
	jmp	_11
_10
	call	_fcls
	sub	esp,12
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	add	[ebp-8],1
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jnz	_12
	call	_fblittext
	mov	[ebp-8],0
_12
	call	_fupdateplasma
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],96
	mov	[esp+12],0
	mov	[esp+4],96
	mov	eax,[_vbuffer]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
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
_fupdateplasma
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,12
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_13
_14
	mov	[ebp-8],0
	jmp	_15
_16
	sub	esp,20
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	sub	esp,20
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	sub	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	sub	esp,20
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ar]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ag]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ab]
	mov	[esi],ebx
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_ar]
	mov	eax,[eax]
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ar]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_ag]
	mov	eax,[eax]
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ag]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ag]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-20],eax
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_ab]
	mov	eax,[eax]
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ab]
	mov	ebx,[ebx]
	add	eax,ebx
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-24],eax
	cmp	[ebp-16],0
	jge	_17
	mov	[ebp-16],0
_17
	cmp	[ebp-20],0
	jge	_18
	mov	[ebp-20],0
_18
	cmp	[ebp-24],0
	jge	_19
	mov	[ebp-24],0
_19
	mov	ebx,[ebp-24]
	mov	esi,[ebp-20]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-16]
	shl	esi,byte 16
	or	ebx,esi
	mov	esi,-16777216
	or	ebx,esi
	mov	[ebp-28],ebx
	sub	esp,24
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-8],1
_15
	mov	ebx,[_vplaswidth]
	cmp	[ebp-8],ebx
	jle	_16
_6
	add	[ebp-4],1
_13
	mov	ebx,[_vplasheight]
	cmp	[ebp-4],ebx
	jle	_14
_5
	sub	esp,12
	mov	eax,[_vbuffer]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fblittext
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[_vt]
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[_vtxty]
	mov	[esp+4],ebx
	mov	eax,[_vtxtx]
	mov	[esp],eax
	call	_ftext
	add	[_vt],1
	cmp	[_vt],8
	jle	_20
	mov	[_vt],1
_20
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdefinetxt
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,3
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,4
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,6
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,8
	shl	eax,byte 2
	add	eax,[_atxt]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_9	.db	"verdana",0
	.align	4
_vplaswidth	.dd	0
	.align	4
_vplasheight	.dd	0
	.align	4
_vbuffer	.dd	0
	.align	4
_vfntheight	.dd	0
	.align	4
_vtxtx	.dd	0
	.align	4
_vtxty	.dd	0
	.align	4
_atxt	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_vt	.dd	0
	.align	4
_ar	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ag	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ab	.dd	0
	.dd	1
	.dd	1
	.dd	0
_21	.db	"",0
_22	.db	"Plasma Text",0
_23	.db	"Coded",0
_24	.db	"By",0
_25	.db	"Zerosynapse",0
_26	.db	"<end>",0
_27	.db	"",0
_28	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

