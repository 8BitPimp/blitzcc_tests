
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fclscolor
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-4],0
	mov	[ebp-8],0
	call	_fgraphicswidth
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	ecx,ebx
	cdq
	idiv	ecx
	sub	eax,1
	mov	[ebp-12],eax
	mov	[ebp-16],0
	call	_fgraphicsheight
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	ecx,ebx
	cdq
	idiv	ecx
	sub	eax,1
	mov	[ebp-20],eax
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,[ebp-20]
	add	esi,1
	imul	ebx,esi
	mov	[ebp-24],ebx
	sub	esp,4
	mov	eax,_acaratteri
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-24]
	sub	ebx,1
	mov	esi,_acaratteri
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acaratteri
	mov	[esp],eax
	call	__bbDimArray
_9
	call	_fcls
	mov	[ebp-28],0
	jmp	_10
_11
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acaratteri]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_12
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+4],ebx
	call	__bbMod
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-48]
	imul	eax,ebx
	mov	[ebp-32],eax
	mov	eax,[ebp-28]
	mov	ecx,[ebp-12]
	add	ecx,1
	cdq
	idiv	ecx
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-48]
	imul	eax,ebx
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_flocate
	sub	esp,8
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_acaratteri]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	call	_fwrite
_12
	add	[ebp-28],1
_10
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_11
_4
	mov	ebx,[ebp-12]
	add	ebx,1
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	cmp	ebx,[ebp-24]
	jge	_13
	sub	esp,20
	call	_ffontheight
	mov	[esp+12],eax
	mov	[esp+16],1
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+8],ebx
	call	_ffontheight
	imul	eax,[ebp-16]
	mov	[esp+4],eax
	mov	[ebp-48],eax
	mov	eax,ebx
	call	_ffontwidth
	mov	ebx,eax
	mov	eax,[ebp-48]
	imul	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
_13
	call	_fwaitkey
	mov	[ebp-40],eax
	mov	ebx,[ebp-40]
	mov	[ebp-44],ebx
	cmp	[ebp-44],8
	jz	_15
	cmp	[ebp-44],9
	jz	_16
	cmp	[ebp-44],13
	jz	_17
	cmp	[ebp-44],27
	jz	_18
	cmp	[ebp-44],28
	jz	_19
	cmp	[ebp-44],29
	jz	_20
	cmp	[ebp-44],30
	jz	_21
	cmp	[ebp-44],31
	jz	_22
	mov	ebx,[ebp-40]
	mov	esi,[ebp-12]
	add	esi,1
	imul	esi,[ebp-16]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_acaratteri]
	mov	[esi],ebx
	add	[ebp-8],1
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jle	_23
	mov	[ebp-8],0
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jge	_24
	add	[ebp-16],1
_24
_23
	jmp	_14
_15
	sub	[ebp-8],1
	mov	[ebp-28],0
	jmp	_25
_26
	mov	ebx,[ebp-12]
	add	ebx,1
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	cmp	[ebp-28],ebx
	jle	_27
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acaratteri]
	mov	ebx,[ebx]
	mov	esi,[ebp-28]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_acaratteri]
	mov	[esi],ebx
_27
	add	[ebp-28],1
_25
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_26
_6
	jmp	_14
_16
	add	[ebp-8],3
	jmp	_14
_17
	mov	[ebp-8],0
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jge	_28
	add	[ebp-16],1
_28
	jmp	_14
_18
	mov	[ebp-4],1
	jmp	_14
_19
	cmp	[ebp-16],0
	jle	_29
	sub	[ebp-16],1
_29
	jmp	_14
_20
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	jge	_30
	add	[ebp-16],1
_30
	jmp	_14
_21
	add	[ebp-8],1
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jle	_31
	mov	[ebp-8],0
	add	[ebp-16],1
_31
	jmp	_14
_22
	sub	[ebp-8],1
	cmp	[ebp-8],0
	jge	_32
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
	cmp	[ebp-16],0
	jle	_33
	sub	[ebp-16],1
_33
_32
	jmp	_14
_14
	cmp	[ebp-4],1
	jnz	_9
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
_7	.db	"PearlDiary by EsseEmmeErre",0
_8	.db	"Would you leave?",0
	.align	4
_acaratteri	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

