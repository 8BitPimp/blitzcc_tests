
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
	mov	[_vkbs_jdeadzone_x],1036831949
	mov	[_vkbs_jdeadzone_y],1036831949
	mov	[_vkbs_jdeadzone_z],1036831949
	mov	[_vkbs_jdeadzone_u],1036831949
	mov	[_vkbs_jdeadzone_v],1036831949
	mov	[_vkbs_jdeadzone_pitch],1036831949
	mov	[_vkbs_jdeadzone_yaw],1036831949
	mov	[_vkbs_jdeadzone_roll],1036831949
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_action
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_4
_50
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
	jnz	_51
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	jmp	_3_leave
_51
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_50
_4
	mov	eax,0
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
_fkbs_typeaction
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_52
	sub	esp,12
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
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
	jnz	_53
	cmp	[ebp+24],1
	jnz	_54
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	jmp	_55
_54
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
_55
	cmp	[ebp-8],1000
	jge	_56
	mov	eax,1
	jmp	_5_leave
	jmp	_57
_56
	cmp	[ebp-8],1000
	setge	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-8],1100
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_58
	mov	eax,4
	jmp	_5_leave
	jmp	_59
_58
	cmp	[ebp-8],1100
	setge	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-8],2000
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_60
	mov	eax,5
	jmp	_5_leave
	jmp	_61
_60
	cmp	[ebp-8],2000
	setge	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-8],2100
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_62
	mov	eax,2
	jmp	_5_leave
	jmp	_63
_62
	cmp	[ebp-8],2100
	jl	_64
	mov	eax,3
	jmp	_5_leave
_64
_63
_61
_59
_57
_53
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_52
_6
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
	ret	word 8
	.align	16
_fkbs_actionvalue
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_65
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
	jnz	_66
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_66
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_65
_8
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_7_leave
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
_fkbs_addaction
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_67
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
	jnz	_68
	mov	eax,0
	jmp	_9_leave
_68
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_67
_10
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tkbs_action
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
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	eax,1
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
	ret	word 12
	.align	16
_fkbs_changeaction
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_69
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
	jnz	_70
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
_70
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_69
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
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
	ret	word 12
	.align	16
_fkbs_changeactionkey1
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_14
_71
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
	jnz	_72
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
_72
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_71
_14
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
	ret	word 8
	.align	16
_fkbs_changeactionkey2
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
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_16
_73
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
	jnz	_74
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
_74
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_73
_16
	mov	eax,0
	jmp	_15_leave
_15_leave
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
	ret	word 8
	.align	16
_fkbs_update
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
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_75
	mov	ebx,[ebp-4]
	mov	[_vkbs_mwheel],ebx
	jmp	_76
_75
	call	_fmousezspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_mwheel],eax
_76
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_mx],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_my],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tkbs_action
	call	__bbObjEachFirst
	and	eax,eax
	jz	_18
_77
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkbs_checkkeyboard
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	mov	[ebp-12],1
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_78
	sub	esp,4
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkbs_checkkeyboard
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	mov	[ebp-12],2
_78
	mov	eax,[ebp-8]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_79
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	jmp	_80
_79
	mov	ebx,[ebp-12]
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_80
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_77
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fkbs_checkkeyboard
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],1000
	jge	_81
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_82
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_19_leave
	jmp	_83
_82
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_19_leave
_83
	jmp	_84
_81
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkbs_checkjoymous
	and	eax,eax
	jz	_85
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_19_leave
	jmp	_86
_85
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fkbs_checkjoymousaxis
	jmp	_19_leave
_86
_84
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fkbs_checkjoymous
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1001
	jz	_88
	cmp	[ebp-4],1002
	jz	_89
	cmp	[ebp-4],1003
	jz	_90
	cmp	[ebp-4],1004
	jz	_91
	cmp	[ebp-4],1005
	jz	_92
	cmp	[ebp-4],2001
	jz	_93
	cmp	[ebp-4],2002
	jz	_94
	cmp	[ebp-4],2003
	jz	_95
	cmp	[ebp-4],2004
	jz	_96
	cmp	[ebp-4],2005
	jz	_97
	cmp	[ebp-4],2006
	jz	_98
	cmp	[ebp-4],2007
	jz	_99
	cmp	[ebp-4],2008
	jz	_100
	cmp	[ebp-4],2009
	jz	_101
	jmp	_87
_88
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_102
	mov	eax,1
	jmp	_20_leave
	jmp	_103
_102
	mov	eax,0
	jmp	_20_leave
_103
	jmp	_87
_89
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_104
	mov	eax,1
	jmp	_20_leave
	jmp	_105
_104
	mov	eax,0
	jmp	_20_leave
_105
	jmp	_87
_90
	sub	esp,4
	mov	[esp],3
	call	_fmousedown
	and	eax,eax
	jz	_106
	mov	eax,1
	jmp	_20_leave
	jmp	_107
_106
	mov	eax,0
	jmp	_20_leave
_107
	jmp	_87
_91
	mov	eax,[_vkbs_mwheel]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_108
	mov	eax,1
	jmp	_20_leave
	jmp	_109
