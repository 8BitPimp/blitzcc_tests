
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fmillisecs
	mov	[_vtimer],eax
	jmp	_6
_5
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_ffps
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_5
_3
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffps
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	add	[_vfpscount],1
	call	_fmillisecs
	mov	ebx,[_vtimer]
	add	ebx,1000
	cmp	eax,ebx
	jge	_7
	jmp	_8
_7
	mov	ebx,[_vfpscount]
	sub	ebx,[_vfpstemp]
	mov	[_vfps],ebx
	mov	ebx,[_vfpscount]
	mov	[_vfpstemp],ebx
	call	_fmillisecs
	mov	[_vtimer],eax
_8
	sub	esp,32
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vfps]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vtimer	.dd	0
	.align	4
_vfpscount	.dd	0
	.align	4
_vfpstemp	.dd	0
	.align	4
_vfps	.dd	0
	.align	4
_vx	.dd	0
	.align	4
_vy	.dd	0
_9	.db	"FPS ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

