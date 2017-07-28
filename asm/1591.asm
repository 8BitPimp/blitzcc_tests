
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
	mov	[_vw],1024
	mov	[_vh],768
	mov	[_vd],32
	sub	esp,16
	mov	ebx,[_vd]
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	esi,[_vh]
	mov	[esp+4],esi
	mov	eax,[_vw]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],1120403456
	mov	ebx,[_vh]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],-1073741824
	mov	[esp+4],1073741824
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_4
_5
	mov	ebx,[ebp-4]
	mov	[ebp-16],ebx
	sub	esp,8
	mov	[esp],-1082130432
	mov	[esp+4],1065353216
	call	_frnd
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],100
	jge	_6
	mov	[ebp-4],100
_6
	mov	ebx,[_vh]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_7
	mov	ebx,[_vh]
	sub	ebx,1
	mov	[ebp-4],ebx
_7
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-16]
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,2
	jle	_8
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbSgn
	shl	eax,byte 1
	mov	[ebp-8],eax
_8
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[_vh]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fline
	add	[ebp-12],1
_4
	mov	ebx,[_vw]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_5
_3
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
	.align	4
_vw	.dd	0
	.align	4
_vh	.dd	0
	.align	4
_vd	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

