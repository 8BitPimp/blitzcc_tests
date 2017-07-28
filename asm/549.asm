
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
	mov	[esp+8],0
	mov	[esp+12],0
	sub	esp,4
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcalldll
	mov	ebx,eax
	mov	[ebp-4],ebx
	mov	[ebp-8],0
	jmp	_6
_7
	mov	ebx,[ebp-4]
	mov	ecx,[ebp-8]
	shr	ebx,cl
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	mov	esi,1
	and	ebx,esi
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jz	_8
	sub	esp,16
	mov	eax,65
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_8
	add	[ebp-8],1
_6
	cmp	[ebp-8],25
	jle	_7
_3
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
_4	.db	"kernel32.dll",0
_5	.db	"GetLogicalDrives",0
_9	.db	":\\",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

