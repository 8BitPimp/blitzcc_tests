
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_6
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	call	_ffontheight
	mov	[esp+4],eax
	mov	[esp],710
	mov	eax,ebx
	call	_fgraphics
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jnz	_8
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	call	_ffontheight
	sub	ebx,eax
	call	_ffontheight
	sub	ebx,eax
	mov	[ebp-20],ebx
	call	_fendgraphics
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fgraphics
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],2000
	call	_fdelay
	call	_fcls
	mov	[ebp-36],0
	jmp	_9
_10
	mov	[ebp-40],0
	jmp	_11
_12
	sub	esp,12
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-36]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-40]
	shl	eax,byte 1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-44]
	sar	eax,byte 16
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-44]
	sar	eax,byte 8
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-56],eax
	sub	esp,12
	mov	ebx,[ebp-36]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-40]
	shl	eax,byte 1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-44]
	sar	eax,byte 16
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	add	[ebp-48],eax
	sub	esp,8
	mov	eax,[ebp-44]
	sar	eax,byte 8
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	add	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	add	[ebp-56],eax
	mov	ebx,[ebp-48]
	sar	ebx,byte 2
	mov	[ebp-48],ebx
	mov	ebx,[ebp-52]
	sar	ebx,byte 2
	mov	[ebp-52],ebx
	mov	ebx,[ebp-56]
	sar	ebx,byte 2
	mov	[ebp-56],ebx
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-40],1
_11
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_12
_4
	add	[ebp-36],1
_9
	mov	ebx,[ebp-28]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_10
_3
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_flocate
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	jmp	_15
_8
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
_15
	call	_fwaitkey
	call	_fendgraphics
	call	_fend
	ret
_2_leave
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_5	.db	"HalvePic public by Stefano Maria Regattin",0
_6	.db	"",0
_7	.db	">",0
_13	.db	"Image halved.",0
_14	.db	"Press a key to leave...",0
_16	.db	"Image not found, press a key to leave...",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

