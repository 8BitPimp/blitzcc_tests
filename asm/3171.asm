
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
	sub	esp,8
	mov	[esp],16777215
	mov	[esp+4],1
	call	_fdefinearray
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreearray
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,16777215
	mov	esi,_ab
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
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
	.align	16
_fdefinearray
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp+24],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp+20],eax
	mov	ebx,[ebp+20]
	mov	esi,[ebp+24]
	or	ebx,esi
	cmp	ebx,0
	jnz	_14
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_14
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tarray
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	imul	eax,[ebp+24]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjToHandle
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsetarrayelement
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_tarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,12
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_farrayreference
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fgetarrayelement
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_tarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_farrayreference
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-12],eax
	mov	eax,[ebp-12]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fresizearray
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_tarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-8],eax
	mov	ebx,[ebp+24]
	imul	ebx,[ebp+28]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jnz	_16
	mov	eax,0
	jmp	_6_leave
_16
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jge	_17
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	jmp	_18
_19
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-16],1
_18
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_19
_7
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
_17
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+16],esi
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcopybank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	mov	ebx,[ebp-20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ffreearray
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],_tarray
	call	__bbObjFromHandle
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_farrayreference
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+24]
	sub	ebx,1
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	imul	ebx,[ebp+28]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	add	[ebp-4],ebx
	sub	[ebp-4],1
	mov	eax,[ebp-4]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_10	.db	"Please check memory",0
	.align	4
_ab	.dd	0
	.dd	1
	.dd	1
	.dd	0
_11	.db	"Please check memory again",0
	.align	4
_tarray	.dd	5
_12	.dd	0
	.dd	_12
	.dd	_12
	.dd	0
	.dd	-1
_13	.dd	0
	.dd	_13
	.dd	_13
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_15	.db	"Array must have dimensions",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

