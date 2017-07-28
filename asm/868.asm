
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
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],512
	mov	[esp],320
	call	_fgraphics
	mov	[ebp-4],75
	sub	esp,4
	mov	eax,_avalue
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16
	mov	esi,_avalue
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avalue
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vk],1
	mov	ebx,[ebp-4]
	mov	esi,1
	and	ebx,esi
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_avalue]
	mov	[esi],ebx
	sub	esp,40
	mov	eax,[_vi]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_4
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vk]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vi]
	shl	ebx,byte 2
	add	ebx,[_avalue]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	[_vi],1
	jmp	_6
_7
	mov	ebx,[_vk]
	add	[_vk],ebx
	mov	eax,[ebp-4]
	mov	ecx,[_vk]
	cdq
	idiv	ecx
	mov	ebx,1
	and	eax,ebx
	mov	ebx,[_vi]
	shl	ebx,byte 2
	add	ebx,[_avalue]
	mov	[ebx],eax
	sub	esp,40
	mov	eax,[_vi]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vk]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vi]
	shl	ebx,byte 2
	add	ebx,[_avalue]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[_vi],1
_6
	cmp	[_vi],16
	jle	_7
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vk	.dd	0
	.align	4
_vi	.dd	0
	.align	4
_avalue	.dd	0
	.dd	1
	.dd	1
	.dd	0
_4	.db	"  flag: ",0
_5	.db	" = ",0
_8	.db	"  flag: ",0
_9	.db	" = ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

