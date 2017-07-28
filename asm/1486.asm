
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,_acolors
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,500
	mov	esi,_acolors
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolors
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_anumcolors
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,500
	mov	esi,_anumcolors
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_anumcolors
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anumcolors
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vtotalcolors],18
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],0
	jmp	_25
_26
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acolors]
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	__bbReadInt
	mov	ebx,_anumcolors
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anumcolors]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_anumcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anumcolors]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_anumcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anumcolors]
	mov	[ebx],eax
	add	[ebp-4],1
_25
	mov	ebx,[_vtotalcolors]
	cmp	[ebp-4],ebx
	jle	_26
_3
_l_2colorlist
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetcolor
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-8],0
	jmp	_27
_28
	sub	esp,16
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fupper
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acolors]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_29
	sub	esp,12
	mov	ebx,_anumcolors
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anumcolors]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,_anumcolors
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_anumcolors]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,_anumcolors
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_anumcolors]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
_29
	add	[ebp-8],1
_27
	mov	ebx,[_vtotalcolors]
	cmp	[ebp-8],ebx
	jle	_28
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_acolors	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_anumcolors	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vtotalcolors	.dd	0
_6	.db	"White",0
_7	.db	"Red",0
_8	.db	"Green",0
_9	.db	"Blue",0
_10	.db	"Black",0
_11	.db	"Cyan",0
_12	.db	"Magenta",0
_13	.db	"Gray",0
_14	.db	"Silver",0
_15	.db	"Dark_grey",0
_16	.db	"Pale_green",0
_17	.db	"Light_sky_blue",0
_18	.db	"Orange",0
_19	.db	"Brown",0
_20	.db	"Pale_pink",0
_21	.db	"Light_grey",0
_22	.db	"Mid_red",0
_23	.db	"Light_red",0
_24	.db	"Pink",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_6
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	4
	.dd	_7
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_8
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	4
	.dd	_9
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	4
	.dd	_10
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_11
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	1
	.dd	255
	.dd	4
	.dd	_12
	.dd	1
	.dd	255
	.dd	1
	.dd	0
	.dd	1
	.dd	255
	.dd	4
	.dd	_13
	.dd	1
	.dd	125
	.dd	1
	.dd	125
	.dd	1
	.dd	125
	.dd	4
	.dd	_14
	.dd	1
	.dd	176
	.dd	1
	.dd	176
	.dd	1
	.dd	176
	.dd	4
	.dd	_15
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	1
	.dd	100
	.dd	4
	.dd	_16
	.dd	1
	.dd	152
	.dd	1
	.dd	251
	.dd	1
	.dd	152
	.dd	4
	.dd	_17
	.dd	1
	.dd	135
	.dd	1
	.dd	206
	.dd	1
	.dd	250
	.dd	4
	.dd	_18
	.dd	1
	.dd	255
	.dd	1
	.dd	165
	.dd	1
	.dd	0
	.dd	4
	.dd	_19
	.dd	1
	.dd	200
	.dd	1
	.dd	150
	.dd	1
	.dd	100
	.dd	4
	.dd	_20
	.dd	1
	.dd	255
	.dd	1
	.dd	200
	.dd	1
	.dd	200
	.dd	4
	.dd	_21
	.dd	1
	.dd	170
	.dd	1
	.dd	170
	.dd	1
	.dd	170
	.dd	4
	.dd	_22
	.dd	1
	.dd	255
	.dd	1
	.dd	63
	.dd	1
	.dd	63
	.dd	4
	.dd	_23
	.dd	1
	.dd	255
	.dd	1
	.dd	127
	.dd	1
	.dd	127
	.dd	4
	.dd	_24
	.dd	1
	.dd	255
	.dd	1
	.dd	191
	.dd	1
	.dd	191
	.dd	0