_108
	mov	eax,0
	jmp	_20_leave
_109
	jmp	_87
_92
	mov	eax,[_vkbs_mwheel]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_110
	mov	eax,1
	jmp	_20_leave
	jmp	_111
_110
	mov	eax,0
	jmp	_20_leave
_111
	jmp	_87
_93
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_112
	mov	eax,1
	jmp	_20_leave
	jmp	_113
_112
	mov	eax,0
	jmp	_20_leave
_113
	jmp	_87
_94
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_114
	mov	eax,1
	jmp	_20_leave
	jmp	_115
_114
	mov	eax,0
	jmp	_20_leave
_115
	jmp	_87
_95
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_116
	mov	eax,1
	jmp	_20_leave
	jmp	_117
_116
	mov	eax,0
	jmp	_20_leave
_117
	jmp	_87
_96
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_118
	mov	eax,1
	jmp	_20_leave
	jmp	_119
_118
	mov	eax,0
	jmp	_20_leave
_119
	jmp	_87
_97
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_120
	mov	eax,1
	jmp	_20_leave
	jmp	_121
_120
	mov	eax,0
	jmp	_20_leave
_121
	jmp	_87
_98
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_122
	mov	eax,1
	jmp	_20_leave
	jmp	_123
_122
	mov	eax,0
	jmp	_20_leave
_123
	jmp	_87
_99
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_124
	mov	eax,1
	jmp	_20_leave
	jmp	_125
_124
	mov	eax,0
	jmp	_20_leave
_125
	jmp	_87
_100
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_126
	mov	eax,1
	jmp	_20_leave
	jmp	_127
_126
	mov	eax,0
	jmp	_20_leave
_127
	jmp	_87
_101
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_128
	mov	eax,1
	jmp	_20_leave
	jmp	_129
_128
	mov	eax,0
	jmp	_20_leave
_129
	jmp	_87
_87
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fkbs_checkjoymousaxis
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],2101
	jz	_131
	cmp	[ebp-4],2102
	jz	_132
	cmp	[ebp-4],2103
	jz	_133
	cmp	[ebp-4],2104
	jz	_134
	cmp	[ebp-4],2105
	jz	_135
	cmp	[ebp-4],2108
	jz	_136
	cmp	[ebp-4],2107
	jz	_137
	cmp	[ebp-4],2106
	jz	_138
	cmp	[ebp-4],1100
	jz	_139
	cmp	[ebp-4],1101
	jz	_140
	jmp	_130
_131
	call	_fkbs_getjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jx],eax
	mov	ebx,[_vkbs_jx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_132
	call	_fkbs_getjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jy],eax
	mov	ebx,[_vkbs_jy]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_133
	call	_fkbs_getjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jz],eax
	mov	ebx,[_vkbs_jz]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_134
	call	_fkbs_getjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_ju],eax
	mov	ebx,[_vkbs_ju]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_135
	call	_fkbs_getjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jv],eax
	mov	ebx,[_vkbs_jv]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_136
	call	_fkbs_getjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jroll],eax
	mov	ebx,[_vkbs_jroll]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_137
	call	_fkbs_getjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jpitch],eax
	mov	ebx,[_vkbs_jpitch]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_138
	call	_fkbs_getjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vkbs_jyaw],eax
	mov	ebx,[_vkbs_jyaw]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_139
	mov	ebx,[_vkbs_mx]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_140
	mov	ebx,[_vkbs_my]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
	jmp	_130
