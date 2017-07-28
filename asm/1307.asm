
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],_vfxtext
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_vfxtext
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[_vfxlength],eax
	sub	esp,4
	mov	eax,_afx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfxlength]
	mov	esi,_afx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afxx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfxlength]
	mov	esi,_afxx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afxx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afxy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfxlength]
	mov	esi,_afxy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afxy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_af
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vfxlength]
	mov	esi,_af
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],100
	mov	[ebp-8],100
	mov	[ebp-12],1
	jmp	_6
_7
	mov	ebx,[ebp-4]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afxx]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_af]
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afxy]
	mov	[esi],ebx
	sub	esp,20
	mov	eax,_vfxtext
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_afx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,_vfxtext
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_vfxtext
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-24]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	mov	[esp],_vfxtext
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],10
	add	[ebp-8],10
	add	[ebp-12],1
_6
	mov	ebx,[_vfxlength]
	cmp	[ebp-12],ebx
	jle	_7
_3
	mov	[ebp-16],0
	mov	[ebp-20],1
	jmp	_8
_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_afx]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],100
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_af]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],50
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fflip
	add	[ebp-20],1
_8
	mov	ebx,[_vfxlength]
	cmp	[ebp-20],ebx
	jle	_9
_4
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vfxtext	.dd	0
_5	.db	"TypeRiter Text Demo By n8r2k ",0
	.align	4
_vfxlength	.dd	0
	.align	4
_afx	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_afxx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afxy	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_af	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

