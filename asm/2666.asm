
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
	mov	[_vmaxweightedcases],10000
	sub	esp,4
	mov	eax,_aweightedcaseweight
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxweightedcases]
	mov	esi,_aweightedcaseweight
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweightedcaseweight
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweightedcaselabel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxweightedcases]
	mov	esi,_aweightedcaselabel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweightedcaselabel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	mov	eax,_ademodim
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_ademodim
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ademodim
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	[esp],10
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],5
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],2
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,8
	mov	[esp],1
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_faddweightedcase
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],17
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
_25
	call	_fcls
	call	_fweightedrandom
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ademodim]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ademodim]
	mov	[esi],ebx
	mov	[ebp-8],1
	jmp	_26
_27
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],100
	call	_fcolor
	sub	esp,20
	mov	[esp+12],18
	mov	[esp+16],1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ademodim]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],255
	mov	[esp],100
	call	_fcolor
	sub	esp,32
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aweightedcaseweight]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	[esp],20
	call	_ftext
	add	[ebp-8],1
_26
	cmp	[ebp-8],10
	jle	_27
_4
	mov	[ebp-12],0
	mov	[ebp-8],1
	jmp	_29
_30
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ademodim]
	mov	ebx,[ebx]
	add	[ebp-12],ebx
	add	[ebp-8],1
_29
	cmp	[ebp-8],10
	jle	_30
_5
	mov	[ebp-8],1
	jmp	_31
_32
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ademodim]
	mov	eax,[eax]
	imul	eax,100
	mov	ecx,[ebp-12]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],155
	mov	[esp],100
	call	_fcolor
	sub	esp,40
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	[esp],220
	call	_ftext
	add	[ebp-8],1
_31
	cmp	[ebp-8],10
	jle	_32
_6
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_25
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
_fweightedrandom
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-4],1
	jmp	_35
_36
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweightedcaseweight]
	mov	ebx,[ebx]
	add	[ebp-8],ebx
	add	[ebp-4],1
_35
	mov	ebx,[_vweightedcases]
	cmp	[ebp-4],ebx
	jle	_36
_8
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-12],eax
	mov	[ebp-4],1
	jmp	_37
_38
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweightedcaseweight]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-16]
	cmp	ebx,[ebp-12]
	jge	_39
	mov	eax,[ebp-4]
	jmp	_7_leave
_39
	mov	ebx,[ebp-16]
	sub	[ebp-8],ebx
	add	[ebp-4],1
_37
	mov	ebx,[_vweightedcases]
	cmp	[ebp-4],ebx
	jle	_38
_9
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
_faddweightedcase
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	add	[_vweightedcases],1
	mov	ebx,[ebp+20]
	mov	esi,[_vweightedcases]
	shl	esi,byte 2
	add	esi,[_aweightedcaseweight]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweightedcases]
	shl	eax,byte 2
	add	eax,[_aweightedcaselabel]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fclearweightedcases
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vweightedcases],0
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vweightedcases	.dd	0
	.align	4
_vmaxweightedcases	.dd	0
	.align	4
_aweightedcaseweight	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aweightedcaselabel	.dd	0
	.dd	3
	.dd	1
	.dd	0
_12	.db	"Weighted Random Demo",0
_13	.db	"",0
	.align	4
_ademodim	.dd	0
	.dd	1
	.dd	1
	.dd	0
_14	.db	"",0
_15	.db	"",0
_16	.db	"",0
_17	.db	"",0
_18	.db	"",0
_19	.db	"",0
_20	.db	"",0
_21	.db	"",0
_22	.db	"",0
_23	.db	"",0
_24	.db	"verdana",0
_28	.db	"weight: ",0
_33	.db	"occurance: ",0
_34	.db	"%",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

