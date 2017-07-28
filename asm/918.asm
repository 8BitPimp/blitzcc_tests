
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmouseinput
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
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tmouseobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_11
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jle	_12
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
_12
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_11
_4
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_13
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	[esp],1
	call	_fcheckbutton
	mov	[ebp-12],eax
_13
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_14
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	[esp],2
	call	_fcheckbutton
	mov	[ebp-12],eax
_14
	sub	esp,4
	mov	[esp],4
	call	_fmousedown
	and	eax,eax
	jz	_15
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	[esp],4
	call	_fcheckbutton
	mov	[ebp-12],eax
_15
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_16
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	[esp],3
	call	_fcheckbutton
	mov	[ebp-12],eax
_16
	mov	eax,[ebp-12]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcheckbutton
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
	mov	[ebp-4],32
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tmouseobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_17
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	add	eax,[ebp+28]
	cmp	[ebp+24],eax
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp+32]
	cmp	[ebp+24],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_18
	mov	[ebp-4],8
	jmp	_19
_18
	mov	[ebp-4],16
	mov	ebx,[ebp+24]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_19
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_17
_6
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	cmp	[ebp-12],32
	jz	_21
	cmp	[ebp-12],8
	jz	_22
	cmp	[ebp-12],16
	jz	_23
	jmp	_20
_21
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_tmouseobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,32
	add	eax,[ebp+20]
	jmp	_5_leave
	jmp	_20
_22
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tmouseobj
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_24
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_24
_8
	mov	eax,8
	add	eax,[ebp+20]
	jmp	_5_leave
	jmp	_20
_23
	mov	eax,16
	add	eax,[ebp+20]
	jmp	_5_leave
	jmp	_20
_20
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_tmouseobj	.dd	5
_9	.dd	0
	.dd	_9
	.dd	_9
	.dd	0
	.dd	-1
_10	.dd	0
	.dd	_10
	.dd	_10
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

