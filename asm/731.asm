
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,12
	mov	[esp+4],400
	mov	[esp+8],1
	mov	[esp],400
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_15
_16
	mov	[ebp-12],0
	jmp	_17
_18
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fcalc_distance
	mov	[ebp-16],eax
	cmp	[ebp-16],255
	jle	_19
	sub	esp,12
	mov	ebx,[ebp-16]
	sub	ebx,255
	mov	[esp+4],ebx
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_20
_19
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
_20
	cmp	[ebp-16],200
	jnz	_21
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
_21
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-12],1
_17
	cmp	[ebp-12],399
	jle	_18
_4
	add	[ebp-8],1
_15
	cmp	[ebp-8],399
	jle	_16
_3
	sub	esp,12
	mov	[esp+4],400
	mov	[esp+8],1
	mov	[esp],400
	call	_fcreateimage
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_22
_23
	mov	[ebp-12],0
	jmp	_24
_25
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fapprox_distance
	mov	[ebp-16],eax
	cmp	[ebp-16],255
	jle	_26
	sub	esp,12
	mov	ebx,[ebp-16]
	sub	ebx,255
	mov	[esp+4],ebx
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_27
_26
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
_27
	cmp	[ebp-16],200
	jnz	_28
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
_28
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-12],1
_24
	cmp	[ebp-12],399
	jle	_25
_6
	add	[ebp-8],1
_22
	cmp	[ebp-8],399
	jle	_23
_5
	sub	esp,12
	mov	[esp+4],400
	mov	[esp+8],1
	mov	[esp],400
	call	_fcreateimage
	mov	[ebp-24],eax
	sub	esp,12
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_29
_30
	mov	[ebp-12],0
	jmp	_31
_32
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_ffasterapprox_distance
	mov	[ebp-16],eax
	cmp	[ebp-16],255
	jle	_33
	sub	esp,12
	mov	ebx,[ebp-16]
	sub	ebx,255
	mov	[esp+4],ebx
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_34
_33
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
_34
	cmp	[ebp-16],200
	jnz	_35
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
_35
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-12],1
_31
	cmp	[ebp-12],399
	jle	_32
_8
	add	[ebp-8],1
_29
	cmp	[ebp-8],399
	jle	_30
_7
	mov	ebx,[ebp-4]
	mov	[ebp-28],ebx
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
_37
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,1
	jnz	_39
	mov	ebx,[ebp-4]
	mov	[ebp-28],ebx
_39
	sub	esp,4
	mov	[esp],3
	call	_fkeydown
	cmp	eax,1
	jnz	_40
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
_40
	sub	esp,4
	mov	[esp],4
	call	_fkeydown
	cmp	eax,1
	jnz	_41
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
_41
	sub	esp,16
	mov	[esp+8],100
	mov	[esp+12],0
	mov	[esp+4],100
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fdrawblock
	mov	ebx,[ebp-28]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-4]
	cmp	[ebp-36],ebx
	jz	_43
	mov	ebx,[ebp-20]
	cmp	[ebp-36],ebx
	jz	_44
	mov	ebx,[ebp-24]
	cmp	[ebp-36],ebx
	jz	_45
	jmp	_42
_43
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],24
	mov	[esp],0
	call	_ftext
	jmp	_42
_44
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],24
	mov	[esp],0
	call	_ftext
	jmp	_42
_45
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],24
	mov	[esp],0
	call	_ftext
	jmp	_42
_42
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_37
_9
	call	_fend
	ret
_2_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcalc_distance
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	imul	eax,[ebp+20]
	mov	ebx,[ebp+24]
	imul	ebx,[ebp+24]
	add	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fapprox_distance
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp+20],eax
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp+24],eax
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_49
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	jmp	_50
_49
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
_50
	mov	ebx,[ebp-4]
	imul	ebx,1007
	mov	esi,[ebp-8]
	imul	esi,441
	add	ebx,esi
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	cmp	[ebp-4],ebx
	jge	_51
	mov	ebx,[ebp-4]
	imul	ebx,111
	sub	[ebp-12],ebx
	jmp	_52
_51
	mov	ebx,[ebp-8]
	imul	ebx,441
	sub	[ebp-12],ebx
_52
	mov	eax,[ebp-12]
	add	eax,512
	shr	eax,byte 10
	jmp	_12_leave
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
_ffasterapprox_distance
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_53
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	jmp	_54
_53
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
_54
	mov	eax,[ebp-4]
	shl	eax,byte 8
	mov	ebx,[ebp-4]
	shl	ebx,byte 3
	add	eax,ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 4
	sub	eax,ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 1
	sub	eax,ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 7
	add	eax,ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 5
	sub	eax,ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 3
	add	eax,ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 1
	sub	eax,ebx
	shr	eax,byte 8
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_14	.db	"Plotting distance images, please wait",0
_36	.db	"",0
_38	.db	"keys: [1] show sqr()     [2] show approx      [3] show faster approx     [esc] quit",0
_46	.db	"showing Calc_Distance()",0
_47	.db	"showing Approx_Distance()",0
_48	.db	"showing FasterApprox_Distance()",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

