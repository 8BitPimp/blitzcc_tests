
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	mov	[ebp-4],0
	mov	[ebp-8],200
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	mov	[ebp-28],60
	mov	[ebp-32],1
	jmp	_6
_7
	call	_fget_fps
	mov	[ebp-36],eax
	mov	ebx,[ebp-28]
	cmp	[ebp-36],ebx
	jnz	_8
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_9
_8
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	add	[ebp-16],1
_9
	sub	esp,32
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	add	[ebp-20],100
	cmp	[ebp-20],700
	jle	_11
	mov	[ebp-20],0
	add	[ebp-24],20
_11
	mov	ebx,[ebp-36]
	add	[ebp-4],ebx
	add	[ebp-12],1
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_12
	jmp	_3
_12
	sub	esp,4
	mov	[esp],0
	call	_fflip
	add	[ebp-32],1
_6
	mov	ebx,[ebp-8]
	cmp	[ebp-32],ebx
	jle	_7
_3
	mov	[ebp-40],0
	sub	esp,64
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[ebp-48],eax
	mov	ebx,[ebp-4]
	mov	ecx,[ebp-12]
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	add	ebx,20
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	call	_fflushkeys
	sub	esp,4
	mov	[esp],0
	call	_fflip
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fget_fps
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	mov	[ebp-8],0
	call	_fmillisecs
	mov	[ebp-12],eax
	jmp	_17
_16
	sub	esp,4
	mov	[esp],1
	call	_fvwait
	add	[ebp-8],1
	call	_fmillisecs
	sub	eax,[ebp-12]
	mov	[ebp-4],eax
_17
	cmp	[ebp-4],186
	jl	_16
_5
	mov	eax,[ebp-8]
	imul	eax,5
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_10	.db	"FPS = ",0
_13	.db	"tests executed : ",0
_14	.db	"       AVERAGE FPS = ",0
_15	.db	"   errors = ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

