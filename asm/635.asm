
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
	mov	eax,_3
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[_va],eax
	sub	esp,4
	mov	eax,_4
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[_vb],eax
	sub	esp,4
	mov	eax,_5
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[_vo],eax
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[_vnum],eax
	sub	esp,12
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,4
	add	ebx,[_vnum]
	mov	[ebx],eax
	sub	esp,12
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,8
	add	ebx,[_vnum]
	mov	[ebx],eax
	mov	[ebp-4],1
	jmp	_14
_15
	mov	ebx,1
	mov	ecx,[ebp-4]
	shl	ebx,cl
	shr	ebx,byte 1
	mov	esi,4
	add	esi,[_vnum]
	mov	esi,[esi]
	and	esi,ebx
	shl	esi,byte 1
	mov	ecx,[ebp-4]
	shr	esi,cl
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_va]
	mov	[ebx],esi
	mov	ebx,1
	mov	ecx,[ebp-4]
	shl	ebx,cl
	shr	ebx,byte 1
	mov	esi,8
	add	esi,[_vnum]
	mov	esi,[esi]
	and	esi,ebx
	shl	esi,byte 1
	mov	ecx,[ebp-4]
	shr	esi,cl
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_vb]
	mov	[ebx],esi
	add	[ebp-4],1
_14
	cmp	[ebp-4],32
	jle	_15
_7
	mov	ebx,4
	add	ebx,[_va]
	mov	ebx,[ebx]
	mov	esi,4
	add	esi,[_vb]
	mov	esi,[esi]
	or	ebx,esi
	mov	eax,4
	add	eax,[_va]
	mov	eax,[eax]
	mov	esi,4
	add	esi,[_vb]
	mov	esi,[esi]
	and	eax,esi
	cmp	eax,0
	setz	al
	movzx	eax,al
	and	ebx,eax
	mov	esi,4
	add	esi,[_vo]
	mov	[esi],ebx
	mov	ebx,4
	add	ebx,[_va]
	mov	ebx,[ebx]
	mov	esi,4
	add	esi,[_vb]
	mov	esi,[esi]
	and	ebx,esi
	mov	[_vrem],ebx
	mov	[ebp-4],2
	jmp	_16
_17
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcalc
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_vo]
	mov	[ebx],eax
	add	[ebp-4],1
_16
	cmp	[ebp-4],32
	jle	_17
_8
	mov	[ebp-4],1
	jmp	_18
_19
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_vo]
	mov	ebx,[ebx]
	mov	ecx,[ebp-4]
	shl	ebx,cl
	shr	ebx,byte 1
	mov	esi,[_vresult]
	or	esi,ebx
	mov	[_vresult],esi
	add	[ebp-4],1
_18
	cmp	[ebp-4],32
	jle	_19
_9
	sub	esp,8
	mov	eax,[_vresult]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrRelease
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
_fcalc
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-8],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbVecAlloc
	mov	[ebp-4],eax
	mov	ebx,[_vrem]
	mov	esi,4
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_va]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_vb]
	mov	ebx,[ebx]
	mov	esi,12
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	or	ebx,esi
	mov	esi,0
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,12
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,0
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,4
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,8
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	or	ebx,esi
	mov	esi,0
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,8
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,12
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,0
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	or	ebx,esi
	mov	esi,0
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,8
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	ebx,0
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,4
	add	esi,[ebp-4]
	mov	[esi],ebx
	mov	eax,4
	add	eax,[ebp-4]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,8
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	ebx,12
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	and	eax,ebx
	mov	[ebp-8],eax
	mov	eax,4
	add	eax,[ebp-4]
	mov	eax,[eax]
	mov	ebx,8
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	and	eax,ebx
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	or	ebx,esi
	and	eax,ebx
	mov	ebx,[ebp-8]
	or	ebx,eax
	mov	eax,12
	add	eax,[ebp-4]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	and	ebx,eax
	mov	[ebp-8],ebx
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,[ebp-8]
	or	esi,ebx
	mov	[ebp-8],esi
	mov	eax,4
	add	eax,[ebp-4]
	mov	eax,[eax]
	mov	ebx,8
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	and	eax,ebx
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	or	ebx,esi
	and	eax,ebx
	mov	ebx,12
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	and	eax,ebx
	mov	[_vrem],eax
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	eax,12
	add	eax,[ebp-4]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	and	ebx,eax
	mov	esi,[_vrem]
	or	esi,ebx
	mov	[_vrem],esi
	mov	ebx,4
	add	ebx,[ebp-4]
	mov	ebx,[ebx]
	mov	esi,8
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,12
	add	esi,[ebp-4]
	mov	esi,[esi]
	and	ebx,esi
	mov	esi,[_vrem]
	or	esi,ebx
	mov	[_vrem],esi
	mov	eax,[ebp-8]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	[esp+4],_11
	mov	eax,ebx
	call	__bbVecFree
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_3	.dd	6
	.dd	33
	.dd	__bbIntType
_va	.dd	0
	.align	4
_4	.dd	6
	.dd	33
	.dd	__bbIntType
_vb	.dd	0
	.align	4
_5	.dd	6
	.dd	33
	.dd	__bbIntType
_vo	.dd	0
	.align	4
_6	.dd	6
	.dd	3
	.dd	__bbIntType
_vnum	.dd	0
	.align	4
_vrem	.dd	0
	.align	4
_vresult	.dd	0
_12	.db	"Number 1: ",0
_13	.db	"Number 2: ",0
_20	.db	"",0
	.align	4
_11	.dd	6
	.dd	4
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

