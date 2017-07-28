
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_5
_4
	call	_fcls
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],320
	call	_ftext
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_7
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],320
	call	_ftext
	sub	esp,64
	mov	[esp],0
	mov	[esp+4],9
	call	_frand
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	[esp],0
	mov	[esp+4],9
	call	_frand
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	[esp],0
	mov	[esp+4],9
	call	_frand
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+4],260
	mov	[esp],320
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],460
	mov	[esp],320
	call	_ftext
	jmp	_12
_7
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],460
	mov	[esp],320
	call	_ftext
_12
	call	_fwaitkey
	mov	[ebp-4],1
	sub	esp,4
	mov	[esp],1
	call	_fflip
_5
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_4
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_6	.db	"RANDOM VERSION NUMBER GENERATOR",0
_8	.db	"Your random version number is",0
_9	.db	"v",0
_10	.db	".",0
_11	.db	"Press any key to generate a new version number",0
_13	.db	"Press any key to generate a version number",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

