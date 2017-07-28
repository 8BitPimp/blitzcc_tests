
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,4
	mov	eax,_asomething
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_asomething
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asomething
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_asomething]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_asomething]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tanimation
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_asomething]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_tanimation
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,45
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_asomething]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_asomething]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_asomething]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_asomething]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_asomething	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_tplayer	.dd	5
_3	.dd	0
	.dd	_3
	.dd	_3
	.dd	0
	.dd	-1
_4	.dd	0
	.dd	_4
	.dd	_4
	.dd	0
	.dd	-1
	.dd	2
	.dd	_tanimation
	.dd	_tanimation
	.align	4
_tanimation	.dd	5
_5	.dd	0
	.dd	_5
	.dd	_5
	.dd	0
	.dd	-1
_6	.dd	0
	.dd	_6
	.dd	_6
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

