
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
	sub	esp,12
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsystemproperty
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+8],ebx
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fblitzget
	mov	ebx,eax
	and	ebx,ebx
	jz	_16
	sub	esp,36
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-8]
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
	jmp	_20
_16
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_20
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fruntimeerror
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fblitzget
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],7
	call	_fleft
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_22
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-56]
	sub	ebx,7
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_22
	sub	esp,16
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_25
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-56]
	sub	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_26
_25
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
_26
	sub	esp,20
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_28
	sub	esp,20
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_28
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_31
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_33
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_36
_33
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	jmp	_37
_38
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_39
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-56]
	sub	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_4
_39
	add	[ebp-12],-1
_37
	cmp	[ebp-12],1
	jge	_38
_4
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_41
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
_41
_36
_31
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],0
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopentcpstream
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	and	ebx,ebx
	jz	_44
	sub	esp,28
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,20
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fwriteline
_51
	call	_fcls
	sub	esp,8
	mov	[esp],_vheader
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_vheader
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-28],ebx
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_54
	sub	esp,20
	mov	eax,_vheader
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_54
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_56
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_58
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_60
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_62
	cmp	[ebp-36],0
	jnz	_64
	sub	esp,8
	mov	[esp],_vinitialreply
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_vheader
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-36],1
_64
	jmp	_55
_56
	sub	esp,16
	mov	eax,_vheader
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_freplycontent
	mov	[esp],eax
	call	__bbStrToInt
	mov	[_vbytestoread],eax
	jmp	_55
_58
	sub	esp,20
	mov	eax,_vheader
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_freplycontent
	mov	[esp+4],eax
	mov	[esp],_vdate
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_55
_60
	sub	esp,20
	mov	eax,_vheader
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_freplycontent
	mov	[esp+4],eax
	mov	[esp],_vserver
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_55
_62
	sub	esp,20
	mov	eax,_vheader
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_freplycontent
	mov	[esp+4],eax
	mov	[esp],_vcontenttype
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_55
_55
	call	_fdisplayresponse
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,12
	mov	eax,_vheader
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_feof
	mov	ebx,eax
	mov	eax,[ebp-56]
	or	eax,ebx
	and	eax,eax
	jz	_51
_5
	cmp	[_vbytestoread],0
	jnz	_66
	jmp	_l_3skipdownload
_66
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-40],eax
	cmp	[ebp-40],0
	jnz	_67
	jmp	_l_3skipdownload
_67
	mov	[ebp-44],1
	jmp	_68
_69
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jnz	_70
	sub	esp,8
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadbyte
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fwritebyte
_70
	mov	ebx,[ebp-44]
	mov	[ebp-48],ebx
	sub	esp,8
	mov	eax,[ebp-48]
	mov	[esp],eax
	mov	[esp+4],100
	call	__bbMod
	cmp	eax,0
	jnz	_71
	sub	esp,8
	mov	eax,[ebp-44]
	mov	[esp],eax
	mov	ebx,[_vbytestoread]
	mov	[esp+4],ebx
	call	_fbytesreceived
_71
	add	[ebp-44],1
_68
	mov	ebx,[_vbytestoread]
	cmp	[ebp-44],ebx
	jle	_69
_7
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fclosefile
	mov	ebx,[ebp-44]
	sub	ebx,1
	cmp	ebx,[_vbytestoread]
	jnz	_72
	mov	[ebp-52],1
_72
	sub	esp,8
	mov	eax,[_vbytestoread]
	mov	[esp],eax
	mov	ebx,[_vbytestoread]
	mov	[esp+4],ebx
	call	_fbytesreceived
_l_3skipdownload
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fclosetcpstream
	jmp	_73
_44
	sub	esp,8
	mov	eax,_74
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_73
	mov	eax,[ebp-52]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbytesreceived
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_75
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	sub	esp,72
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fpercent
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],30
	mov	[esp],0
	call	_ftext
	call	_fdisplayresponse
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpercent
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	eax,1120403456
	push	eax
	fld	[esp]
	pop	eax
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_freplycontent
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,16
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-4]
	sub	eax,ebx
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	jmp	_10_leave
	sub	esp,4
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	jmp	_10_leave
_10_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdisplayresponse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,32
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vinitialreply
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],80
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_82
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vdate
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],100
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_83
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vserver
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],120
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_84
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vcontenttype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],140
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_85
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vbytestoread]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],160
	mov	[esp],0
	call	_ftext
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_12	.db	"BlitzGet Deluxe",0
_13	.db	"",0
_14	.db	"http://www.google.com/images/title_homepage4.gif",0
_15	.db	"TempDir",0
_17	.db	"",0
_18	.db	"Download Complete!",0
_19	.db	"Saved in ",0
_21	.db	"Download error!",0
	.align	4
_vheader	.dd	0
	.align	4
_vbytestoread	.dd	0
	.align	4
_vdate	.dd	0
	.align	4
_vserver	.dd	0
	.align	4
_vcontenttype	.dd	0
	.align	4
_vinitialreply	.dd	0
_23	.db	"http://",0
_24	.db	"/",0
_27	.db	"/",0
_29	.db	"\",0
_30	.db	"\",0
_32	.db	"",0
_34	.db	"/",0
_35	.db	"Unknown file.txt",0
_40	.db	"/",0
_42	.db	"",0
_43	.db	"Unknown file.txt",0
_45	.db	"GET ",0
_46	.db	" HTTP/1.1",0
_47	.db	"Host: ",0
_48	.db	"User-Agent: BlitzGet Deluxe",0
_49	.db	"Accept: */*",0
_50	.db	"",0
_52	.db	"",0
_53	.db	": ",0
_57	.db	"content-length: ",0
_59	.db	"date: ",0
_61	.db	"server: ",0
_63	.db	"content-type: ",0
_65	.db	"",0
_74	.db	"Failed to connect",0
_75	.db	"Downloading file -- please wait...",0
_76	.db	"Received: ",0
_77	.db	"/",0
_78	.db	" bytes (",0
_79	.db	"%)",0
_80	.db	"",0
_81	.db	"Header: ",0
_82	.db	"Date: ",0
_83	.db	"Server: ",0
_84	.db	"Content-Type: ",0
_85	.db	"Content-Length: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