_130
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fkbs_getlabelcode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1001
	jz	_142
	cmp	[ebp-4],1002
	jz	_143
	cmp	[ebp-4],1003
	jz	_144
	cmp	[ebp-4],1004
	jz	_145
	cmp	[ebp-4],1005
	jz	_146
	cmp	[ebp-4],1100
	jz	_147
	cmp	[ebp-4],1101
	jz	_148
	cmp	[ebp-4],2001
	jz	_149
	cmp	[ebp-4],2002
	jz	_150
	cmp	[ebp-4],2003
	jz	_151
	cmp	[ebp-4],2004
	jz	_152
	cmp	[ebp-4],2005
	jz	_153
	cmp	[ebp-4],2006
	jz	_154
	cmp	[ebp-4],2007
	jz	_155
	cmp	[ebp-4],2008
	jz	_156
	cmp	[ebp-4],2009
	jz	_157
	cmp	[ebp-4],2101
	jz	_158
	cmp	[ebp-4],2102
	jz	_159
	cmp	[ebp-4],2103
	jz	_160
	cmp	[ebp-4],2104
	jz	_161
	cmp	[ebp-4],2105
	jz	_162
	cmp	[ebp-4],2106
	jz	_163
	cmp	[ebp-4],2107
	jz	_164
	cmp	[ebp-4],2108
	jz	_165
	cmp	[ebp-4],203
	jz	_166
	cmp	[ebp-4],205
	jz	_167
	cmp	[ebp-4],200
	jz	_168
	cmp	[ebp-4],208
	jz	_169
	cmp	[ebp-4],210
	jz	_170
	cmp	[ebp-4],211
	jz	_171
	cmp	[ebp-4],201
	jz	_172
	cmp	[ebp-4],209
	jz	_173
	cmp	[ebp-4],207
	jz	_174
	cmp	[ebp-4],199
	jz	_175
	cmp	[ebp-4],59
	jz	_176
	cmp	[ebp-4],60
	jz	_177
	cmp	[ebp-4],61
	jz	_178
	cmp	[ebp-4],62
	jz	_179
	cmp	[ebp-4],63
	jz	_180
	cmp	[ebp-4],64
	jz	_181
	cmp	[ebp-4],65
	jz	_182
	cmp	[ebp-4],66
	jz	_183
	cmp	[ebp-4],67
	jz	_184
	cmp	[ebp-4],68
	jz	_185
	cmp	[ebp-4],87
	jz	_186
	cmp	[ebp-4],88
	jz	_187
	cmp	[ebp-4],2
	jz	_188
	cmp	[ebp-4],3
	jz	_189
	cmp	[ebp-4],4
	jz	_190
	cmp	[ebp-4],5
	jz	_191
	cmp	[ebp-4],6
	jz	_192
	cmp	[ebp-4],7
	jz	_193
	cmp	[ebp-4],8
	jz	_194
	cmp	[ebp-4],9
	jz	_195
	cmp	[ebp-4],10
	jz	_196
	cmp	[ebp-4],11
	jz	_197
	cmp	[ebp-4],12
	jz	_198
	cmp	[ebp-4],13
	jz	_199
	cmp	[ebp-4],14
	jz	_200
	cmp	[ebp-4],1
	jz	_201
	cmp	[ebp-4],57
	jz	_202
	cmp	[ebp-4],28
	jz	_203
	cmp	[ebp-4],156
	jz	_204
	cmp	[ebp-4],15
	jz	_205
	cmp	[ebp-4],29
	jz	_206
	cmp	[ebp-4],157
	jz	_207
	cmp	[ebp-4],56
	jz	_208
	cmp	[ebp-4],184
	jz	_209
	cmp	[ebp-4],42
	jz	_210
	cmp	[ebp-4],54
	jz	_211
	cmp	[ebp-4],219
	jz	_212
	cmp	[ebp-4],220
	jz	_213
	cmp	[ebp-4],16
	jz	_214
	cmp	[ebp-4],17
	jz	_215
	cmp	[ebp-4],18
	jz	_216
	cmp	[ebp-4],19
	jz	_217
	cmp	[ebp-4],20
	jz	_218
	cmp	[ebp-4],21
	jz	_219
	cmp	[ebp-4],22
	jz	_220
	cmp	[ebp-4],23
	jz	_221
	cmp	[ebp-4],24
	jz	_222
	cmp	[ebp-4],25
	jz	_223
	cmp	[ebp-4],26
	jz	_224
	cmp	[ebp-4],27
	jz	_225
	cmp	[ebp-4],30
	jz	_226
	cmp	[ebp-4],31
	jz	_227
	cmp	[ebp-4],32
	jz	_228
	cmp	[ebp-4],33
	jz	_229
	cmp	[ebp-4],34
	jz	_230
	cmp	[ebp-4],35
	jz	_231
	cmp	[ebp-4],36
	jz	_232
	cmp	[ebp-4],37
	jz	_233
	cmp	[ebp-4],38
	jz	_234
	cmp	[ebp-4],39
	jz	_235
	cmp	[ebp-4],40
	jz	_236
	cmp	[ebp-4],41
	jz	_237
	cmp	[ebp-4],44
	jz	_238
	cmp	[ebp-4],45
	jz	_239
	cmp	[ebp-4],46
	jz	_240
	cmp	[ebp-4],47
	jz	_241
	cmp	[ebp-4],48
	jz	_242
	cmp	[ebp-4],49
	jz	_243
	cmp	[ebp-4],50
	jz	_244
	cmp	[ebp-4],51
	jz	_245
	cmp	[ebp-4],52
	jz	_246
	cmp	[ebp-4],53
	jz	_247
	cmp	[ebp-4],82
	jz	_248
	cmp	[ebp-4],79
	jz	_249
	cmp	[ebp-4],80
	jz	_250
	cmp	[ebp-4],81
	jz	_251
	cmp	[ebp-4],75
	jz	_252
	cmp	[ebp-4],76
	jz	_253
	cmp	[ebp-4],77
	jz	_254
	cmp	[ebp-4],71
	jz	_255
	cmp	[ebp-4],72
	jz	_256
	cmp	[ebp-4],73
	jz	_257
	cmp	[ebp-4],83
	jz	_258
	cmp	[ebp-4],74
	jz	_259
	cmp	[ebp-4],78
	jz	_260
	cmp	[ebp-4],69
	jz	_261
	cmp	[ebp-4],181
	jz	_262
	cmp	[ebp-4],55
	jz	_263
	jmp	_141
