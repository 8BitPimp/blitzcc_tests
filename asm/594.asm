
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,8
	mov	[esp],_vini_currentfile
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tini_type
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fini_openfile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fupper
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_15
	sub	esp,20
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_15
	mov	ebx,0
	mov	esi,[_vini_currentfile]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	call	_fcurrentdir
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_20
	jmp	_22
_21
	sub	esp,36
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_22
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_21
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
_20
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fini_closefile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_23
	sub	esp,20
	call	_fcurrentdir
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jz	_25
	sub	esp,20
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
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
	sub	ebx,2
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	mov	ebx,0
	mov	esi,[_vini_currentfile]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	jmp	_26
_25
	mov	[ebp-4],0
_26
_23
	mov	eax,[ebp-4]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fini_readvalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,28
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp],10
	call	_fchr
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jz	_30
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-32]
	add	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jz	_31
	sub	esp,16
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-32]
	add	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_33
	sub	esp,16
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-24],ebx
	cmp	[ebp-24],0
	jz	_35
	sub	esp,16
	mov	[esp],13
	call	_fchr
	mov	[esp+4],eax
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-28],ebx
	cmp	[ebp-28],0
	jz	_36
	sub	esp,24
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	sub	esi,[ebp-24]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_36
_35
_33
_31
_30
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_37
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_6_leave
	jmp	_39
_37
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_6_leave
_39
	sub	esp,4
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fini_writevalue
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
	sub	esp,28
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-24],1
	sub	esp,16
	mov	[esp],13
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-28],ebx
	jmp	_46
_45
	sub	esp,24
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	sub	esi,[ebp-24]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_47
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[ebp-48],eax
	sub	esp,8
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,_51
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-44]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_49
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_52
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	_fini_createkey
	mov	[ebp-8],eax
_52
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_createsection
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_53
	mov	[ebp-12],1
_53
	jmp	_54
_49
	sub	esp,16
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-36],ebx
	cmp	[ebp-36],0
	jz	_56
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,8
	mov	[ebp-60],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp],ebx
	mov	esi,[ebp-36]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,ebx
	call	_fleft
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	[ebp-48],eax
	sub	esp,4
	mov	[ebp-52],eax
	sub	esp,4
	lea	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[esp],esi
	mov	eax,esi
	call	_fupper
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-44]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_57
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	_fini_createkey
	mov	[ebp-8],eax
	jmp	_58
_57
	sub	esp,36
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_58
_56
_54
_47
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-24],ebx
	sub	esp,16
	mov	[esp],13
	call	_fchr
	mov	[esp+4],eax
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-28],ebx
_46
	cmp	[ebp-28],0
	jnz	_45
_8
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_59
	cmp	[ebp-12],0
	jnz	_61
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_createsection
_61
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	_fini_createkey
_59
	mov	ebx,1
	mov	esi,[_vini_currentfile]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[ebp-40],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fini_createsection
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_62
	sub	esp,28
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_62
	sub	esp,36
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	eax,0
	jmp	_9_leave
_9_leave
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
	.align	16
_fini_createkey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_64
	sub	esp,52
	mov	eax,[_vini_currentfile]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_66
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
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vini_currentfile]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_64
	mov	eax,1
	jmp	_10_leave
	mov	eax,0
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
	.align	4
_vini_currentfile	.dd	0
_11	.db	"",0
_12	.db	"",0
	.align	4
_tini_type	.dd	5
_13	.dd	0
	.dd	_13
	.dd	_13
	.dd	0
	.dd	-1
_14	.dd	0
	.dd	_14
	.dd	_14
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	__bbStrType
_16	.db	".INI",0
_17	.db	".ini",0
_18	.db	"",0
_19	.db	"\",0
_24	.db	"\",0
_27	.db	"[",0
_28	.db	"]",0
_29	.db	"",0
_32	.db	"[",0
_34	.db	"=",0
_38	.db	"",0
_40	.db	"",0
_41	.db	"[",0
_42	.db	"]",0
_43	.db	"",0
_44	.db	"",0
_48	.db	"",0
_50	.db	"[",0
_51	.db	"]",0
_55	.db	"=",0
_60	.db	"",0
_63	.db	"",0
_65	.db	"",0
_66	.db	"=",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

