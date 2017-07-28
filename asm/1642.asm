
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
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,_amyarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,90
	mov	esi,_amyarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amyarray
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],41
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],1024
	mov	[esp],1280
	call	_fgraphics
	call	_fcls
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[_vcount],1
	jmp	_11
_12
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[_vnumber],eax
	mov	ebx,[_vnumber]
	mov	esi,[_vcount]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vcount]
	shl	eax,byte 2
	add	eax,[_amyarray]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[_vcount],1
_11
	mov	ebx,[ebp-4]
	cmp	[_vcount],ebx
	jle	_12
_3
	sub	esp,4
	mov	[esp],8000
	call	_fdelay
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbubblesort
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[_vcount],1
	jmp	_16
_17
	sub	esp,8
	mov	eax,[_vcount]
	shl	eax,byte 2
	add	eax,[_amyarray]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[_vcount],1
_16
	mov	ebx,[ebp-4]
	cmp	[_vcount],ebx
	jle	_17
_4
	sub	esp,4
	mov	[esp],8000
	call	_fdelay
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
_fbubblesort
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[_vcount],1
	jmp	_18
_19
	mov	[ebp-4],1
	jmp	_20
_21
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	esi,[_vcount]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_22
	mov	ebx,[_vcount]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_amyarray]
	mov	ebx,[ebx]
	mov	esi,[_vcount]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amyarray]
	mov	[esi],ebx
_22
	add	[ebp-4],1
_20
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_21
_7
	add	[_vcount],1
_18
	mov	ebx,[ebp+20]
	cmp	[_vcount],ebx
	jle	_19
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_amyarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vnumber	.dd	0
	.align	4
_vcount	.dd	0
_8	.db	"",0
_9	.db	"Initial random array :-",0
_10	.db	"",0
_13	.db	"",0
_14	.db	"Sorted array :-",0
_15	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