_142
	sub	esp,4
	mov	eax,_264
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_143
	sub	esp,4
	mov	eax,_265
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_144
	sub	esp,4
	mov	eax,_266
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_145
	sub	esp,4
	mov	eax,_267
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_146
	sub	esp,4
	mov	eax,_268
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_147
	sub	esp,4
	mov	eax,_269
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_148
	sub	esp,4
	mov	eax,_270
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_149
	sub	esp,4
	mov	eax,_271
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_150
	sub	esp,4
	mov	eax,_272
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_151
	sub	esp,4
	mov	eax,_273
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_152
	sub	esp,4
	mov	eax,_274
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_153
	sub	esp,4
	mov	eax,_275
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_154
	sub	esp,4
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_155
	sub	esp,4
	mov	eax,_277
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_156
	sub	esp,4
	mov	eax,_278
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_157
	sub	esp,4
	mov	eax,_279
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_158
	sub	esp,4
	mov	eax,_280
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_159
	sub	esp,4
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_160
	sub	esp,4
	mov	eax,_282
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_161
	sub	esp,4
	mov	eax,_283
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_162
	sub	esp,4
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_163
	sub	esp,4
	mov	eax,_285
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_164
	sub	esp,4
	mov	eax,_286
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_165
	sub	esp,4
	mov	eax,_287
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_166
	sub	esp,4
	mov	eax,_288
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_167
	sub	esp,4
	mov	eax,_289
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_168
	sub	esp,4
	mov	eax,_290
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_169
	sub	esp,4
	mov	eax,_291
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_170
	sub	esp,4
	mov	eax,_292
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_171
	sub	esp,4
	mov	eax,_293
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_172
	sub	esp,4
	mov	eax,_294
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_173
	sub	esp,4
	mov	eax,_295
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_174
	sub	esp,4
	mov	eax,_296
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_175
	sub	esp,4
	mov	eax,_297
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_176
	sub	esp,4
	mov	eax,_298
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_177
	sub	esp,4
	mov	eax,_299
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_178
	sub	esp,4
	mov	eax,_300
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_179
	sub	esp,4
	mov	eax,_301
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_180
	sub	esp,4
	mov	eax,_302
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_181
	sub	esp,4
	mov	eax,_303
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_182
	sub	esp,4
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_183
	sub	esp,4
	mov	eax,_305
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_184
	sub	esp,4
	mov	eax,_306
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_185
	sub	esp,4
	mov	eax,_307
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_186
	sub	esp,4
	mov	eax,_308
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_187
	sub	esp,4
	mov	eax,_309
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_188
	sub	esp,4
	mov	eax,_310
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_189
	sub	esp,4
	mov	eax,_311
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_190
	sub	esp,4
	mov	eax,_312
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_191
	sub	esp,4
	mov	eax,_313
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_192
	sub	esp,4
	mov	eax,_314
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_193
	sub	esp,4
	mov	eax,_315
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_194
	sub	esp,4
	mov	eax,_316
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_195
	sub	esp,4
	mov	eax,_317
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_196
	sub	esp,4
	mov	eax,_318
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_197
	sub	esp,4
	mov	eax,_319
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_198
	sub	esp,4
	mov	eax,_320
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_199
	sub	esp,4
	mov	eax,_321
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_200
	sub	esp,4
	mov	eax,_322
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_201
	sub	esp,4
	mov	eax,_323
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_202
	sub	esp,4
	mov	eax,_324
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_203
	sub	esp,4
	mov	eax,_325
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_204
	sub	esp,4
	mov	eax,_326
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_205
	sub	esp,4
	mov	eax,_327
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_206
	sub	esp,4
	mov	eax,_328
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_207
	sub	esp,4
	mov	eax,_329
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_208
	sub	esp,4
	mov	eax,_330
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_209
	sub	esp,4
	mov	eax,_331
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_210
	sub	esp,4
	mov	eax,_332
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_211
	sub	esp,4
	mov	eax,_333
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_212
	sub	esp,4
	mov	eax,_334
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_213
	sub	esp,4
	mov	eax,_335
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_214
	sub	esp,4
	mov	eax,_336
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_215
	sub	esp,4
	mov	eax,_337
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_216
	sub	esp,4
	mov	eax,_338
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_217
	sub	esp,4
	mov	eax,_339
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_218
	sub	esp,4
	mov	eax,_340
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_219
	sub	esp,4
	mov	eax,_341
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_220
	sub	esp,4
	mov	eax,_342
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_221
	sub	esp,4
	mov	eax,_343
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_222
	sub	esp,4
	mov	eax,_344
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_223
	sub	esp,4
	mov	eax,_345
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_224
	sub	esp,4
	mov	eax,_346
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_225
	sub	esp,4
	mov	eax,_347
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_226
	sub	esp,4
	mov	eax,_348
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_227
	sub	esp,4
	mov	eax,_349
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_228
	sub	esp,4
	mov	eax,_350
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_229
	sub	esp,4
	mov	eax,_351
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_230
	sub	esp,4
	mov	eax,_352
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_231
	sub	esp,4
	mov	eax,_353
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_232
	sub	esp,4
	mov	eax,_354
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_233
	sub	esp,4
	mov	eax,_355
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_234
	sub	esp,4
	mov	eax,_356
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_235
	sub	esp,4
	mov	eax,_357
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_236
	sub	esp,4
	mov	eax,_358
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_237
	sub	esp,4
	mov	eax,_359
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_238
	sub	esp,4
	mov	eax,_360
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_239
	sub	esp,4
	mov	eax,_361
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_240
	sub	esp,4
	mov	eax,_362
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_241
	sub	esp,4
	mov	eax,_363
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_242
	sub	esp,4
	mov	eax,_364
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_243
	sub	esp,4
	mov	eax,_365
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_244
	sub	esp,4
	mov	eax,_366
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_245
	sub	esp,4
	mov	eax,_367
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_246
	sub	esp,4
	mov	eax,_368
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_247
	sub	esp,4
	mov	eax,_369
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_248
	sub	esp,4
	mov	eax,_370
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_249
	sub	esp,4
	mov	eax,_371
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_250
	sub	esp,4
	mov	eax,_372
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_251
	sub	esp,4
	mov	eax,_373
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_252
	sub	esp,4
	mov	eax,_374
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_253
	sub	esp,4
	mov	eax,_375
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_254
	sub	esp,4
	mov	eax,_376
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_255
	sub	esp,4
	mov	eax,_377
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_256
	sub	esp,4
	mov	eax,_378
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_257
	sub	esp,4
	mov	eax,_379
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_258
	sub	esp,4
	mov	eax,_380
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_259
	sub	esp,4
	mov	eax,_381
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_260
	sub	esp,4
	mov	eax,_382
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_261
	sub	esp,4
	mov	eax,_383
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_262
	sub	esp,4
	mov	eax,_384
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_263
	sub	esp,4
	mov	eax,_385
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
	jmp	_141
