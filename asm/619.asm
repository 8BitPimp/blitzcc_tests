
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimgif
	mov	[ebp-4],eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadanimgif
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbanksize
	mov	[esp+12],eax
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	mov	[ebp-28],0
	jmp	_7
_8
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fpeekbyte
	cmp	eax,0
	jnz	_9
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fpeekbyte
	cmp	eax,33
	jnz	_10
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	add	ebx,2
	mov	[esp+4],ebx
	call	_fpeekbyte
	cmp	eax,249
	jnz	_11
	add	[ebp-24],1
_11
_10
_9
	add	[ebp-28],1
_7
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	cmp	[ebp-28],eax
	jle	_8
_4
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenmovie
	mov	[ebp-12],eax
	sub	esp,16
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmovieheight
	mov	[esp+4],eax
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fmoviewidth
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	[ebp-16],ebx
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-20],0
	jmp	_13
_12
	sub	esp,20
	mov	[esp+12],-1
	mov	[esp+16],-1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawmovie
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-20]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fgrabimage
	add	[ebp-20],1
_13
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmovieplaying
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jnz	_12
_5
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosemovie
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	ebx,[ebp-24]
	mov	[_vgifframecount],ebx
	mov	eax,[ebp-16]
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vgifframecount	.dd	0
_6	.db	"mygif.gif",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

