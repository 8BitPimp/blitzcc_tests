
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_freadfileasstring
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
	sub	esp,32
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsystemproperty
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-12],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	jnz	_6
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_6
	sub	esp,16
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbanksize
	mov	[esp+12],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	jnz	_8
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_8
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,16
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fbanksize
	mov	[esp+12],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritebytes
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	jnz	_10
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_10
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadstring
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
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
_4	.db	"tempdir",0
_5	.db	"bbrsrf.tmp",0
_7	.db	"",0
_9	.db	"",0
_11	.db	"",0
_12	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

