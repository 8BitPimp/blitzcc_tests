
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
_fpushobject
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
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	mov	eax,[ebp-4]
	sar	eax,byte 2
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpopobject
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-4],eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,4
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokeint
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fresizebank
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
	ret	word 4
	.align	16
_fpushfloat
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
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokefloat
	mov	eax,[ebp-4]
	sar	eax,byte 2
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
_fpopfloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fpeekfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,4
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokeint
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fresizebank
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpushstring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-12]
	add	ebx,1
	add	eax,ebx
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fresizebank
	mov	ebx,eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
	mov	[ebp-8],1
	jmp	_16
_17
	sub	esp,28
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-8],1
_16
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_17
_8
	mov	eax,[ebp-4]
	sar	eax,byte 2
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpopstring
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	mov	[ebp-4],eax
_18
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jle	_19
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_19
	sub	[ebp-4],1
	cmp	[ebp-8],0
	jnz	_18
_10
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_feraseobject
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	cmp	[ebp+24],ebx
	jg	_21
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fgetobject
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	cmp	[ebp+24],ebx
	jnz	_22
	sub	esp,12
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fresizebank
	jmp	_23
_22
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	[ebp-12],ebx
	jmp	_25
_24
	sub	esp,20
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	add	ebx,4
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-12],4
_25
	mov	ebx,[ebp-4]
	sub	ebx,4
	cmp	[ebp-12],ebx
	jl	_24
_12
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fresizebank
_23
_21
	mov	eax,[ebp-8]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetobject
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekint
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetfloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	mov	[esp+4],ebx
	call	_fpeekfloat
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fobjects
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbanksize
	sar	eax,byte 2
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_20	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

