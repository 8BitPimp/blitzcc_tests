
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,4
	mov	eax,_acounters
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,256
	mov	esi,_acounters
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acounters
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_anodes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,514
	mov	esi,_anodes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anodes
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acodes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,257
	mov	esi,_acodes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acodes
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilesize
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	lea	eax,[ebp-4]
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
	call	_fcompressfile
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,16
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilesize
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,[ebp-12]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
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
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
_finithuffman
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_39
_40
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anodes]
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
	add	[ebp-4],1
_39
	cmp	[ebp-4],514
	jle	_40
_4
	mov	[ebp-4],0
	jmp	_41
_42
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acodes]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tcharcodes
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	add	[ebp-4],1
_41
	cmp	[ebp-4],257
	jle	_42
_5
	sub	esp,8
	mov	[esp],_vbitio
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tbitfile
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,128
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcountoccurrences
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-8],0
	jmp	_43
_44
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acounters]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acounters]
	mov	[esi],ebx
	add	[ebp-8],1
_43
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_44
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fscalecounts
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_45
_46
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acounters]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jle	_47
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acounters]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
_47
	add	[ebp-8],1
_45
	cmp	[ebp-8],256
	jle	_46
_9
	mov	eax,[ebp-4]
	mov	ecx,255
	cdq
	idiv	ecx
	add	eax,1
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_48
_49
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acounters]
	mov	eax,[eax]
	mov	ecx,[ebp-4]
	cdq
	idiv	ecx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_anodes]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acounters]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_50
	mov	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_50
	add	[ebp-8],1
_48
	cmp	[ebp-8],256
	jle	_49
_10
	mov	ebx,1
	mov	esi,256
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbuildtree
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
	mov	[ebp-16],ebx
	mov	ebx,32767
	mov	esi,513
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	[ebp-4],257
	jmp	_51
_52
	mov	[ebp-12],513
	mov	[ebp-16],513
	mov	[ebp-8],0
	jmp	_53
_54
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_55
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_56
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	jmp	_57
_56
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_58
	mov	ebx,[ebp-8]
	mov	[ebp-16],ebx
_58
_57
_55
	add	[ebp-8],1
_53
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_54
_13
	cmp	[ebp-16],513
	jnz	_59
	jmp	_12
_59
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	add	[ebp-4],1
_51
	cmp	[ebp-4],514
	jle	_52
_12
	sub	[ebp-4],1
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fconverttreetocode
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+28],256
	jg	_60
	mov	ebx,[ebp+20]
	mov	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_acodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_acodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	eax,0
	jmp	_14_leave
_60
	mov	ebx,[ebp+20]
	shl	ebx,byte 1
	mov	[ebp+20],ebx
	add	[ebp+24],1
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fconverttreetocode
	sub	esp,12
	mov	eax,[ebp+20]
	mov	ebx,1
	or	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	call	_fconverttreetocode
	mov	ebx,[ebp+20]
	sar	ebx,byte 1
	mov	[ebp+20],ebx
	sub	[ebp+24],1
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_foutputcounts
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
	mov	[ebp-8],0
	jmp	_62
_61
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_63
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[ebp-12],ebx
	jmp	_64
_65
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_66
	jmp	_17
_66
	add	[ebp-12],1
_64
	cmp	[ebp-12],255
	jle	_65
_17
	sub	[ebp-12],1
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[ebp-16],ebx
	jmp	_67
_68
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_69
	cmp	[ebp-16],255
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-12]
	cmp	ebx,3
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_70
	jmp	_18
_70
	jmp	_71
_69
	mov	ebx,[ebp-16]
	mov	[ebp-12],ebx
_71
	add	[ebp-16],1
_67
	cmp	[ebp-16],255
	jle	_68
_18
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeshort
	add	[ebp+24],2
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeshort
	add	[ebp+24],2
	mov	ebx,[ebp-8]
	mov	[ebp-4],ebx
	jmp	_72
_73
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeshort
	add	[ebp+24],2
	add	[ebp-4],1
_72
	mov	ebx,[ebp-12]
	cmp	[ebp-4],ebx
	jle	_73
_19
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[ebp-8],ebx
	jmp	_74
_63
	add	[ebp-8],1
_74
_62
	cmp	[ebp-8],256
	jl	_61
_16
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],4095
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokeshort
	add	[ebp+24],2
	mov	eax,[ebp+24]
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcompressfile
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
	mov	[ebp-44],ebx
	call	_finithuffman
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1008981770
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[ebp-24]
	push	eax
	fild	[esp]
	pop	eax
	faddp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-20],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-24]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fcountoccurrences
	call	_fscalecounts
	call	_fbuildtree
	mov	[ebp-36],eax
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fconverttreetocode
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],4
	call	_foutputcounts
	mov	[ebp-28],eax
	mov	[ebp-40],0
	jmp	_75
_76
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_acodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_acodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fbithandler
	mov	[ebp-28],eax
	add	[ebp-40],1
_75
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_76
_21
	mov	ebx,256
	shl	ebx,byte 2
	add	ebx,[_acodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,256
	shl	ebx,byte 2
	add	ebx,[_acodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fbithandler
	mov	[ebp-28],eax
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,128
	jz	_77
	sub	esp,12
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-28],1
_77
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-44],eax
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-44]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritebytes
	sub	esp,4
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbithandler
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	mov	[ebp-8],1
	jmp	_78
_79
	mov	ebx,[ebp-4]
	shl	ebx,byte 1
	mov	[ebp-4],ebx
	add	[ebp-8],1
_78
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_79
_23
	jmp	_81
_80
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	and	ebx,esi
	and	ebx,ebx
	jz	_82
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	or	ebx,esi
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_82
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[ebp-4],ebx
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	sar	ebx,byte 1
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_83
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp+32],1
	mov	ebx,128
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	add	ebx,2
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
_83
_81
	cmp	[ebp-4],0
	jnz	_80
_24
	mov	eax,[ebp+32]
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_acounters	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_anodes	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_acodes	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_vbitio	.dd	0
_25	.db	"source.bmp",0
_26	.db	"Curve Compression - Compress",0
_27	.db	"",0
_28	.db	"Source length:",0
_29	.db	"packed.dat",0
_30	.db	"Packed length:",0
_31	.db	"packed.dat",0
_32	.db	" seconds taken.",0
	.align	4
_ttreenode	.dd	5
_33	.dd	0
	.dd	_33
	.dd	_33
	.dd	0
	.dd	-1
_34	.dd	0
	.dd	_34
	.dd	_34
	.dd	0
	.dd	-1
	.dd	4
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tcharcodes	.dd	5
_35	.dd	0
	.dd	_35
	.dd	_35
	.dd	0
	.dd	-1
_36	.dd	0
	.dd	_36
	.dd	_36
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tbitfile	.dd	5
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
_38	.dd	0
	.dd	_38
	.dd	_38
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

