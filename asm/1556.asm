
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
_fbftext
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	cmp	[ebp+20],0
	jnz	_8
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	call	_fend
_8
	cmp	[ebp+28],0
	jnz	_10
	mov	[ebp+28],1
_10
	mov	ebx,[ebp+28]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-20],eax
	cmp	[ebp+44],0
	jnz	_11
	call	_fgraphicswidth
	mov	[ebp+44],eax
_11
	cmp	[ebp+48],0
	jnz	_12
	call	_fgraphicsheight
	mov	[ebp+48],eax
_12
	mov	ebx,[ebp+32]
	mov	esi,3
	and	ebx,esi
	mov	[ebp-24],ebx
	mov	ebx,[ebp+32]
	mov	esi,12
	and	ebx,esi
	shr	ebx,byte 2
	mov	[ebp-28],ebx
	mov	ebx,[ebp+32]
	mov	esi,112
	and	ebx,esi
	shr	ebx,byte 4
	mov	[ebp-32],ebx
	mov	ebx,[ebp-24]
	mov	[ebp-36],ebx
	cmp	[ebp-36],1
	jz	_14
	cmp	[ebp-36],2
	jz	_15
	cmp	[ebp-36],3
	jz	_16
	jmp	_13
_14
	mov	ebx,[ebp+36]
	mov	[ebp-40],ebx
	jmp	_13
_15
	mov	ebx,[ebp+44]
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	imul	eax,[ebp-16]
	sub	ebx,eax
	add	ebx,[ebp+36]
	mov	[ebp-40],ebx
	jmp	_13
_16
	mov	ebx,[ebp+44]
	sar	ebx,byte 1
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	imul	eax,[ebp-16]
	sar	eax,byte 1
	sub	ebx,eax
	add	ebx,[ebp+36]
	mov	[ebp-40],ebx
	jmp	_13
_13
	mov	ebx,[ebp-28]
	mov	[ebp-44],ebx
	cmp	[ebp-44],1
	jz	_18
	cmp	[ebp-44],2
	jz	_19
	cmp	[ebp-44],3
	jz	_20
	jmp	_17
_18
	mov	ebx,[ebp+40]
	mov	[ebp-48],ebx
	jmp	_17
_19
	mov	ebx,[ebp+48]
	sub	ebx,[ebp-20]
	add	ebx,[ebp+40]
	mov	[ebp-48],ebx
	jmp	_17
_20
	mov	ebx,[ebp+48]
	sar	ebx,byte 1
	mov	esi,[ebp-20]
	sar	esi,byte 1
	sub	ebx,esi
	add	ebx,[ebp+40]
	mov	[ebp-48],ebx
	jmp	_17
_17
	mov	ebx,[ebp-32]
	mov	[ebp-52],ebx
	cmp	[ebp-52],0
	jz	_22
	cmp	[ebp-52],1
	jz	_23
	cmp	[ebp-52],2
	jz	_24
	cmp	[ebp-52],3
	jz	_25
	cmp	[ebp-52],4
	jz	_26
	cmp	[ebp-52],5
	jz	_27
	cmp	[ebp-52],6
	jz	_28
	cmp	[ebp-52],7
	jz	_29
	jmp	_21
_22
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	call	_fend
	jmp	_21
_23
	sub	esp,8
	lea	eax,[ebp-56]
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	[ebp-80],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_21
_24
	sub	esp,8
	lea	eax,[ebp-56]
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_21
_25
	sub	esp,28
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	[ebp-80],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-80]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_21
_26
	sub	esp,28
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_21
_27
	sub	esp,8
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	call	_fend
	jmp	_21
_28
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	call	_fend
	jmp	_21
_29
	sub	esp,8
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	call	_fend
	jmp	_21
_21
	call	_fgraphicsbuffer
	mov	[ebp-60],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	imul	eax,[ebp-16]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-64],eax
	sub	esp,12
	mov	eax,[ebp-64]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclscolor
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	call	_fcls
	mov	[ebp-68],1
	jmp	_40
_41
	sub	esp,24
	mov	ebx,[ebp-68]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-76],eax
	sub	esp,4
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-72],ebx
	cmp	[ebp-72],0
	jle	_42
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-72]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-68]
	sub	esi,1
	imul	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawimage
	jmp	_43
_42
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-68]
	sub	eax,1
	imul	eax,[ebp-16]
	mov	[esp],eax
	call	_frect
_43
	add	[ebp-68],1
_40
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-68],eax
	jle	_41
_7
	sub	esp,4
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	ebx,[ebp-48]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-64]
	mov	[esp],eax
	call	_fdrawimage
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-76],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-76]
	mov	[ebp-76],eax
	sub	esp,4
	mov	esi,[ebp-56]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-76]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
_9	.db	"bfText: font image not available",0
_30	.db	"bfText: No charset defined",0
_31	.db	"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?@#-©®",0
_32	.db	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,!?@#-©®",0
_33	.db	"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,.!?@#-'",0
_34	.db	"£$%^&*()=+_:;<>/\[]{}~©®",0
_35	.db	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789,.!?@#-'",0
_36	.db	"£$%^&*()=+_:;<>/\[]{}~©®",0
_37	.db	"bfText: BF_CHARSET_FULL_INTERNATIONAL not implemented",0
_38	.db	"bfText: Illegal flag BF_CHARSET_RESERVED1",0
_39	.db	"bfText: Illegal flag BF_CHARSET_RESERVED2",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

