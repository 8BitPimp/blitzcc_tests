
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
	sub	esp,20
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+12],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsetiniitem
	sub	esp,20
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+12],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsetiniitem
	sub	esp,20
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+12],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsetiniitem
	sub	esp,20
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+12],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsetiniitem
	sub	esp,20
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgetiniitem
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fruntimeerror
	mov	ebx,eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetiniitem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_loadini
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
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
	call	_fini_findgroup
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_50
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
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
	call	_fini_creategroup
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
_50
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fini_finditem
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
	jnz	_51
	sub	esp,24
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fini_createitem
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjStore
	jmp	_52
_51
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
_52
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_saveini
	mov	eax,1
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
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
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 16
	.align	16
_fgetiniitem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_loadini
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
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
	call	_fini_findgroup
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_53
	sub	esp,4
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	jmp	_4_leave
_53
	sub	esp,16
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fini_finditem
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
	jnz	_55
	sub	esp,4
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	jmp	_4_leave
_55
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_4_leave
	sub	esp,4
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	jmp	_4_leave
_4_leave
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
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+20]
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
	ret	word 12
	.align	16
_fcountinigroups
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_loadini
	cmp	eax,0
	jnz	_58
	mov	eax,0
	jmp	_5_leave
	jmp	_59
_58
	mov	[ebp-8],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tini_groups
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_60
	add	[ebp-8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_60
_6
	mov	eax,[ebp-8]
	jmp	_5_leave
_59
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-4]
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
_fcountinigroupitems
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fini_loadini
	cmp	eax,0
	jnz	_61
	mov	eax,0
	jmp	_7_leave
	jmp	_62
_61
	sub	esp,8
	lea	eax,[ebp-4]
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
	call	_fini_findgroup
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_63
	mov	eax,0
	jmp	_7_leave
	jmp	_64
_63
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_65
	mov	eax,0
	jmp	_7_leave
	jmp	_66
_65
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-12],0
_67
	add	[ebp-12],1
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_68
	mov	eax,[ebp-12]
	jmp	_7_leave
_68
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_67
_8
_66
_64
_62
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 8
	.align	16
_fini_findgroup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+20]
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
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tini_groups
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_69
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
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
	jnz	_70
	mov	eax,[ebp-4]
	jmp	_9_leave
_70
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_69
_10
	mov	eax,0
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
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
_fini_finditem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_71
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_72
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
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
	call	__bbStrCompare
	cmp	eax,0
	jnz	_73
	mov	eax,[ebp-4]
	jmp	_11_leave
_73
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_74
	mov	eax,0
	jmp	_11_leave
_74
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_72
_12
_71
	mov	eax,0
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
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
_fini_creategroup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tini_groups
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_75
	sub	esp,12
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_76
	mov	eax,0
	jmp	_13_leave
_76
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_75
_14
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tini_groups
	call	__bbObjEachFirst
	and	eax,eax
	jz	_15
_77
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_78
	mov	[ebp-4],1
	jmp	_15
_78
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_77
_15
	cmp	[ebp-4],0
	jnz	_79
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tini_groups
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
_79
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-8]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
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
_fini_createitem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp+28]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_80
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_81
	sub	esp,12
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_82
	mov	eax,0
	jmp	_16_leave
_82
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_83
	jmp	_17
_83
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_81
_17
_80
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tini_items
	call	__bbObjEachFirst
	and	eax,eax
	jz	_18
_84
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_85
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tini_items
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjLast
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjInsAfter
	mov	[ebp-4],1
	jmp	_18
_85
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_84
_18
	cmp	[ebp-4],0
	jnz	_86
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tini_items
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
_86
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp+28]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_87
	sub	esp,8
	mov	eax,[ebp+28]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_88
_87
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjInsAfter
_88
	sub	esp,8
	mov	eax,[ebp+28]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,[ebp-8]
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
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
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+20]
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
	ret	word 12
	.align	16
_fini_loadini
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_89
	mov	eax,0
	jmp	_19_leave
_89
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_90
	mov	eax,0
	jmp	_19_leave
_90
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tini_groups
	call	__bbObjEachFirst
	and	eax,eax
	jz	_20
_91
	mov	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_92
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_93
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_94
	mov	ebx,1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_95
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_96
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_97
	jmp	_21
_97
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_94
_21
_93
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_91
_20
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	jmp	_99
_98
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_102
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_101
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_104
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_103
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_105
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_103
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_106
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_103
	sub	esp,48
	mov	eax,_107
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fleft
	mov	[esp],eax
	call	_ftrim
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[ebp-32],eax
	sub	esp,12
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_108
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	[ebp-36],eax
	sub	esp,4
	lea	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[esp],esi
	mov	eax,esi
	call	_finstr
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-16]
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
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	[ebp-32],eax
	sub	esp,4
	lea	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	_fright
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	call	_fini_createitem
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_100
_101
	sub	esp,24
	mov	[esp+4],2
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,2
	mov	[esp+8],eax
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fini_creategroup
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_100
_103
	jmp	_100
_100
_99
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_98
_22
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fini_saveini
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	mov	[ebp-16],1
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tini_groups
	call	__bbObjEachFirst
	and	eax,eax
	jz	_25
_109
	cmp	[ebp-16],0
	jnz	_110
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_111
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fwriteline
	jmp	_112
_110
	mov	[ebp-16],0
_112
	sub	esp,28
	mov	eax,_113
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_114
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_115
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_116
	sub	esp,28
	mov	eax,[ebp-12]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_117
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_118
	jmp	_26
_118
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNext
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_116
_26
_115
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_109
_25
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_27	.db	"settings.ini",0
_28	.db	"group1",0
_29	.db	"x",0
_30	.db	"50",0
_31	.db	"settings.ini",0
_32	.db	"group1",0
_33	.db	"y",0
_34	.db	"120",0
_35	.db	"settings.ini",0
_36	.db	"group2",0
_37	.db	"open",0
_38	.db	"0",0
_39	.db	"settings.ini",0
_40	.db	"group2",0
_41	.db	"show",0
_42	.db	"1",0
_43	.db	"data\settings.ini",0
_44	.db	"group1",0
_45	.db	"y",0
	.align	4
_tini_groups	.dd	5
_46	.dd	0
	.dd	_46
	.dd	_46
	.dd	0
	.dd	-1
_47	.dd	0
	.dd	_47
	.dd	_47
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	_tini_items
	.dd	_tini_items
	.align	4
_tini_items	.dd	5
_48	.dd	0
	.dd	_48
	.dd	_48
	.dd	0
	.dd	-1
_49	.dd	0
	.dd	_49
	.dd	_49
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	__bbStrType
_54	.db	"",0
_56	.db	"",0
_57	.db	"",0
_92	.db	"",0
_95	.db	"",0
_96	.db	"",0
_102	.db	"[",0
_104	.db	";",0
_105	.db	"#",0
_106	.db	"",0
_107	.db	"=",0
_108	.db	"=",0
_111	.db	"",0
_113	.db	"[",0
_114	.db	"]",0
_117	.db	"=",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

