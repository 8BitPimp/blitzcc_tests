
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
_floaddafile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,20
	mov	[esp+4],1
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_8
	sub	esp,20
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_8
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_11
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadstring
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_13
_12
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadstring
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-28],eax
	sub	esp,16
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-24],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_14
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],10240
	call	_fcreatebank
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	and	ebx,esi
	and	ebx,ebx
	jz	_15
	jmp	_17
_16
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fbanksize
	add	eax,[ebp-32]
	cmp	eax,[ebp-28]
	jle	_18
	mov	ebx,[ebp-28]
	sub	ebx,[ebp-32]
	mov	[ebp-36],ebx
	jmp	_19
_18
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-36],eax
_19
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbytes
	mov	[ebp-36],eax
	mov	[ebp-40],0
	jmp	_20
_21
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	ebx,255
	sub	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-40],1
_20
	mov	ebx,[ebp-36]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_21
_6
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritebytes
	mov	ebx,[ebp-36]
	add	[ebp-32],ebx
_17
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jl	_16
_5
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,1
	jmp	_3_leave
_15
	jmp	_22
_14
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilepos
	mov	ebx,eax
	mov	eax,[ebp-44]
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fseekfile
_22
_13
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_12
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
_11
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ffreedafile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jnz	_23
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
_23
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,0
	jnz	_24
	mov	eax,1
	jmp	_7_leave
_24
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_9	.db	"\",0
_10	.db	"\",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

