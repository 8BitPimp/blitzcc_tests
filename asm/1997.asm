
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,84
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
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1069547520
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[esp],eax
	mov	[esp+12],1110704128
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	call	_frotateentity
	mov	[_vet],1
	mov	[_vdet],10
	mov	[_vcr],255
	mov	[_vcg],255
	mov	[_vcb],255
	call	_frecreate
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fdivrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],1065353216
	sub	esp,4
	mov	eax,_acmd
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,18
	mov	esi,_acmd
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_acmd
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acmd
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-16],0
	jmp	_44
_45
	sub	esp,8
	mov	eax,_acmd
	add	eax,12
	mov	eax,[eax]
	imul	eax,0
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_acmd]
	mov	[esp],eax
	mov	[ebp-84],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_acmd
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_acmd]
	mov	[esp],eax
	mov	[ebp-84],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-16],1
_44
	cmp	[ebp-16],17
	jle	_45
_3
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],14
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_47
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	ebx,[ebp-32]
	push	ebx
	fld	[esp]
	pop	ebx
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	call	_fmousez
	sub	eax,[ebp-40]
	mov	[ebp-36],eax
	mov	[ebp-44],0
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_48
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-48],esi
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-52],esi
	mov	[ebp-44],1
	jmp	_49
_48
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_50
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-60]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	mov	[ebp-44],2
	jmp	_51
_50
	sub	esp,4
	mov	[esp],3
	call	_fmousedown
	and	eax,eax
	jz	_52
	sub	esp,8
	mov	[esp],1065437102
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	[ebp-44],3
	jmp	_53
_52
	cmp	[ebp-36],0
	jz	_54
	mov	eax,[_vdet]
	add	eax,[ebp-36]
	cmp	eax,2
	setg	al
	movzx	eax,al
	mov	[ebp-84],eax
	mov	ebx,[_vdet]
	add	ebx,[ebp-36]
	cmp	ebx,20
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	and	eax,eax
	jz	_55
	mov	ebx,[ebp-36]
	add	[_vdet],ebx
	call	_frecreate
	mov	[ebp-44],6
_55
	call	_fmousez
	mov	[ebp-40],eax
	jmp	_56
_54
	mov	[ebp-64],0
_56
_53
_51
_49
	call	_fmousex
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	call	_fmousey
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	call	_fgetkey
	mov	[ebp-68],eax
	cmp	[ebp-68],49
	setge	al
	movzx	eax,al
	mov	[ebp-84],eax
	cmp	[ebp-68],52
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-84]
	and	eax,ebx
	and	eax,eax
	jz	_57
	mov	ebx,[ebp-68]
	sub	ebx,48
	mov	[_vet],ebx
	call	_frecreate
	cmp	[_vet],2
	jnz	_58
	mov	[ebp-44],4
_58
_57
	cmp	[ebp-68],48
	jnz	_59
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[_vcr],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[_vcg],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[_vcb],eax
	sub	esp,16
	mov	ebx,[_vcg]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vcb]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vcr]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vm]
	mov	[esp],eax
	call	_fentitycolor
	mov	[ebp-44],5
_59
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	ebx,[ebp-48]
	mov	[esp+4],ebx
	mov	eax,[_vm]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-56]
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	eax,[_vm]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[_vm]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	lea	eax,[ebp-76]
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_acmd
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-72]
	shl	ebx,byte 2
	add	ebx,[_acmd]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_61
	sub	esp,12
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_63
	sub	esp,12
	lea	eax,[ebp-76]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_65
	jmp	_60
_61
	cmp	[ebp-44],0
	jnz	_67
	sub	esp,8
	lea	eax,[ebp-80]
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_acmd
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-72]
	shl	ebx,byte 2
	add	ebx,[_acmd]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-72],1
_67
	jmp	_60
_63
	sub	esp,12
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,_acmd
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-72]
	shl	ebx,byte 2
	add	ebx,[_acmd]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_68
	add	[ebp-72],1
_68
	jmp	_60
_65
	cmp	[ebp-68],32
	jnz	_69
	add	[ebp-72],1
_69
	jmp	_60
_60
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-80]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_47
_4
	ret