_141
	sub	esp,4
	mov	eax,_386
	mov	[esp],eax
	call	__bbStrConst
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fkbs_getactioncode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	call	_fflushkeys
	call	_fflushmouse
	call	_fflushjoy
	mov	ebx,[_vkbs_jdeadzone_x]
	mov	[ebp-4],ebx
	mov	ebx,[_vkbs_jdeadzone_y]
	mov	[ebp-8],ebx
	mov	ebx,[_vkbs_jdeadzone_z]
	mov	[ebp-12],ebx
	mov	ebx,[_vkbs_jdeadzone_u]
	mov	[ebp-16],ebx
	mov	ebx,[_vkbs_jdeadzone_v]
	mov	[ebp-20],ebx
	mov	ebx,[_vkbs_jdeadzone_pitch]
	mov	[ebp-24],ebx
	mov	ebx,[_vkbs_jdeadzone_yaw]
	mov	[ebp-28],ebx
	mov	ebx,[_vkbs_jdeadzone_roll]
	mov	[ebp-32],ebx
	mov	[_vkbs_jdeadzone_x],1060320051
	mov	[_vkbs_jdeadzone_y],1060320051
	mov	[_vkbs_jdeadzone_z],1060320051
	mov	[_vkbs_jdeadzone_u],1060320051
	mov	[_vkbs_jdeadzone_v],1060320051
	mov	[_vkbs_jdeadzone_pitch],1060320051
	mov	[_vkbs_jdeadzone_yaw],1060320051
	mov	[_vkbs_jdeadzone_roll],1060320051
	call	_fkbs_getjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	call	_fkbs_getjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	call	_fkbs_getjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	call	_fkbs_getjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	call	_fkbs_getjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_fkbs_getjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	call	_fkbs_getjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	call	_fkbs_getjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	call	_fkbs_getjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	call	_fkbs_getjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	mov	[ebp-56],-1
	jmp	_388
_387
	mov	[ebp-60],1
	jmp	_389
_390
	mov	ebx,[ebp+20]
	and	ebx,ebx
	jz	_391
	sub	esp,4
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_fkeydown
	and	eax,eax
	jz	_392
	mov	ebx,[ebp-60]
	mov	[ebp-56],ebx
	jmp	_28
_392
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_393
	mov	[ebp-56],1001
	jmp	_28
_393
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_394
	mov	[ebp-56],1002
	jmp	_28
_394
	sub	esp,4
	mov	[esp],3
	call	_fmousedown
	and	eax,eax
	jz	_395
	mov	[ebp-56],1003
	jmp	_28
_395
	call	_fmousezspeed
	mov	[ebp-64],eax
	cmp	[ebp-64],1
	jl	_396
	mov	[ebp-56],1004
	jmp	_28
_396
	cmp	[ebp-64],-1
	jg	_397
	mov	[ebp-56],1005
	jmp	_28
_397
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_398
	mov	[ebp-56],2001
	jmp	_28
_398
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_399
	mov	[ebp-56],2002
	jmp	_28
_399
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_400
	mov	[ebp-56],2003
	jmp	_28
_400
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_401
	mov	[ebp-56],2004
	jmp	_28
_401
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_402
	mov	[ebp-56],2005
	jmp	_28
_402
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_403
	mov	[ebp-56],2006
	jmp	_28
_403
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_404
	mov	[ebp-56],2007
	jmp	_28
_404
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_405
	mov	[ebp-56],2008
	jmp	_28
_405
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_406
	mov	[ebp-56],2009
	jmp	_28
