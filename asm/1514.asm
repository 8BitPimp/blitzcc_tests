
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
	mov	[ebp-24],ebx
	mov	[ebp-4],5
	sub	esp,4
	mov	eax,_aarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_aarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarray
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],0
	jmp	_9
_10
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],300
	call	_frand
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aarray]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_9
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_10
_3
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	jmp	_12
_13
	mov	[ebp-12],0
	jmp	_14
_15
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aarray]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_16
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aarray]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-12]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aarray]
	mov	[esi],ebx
_16
	add	[ebp-12],1
_14
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_15
_5
	add	[ebp-8],-1
_12
	cmp	[ebp-8],1
	jge	_13
_4
	call	_fmillisecs
	sub	eax,[ebp-24]
	mov	[ebp-20],eax
	sub	esp,24
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],0
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aarray]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_20
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_21
_6
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_23
	jmp	_23
_7
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
_8	.db	"==Creating Random List==",0
_11	.db	"==Bubble Sorting List==",0
_17	.db	"Took ",0
_18	.db	" ms to calculate.",0
_19	.db	"==Sort Result==",0
_22	.db	"====",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

