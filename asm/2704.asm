
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],6
	mov	[esp+4],500
	mov	[esp],900
	call	_fgraphics
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftype_st
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffield_st
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffield_st
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffield_st
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffield_st
	sub	esp,8
	mov	eax,[ebp-4]
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
	call	_ffield_st
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnew_st
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,24
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,8
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsetfield
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,16
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetfield
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftype_st
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tstringtype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-4]
	jmp	_3_leave
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
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffield_st
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_64
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tstringtypefield
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_65
_64
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_67
_66
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_67
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_66
_5
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tstringtypefield
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_65
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fnew_st
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
	mov	[ebp-12],1
	jmp	_68
_69
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finttostring
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-12],1
_68
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	cmp	[ebp-12],ebx
	jle	_69
_7
	sub	esp,24
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjToHandle
	mov	[esp],eax
	call	_finttostring
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
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_6_leave
	sub	esp,4
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-8]
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
	ret	word 4
	.align	16
_fgetfield
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
	mov	[ebp-16],ebx
	sub	esp,32
	mov	[esp+4],1
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	mov	[esp],eax
	mov	[esp+4],_tstringtype
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_71
	sub	esp,4
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
	jmp	_8_leave
_71
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-12],1
	jmp	_73
_74
	sub	esp,12
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_75
	jmp	_9
_75
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-12],1
_73
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	[ebp-12],ebx
	jle	_74
_9
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_76
	sub	esp,4
	mov	eax,_77
	mov	[esp],eax
	call	__bbStrConst
	jmp	_8_leave
_76
	sub	esp,16
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	mov	[ebp-16],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	mov	[ebp-12],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sub	esi,1
	sub	esi,[ebp-16]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	jmp	_8_leave
	sub	esp,4
	mov	eax,_78
	mov	[esp],eax
	call	__bbStrConst
	jmp	_8_leave
_8_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsetfield
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
	sub	esp,32
	mov	[esp+4],1
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	mov	[esp],eax
	mov	[esp+4],_tstringtype
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_79
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_10_leave
_79
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-16],1
	jmp	_80
_81
	sub	esp,12
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_82
	jmp	_11
_82
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-16],1
_80
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_81
_11
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_83
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_10_leave
_83
	sub	esp,16
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	mov	[ebp-20],eax
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],-1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	mov	[ebp-40],eax
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	ebx,[ebp-40]
	sub	ebx,1
	sub	ebx,[ebp-20]
	sub	eax,ebx
	mov	[ebp-24],eax
	sub	esp,36
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-20]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],-1
	mov	[ebp-48],eax
	sub	esp,4
	lea	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,4
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,9
	mov	[esp+4],ebx
	mov	[esp+8],-1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[ebp-20],ebx
	jmp	_84
_85
	sub	esp,36
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fstringtoint
	add	eax,[ebp-24]
	mov	[esp],eax
	call	_finttostring
	mov	[esp+4],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-20],1
_84
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,1
	cmp	[ebp-20],ebx
	jle	_85
_12
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_10_leave
	sub	esp,4
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	jmp	_10_leave
_10_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-36]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
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
_fgetstringtype
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tstringtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_87
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_88
	mov	eax,[ebp-4]
	jmp	_13_leave
_88
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_87
_14
	mov	eax,0
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffreestringtype
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_90
_89
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjDelete
_90
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_89
_16
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_finttostring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+20]
	mov	ebx,255
	and	eax,ebx
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	esi,-16777216
	and	ebx,esi
	shr	ebx,byte 24
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_17_leave
	sub	esp,4
	mov	eax,_91
	mov	[esp],eax
	call	__bbStrConst
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fstringtoint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	sub	esp,16
	mov	[esp+4],1
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	[ebp-12],eax
	sub	esp,4
	lea	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	_fasc
	mov	esi,eax
	mov	eax,[ebp-4]
	shl	esi,byte 8
	or	eax,esi
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],3
	mov	[esp+8],1
	mov	[ebp-12],eax
	sub	esp,4
	lea	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	_fasc
	mov	esi,eax
	mov	eax,[ebp-4]
	shl	esi,byte 16
	or	eax,esi
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],4
	mov	[esp+8],1
	mov	[ebp-12],eax
	sub	esp,4
	lea	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	_fasc
	mov	esi,eax
	mov	eax,[ebp-4]
	shl	esi,byte 24
	or	eax,esi
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
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
_19	.db	"mytest",0
_20	.db	"a",0
_21	.db	"b",0
_22	.db	"c",0
_23	.db	"d",0
_24	.db	"e",0
_25	.db	"a",0
_26	.db	"b",0
_27	.db	"c",0
_28	.db	"d",0
_29	.db	"e",0
_30	.db	"a",0
_31	.db	"Hello World!",0
_32	.db	"b",0
_33	.db	"Electric Boogaloo",0
_34	.db	"c",0
_35	.db	"Neomorphic Geshelphobe",0
_36	.db	"d",0
_37	.db	"She moves in mysterious ways",0
_38	.db	"e",0
_39	.db	"Days a Stranger",0
_40	.db	"a",0
_41	.db	"b",0
_42	.db	"c",0
_43	.db	"d",0
_44	.db	"e",0
_45	.db	"b",0
_46	.db	"Now is the time for all good men to come to the aid of THIS IS A REALLY LONG STRING OK",0
_47	.db	"b",0
_48	.db	"..no more",0
_49	.db	"d",0
_50	.db	"short",0
_51	.db	"",0
_52	.db	"a",0
_53	.db	"b",0
_54	.db	"c",0
_55	.db	"d",0
_56	.db	"e",0
_57	.db	"",0
_58	.db	"c",0
_59	.db	"c",0
	.align	4
_tstringtype	.dd	5
_60	.dd	0
	.dd	_60
	.dd	_60
	.dd	0
	.dd	-1
_61	.dd	0
	.dd	_61
	.dd	_61
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	_tstringtypefield
	.align	4
_tstringtypefield	.dd	5
_62	.dd	0
	.dd	_62
	.dd	_62
	.dd	0
	.dd	-1
_63	.dd	0
	.dd	_63
	.dd	_63
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbStrType
	.dd	_tstringtypefield
_70	.db	"",0
_72	.db	"",0
_77	.db	"",0
_78	.db	"",0
_86	.db	"",0
_91	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