_406
_391
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_407
	call	_fmousexspeed
	cmp	eax,0
	jz	_408
	mov	[ebp-56],1100
	jmp	_28
_408
	call	_fmouseyspeed
	cmp	eax,0
	jz	_409
	mov	[ebp-56],1101
	jmp	_28
_409
_407
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_410
	call	_fkbs_getjoyx
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_411
	mov	[ebp-56],2101
	jmp	_28
_411
	call	_fkbs_getjoyy
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_412
	mov	[ebp-56],2102
	jmp	_28
_412
	call	_fkbs_getjoyz
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_413
	mov	[ebp-56],2103
	jmp	_28
_413
	call	_fkbs_getjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_414
	mov	[ebp-56],2104
	jmp	_28
_414
	call	_fkbs_getjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-40]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_415
	mov	[ebp-56],2105
	jmp	_28
_415
	call	_fkbs_getjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_416
	mov	[ebp-56],2106
	jmp	_28
_416
	call	_fkbs_getjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-44]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_417
	mov	[ebp-56],2107
	jmp	_28
_417
	call	_fkbs_getjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	eax,[ebp-68]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_418
	mov	[ebp-56],2108
	jmp	_28
_418
_410
	add	[ebp-60],1
_389
	cmp	[ebp-60],237
	jle	_390
_28
_388
	cmp	[ebp-56],-1
	jz	_387
_27
	mov	ebx,[_vkbs_jdeadzone_x]
	mov	[ebp-4],ebx
	mov	ebx,[_vkbs_jdeadzone_y]
	mov	[ebp-8],ebx
	mov	ebx,[_vkbs_jdeadzone_z]
	mov	[ebp-12],ebx
	mov	ebx,[_vkbs_jdeadzone_u]
	mov	[ebp-16],ebx
	mov	ebx,[_vkbs_jdeadzone_v]
	mov	[ebp-20],ebx
	mov	ebx,[_vkbs_jdeadzone_pitch]
	mov	[ebp-24],ebx
	mov	ebx,[_vkbs_jdeadzone_yaw]
	mov	[ebp-28],ebx
	mov	ebx,[_vkbs_jdeadzone_roll]
	mov	[ebp-32],ebx
	mov	eax,[ebp-56]
	jmp	_26_leave
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fkbs_waitoldkey
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
	mov	[ebp-4],0
	jmp	_420
_419
	mov	[ebp-4],1
	mov	[ebp-8],1
	jmp	_421
_422
	call	_fmousezspeed
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fkeydown
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],3
	mov	eax,ebx
	call	_fmousedown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_423
	mov	[ebp-4],0
_423
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoydown
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	mov	eax,ebx
	call	_fjoydown
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_424
	mov	[ebp-4],0
_424
	add	[ebp-8],1
_421
	cmp	[ebp-8],237
	jle	_422
_31
_420
	cmp	[ebp-4],0
	jz	_419
_30
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_x]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_425
	mov	[ebp-4],0
_425
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_32_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyy
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_y]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_426
	mov	[ebp-4],0
_426
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_33_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyz
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_z]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_427
	mov	[ebp-4],0
_427
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_34_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_34_leave
_34_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyu
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,-1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_u]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_428
	mov	[ebp-4],0
_428
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_35_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyv
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,-1090519040
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_v]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_429
	mov	[ebp-4],0
_429
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_36_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_36_leave
_36_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoypitch
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_pitch]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_430
	mov	[ebp-4],0
_430
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_37_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_37_leave
_37_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyyaw
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_yaw]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_431
	mov	[ebp-4],0
_431
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_38_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_38_leave
_38_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_getjoyroll
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fkbs_filterjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1127481344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,[_vkbs_jdeadzone_roll]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_432
	mov	[ebp-4],0
_432
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_39_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_39_leave
_39_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fkbs_filterjoyx
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_433
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_435
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_434
	mov	[ebp-4],0
