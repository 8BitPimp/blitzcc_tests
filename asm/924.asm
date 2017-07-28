
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
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fgraphicswidth
	mov	[_vswidth],eax
	call	_fgraphicsheight
	mov	[_vsheight],eax
	mov	[_vbwidth],160
	mov	[_vbheight],120
	mov	[_vtsize],4
	sub	esp,4
	mov	eax,_ab0
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vbwidth]
	mov	esi,_ab0
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vbheight]
	mov	esi,_ab0
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab0
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ab1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vbwidth]
	mov	esi,_ab1
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vbheight]
	mov	esi,_ab1
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ab1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vbwidth]
	mov	esi,_ac
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vbheight]
	mov	esi,_ac
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ac
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fsetup
	sub	esp,4
	mov	[esp],75
	call	_fcreatetimer
	mov	[ebp-4],eax
	jmp	_20
_19
	call	_fcls
	call	_fdrawboard
	call	_fburn
	call	_fswitchem
	sub	esp,4
	mov	[esp],1
	call	_fflip
	cmp	[_vp],0
	jnz	_21
	call	_fsetup
_21
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwaittimer
_20
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_19
_3
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
_fsetup
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
	mov	[ebp-4],0
	jmp	_22
_23
	mov	[ebp-8],0
	jmp	_24
_25
	mov	ebx,1
	mov	esi,_ab0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab0]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
	add	[ebp-8],1
_24
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_25
_6
	add	[ebp-4],1
_22
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_23
_5
	mov	[ebp-12],0
	jmp	_26
_27
	sub	esp,8
	mov	eax,[_vbwidth]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	ebx,[_vbheight]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_ab0
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_ab0]
	mov	ebx,2
	mov	[eax],ebx
	add	[ebp-12],1
_26
	sub	esp,8
	mov	[esp],1077936128
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-12],ebx
	jle	_27
_7
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fswitchem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_28
_29
	mov	[ebp-8],0
	jmp	_30
_31
	mov	ebx,_ab1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab1]
	mov	ebx,[ebx]
	mov	esi,_ab0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab0]
	mov	[esi],ebx
	add	[ebp-8],1
_30
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_31
_10
	add	[ebp-4],1
_28
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_29
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawboard
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	jmp	_32
_33
	mov	[ebp-8],0
	jmp	_34
_35
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	cmp	ebx,5
	jle	_36
	sub	esp,12
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,_ac
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ac]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtsize]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtsize]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtsize]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtsize]
	mov	[esp],eax
	call	_frect
	mov	ebx,_ac
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ac]
	mov	ebx,[ebx]
	sub	ebx,5
	mov	esi,_ac
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	jmp	_37
_36
	mov	ebx,0
	mov	esi,_ac
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
_37
	add	[ebp-8],1
_34
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_35
_13
	add	[ebp-4],1
_32
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_33
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fburn
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
	mov	[_vp],0
	mov	[ebp-4],0
	jmp	_38
_39
	mov	[ebp-8],0
	jmp	_40
_41
	mov	[ebp-12],0
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[ebp-16],ebx
	jmp	_42
_43
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-20],ebx
	jmp	_44
_45
	cmp	[ebp-20],0
	setge	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	mov	esi,[_vbheight]
	sub	esi,1
	cmp	[ebp-4],esi
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-32]
	and	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_46
	mov	eax,[ebp-8]
	cmp	[ebp-20],eax
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	cmp	eax,0
	jnz	_47
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_48
	add	[ebp-12],1
_48
_47
_46
	add	[ebp-20],1
_44
	mov	ebx,[ebp-8]
	add	ebx,1
	cmp	[ebp-20],ebx
	jle	_45
_18
	add	[ebp-16],1
_42
	mov	ebx,[ebp-4]
	add	ebx,1
	cmp	[ebp-16],ebx
	jle	_43
_17
	mov	[ebp-24],55
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_49
	mov	ebx,3
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
_49
	cmp	[ebp-12],0
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_50
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	mov	eax,[ebp-24]
	cmp	[ebp-28],eax
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_51
	mov	ebx,2
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,_ac
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ac]
	mov	[esi],ebx
	add	[_vp],1
_51
_50
	add	[ebp-8],1
_40
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_41
_16
	add	[ebp-4],1
_38
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_39
_15
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vswidth	.dd	0
	.align	4
_vsheight	.dd	0
	.align	4
_vbwidth	.dd	0
	.align	4
_vbheight	.dd	0
	.align	4
_vtsize	.dd	0
	.align	4
_vp	.dd	0
	.align	4
_ab0	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ab1	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ac	.dd	0
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

