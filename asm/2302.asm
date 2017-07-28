
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_amousepress
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,12
	mov	esi,_amousepress
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amousepress
	mov	[esp],eax
	call	__bbDimArray
	jmp	_8
_7
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],2000
	call	_fmousehold
	and	eax,eax
	jz	_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	jmp	_11
_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
_11
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	call	_fmouseupdate
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_7
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmouseupdate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_13
_14
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmousedown
	and	eax,eax
	jz	_15
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amousepress]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_16
	call	_fmillisecs
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amousepress]
	mov	[ebx],eax
_16
	jmp	_17
_15
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amousepress]
	mov	[esi],ebx
_17
	add	[ebp-4],1
_13
	cmp	[ebp-4],12
	jle	_14
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmousehold
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	call	_fmillisecs
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amousepress]
	mov	ebx,[ebx]
	sub	eax,ebx
	cmp	eax,[ebp+24]
	setg	al
	movzx	eax,al
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	ebx,eax
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_amousepress]
	mov	eax,[eax]
	cmp	eax,0
	setnz	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_18
	mov	eax,1
	jmp	_6_leave
_18
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_amousepress	.dd	0
	.dd	1
	.dd	1
	.dd	0
_10	.db	"The left mouse button has been held down for 2 seconds.",0
_12	.db	"Hold down the left mouse button",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

