
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
	sub	esp,4
	mov	eax,_amyarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_amyarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amyarray
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],1
	jmp	_8
_9
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	ebx,278
	add	ebx,[ebp-4]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	[esi],ebx
	sub	esp,32
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
_8
	cmp	[ebp-4],8
	jle	_9
_3
	mov	[ebp-8],1
	mov	[ebp-12],8
	jmp	_13
_12
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	[esi],ebx
	sub	[ebp-12],1
	add	[ebp-8],1
_13
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jge	_12
_4
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],1
	jmp	_15
_16
	sub	esp,32
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
_15
	cmp	[ebp-4],8
	jle	_16
_5
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_21
_20
_21
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_20
_6
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_amyarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
_7	.db	"Initial array : ",0
_10	.db	"MyArray(",0
_11	.db	")=",0
_14	.db	"Reverse array :",0
_17	.db	"MyArray(",0
_18	.db	")=",0
_19	.db	"Press escape to exit...",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

