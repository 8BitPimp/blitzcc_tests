
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	mov	eax,_aimageframes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,72
	mov	esi,_aimageframes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimageframes
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	[esp],1
	call	_fautomidhandle
	sub	esp,4
	mov	[esp],1
	call	_ftformfilter
	sub	esp,8
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aimageframes]
	mov	[ebx],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aimageframes]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_7
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	call	_fend
_7
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[ebp-12],2
	mov	[ebp-16],5
	jmp	_9
_10
	sub	esp,4
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcopyimage
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aimageframes]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotateimage
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimageheight
	cmp	eax,[ebp-4]
	jle	_11
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-4],eax
_11
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimagewidth
	cmp	eax,[ebp-8]
	jle	_12
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
_12
	add	[ebp-12],1
	add	[ebp-16],5
_9
	cmp	[ebp-16],355
	jle	_10
_3
	sub	esp,4
	mov	[esp],0
	call	_fautomidhandle
	sub	esp,32
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,12
	mov	ebx,[ebp-4]
	shl	ebx,byte 3
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,9
	imul	eax,[ebp-8]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-20],eax
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	mov	[ebp-16],1
	jmp	_16
_17
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aimageframes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[ebp-8]
	add	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],9
	call	__bbMod
	cmp	eax,0
	jnz	_18
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	add	[ebp-28],ebx
_18
	add	[ebp-16],1
_16
	cmp	[ebp-16],72
	jle	_17
_4
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,16
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aimageframes	.dd	0
	.dd	1
	.dd	1
	.dd	0
_5	.db	"Loading Image: <Your Input File Name Here>",0
_6	.db	"<Your Input File Name Here>",0
_8	.db	"ERROR! Failed to load image: <Your Input File Name Here>",0
_13	.db	"MaxHeight = ",0
_14	.db	", MaxWidth = ",0
_15	.db	"Creating New Image...",0
_19	.db	"Saving new image, filename = <Your Output File Name Here>",0
_20	.db	"<Your Output File Name Here>",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

