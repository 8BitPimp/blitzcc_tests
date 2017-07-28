
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],0
	sub	esp,12
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	mov	[ebp-8],0
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	[ebp-4],ebx
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,_aarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	mov	esi,_aarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarray
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-32],0
	jmp	_7
_8
	mov	ebx,2
	add	ebx,[ebp-32]
	imul	ebx,[ebp-32]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aarray]
	mov	[esi],ebx
	sub	esp,32
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[ebp-32],1
_7
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-32],ebx
	jle	_8
_3
	sub	esp,16
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_12
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-8]
	sar	ebx,byte 1
	add	ebx,[ebp-8]
	mov	[ebp-12],ebx
	sub	esp,16
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jnz	_14
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-28],1
_14
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-20]
	jnz	_16
	sub	esp,16
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_16
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jge	_18
	mov	ebx,[ebp-12]
	mov	[ebp-4],ebx
_18
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_19
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
_19
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aarray]
	mov	eax,[eax]
	cmp	eax,[ebp-20]
	setz	al
	movzx	eax,al
	mov	[ebp-36],eax
	cmp	[ebp-28],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	or	eax,ebx
	and	eax,eax
	jz	_12
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
_5	.db	"How many elements would you like in the array?: ",0
_6	.db	"What value would you like to search for in the array?: ",0
	.align	4
_aarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
_9	.db	"value of array(",0
_10	.db	") is: ",0
_11	.db	"Searching for ",0
_13	.db	"middle is ",0
_15	.db	"The value is not stored in any element in this array",0
_17	.db	"found it in element ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

