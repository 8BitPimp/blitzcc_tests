
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
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
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
	jmp	_8
_7
	call	_fmousexspeed
	mov	[ebp-4],eax
	call	_fmouseyspeed
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_9
	mov	ebx,[ebp-4]
	add	[ebp-12],ebx
	mov	ebx,[ebp-8]
	add	[ebp-16],ebx
_9
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],150
	mov	[esp],150
	call	_fcolor
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	[esp+24],ebx
	mov	esi,[ebp-16]
	mov	[esp+28],esi
	mov	[esp+20],10
	mov	[esp+16],10
	mov	[esp+12],480
	mov	[esp+8],0
	mov	[esp+4],640
	mov	[esp],0
	call	_fdrawgrid
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	ebx,[ebp-24]
	mov	[ebp-20],ebx
	call	_fmillisecs
	mov	[ebp-24],eax
	sub	esp,24
	mov	eax,1000
	mov	ecx,[ebp-24]
	sub	ecx,[ebp-20]
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_7
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawgrid
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+44]
	mov	[esp],eax
	mov	ebx,[ebp+36]
	mov	[esp+4],ebx
	call	__bbMod
	add	eax,[ebp+20]
	mov	[ebp-4],eax
	jmp	_11
_10
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp+36]
	add	[ebp-4],ebx
_11
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jl	_10
_5
	sub	esp,8
	mov	eax,[ebp+48]
	mov	[esp],eax
	mov	ebx,[ebp+40]
	mov	[esp+4],ebx
	call	__bbMod
	add	eax,[ebp+28]
	mov	[ebp-8],eax
	jmp	_13
_12
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp+40]
	add	[ebp-8],ebx
_13
	mov	ebx,[ebp+32]
	cmp	[ebp-8],ebx
	jl	_12
_6
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

