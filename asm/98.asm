
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
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
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
	mov	[_vpic],eax
	call	_fdemo
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
_fdemo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vpic]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],400
	mov	[esp],150
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	call	_fwaitkey
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	mov	[ebp-4],1
_10
	cmp	[ebp-4],1
	jnz	_11
	add	[ebp-8],1
	cmp	[ebp-8],75
	jnz	_12
	mov	[ebp-4],0
_12
	jmp	_13
_11
	cmp	[ebp-4],0
	jnz	_14
	sub	[ebp-8],1
	cmp	[ebp-8],1
	jnz	_15
	mov	[ebp-4],1
_15
_14
_13
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vpic]
	mov	[esp],eax
	call	_fpixelate
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_10
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpixelate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	add	eax,1
	mov	[ebp-12],eax
	mov	eax,[ebp-8]
	mov	ecx,[ebp+32]
	cdq
	idiv	ecx
	add	eax,1
	mov	[ebp-16],eax
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	ebx,[ebp+24]
	mov	[ebp-28],ebx
	mov	ebx,[ebp+28]
	mov	[ebp-32],ebx
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp+28]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fviewport
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblock
	cmp	[ebp+32],1
	jle	_16
_17
_18
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fgetcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+32]
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp+32]
	add	[ebp-28],ebx
	add	[ebp-20],1
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jnz	_18
_7
	mov	ebx,[ebp+24]
	mov	[ebp-28],ebx
	mov	ebx,[ebp+32]
	add	[ebp-32],ebx
	mov	[ebp-20],0
	add	[ebp-24],1
	mov	ebx,[ebp-16]
	cmp	[ebp-24],ebx
	jnz	_17
_6
_16
	sub	esp,16
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_fviewport
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_vpic	.dd	0
_8	.db	"c:\windows\desktop\class56.jpg",0
_9	.db	"Any key to start - Esc to quit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

