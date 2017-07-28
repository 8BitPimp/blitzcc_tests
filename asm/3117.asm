
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,39
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,29
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	jmp	_21
_20
	call	_fcls
	call	_fmakemap
	call	_fdrawmap
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-4],0
	jmp	_22
_23
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_24
	call	_fend
_24
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	add	[ebp-4],1
_22
	cmp	[ebp-4],500
	jle	_23
_4
_21
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_20
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
	.align	16
_fdrawmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_25
_26
	mov	[ebp-8],0
	jmp	_27
_28
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,5
	jge	_29
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
_29
	mov	eax,_amap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,5
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,8
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_30
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_30
	mov	eax,_amap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,8
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,10
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_31
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_31
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,10
	jle	_32
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],200
	call	_fcolor
_32
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_27
	cmp	[ebp-8],39
	jle	_28
_7
	add	[ebp-4],1
_25
	cmp	[ebp-4],29
	jle	_26
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakemap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],0
	jmp	_33
_34
	mov	[ebp-8],0
	jmp	_35
_36
	mov	ebx,0
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_35
	cmp	[ebp-8],39
	jle	_36
_10
	add	[ebp-4],1
_33
	cmp	[ebp-4],29
	jle	_34
_9
	mov	[ebp-12],0
	jmp	_37
_38
	sub	esp,8
	mov	[esp],39
	mov	[esp+4],1
	call	_frand
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],29
	mov	[esp+4],1
	call	_frand
	mov	[ebp-4],eax
	mov	[ebp-16],-4
	jmp	_39
_40
	mov	[ebp-20],-4
	jmp	_41
_42
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	add	ebx,[ebp-16]
	mov	[ebp-28],ebx
	cmp	[ebp-24],0
	setge	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-28],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-24],39
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-28],29
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_43
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_43
	add	[ebp-20],1
_41
	cmp	[ebp-20],4
	jle	_42
_13
	add	[ebp-16],1
_39
	cmp	[ebp-16],4
	jle	_40
_12
	mov	[ebp-16],-2
	jmp	_44
_45
	mov	[ebp-20],-2
	jmp	_46
_47
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	add	ebx,[ebp-16]
	mov	[ebp-28],ebx
	cmp	[ebp-24],0
	setge	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-28],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-24],39
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-28],29
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_48
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_48
	add	[ebp-20],1
_46
	cmp	[ebp-20],2
	jle	_47
_15
	add	[ebp-16],1
_44
	cmp	[ebp-16],2
	jle	_45
_14
	mov	[ebp-16],-1
	jmp	_49
_50
	mov	[ebp-20],-1
	jmp	_51
_52
	mov	ebx,[ebp-8]
	add	ebx,[ebp-20]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-4]
	add	ebx,[ebp-16]
	mov	[ebp-28],ebx
	cmp	[ebp-24],0
	setge	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-28],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-24],39
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-28],29
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_53
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_53
	add	[ebp-20],1
_51
	cmp	[ebp-20],1
	jle	_52
_17
	add	[ebp-16],1
_49
	cmp	[ebp-16],1
	jle	_50
_16
	add	[ebp-12],1
_37
	cmp	[ebp-12],50
	jle	_38
_11
	mov	[ebp-4],0
	jmp	_54
_55
	mov	[ebp-8],0
	jmp	_56
_57
	sub	esp,8
	mov	eax,_amap
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	add	[ebp-8],1
_56
	cmp	[ebp-8],39
	jle	_57
_19
	add	[ebp-4],1
_54
	cmp	[ebp-4],29
	jle	_55
_18
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

