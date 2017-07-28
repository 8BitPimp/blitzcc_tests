
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
	jmp	_7
_6
	call	_fcls
	sub	esp,24
	mov	[esp+16],32
	mov	esi,[ebp-20]
	mov	[esp+20],esi
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbolt
	cmp	[ebp-24],0
	jge	_8
	mov	[ebp-24],100
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1139802112
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1098907648
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	jmp	_9
_8
	sub	[ebp-24],1
_9
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],8
	mov	[esp+16],1
	mov	[esp+8],8
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_foval
	sub	esp,20
	mov	[esp+12],8
	mov	[esp+16],1
	mov	[esp+8],8
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_foval
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_6
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
_fbolt
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],255
	mov	[esp],90
	call	_fcolor
	mov	ebx,[ebp+28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+32]
	mov	[ebp-8],ebx
	mov	eax,[ebp+20]
	sub	eax,[ebp+28]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	mov	eax,[ebp+24]
	sub	eax,[ebp+32]
	mov	ecx,[ebp+36]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],1
	jmp	_10
_11
	sub	esp,8
	mov	eax,[ebp+40]
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+40]
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
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp+40]
	neg	eax
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+40]
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
	mov	[ebp-28],eax
	mov	ebx,[ebp-4]
	add	ebx,[ebp-12]
	add	ebx,[ebp-24]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-8]
	add	ebx,[ebp-16]
	add	ebx,[ebp-28]
	mov	[ebp-36],ebx
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-32]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-36]
	mov	[ebp-8],ebx
	add	[ebp-20],1
_10
	mov	ebx,[ebp+36]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_11
_5
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
