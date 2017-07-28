
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
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
	call	_fprint
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],5000
	call	_fdelay
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1000000
	mov	esi,_ac
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_20
_21
	sub	esp,8
	mov	[esp],1203982336
	mov	[esp+4],0
	call	_frnd
	fchs
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	[ebx],eax
	add	[ebp-4],1
_20
	cmp	[ebp-4],1000000
	jle	_21
_3
	call	_fmillisecs
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1000000
	call	_fquicksort
	mov	[ebp-12],eax
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],0
	jmp	_24
_25
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ac]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
_24
	cmp	[ebp-4],20
	jle	_25
_4
_26
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_26
_5
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
_fquicksort
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
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp+24]
	sar	ebx,byte 1
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
_27
	jmp	_29
_28
	add	[ebp-4],1
_29
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-16]
	jl	_28
_8
	jmp	_31
_30
	sub	[ebp-8],1
_31
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jl	_30
_9
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_32
	jmp	_7
_32
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	add	[ebp-4],1
	sub	[ebp-8],1
	cmp	[ebp-8],0
	jge	_33
	jmp	_7
_33
	jmp	_27
_7
	mov	ebx,[ebp-8]
	cmp	[ebp+20],ebx
	jge	_34
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fquicksort
	mov	[ebp-20],eax
_34
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jge	_35
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fquicksort
	mov	[ebp-20],eax
_35
	mov	eax,1
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_10	.db	"",0
_11	.db	" BlitzBasic V 1.60",0
_12	.db	"",0
_13	.db	" QuickSort v0.4 (C) by TFT (der Falke) Rev.0001-2",0
_14	.db	"",0
_15	.db	" Code date 23.8.2001 / 24.8.2001",0
_16	.db	" SerNr: 2001.0002-",0
_17	.db	" EMail tft@optima-code.d",0
_18	.db	" Inter http://www.optima-code.d",0
_19	.db	"",0
	.align	4
_ac	.dd	0
	.dd	1
	.dd	1
	.dd	0
_22	.db	"1000000 Element mit QickSort",0
_23	.db	"Time ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

