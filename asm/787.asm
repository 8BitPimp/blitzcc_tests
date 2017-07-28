
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
	sub	esp,4
	mov	[esp],1024
	call	_fcreatebank
	mov	[_vrecursive_bank],eax
	mov	[_vrecursive_size],1024
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffindchildentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
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
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+20]
	mov	[_vrecursive_parent],ebx
	mov	[_vrecursive_start],1
	mov	[_vrecursive_offset],0
_l_3recursive_label
	sub	esp,4
	mov	eax,[_vrecursive_parent]
	mov	[esp],eax
	call	_fcountchildren
	mov	[_vrecursive_total],eax
	mov	ebx,[_vrecursive_start]
	mov	[_vrecursive_id],ebx
	jmp	_5
_6
	sub	esp,8
	mov	eax,[_vrecursive_parent]
	mov	[esp],eax
	mov	ebx,[_vrecursive_id]
	mov	[esp+4],ebx
	call	_fgetchild
	mov	[_vrecursive_entity],eax
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vrecursive_entity]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentityname
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_7
	mov	eax,[_vrecursive_entity]
	jmp	_3_leave
	jmp	_8
_7
	mov	ebx,[_vrecursive_offset]
	add	ebx,8
	mov	esi,[_vrecursive_size]
	sub	esi,1
	cmp	ebx,esi
	jle	_9
	sub	esp,8
	mov	eax,[_vrecursive_bank]
	mov	[esp],eax
	mov	ebx,[_vrecursive_size]
	add	ebx,1024
	mov	[esp+4],ebx
	call	_fresizebank
	add	[_vrecursive_size],1024
_9
	sub	esp,12
	mov	ebx,[_vrecursive_offset]
	mov	[esp+4],ebx
	mov	esi,[_vrecursive_id]
	add	esi,1
	mov	[esp+8],esi
	mov	eax,[_vrecursive_bank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[_vrecursive_offset]
	add	ebx,4
	mov	[esp+4],ebx
	mov	esi,[_vrecursive_parent]
	mov	[esp+8],esi
	mov	eax,[_vrecursive_bank]
	mov	[esp],eax
	call	_fpokeint
	add	[_vrecursive_offset],8
	mov	[_vrecursive_start],1
	mov	ebx,[_vrecursive_entity]
	mov	[_vrecursive_parent],ebx
	jmp	_l_3recursive_label
_8
	add	[_vrecursive_id],1
_5
	mov	ebx,[_vrecursive_total]
	cmp	[_vrecursive_id],ebx
	jle	_6
_4
	cmp	[_vrecursive_offset],0
	jnz	_10
	mov	eax,0
	jmp	_3_leave
	jmp	_11
_10
	sub	esp,8
	mov	eax,[_vrecursive_bank]
	mov	[esp],eax
	mov	ebx,[_vrecursive_offset]
	sub	ebx,8
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[_vrecursive_start],eax
	sub	esp,8
	mov	eax,[_vrecursive_bank]
	mov	[esp],eax
	mov	ebx,[_vrecursive_offset]
	sub	ebx,4
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[_vrecursive_parent],eax
	sub	[_vrecursive_offset],8
	jmp	_l_3recursive_label
_11
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 8
	.align	4
_vrecursive_bank	.dd	0
	.align	4
_vrecursive_size	.dd	0
	.align	4
_vrecursive_entity	.dd	0
	.align	4
_vrecursive_parent	.dd	0
	.align	4
_vrecursive_id	.dd	0
	.align	4
_vrecursive_start	.dd	0
	.align	4
_vrecursive_total	.dd	0
	.align	4
_vrecursive_offset	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

