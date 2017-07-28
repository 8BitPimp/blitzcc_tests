
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
	mov	eax,_adbfile
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_adbfile
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfile
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afleng
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_afleng
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afleng
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_astpos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_astpos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astpos
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arowq
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_arowq
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arowq
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acolq
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_acolq
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolq
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbbank
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_adbbank
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbbank
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbbankc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_adbbankc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbbankc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_adbc
	add	esi,12
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,_adbc
	add	esi,16
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_adbc
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbc
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fopendb
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
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfile]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fseekfile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afleng]
	mov	[ebx],eax
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	sub	eax,ebx
	mov	ecx,[ebp+20]
	shl	ecx,byte 2
	add	ecx,[_afleng]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_arowq]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afleng]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afleng]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbankc]
	mov	[ebx],eax
	mov	[ebp-8],0
	jmp	_22
_23
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],32
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbankc]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-8],1
_22
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afleng]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_23
_4
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	esi,1
	mov	[ebx],esi
	mov	[ebp-12],0
_24
	mov	ebx,[ebp-12]
	add	ebx,1
	shl	ebx,byte 5
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fseekfile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	cmp	eax,13
	jnz	_25
	jmp	_5
_25
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	add	ebx,16
	mov	[esp+4],ebx
	call	_fseekfile
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadshort
	mov	[ebx],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_acolq]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_26
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_adbc
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	sub	esi,1
	mov	edi,_adbc
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp+20]
	mov	edi,_adbc
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_adbc]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,_adbc
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	mov	edi,_adbc
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_adbc]
	mov	[esi],ebx
_26
	add	[ebp-12],1
	jmp	_24
_5
	mov	ebx,[ebp-12]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_acolq]
	mov	[esi],ebx
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
_fclosedb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfile]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fseekfile
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_arowq]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteshort
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbankc]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_freadrow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfile]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fseekfile
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfile]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_freadbytes
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwriterow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfile]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fseekfile
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfile]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritebytes
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_freaddbf
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
	jmp	_27
_28
	sub	esp,28
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	ebx,[ebx]
	add	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpeekbyte
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
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
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-4],1
_27
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_28
_10
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 8
	.align	16
_fwritedbf
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
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_30
_31
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jge	_32
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-12],eax
	jmp	_33
_32
	mov	[ebp-12],32
_33
	sub	esp,12
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	ebx,[ebx]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-8],1
_30
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_31
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+28]
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
	ret	word 12
	.align	16
_ftrimdbf
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_freaddbf
	mov	[esp],eax
	call	_ftrim
	jmp	_13_leave
	sub	esp,4
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fcreatedb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfile]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfile]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],65795
	call	_fwriteint
	mov	[ebp-4],1
	jmp	_35
_36
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfile]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwriteint
	add	[ebp-4],1
_35
	cmp	[ebp-4],7
	jle	_36
_15
	mov	ebx,32
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_astpos]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_arowq]
	mov	[esi],ebx
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
_faddfield
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
	shl	ebx,byte 2
	add	ebx,[_adbfile]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	[ebp-8],1
	jmp	_37
_38
	sub	esp,24
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	add	[ebp-8],1
_37
	cmp	[ebp-8],11
	jle	_38
_17
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],66
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afleng]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	shr	ebx,byte 5
	sub	ebx,1
	mov	[ebp-12],ebx
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	mov	[ebx],esi
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	ebx,_adbc
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	mov	esi,_adbc
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_adbc]
	mov	esi,[ebp+28]
	mov	[ebx],esi
	mov	[ebp-8],1
	jmp	_39
_40
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fwriteshort
	add	[ebp-8],1
_39
	cmp	[ebp-8],7
	jle	_40
_18
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afleng]
	mov	ebx,[ebx]
	add	ebx,[ebp+28]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	add	ebx,32
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_astpos]
	mov	[esi],ebx
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 12
	.align	16
_fcloseheader
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_adbfile]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],13
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fseekfile
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_astpos]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astpos]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_afleng]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteshort
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_faddrow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afleng]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_arowq]
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_astpos]
	mov	esi,[esi]
	add	esi,ebx
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfile]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fseekfile
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfile]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritebytes
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_arowq]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_arowq]
	mov	[esi],ebx
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
_fclearbnk
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afleng]
	mov	esi,[esi]
	mov	[esp+16],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbbank]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbankc]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcopybank
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_adbfile	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afleng	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_astpos	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arowq	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acolq	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbbank	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbbankc	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbc	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
_29	.db	"",0
_34	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