_2_leave
	mov	[ebp-84],eax
	sub	esp,4
	mov	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-84]
	mov	[ebp-84],eax
	sub	esp,4
	mov	esi,[ebp-80]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-84]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frecreate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[_vm],0
	jz	_70
	sub	esp,4
	mov	eax,[_vm]
	mov	[esp],eax
	call	_ffreeentity
_70
	mov	ebx,[_vet]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_72
	cmp	[ebp-4],2
	jz	_73
	cmp	[ebp-4],3
	jz	_74
	cmp	[ebp-4],4
	jz	_75
	jmp	_71
_72
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vm],eax
	jmp	_71
_73
	sub	esp,8
	mov	eax,[_vdet]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vm],eax
	jmp	_71
_74
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vdet]
	mov	[esp],eax
	call	_fcreatecylinder
	mov	[_vm],eax
	jmp	_71
_75
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[_vdet]
	mov	[esp],eax
	call	_fcreatecone
	mov	[_vm],eax
	jmp	_71
_71
	sub	esp,16
	mov	ebx,[_vcg]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[_vcb]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vcr]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vm]
	mov	[esp],eax
	call	_fentitycolor
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vm	.dd	0
	.align	4
_vet	.dd	0
	.align	4
_vdet	.dd	0
	.align	4
_vcr	.dd	0
	.align	4
_vcg	.dd	0
	.align	4
_vcb	.dd	0
	.align	4
_acmd	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
_46	.db	"Arial Cyr",0
_62	.db	"TEXT",0
_64	.db	"WAITFOR",0
_66	.db	"WAITKEY",0
_8	.db	"TEXT",0
_9	.db	"It is the program intended for viewing three - dimensional objects. Press space.",0
_10	.db	"WAITKEY",0
_11	.db	"",0
_12	.db	"TEXT",0
_13	.db	"This lesson will help you to master it.",0
_14	.db	"WAITKEY",0
_15	.db	"",0
_16	.db	"TEXT",0
_17	.db	"Having pressed left button of the mouse, you can move object. Try.",0
_18	.db	"WAITFOR",0
_19	.db	"1",0
_20	.db	"TEXT",0
_21	.db	"With the right button, it is possible to rotate object. Turn object.",0
_22	.db	"WAITFOR",0
_23	.db	"2",0
_24	.db	"TEXT",0
_25	.db	"Middle button - for scaling of object. Change the size of object.",0
_26	.db	"WAITFOR",0
_27	.db	"3",0
_28	.db	"TEXT",0
_29	.db	"Digital keys 1 - 4 - selection of object. For proceeding, choose sphere(2).",0
_30	.db	"WAITFOR",0
_31	.db	"4",0
_32	.db	"TEXT",0
_33	.db	"You can change color of object with '0' key. Change Color To continue.",0
_34	.db	"WAITFOR",0
_35	.db	"5",0
_36	.db	"TEXT",0
_37	.db	"Change detail level of object by rotating mouse wheel.",0
_38	.db	"WAITFOR",0
_39	.db	"6",0
_40	.db	"TEXT",0
_41	.db	"That's all, the lesson is ended.",0
_42	.db	"WAITKEY",0
_43	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_8
	.dd	4
	.dd	_9
	.dd	4
	.dd	_10
	.dd	4
	.dd	_11
	.dd	4
	.dd	_12
	.dd	4
	.dd	_13
	.dd	4
	.dd	_14
	.dd	4
	.dd	_15
	.dd	4
	.dd	_16
	.dd	4
	.dd	_17
	.dd	4
	.dd	_18
	.dd	4
	.dd	_19
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	4
	.dd	_24
	.dd	4
	.dd	_25
	.dd	4
	.dd	_26
	.dd	4
	.dd	_27
	.dd	4
	.dd	_28
	.dd	4
	.dd	_29
	.dd	4
	.dd	_30
	.dd	4
	.dd	_31
	.dd	4
	.dd	_32
	.dd	4
	.dd	_33
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	4
	.dd	_36
	.dd	4
	.dd	_37
	.dd	4
	.dd	_38
	.dd	4
	.dd	_39
	.dd	4
	.dd	_40
	.dd	4
	.dd	_41
	.dd	4
	.dd	_42
	.dd	4
	.dd	_43
	.dd	0

