
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],400
	mov	[esp],400
	call	_fgraphics
	sub	esp,4
	mov	[esp],2000
	call	_fcreatebank
	mov	[_vbank],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-4],0
	jmp	_8
_9
	sub	esp,20
	mov	[esp],-1
	mov	[esp+4],2147483647
	call	_frand
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vbank]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-4],4
_8
	cmp	[ebp-4],1996
	jle	_9
_3
	sub	esp,8
	mov	eax,[_vbank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[ebp-8],eax
	mov	[ebp-4],4
	jmp	_10
_11
	sub	esp,8
	mov	eax,[_vbank]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	ebx,[ebp-8]
	xor	ebx,eax
	mov	[ebp-8],ebx
	add	[ebp-4],4
_10
	cmp	[ebp-4],1992
	jle	_11
_4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],4660
	mov	[esp+4],1450744508
	call	_frand
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],1996
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	eax,[_vbank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,32
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],2147483647
	call	_fseedrnd
	mov	[ebp-12],1
	jmp	_15
_16
	sub	esp,32
	mov	[esp],10
	mov	[esp+4],50
	call	_frand
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-12]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-12],1
_15
	cmp	[ebp-12],15
	jle	_16
_5
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],260
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"Xor Checksumming",0
_7	.db	"",0
	.align	4
_vbank	.dd	0
_12	.db	"Random number from checksum seed: ",0
_13	.db	"Press a key to see a demo of a seed bug",0
_14	.db	"Print 15 random numbers between 10 and 50",0
_17	.db	"Press a key to end",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

