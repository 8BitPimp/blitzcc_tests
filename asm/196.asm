
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_19
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
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fexpandfile
	cmp	eax,0
	jnz	_20
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_20
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,16
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_24
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
	mov	ebx,_25
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
	jmp	_30
_31
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
_30
	cmp	[ebp-4],514
	jle	_31
_4
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
_finputcounts
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
	mov	[ebp-20],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_32
	mov	eax,0
	jmp	_5_leave
	jmp	_33
_32
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-4],eax
_33
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_34
	mov	eax,0
	jmp	_5_leave
	jmp	_35
_34
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-8],eax
_35
_36
	mov	ebx,[ebp-4]
	mov	[ebp-16],ebx
	jmp	_37
_38
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_39
	mov	eax,0
	jmp	_5_leave
	jmp	_40
_39
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_40
	add	[ebp-16],1
_37
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_38
_7
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_41
	mov	eax,0
	jmp	_5_leave
	jmp	_42
_41
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-4],eax
_42
	cmp	[ebp-4],4095
	jz	_43
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_44
	mov	eax,0
	jmp	_5_leave
	jmp	_45
_44
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshort
	mov	[ebp-8],eax
_45
_43
	cmp	[ebp-4],4095
	jnz	_36
_6
	mov	ebx,1
	mov	esi,256
	shl	esi,byte 2
	add	esi,[_anodes]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	eax,[ebp-20]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
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
	jmp	_46
_47
	mov	[ebp-12],513
	mov	[ebp-16],513
	mov	[ebp-8],0
	jmp	_48
_49
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_50
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
	jge	_51
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	jmp	_52
_51
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
	jge	_53
	mov	ebx,[ebp-8]
	mov	[ebp-16],ebx
_53
_52
_50
	add	[ebp-8],1
_48
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_49
_10
	cmp	[ebp-16],513
	jnz	_54
	jmp	_9
_54
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
_46
	cmp	[ebp-4],514
	jle	_47
_9
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
	jmp	_8_leave
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
_fexpanddata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,128
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	[ebp-8],0
_55
	mov	ebx,[ebp+28]
	mov	[ebp-4],ebx
_56
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_finputbit
	cmp	eax,1
	jnz	_57
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	jmp	_58
_57
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anodes]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
_58
	cmp	[ebp-4],256
	jg	_56
_13
	cmp	[ebp-4],256
	jz	_59
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-8],1
_59
	cmp	[ebp-4],256
	jnz	_55
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_finputbit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,128
	jnz	_60
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
_60
	mov	ebx,[_vbitio]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	and	ebx,esi
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
	jnz	_61
	mov	ebx,128
	mov	esi,[_vbitio]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
_61
	cmp	[ebp-4],0
	jz	_62
	mov	eax,1
	jmp	_14_leave
	jmp	_63
_62
	mov	eax,0
	jmp	_14_leave
_63
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fexpandfile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	call	_finithuffman
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_finputcounts
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_64
	mov	eax,0
	jmp	_15_leave
	jmp	_65
_64
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-20],eax
_65
	call	_fbuildtree
	mov	[ebp-8],eax
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fexpanddata
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritebytes
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,1
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_anodes	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_vbitio	.dd	0
_16	.db	"packed.dat",0
_17	.db	"Curve Compression - Expand",0
_18	.db	"",0
_19	.db	"Packed length:",0
_21	.db	"dest.bmp",0
_22	.db	"Expand failed!",0
_23	.db	"Expanded length:",0
_24	.db	"dest.bmp",0
_25	.db	" seconds taken.",0
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
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tbitfile	.dd	5
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
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

