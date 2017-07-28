
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
	sub	esp,4
	mov	[esp],120
	call	_fcreatebank
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_8
_9
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbit_write
	add	[ebp-8],2
_8
	cmp	[ebp-8],15
	jle	_9
_3
	mov	[ebp-8],0
	jmp	_10
_11
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fbit_read
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_10
	cmp	[ebp-8],15
	jle	_11
_4
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbit_last
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbit_read
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],8
	call	__bbMod
	mov	[ebp-4],eax
	mov	ebx,[ebp+24]
	sub	ebx,[ebp-4]
	sar	ebx,byte 3
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-12],eax
	mov	eax,[ebp-12]
	mov	ecx,[ebp-4]
	shr	eax,cl
	mov	ebx,1
	and	eax,ebx
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbit_write
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],8
	call	__bbMod
	mov	[ebp-4],eax
	mov	ebx,[ebp+24]
	sub	ebx,[ebp-4]
	sar	ebx,byte 3
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-12],eax
	cmp	[ebp+28],0
	jz	_14
	mov	ebx,[ebp+28]
	mov	ecx,[ebp-4]
	shl	ebx,cl
	mov	esi,[ebp-12]
	or	esi,ebx
	mov	[ebp-12],esi
	jmp	_15
_14
	mov	ebx,[ebp+28]
	mov	ecx,[ebp-4]
	shl	ebx,cl
	mov	esi,[ebp-12]
	and	esi,ebx
	mov	[ebp-12],esi
_15
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbit_last
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	shl	eax,byte 3
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	sub	eax,1
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_12	.db	"",0
_13	.db	"The last bit position in bank is ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

