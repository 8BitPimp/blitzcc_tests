
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	mov	eax,_akeytranslate
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_akeytranslate
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeytranslate
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
_l_2keyboard_load
	mov	[ebp-4],0
	jmp	_8
_9
	call	__bbReadInt
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_akeytranslate]
	mov	[esi],ebx
	add	[ebp-4],1
_8
	cmp	[ebp-4],9
	jle	_9
_3
	sub	esp,4
	mov	eax,_akeyread
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_akeyread
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeyread
	mov	[esp],eax
	call	__bbDimArray
	jmp	_11
_10
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	mov	[ebp-4],0
	jmp	_12
_13
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_akeytranslate]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeydown
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-16],ebx
	cmp	[ebp-16],1
	jz	_15
	cmp	[ebp-16],2
	jz	_16
	jmp	_14
_15
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_akeyread]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_17
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_akeyread]
	mov	[esi],ebx
_17
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_akeyread]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_18
	mov	ebx,-1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_akeyread]
	mov	[esi],ebx
_18
	jmp	_14
_16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_akeyread]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_19
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_akeyread]
	mov	[esi],ebx
_19
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_akeyread]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_akeyread]
	mov	[esi],ebx
	jmp	_14
_14
	add	[ebp-4],1
_12
	cmp	[ebp-4],10
	jle	_13
_5
	mov	[ebp-4],0
	jmp	_20
_21
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_akeyread]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],100
	mov	eax,[ebp-4]
	imul	eax,30
	mov	[esp],eax
	call	_ftext
	add	[ebp-4],1
_20
	cmp	[ebp-4],10
	jle	_21
_7
_11
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_10
_4
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_akeytranslate	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_akeyread	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	200
	.dd	1
	.dd	208
	.dd	1
	.dd	203
	.dd	1
	.dd	205
	.dd	1
	.dd	57
	.dd	1
	.dd	56
	.dd	1
	.dd	29
	.dd	1
	.dd	184
	.dd	1
	.dd	157
	.dd	0

