
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],1
	mov	[esp],50
	call	_fcreateimage
	mov	[_vmim],eax
	sub	esp,12
	mov	eax,[_vmim]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_8
_9
	mov	[ebp-8],0
	jmp	_10
_11
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],2
	call	_frand
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jz	_13
	cmp	[ebp-12],1
	jz	_14
	cmp	[ebp-12],2
	jz	_15
	jmp	_12
_13
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_12
_14
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],144
	call	_fcolor
	jmp	_12
_15
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_12
_12
	sub	esp,20
	mov	[esp+12],5
	mov	[esp+16],1
	mov	[esp+8],5
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	add	[ebp-8],5
_10
	cmp	[ebp-8],50
	jle	_11
_4
	add	[ebp-4],5
_8
	cmp	[ebp-4],50
	jle	_9
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_ftformfilter
	sub	esp,4
	mov	eax,[_vmim]
	mov	[esp],eax
	call	_fmidhandle
	mov	[ebp-16],0
	jmp	_16
_17
	sub	esp,16
	mov	[esp],-12
	mov	[esp+4],12
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vmim]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frotateimage
	mov	ebx,eax
	add	[ebp-16],1
_16
	cmp	[ebp-16],25
	jle	_17
_6
	jmp	_19
_18
	call	_fcls
	sub	esp,16
	mov	[esp+8],110
	mov	[esp+12],0
	mov	[esp+4],110
	mov	eax,[_vmim]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	[esp],1
	call	_fflip
_19
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_18
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
	.align	4
_vmim	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

