
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fdecisiontreenew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,12
	mov	[esp+4],1
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreecreaterootnode
	sub	esp,16
	mov	[esp+8],2
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	[esp+4],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeaddyesnode
	sub	esp,16
	mov	[esp+8],3
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	[esp+4],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeaddnonode
	sub	esp,16
	mov	[esp+8],4
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	[esp+4],2
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeaddyesnode
	sub	esp,16
	mov	[esp+8],5
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	[esp+4],2
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeaddnonode
	sub	esp,16
	mov	[esp+8],6
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	[esp+4],3
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeaddyesnode
	sub	esp,16
	mov	[esp+8],7
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	[esp+4],3
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeaddnonode
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreeoutput
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdecisiontreequery
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	ret
_2_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftreenodenew
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
	mov	ebx,_ttreenode
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
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
	mov	eax,[ebp-4]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
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
_ftreenodedelete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
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
_fdecisiontreeremovenode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_30
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_31
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fdecisiontreeremovenode
_31
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_32
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fdecisiontreeremovenode
_32
	sub	esp,16
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbObjDelete
_30
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
_fdecisiontreeoutputbinarytree
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_34
	mov	eax,0
	jmp	_6_leave
_34
	sub	esp,24
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
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
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+28]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+28]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdecisiontreeoutputbinarytree
	mov	ebx,eax
	sub	esp,24
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+28]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdecisiontreeoutputbinarytree
	mov	ebx,eax
	mov	eax,0
	jmp	_6_leave
_6_leave
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
	ret	word 12
	.align	16
_fdecisiontreeoutput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdecisiontreeoutputbinarytree
	mov	ebx,eax
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdecisiontreeaskquestion
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_43
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fdecisiontreequerybinarytree
	jmp	_45
_43
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_46
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fdecisiontreequerybinarytree
	jmp	_48
_46
	sub	esp,8
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fdecisiontreeaskquestion
_48
_45
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 8
	.align	16
_fdecisiontreequery
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fdecisiontreequerybinarytree
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdecisiontreequerybinarytree
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_50
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_51
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	jmp	_52
_51
	sub	esp,24
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,0
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
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_52
	mov	eax,0
	jmp	_10_leave
_50
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_55
	sub	esp,24
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,0
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
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_10_leave
_55
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fdecisiontreeaskquestion
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdecisiontreeaddyesnode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_58
	sub	esp,8
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	mov	eax,0
	jmp	_11_leave
_58
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdecisiontreesearchtreeandaddyesnode
	and	eax,eax
	jz	_60
	sub	esp,8
	mov	eax,_61
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	jmp	_63
_60
	sub	esp,8
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_63
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+32]
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
	ret	word 16
	.align	16
_fdecisiontreeaddnonode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_66
	sub	esp,8
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_12_leave
_66
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdecisiontreesearchtreeandaddnonode
	and	eax,eax
	jz	_68
	sub	esp,8
	mov	eax,_69
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	jmp	_71
_68
	sub	esp,8
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_71
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+32]
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
	ret	word 16
	.align	16
_fdecisiontreesearchtreeandaddyesnode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+28]
	jnz	_74
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_75
	sub	esp,16
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_ftreenodenew
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_76
_75
	sub	esp,16
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_ftreenodenew
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
_76
	mov	eax,1
	jmp	_13_leave
	jmp	_77
_74
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_78
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	sub	esp,4
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdecisiontreesearchtreeandaddyesnode
	and	eax,eax
	jz	_79
	mov	eax,1
	jmp	_13_leave
	jmp	_80
_79
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_81
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	sub	esp,4
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdecisiontreesearchtreeandaddyesnode
	jmp	_13_leave
	jmp	_82
_81
	mov	eax,0
	jmp	_13_leave
_82
_80
_78
	mov	eax,0
	jmp	_13_leave
_77
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+36]
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
	ret	word 20
	.align	16
_fdecisiontreesearchtreeandaddnonode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,[ebp+28]
	jnz	_83
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_84
	sub	esp,16
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_ftreenodenew
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_85
_84
	sub	esp,16
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_ftreenodenew
	mov	[esp+4],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
_85
	mov	eax,1
	jmp	_14_leave
	jmp	_86
_83
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_87
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	sub	esp,4
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdecisiontreesearchtreeandaddnonode
	and	eax,eax
	jz	_88
	mov	eax,1
	jmp	_14_leave
	jmp	_89
_88
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_90
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	sub	esp,4
	lea	eax,[ebp+36]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdecisiontreesearchtreeandaddnonode
	jmp	_14_leave
	jmp	_91
_90
	mov	eax,0
	jmp	_14_leave
_91
_89
	jmp	_92
_87
	mov	eax,0
	jmp	_14_leave
_92
_86
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+36]
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
	ret	word 20
	.align	16
_fdecisiontreecreaterootnode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,16
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_ftreenodenew
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+28]
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
	ret	word 12
	.align	16
_fdecisiontreenew
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
	mov	ebx,_tdecisiontree
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
	mov	[esp+4],0
	call	__bbObjStore
	mov	eax,[ebp-4]
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdecisiontreedelete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fdecisiontreeremovenode
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_18	.db	"Have you got a weapon?",0
_19	.db	"Are you close enough to attack?",0
_20	.db	"Can you tackle bare-handed?",0
_21	.db	"Attack!!!",0
_22	.db	"Don't attack!!!",0
_23	.db	"Attack!!!",0
_24	.db	"Don't attack!!!",0
_25	.db	"Press any key to quit...",0
	.align	4
_ttreenode	.dd	5
_26	.dd	0
	.dd	_26
	.dd	_26
	.dd	0
	.dd	-1
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbStrType
	.dd	__bbIntType
	.dd	_ttreenode
	.dd	_ttreenode
	.align	4
_tdecisiontree	.dd	5
_28	.dd	0
	.dd	_28
	.dd	_28
	.dd	0
	.dd	-1
_29	.dd	0
	.dd	_29
	.dd	_29
	.dd	0
	.dd	-1
	.dd	1
	.dd	_ttreenode
_33	.db	"deleting node ",0
_35	.db	"[",0
_36	.db	"] node id = ",0
_37	.db	", question/answer = ",0
_38	.db	".1",0
_39	.db	".2",0
_40	.db	"1",0
_41	.db	" (enter yes or no)",0
_42	.db	"",0
_44	.db	"yes",0
_47	.db	"no",0
_49	.db	"Error please answer yes or no.",0
_53	.db	"Missing yes branch at ",0
_54	.db	" question",0
_56	.db	"Missing no branch at ",0
_57	.db	" question",0
_59	.db	"Error - no root node in AddYesNode()",0
_61	.db	"Added 'yes' node",0
_62	.db	" onto 'yes' branch of node ",0
_64	.db	"'yes' Node ",0
_65	.db	" not found",0
_67	.db	"Error no root node in AddNoNode()",0
_69	.db	"Added 'no' node",0
_70	.db	" onto 'no' branch of node ",0
_72	.db	"'no' Node ",0
_73	.db	" not found",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