_434
_433
	mov	ebx,[_vkbs_joyvx2]
	mov	[_vkbs_joyvx3],ebx
	mov	ebx,[_vkbs_joyvx1]
	mov	[_vkbs_joyvx2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvx1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvx3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvx2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvx2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvx1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_436
	mov	ebx,[_vkbs_joyvx3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvx1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvx2],ebx
_436
	mov	ebx,[_vkbs_joyvx2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_40_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_40_leave
_40_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoyy
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_437
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_439
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_438
	mov	[ebp-4],0
_438
_437
	mov	ebx,[_vkbs_joyvy2]
	mov	[_vkbs_joyvy3],ebx
	mov	ebx,[_vkbs_joyvy1]
	mov	[_vkbs_joyvy2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvy1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvy3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvy2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvy2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvy1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_440
	mov	ebx,[_vkbs_joyvy3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvy1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvy2],ebx
_440
	mov	ebx,[_vkbs_joyvy2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_41_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_41_leave
_41_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoyz
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_441
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_443
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_442
	mov	[ebp-4],0
_442
_441
	mov	ebx,[_vkbs_joyvz2]
	mov	[_vkbs_joyvz3],ebx
	mov	ebx,[_vkbs_joyvz1]
	mov	[_vkbs_joyvz2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvz1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvz3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvz2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvz2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvz1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_444
	mov	ebx,[_vkbs_joyvz3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvz1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvz2],ebx
_444
	mov	ebx,[_vkbs_joyvz2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_42_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_42_leave
_42_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoyu
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_445
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_447
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_446
	mov	[ebp-4],1065353216
_446
_445
	mov	ebx,[_vkbs_joyvu2]
	mov	[_vkbs_joyvu3],ebx
	mov	ebx,[_vkbs_joyvu1]
	mov	[_vkbs_joyvu2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvu1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvu3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvu2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvu2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvu1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_448
	mov	ebx,[_vkbs_joyvu3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvu1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvu2],ebx
_448
	mov	ebx,[_vkbs_joyvu2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_43_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_43_leave
_43_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoyv
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_449
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_451
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_450
	mov	[ebp-4],1065353216
_450
_449
	mov	ebx,[_vkbs_joyvv2]
	mov	[_vkbs_joyvv3],ebx
	mov	ebx,[_vkbs_joyvv1]
	mov	[_vkbs_joyvv2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvv1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvv3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvv2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvv2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvv1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_452
	mov	ebx,[_vkbs_joyvv3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvv1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvv2],ebx
_452
	mov	ebx,[_vkbs_joyvv2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_44_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_44_leave
_44_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoypitch
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
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_453
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_455
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_454
	mov	[ebp-4],0
_454
_453
	mov	ebx,[_vkbs_joyvp2]
	mov	[_vkbs_joyvp3],ebx
	mov	ebx,[_vkbs_joyvp1]
	mov	[_vkbs_joyvp2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvp1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvp3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvp2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvp2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvp1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_456
	mov	ebx,[_vkbs_joyvp3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvp1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvr2],ebx
_456
	mov	ebx,[_vkbs_joyvp2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_45_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_45_leave
_45_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoyyaw
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_457
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_459
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_458
	mov	[ebp-4],0
_458
_457
	mov	ebx,[_vkbs_joyvyy2]
	mov	[_vkbs_joyvyy3],ebx
	mov	ebx,[_vkbs_joyvyy1]
	mov	[_vkbs_joyvyy2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvyy1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvyy3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvyy2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvyy2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvyy1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_460
	mov	ebx,[_vkbs_joyvyy3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvyy1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvyy2],ebx
_460
	mov	ebx,[_vkbs_joyvyy2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_46_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_46_leave
_46_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fkbs_filterjoyroll
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
	sub	esp,4
	mov	[esp],0
	call	_fjoyroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	cmp	[ebp-12],10
	jle	_461
	sub	esp,20
	mov	ebx,[ebp-12]
	sub	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_463
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_462
	mov	[ebp-4],0
_462
_461
	mov	ebx,[_vkbs_joyvr2]
	mov	[_vkbs_joyvr3],ebx
	mov	ebx,[_vkbs_joyvr1]
	mov	[_vkbs_joyvr2],ebx
	mov	ebx,[ebp-4]
	mov	[_vkbs_joyvr1],ebx
	sub	esp,4
	mov	eax,[_vkbs_joyvr3]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vkbs_joyvr2]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vkbs_joyvr2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvr1]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_464
	mov	ebx,[_vkbs_joyvr3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vkbs_joyvr1]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vkbs_joyvr2],ebx
_464
	mov	ebx,[_vkbs_joyvr2]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_47_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_47_leave
_47_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	4
_vkbs_mwheel	.dd	0
	.align	4
_vkbs_mx	.dd	0
	.align	4
_vkbs_my	.dd	0
	.align	4
_vkbs_jx	.dd	0
	.align	4
_vkbs_jy	.dd	0
	.align	4
_vkbs_jz	.dd	0
	.align	4
_vkbs_ju	.dd	0
	.align	4
_vkbs_jv	.dd	0
	.align	4
_vkbs_jroll	.dd	0
	.align	4
_vkbs_jpitch	.dd	0
	.align	4
_vkbs_jyaw	.dd	0
	.align	4
_vkbs_jdeadzone_x	.dd	0
	.align	4
_vkbs_jdeadzone_y	.dd	0
	.align	4
_vkbs_jdeadzone_z	.dd	0
	.align	4
_vkbs_jdeadzone_u	.dd	0
	.align	4
_vkbs_jdeadzone_v	.dd	0
	.align	4
_vkbs_jdeadzone_pitch	.dd	0
	.align	4
_vkbs_jdeadzone_yaw	.dd	0
	.align	4
_vkbs_jdeadzone_roll	.dd	0
	.align	4
_vkbs_joyvx1	.dd	0
	.align	4
_vkbs_joyvx2	.dd	0
	.align	4
_vkbs_joyvx3	.dd	0
	.align	4
_vkbs_joyvy1	.dd	0
	.align	4
_vkbs_joyvy2	.dd	0
	.align	4
_vkbs_joyvy3	.dd	0
	.align	4
_vkbs_joyvz1	.dd	0
	.align	4
_vkbs_joyvz2	.dd	0
	.align	4
_vkbs_joyvz3	.dd	0
	.align	4
_vkbs_joyvu1	.dd	0
	.align	4
_vkbs_joyvu2	.dd	0
	.align	4
_vkbs_joyvu3	.dd	0
	.align	4
_vkbs_joyvv1	.dd	0
	.align	4
_vkbs_joyvv2	.dd	0
	.align	4
_vkbs_joyvv3	.dd	0
	.align	4
_vkbs_joyvp1	.dd	0
	.align	4
_vkbs_joyvp2	.dd	0
	.align	4
_vkbs_joyvp3	.dd	0
	.align	4
_vkbs_joyvyy1	.dd	0
	.align	4
_vkbs_joyvyy2	.dd	0
	.align	4
_vkbs_joyvyy3	.dd	0
	.align	4
_vkbs_joyvr1	.dd	0
	.align	4
_vkbs_joyvr2	.dd	0
	.align	4
_vkbs_joyvr3	.dd	0
	.align	4
_tkbs_action	.dd	5
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
	.dd	5
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
_264	.db	"Right Click",0
_265	.db	"Left Click",0
_266	.db	"Wheel Click ",0
_267	.db	"Wheel Up",0
_268	.db	"Wheel Down",0
_269	.db	"Mouse X Axis",0
_270	.db	"Mouse Y Axis",0
_271	.db	"Button 1",0
_272	.db	"Button 2",0
_273	.db	"Button 3",0
_274	.db	"Button 4",0
_275	.db	"Button 5",0
_276	.db	"Button 6",0
_277	.db	"Button 7",0
_278	.db	"Button 8",0
_279	.db	"Button 9",0
_280	.db	"Joy X axis",0
_281	.db	"Joy Y axis",0
_282	.db	"Joy Z axis",0
_283	.db	"Joy U axis",0
_284	.db	"Joy V axis",0
_285	.db	"Joy Yaw axis",0
_286	.db	"Joy Pitch axis",0
_287	.db	"Joy Roll axis",0
_288	.db	"Left",0
_289	.db	"Right",0
_290	.db	"Up",0
_291	.db	"Down",0
_292	.db	"Insert",0
_293	.db	"Delete",0
_294	.db	"Page Up",0
_295	.db	"Page Down",0
_296	.db	"End",0
_297	.db	"Home",0
_298	.db	"F1",0
_299	.db	"F2",0
_300	.db	"F3",0
_301	.db	"F4",0
_302	.db	"F5",0
_303	.db	"F6",0
_304	.db	"F7",0
_305	.db	"F8",0
_306	.db	"F9",0
_307	.db	"F10",0
_308	.db	"F11",0
_309	.db	"F12",0
_310	.db	"1",0
_311	.db	"2",0
_312	.db	"3",0
_313	.db	"4",0
_314	.db	"5",0
_315	.db	"6",0
_316	.db	"7",0
_317	.db	"8",0
_318	.db	"9",0
_319	.db	"0",0
_320	.db	"-",0
_321	.db	"=",0
_322	.db	"Backspace",0
_323	.db	"ESC",0
_324	.db	"Space",0
_325	.db	"Enter",0
_326	.db	"Return",0
_327	.db	"Tab",0
_328	.db	"Left Control",0
_329	.db	"Right Control",0
_330	.db	"Left Alt",0
_331	.db	"Right Alt",0
_332	.db	"Left Shift",0
_333	.db	"Right Shift",0
_334	.db	"Left Windows",0
_335	.db	"Right Windows",0
_336	.db	"Q",0
_337	.db	"W",0
_338	.db	"E",0
_339	.db	"R",0
_340	.db	"T",0
_341	.db	"Y",0
_342	.db	"U",0
_343	.db	"I",0
_344	.db	"O",0
_345	.db	"P",0
_346	.db	"[",0
_347	.db	"]",0
_348	.db	"A",0
_349	.db	"S",0
_350	.db	"D",0
_351	.db	"F",0
_352	.db	"G",0
_353	.db	"H",0
_354	.db	"J",0
_355	.db	"K",0
_356	.db	"L",0
_357	.db	";",0
_358	.db	"'",0
_359	.db	"Grave",0
_360	.db	"Z",0
_361	.db	"X",0
_362	.db	"C",0
_363	.db	"V",0
_364	.db	"B",0
_365	.db	"N",0
_366	.db	"M",0
_367	.db	",",0
_368	.db	".",0
_369	.db	"/",0
_370	.db	"Numpad 0",0
_371	.db	"Numpad 1",0
_372	.db	"Numpad 2",0
_373	.db	"Numpad 3",0
_374	.db	"Numpad 4",0
_375	.db	"Numpad 5",0
_376	.db	"Numpad 6",0
_377	.db	"Numpad 7",0
_378	.db	"Numpad 8",0
_379	.db	"Numpad 9",0
_380	.db	".",0
_381	.db	"-",0
_382	.db	"+",0
_383	.db	"Lock",0
_384	.db	"/",0
_385	.db	"*",0
_386	.db	"",0
_435	.db	"e",0
_439	.db	"e",0
_443	.db	"e",0
_447	.db	"e",0
_451	.db	"e",0
_455	.db	"e",0
_459	.db	"e",0
_463	.db	"e",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

