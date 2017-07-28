
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	mov	[esp],1
	call	_fseedrnd
	sub	esp,4
	mov	eax,_alist
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1000000
	mov	esi,_alist
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alist
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_8
_9
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],16777215
	call	_frand
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_alist]
	mov	[ebx],eax
	add	[ebp-4],1
_8
	cmp	[ebp-4],1000000
	jle	_9
_3
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	call	_fmillisecs
	mov	[ebp-8],eax
	call	_fsortlist
	mov	[ebp-12],eax
	call	_fmillisecs
	sub	eax,[ebp-8]
	mov	[ebp-16],eax
	sub	esp,32
	mov	eax,_10
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	cmp	[ebp-12],0
	jz	_11
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebank
_11
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
_fsortlist
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,4
	mov	[esp],4000004
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],67108864
	call	_fcreatebank
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_12
_13
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_alist]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekint
	add	eax,1
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_alist]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-12],1
_12
	cmp	[ebp-12],1000000
	jle	_13
_5
	mov	[ebp-16],0
	mov	[ebp-12],0
	jmp	_14
_15
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-20],eax
	mov	[ebp-24],1
	jmp	_16
_17
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-16],4
	add	[ebp-24],1
_16
	mov	ebx,[ebp-20]
	cmp	[ebp-24],ebx
	jle	_17
_7
	add	[ebp-12],1
_14
	cmp	[ebp-12],16777215
	jle	_15
_6
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_alist	.dd	0
	.dd	1
	.dd	1
	.dd	0
_10	.db	"Time(in milliseconds):",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

