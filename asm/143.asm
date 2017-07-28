
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
	sub	esp,4
	mov	eax,_ascom
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,49
	mov	esi,_ascom
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ascom
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asact
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,49
	mov	esi,_asact
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asact
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aparam
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,49
	mov	esi,_aparam
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aparam
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[_vscriptcount],eax
	mov	[ebp-4],1
	jmp	_20
_21
	sub	esp,8
	mov	eax,[ebp-4]
	sub	eax,1
	shl	eax,byte 2
	add	eax,[_ascom]
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	__bbReadInt
	mov	ebx,[ebp-4]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asact]
	mov	[ebx],eax
	add	[ebp-4],1
_20
	mov	ebx,[_vscriptcount]
	cmp	[ebp-4],ebx
	jle	_21
_3
_l_2scriptcommands
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcutscene
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	sub	esp,24
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_24
	mov	eax,0
	jmp	_4_leave
_24
	jmp	_26
_25
	call	_fcleararrays
	mov	[ebp-8],0
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-16],0
	mov	[ebp-20],1
	jmp	_27
_28
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
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
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_29
	jmp	_6
_29
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_31
	add	[ebp-16],1
	cmp	[ebp-16],49
	jle	_33
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_33
_31
	mov	[ebp-28],48
	jmp	_35
_36
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_37
	sub	esp,20
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aparam]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aparam]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_40
_39
	sub	esp,20
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aparam]
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
	mov	[esp+4],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aparam]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-12]
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
	add	[ebp-20],1
_40
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-44],eax
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
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,_42
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-48]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jnz	_39
_8
	jmp	_7
_37
	add	[ebp-28],1
_35
	cmp	[ebp-28],57
	jle	_36
_7
	mov	[ebp-28],0
	jmp	_43
_44
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_ascom]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[esp+8],eax
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ascom]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_45
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_asact]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_ascom]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	[ebp-20],eax
_45
	add	[ebp-28],1
_43
	mov	ebx,[_vscriptcount]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_44
_9
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_46
	add	[ebp-20],1
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
_48
	sub	esp,20
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aparam]
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
	mov	[esp+4],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aparam]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-12]
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
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_49
	jmp	_10
_49
	add	[ebp-20],1
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_50
	jmp	_10
_50
	jmp	_48
_10
_46
	add	[ebp-20],1
_27
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-20],eax
	jle	_28
_6
	mov	ebx,[ebp-36]
	mov	[ebp-40],ebx
	cmp	[ebp-40],1
	jz	_52
	cmp	[ebp-40],2
	jz	_53
	cmp	[ebp-40],3
	jz	_54
	jmp	_51
_52
	jmp	_51
_53
	jmp	_51
_54
	jmp	_51
_51
	sub	esp,4
	mov	[esp],1
	call	_fflip
_26
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_feof
	cmp	eax,0
	jz	_25
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	sub	esp,4
	mov	esi,[ebp-12]
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
	ret	word 4
	.align	16
_fcleararrays
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_55
_56
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aparam]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_55
	cmp	[ebp-4],5
	jle	_56
_13
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vscriptcount	.dd	0
	.align	4
_ascom	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_asact	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aparam	.dd	0
	.dd	3
	.dd	1
	.dd	0
_22	.db	"cutscenes/scene",0
_23	.db	".scn",0
_30	.db	";",0
_32	.db	",",0
_34	.db	"Too many parameters!",0
_38	.db	"",0
_41	.db	",",0
_42	.db	"",0
_47	.db	"",0
_57	.db	"",0
_14	.db	"CreateChar",0
_15	.db	"CreateNPC",0
_16	.db	"BGMusic",0
_17	.db	"FGMusic",0
_18	.db	"FadeMuse",0
_19	.db	"Animate",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	6
	.dd	4
	.dd	_14
	.dd	1
	.dd	1
	.dd	4
	.dd	_15
	.dd	1
	.dd	2
	.dd	4
	.dd	_16
	.dd	1
	.dd	3
	.dd	4
	.dd	_17
	.dd	1
	.dd	4
	.dd	4
	.dd	_18
	.dd	1
	.dd	5
	.dd	4
	.dd	_19
	.dd	1
	.dd	6
	.dd	0

