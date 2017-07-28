
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_10
_11
	mov	[ebp-24],0
	jmp	_12
_13
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	ebx,16777215
	and	eax,ebx
	mov	[ebp-28],eax
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fwriteint
	add	[ebp-24],1
_12
	mov	ebx,[ebp-8]
	cmp	[ebp-24],ebx
	jle	_13
_4
	add	[ebp-20],1
_10
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jle	_11
_3
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_15
_16
	mov	[ebp-24],300
	jmp	_17
_18
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-28],eax
	mov	ebx,[ebp-28]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-32],ebx
	mov	ebx,[ebp-28]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-40],ebx
	mov	eax,[ebp-32]
	add	eax,[ebp-36]
	add	eax,[ebp-40]
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[ebp-44],eax
	cmp	[ebp-44],192
	jl	_19
	mov	[ebp-32],255
	mov	[ebp-36],255
	mov	[ebp-40],255
_19
	cmp	[ebp-44],192
	setl	al
	movzx	eax,al
	mov	[ebp-48],eax
	cmp	[ebp-44],128
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_20
	mov	[ebp-32],100
	mov	[ebp-36],100
	mov	[ebp-40],100
_20
	cmp	[ebp-44],128
	setl	al
	movzx	eax,al
	mov	[ebp-48],eax
	cmp	[ebp-44],64
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	and	eax,ebx
	and	eax,eax
	jz	_21
	mov	[ebp-32],100
	mov	[ebp-36],200
	mov	[ebp-40],100
_21
	cmp	[ebp-44],64
	jge	_22
	mov	[ebp-32],100
	mov	[ebp-36],50
	mov	[ebp-40],50
_22
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-24],1
_17
	mov	ebx,[ebp-8]
	add	ebx,300
	cmp	[ebp-24],ebx
	jle	_18
_6
	add	[ebp-20],1
_15
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jle	_16
_5
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	jmp	_24
_23
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],300
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_24
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_23
_7
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_8	.db	"hmap2.bmp",0
_9	.db	"text.txt",0
_14	.db	"text.txt",0
_25	.db	"Terrain Texture Generator",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

