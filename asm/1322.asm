
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-4],800
	mov	[ebp-8],600
	sub	esp,4
	mov	eax,_anum
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-4]
	mov	esi,_anum
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anum
	mov	[esp],eax
	call	__bbDimArray
	jmp	_l_2blue
_l_2grass
	mov	[ebp-12],0
	jmp	_11
_12
	mov	[ebp-16],0
	jmp	_13
_14
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],200
	call	_frand
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	[esp],0
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
_13
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_14
_4
	add	[ebp-12],1
_11
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_12
_3
	sub	esp,8
	call	_ffrontbuffer
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fsavebuffer
	jmp	_l_2close
_l_2foil
	mov	[ebp-12],0
	jmp	_16
_17
	mov	[ebp-16],0
	jmp	_18
_19
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],200
	call	_frand
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],200
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],200
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
_18
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_19
_6
	add	[ebp-12],1
_16
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_17
_5
	sub	esp,8
	call	_ffrontbuffer
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fsavebuffer
	jmp	_l_2close
_l_2blue
	mov	[ebp-12],0
	jmp	_21
_22
	mov	[ebp-16],0
	jmp	_23
_24
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],200
	call	_frand
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],200
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],255
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
_23
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_24
_8
	add	[ebp-12],1
_21
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_22
_7
	sub	esp,8
	call	_ffrontbuffer
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fsavebuffer
	jmp	_l_2close
_l_2red
	mov	[ebp-12],0
	jmp	_26
_27
	mov	[ebp-16],0
	jmp	_28
_29
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],200
	call	_frand
	mov	[esp],eax
	mov	[esp+4],0
	mov	[esp+8],0
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
_28
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_29
_10
	add	[ebp-12],1
_26
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_27
_9
	sub	esp,8
	call	_ffrontbuffer
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fsavebuffer
	jmp	_l_2close
_l_2close
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
_anum	.dd	0
	.dd	1
	.dd	1
	.dd	0
_15	.db	"grass.png",0
_20	.db	"foil.png",0
_25	.db	"blue.png",0
_30	.db	"red.png",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

