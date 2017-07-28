
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,36
	mov	[esp+20],0
	mov	[esp+24],0
	mov	[esp+16],0
	mov	[esp+12],3
	mov	[esp+8],3
	mov	[esp+4],3
	mov	[esp],2
	call	_fbank_create
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	mov	[ebp-8],1
	jmp	_18
_19
	mov	[ebp-12],1
	jmp	_20
_21
	mov	[ebp-16],1
	jmp	_22
_23
	sub	esp,20
	mov	ebx,[ebp-12]
	imul	ebx,10
	add	ebx,[ebp-16]
	mov	esi,[ebp-8]
	imul	esi,100
	add	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	edi,[ebp-8]
	mov	[esp+16],edi
	mov	edi,[ebp-16]
	mov	[esp+8],edi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbankw
	add	[ebp-16],1
_22
	cmp	[ebp-16],3
	jle	_23
_5
	add	[ebp-12],1
_20
	cmp	[ebp-12],3
	jle	_21
_4
	add	[ebp-8],1
_18
	cmp	[ebp-8],3
	jle	_19
_3
	mov	[ebp-20],0
	mov	[ebp-8],1
	jmp	_24
_25
	mov	[ebp-12],1
	jmp	_26
_27
	mov	[ebp-16],1
	jmp	_28
_29
	add	[ebp-20],1
	sub	esp,56
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbankr
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	add	[ebp-16],1
_28
	cmp	[ebp-16],3
	jle	_29
_8
	add	[ebp-12],1
_26
	cmp	[ebp-12],3
	jle	_27
_7
	add	[ebp-8],1
_24
	cmp	[ebp-8],3
	jle	_25
_6
	call	_fstop
	ret
_2_leave
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
	ret	word 0
	.align	16
_fbank_create
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
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_36
	cmp	[ebp-4],2
	jz	_36
	cmp	[ebp-4],4
	jz	_36
	call	_fstop
	mov	[ebp+20],4
	jmp	_35
_36
	jmp	_35
_35
	cmp	[ebp+24],0
	jnz	_37
	call	_fstop
	mov	[ebp+24],1
_37
	mov	ebx,[ebp+24]
	add	ebx,1
	sub	ebx,[ebp+36]
	imul	ebx,[ebp+20]
	mov	[ebp-8],ebx
	cmp	[ebp+28],0
	jle	_38
	mov	ebx,[ebp+28]
	add	ebx,1
	sub	ebx,[ebp+36]
	imul	ebx,[ebp-8]
	mov	[ebp-8],ebx
_38
	cmp	[ebp+32],0
	jle	_39
	mov	ebx,[ebp+32]
	add	ebx,1
	sub	ebx,[ebp+36]
	imul	ebx,[ebp-8]
	mov	[ebp-8],ebx
_39
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_tbankobj
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	mov	ebx,[ebp+24]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp+44]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	eax,[ebp-12]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
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
	ret	word 28
	.align	16
_fbank_delete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbank_fill
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_40
	mov	[ebp-4],0
	jmp	_41
_42
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-4],1
_41
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_42
_13
	jmp	_43
_40
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_44
	mov	[ebp-4],0
	jmp	_45
_46
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	add	[ebp-4],1
_45
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	sar	eax,byte 1
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_46
_14
	jmp	_47
_44
	mov	[ebp-4],0
	jmp	_48
_49
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeint
	add	[ebp-4],1
_48
	sub	esp,4
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	sar	eax,byte 2
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_49
_15
_47
_43
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbankw
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	cmp	[ebp+28],ebx
	jge	_50
	call	_fstop
	mov	eax,0
	jmp	_16_leave
_50
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_51
	call	_fstop
	mov	eax,0
	jmp	_16_leave
_51
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_52
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	cmp	[ebp+32],ebx
	jge	_53
	call	_fstop
	mov	eax,0
	jmp	_16_leave
_53
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_54
	call	_fstop
	mov	eax,0
	jmp	_16_leave
_54
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	imul	esi,ebx
	add	[ebp-4],esi
_52
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_55
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	cmp	[ebp+36],ebx
	jge	_56
	call	_fstop
	mov	eax,0
	jmp	_16_leave
_56
	mov	ebx,[ebp+36]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_57
	call	_fstop
	mov	eax,0
	jmp	_16_leave
_57
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+36]
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,24
	mov	edi,[edi]
	sub	esi,edi
	imul	ebx,esi
	add	[ebp-4],ebx
_55
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_58
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	jmp	_59
_58
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_60
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeshort
	jmp	_61
_60
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeint
_61
_59
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fbankr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	cmp	[ebp+24],ebx
	jge	_62
	call	_fstop
	mov	eax,0
	jmp	_17_leave
_62
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_63
	call	_fstop
	mov	eax,0
	jmp	_17_leave
_63
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_64
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	cmp	[ebp+28],ebx
	jge	_65
	call	_fstop
	mov	eax,0
	jmp	_17_leave
_65
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_66
	call	_fstop
	mov	eax,0
	jmp	_17_leave
_66
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	imul	esi,ebx
	add	[ebp-4],esi
_64
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_67
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	cmp	[ebp+32],ebx
	jge	_68
	call	_fstop
	mov	eax,0
	jmp	_17_leave
_68
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,24
	mov	esi,[esi]
	sub	ebx,esi
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_69
	call	_fstop
	mov	eax,0
	jmp	_17_leave
_69
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp+32]
	mov	edi,[ebp+20]
	mov	edi,[edi]
	add	edi,24
	mov	edi,[edi]
	sub	esi,edi
	imul	ebx,esi
	add	[ebp-4],ebx
_67
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_70
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekbyte
	jmp	_17_leave
	jmp	_71
_70
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_72
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekshort
	jmp	_17_leave
	jmp	_73
_72
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpeekint
	jmp	_17_leave
_73
_71
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
_30	.db	" ",0
_31	.db	" ",0
_32	.db	" : ",0
	.align	4
_tbankobj	.dd	5
_33	.dd	0
	.dd	_33
	.dd	_33
	.dd	0
	.dd	-1
_34	.dd	0
	.dd	_34
	.dd	_34
	.dd	0
	.dd	-1
	.dd	8
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

