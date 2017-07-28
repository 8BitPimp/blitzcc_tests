
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,24
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fgetenv
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vpath
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],6
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_vpath
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fcontourmap
	mov	[ebp-8],eax
	jmp	_25
_24
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-24]
	sub	ebx,[ebp-12]
	cmp	ebx,250
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_26
	call	_fflushkeys
	call	_fmillisecs
	mov	[ebp-12],eax
	cmp	[ebp-16],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
_26
	call	_fcls
	sub	esp,16
	mov	eax,[ebp-8]
	imul	eax,[ebp-16]
	mov	ebx,1
	sub	ebx,[ebp-16]
	imul	ebx,[ebp-4]
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	call	_fdrawimage
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_25
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_24
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcontourmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	[ebp-40],ebx
	cmp	[ebp+20],0
	jnz	_28
	mov	eax,0
	jmp	_4_leave
_28
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimagewidth
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcreateimage
	mov	ebx,eax
	mov	[ebp-4],ebx
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_flockbuffer
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_flockbuffer
	mov	ebx,[ebp-8]
	mov	[ebp-32],ebx
	jmp	_29
_30
	mov	ebx,[ebp-12]
	mov	[ebp-36],ebx
	jmp	_31
_32
	sub	esp,12
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-40],eax
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+16],esi
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fadjacentdifference
	and	eax,eax
	jz	_33
	sub	esp,32
	mov	[esp+8],255
	mov	[esp+12],0
	mov	[esp+4],255
	mov	[esp],255
	call	_frgba
	mov	[esp+8],eax
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fwritepixelfast
_33
	add	[ebp-36],1
_31
	mov	ebx,[ebp-20]
	cmp	[ebp-36],ebx
	jle	_32
_6
	add	[ebp-32],1
_29
	mov	ebx,[ebp-16]
	cmp	[ebp-32],ebx
	jle	_30
_5
	sub	esp,12
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-4]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpixeltopleft
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_34
	mov	eax,-1
	jmp	_7_leave
_34
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-4]
	cmp	[ebp+24],eax
	setge	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-8]
	cmp	[ebp+28],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	cmp	eax,0
	jnz	_35
	mov	eax,-1
	jmp	_7_leave
_35
	sub	[ebp+24],1
	sub	[ebp+28],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpixeltopmid
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
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_36
	mov	eax,-1
	jmp	_8_leave
_36
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-8]
	cmp	[ebp+28],eax
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_37
	mov	eax,-1
	jmp	_8_leave
_37
	sub	[ebp+28],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpixeltopright
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_38
	mov	eax,-1
	jmp	_9_leave
_38
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-12]
	cmp	[ebp+24],eax
	setle	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-8]
	cmp	[ebp+28],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	cmp	eax,0
	jnz	_39
	mov	eax,-1
	jmp	_9_leave
_39
	add	[ebp+24],1
	sub	[ebp+28],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
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
	.align	16
_fpixelmidleft
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
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_40
	mov	eax,-1
	jmp	_10_leave
_40
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-4]
	cmp	[ebp+24],eax
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_41
	mov	eax,-1
	jmp	_10_leave
_41
	sub	[ebp+24],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpixelmidright
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
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_42
	mov	eax,-1
	jmp	_11_leave
_42
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-12]
	cmp	[ebp+24],eax
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_43
	mov	eax,-1
	jmp	_11_leave
_43
	add	[ebp+24],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpixelbotleft
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_44
	mov	eax,-1
	jmp	_12_leave
_44
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-4]
	cmp	[ebp+24],eax
	setge	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-16]
	cmp	[ebp+28],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	cmp	eax,0
	jnz	_45
	mov	eax,-1
	jmp	_12_leave
_45
	sub	[ebp+24],1
	add	[ebp+28],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpixelbotmid
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
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_46
	mov	eax,-1
	jmp	_13_leave
_46
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-16]
	cmp	[ebp+28],eax
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_47
	mov	eax,-1
	jmp	_13_leave
_47
	add	[ebp+28],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpixelbotright
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	cmp	[ebp+20],0
	jnz	_48
	mov	eax,-1
	jmp	_14_leave
_48
	mov	[ebp-4],1
	mov	[ebp-8],1
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,2
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,2
	mov	[ebp-16],eax
	mov	eax,[ebp-12]
	cmp	[ebp+24],eax
	setle	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp-16]
	cmp	[ebp+28],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	cmp	eax,0
	jnz	_49
	mov	eax,-1
	jmp	_14_leave
_49
	add	[ebp+24],1
	add	[ebp+28],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fadjacentdifference
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-4],eax
	mov	[ebp-8],0
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixeltopleft
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_50
	mov	[ebp-8],0
_50
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_51
	mov	eax,1
	jmp	_15_leave
_51
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixeltopmid
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_52
	mov	[ebp-8],0
_52
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_53
	mov	eax,1
	jmp	_15_leave
_53
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixeltopright
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_54
	mov	[ebp-8],0
_54
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_55
	mov	eax,1
	jmp	_15_leave
_55
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixelmidleft
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_56
	mov	[ebp-8],0
_56
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_57
	mov	eax,1
	jmp	_15_leave
_57
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixelmidright
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_58
	mov	[ebp-8],0
_58
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_59
	mov	eax,1
	jmp	_15_leave
_59
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixelbotleft
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_60
	mov	[ebp-8],0
_60
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_61
	mov	eax,1
	jmp	_15_leave
_61
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixelbotmid
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_62
	mov	[ebp-8],0
_62
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_63
	mov	eax,1
	jmp	_15_leave
_63
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	_fpixelbotright
	mov	[esp],eax
	call	_fdesaturatepixel
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	push	eax
	fild	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fred
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-12],-1
	jnz	_64
	mov	[ebp-8],0
_64
	mov	eax,[ebp-8]
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_frgba
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+32]
	shl	eax,byte 24
	mov	ebx,[ebp+20]
	shl	ebx,byte 16
	or	eax,ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 8
	or	eax,ebx
	mov	ebx,[ebp+28]
	or	eax,ebx
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fred
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shr	eax,byte 16
	mov	ebx,255
	and	eax,ebx
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fgreen
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shr	eax,byte 8
	mov	ebx,255
	and	eax,ebx
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fblue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	mov	ebx,255
	and	eax,ebx
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_falpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shr	eax,byte 24
	mov	ebx,255
	and	eax,ebx
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdesaturatepixel
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
	mov	[ebp-16],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_falpha
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fred
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgreen
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fblue
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1051361018
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,1051361018
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-12]
	push	edi
	fild	[esp]
	pop	edi
	fsubrp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	edi,1051361018
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,1056964608
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	mov	edi,[ebp-16]
	push	edi
	fild	[esp]
	pop	edi
	fsubrp	st(1)
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp+20],esi
	sub	esp,16
	mov	ebx,[ebp+20]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frgba
	jmp	_21_leave
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vpath	.dd	0
_22	.db	"PROGRAMFILES",0
_23	.db	"\Blitz3D\samples\birdie\thunder\hmap.bmp",0
_27	.db	"Press Space to switch image / contour map",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
