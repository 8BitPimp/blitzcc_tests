
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
	mov	[_vlerror],0
	sub	esp,4
	mov	eax,_alerrordat
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_alerrordat
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_alerrordat
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alerrordat
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcheckload
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
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_7
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_7
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_10
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_10
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
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
	call	__bbStrCompare
	cmp	eax,0
	jnz	_13
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_13
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,0
	jnz	_16
	add	[_vlerror],1
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_18
_16
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,2
	jnz	_19
	add	[_vlerror],1
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
_19
_18
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	cmp	eax,0
	jnz	_21
	add	[_vlerror],1
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
_21
	cmp	[ebp+28],-1
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_23
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	cmp	eax,[ebp+28]
	jz	_24
	add	[_vlerror],1
	sub	esp,28
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],2
_24
_23
	cmp	[ebp-8],0
	jnz	_27
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_28
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
	jmp	_30
_28
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_31
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadsound
	mov	[ebp-12],eax
	jmp	_33
_31
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_34
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenmovie
	mov	[ebp-12],eax
_34
_33
_30
	cmp	[ebp-12],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_36
	add	[_vlerror],1
	sub	esp,28
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_36
_27
	mov	eax,[ebp-12]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp+20]
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
	ret	word 12
	.align	16
_fcheckanimload
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,0
	jnz	_39
	add	[_vlerror],1
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_41
_39
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,2
	jnz	_42
	add	[_vlerror],1
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
_42
_41
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	cmp	eax,0
	jnz	_44
	add	[_vlerror],1
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
_44
	cmp	[ebp+40],-1
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_46
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	cmp	eax,[ebp+40]
	jz	_47
	add	[_vlerror],1
	sub	esp,28
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],2
_47
_46
	cmp	[ebp-8],0
	jnz	_50
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimimage
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_51
	add	[_vlerror],1
	sub	esp,28
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[_vlerror]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[_vlerror]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_51
_50
	mov	eax,[ebp-12]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
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
	ret	word 24
	.align	16
_fcheckloaderror
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	cmp	[_vlerror],0
	jle	_54
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,8
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],3
	mov	[ebp-8],1
	jmp	_58
_59
	sub	esp,16
	mov	eax,_alerrordat
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_alerrordat]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_alerrordat
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alerrordat]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
	cmp	[ebp-4],14
	jnz	_60
	sub	esp,8
	mov	eax,_61
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	mov	[ebp-4],0
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	call	_fflushkeys
_60
	add	[ebp-8],1
_58
	mov	ebx,[_vlerror]
	cmp	[ebp-8],ebx
	jle	_59
_6
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],10
	call	_fdelay
	mov	[_vlerror],0
	mov	eax,1
	jmp	_5_leave
_54
	mov	eax,0
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
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
	.align	4
_vlerror	.dd	0
	.align	4
_alerrordat	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
_8	.db	"i",0
_9	.db	"Img ",0
_11	.db	"s",0
_12	.db	"Snd ",0
_14	.db	"m",0
_15	.db	"Mov ",0
_17	.db	"Filename Missing: ",0
_20	.db	"Filename is a Directory: ",0
_22	.db	"Filename exists but the filesize is 0: ",0
_25	.db	"Reason: ",0
_26	.db	"filesize doesnt match:",0
_29	.db	"i",0
_32	.db	"s",0
_35	.db	"m",0
_37	.db	"Reason: ",0
_38	.db	"file corruption:",0
_40	.db	"Ani Filename Missing: ",0
_43	.db	"Filename is a Directory: ",0
_45	.db	"Filename exists but the filesize is 0: ",0
_48	.db	"Reason: ",0
_49	.db	"filesize doesnt match:",0
_52	.db	"Reason: ",0
_53	.db	"file corruption:",0
_55	.db	"OOps,there were errors while loading !",0
_56	.db	"Please check following files:",0
_57	.db	"",0
_61	.db	"Press any key to continue !",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
