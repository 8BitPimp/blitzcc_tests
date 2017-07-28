
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,12
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fgraphicswidth
	mov	[_vswidth],eax
	call	_fgraphicsheight
	mov	[_vsheight],eax
	mov	[_vbwidth],65
	mov	[_vbheight],55
	mov	[_vtsize],10
	mov	[_vxoff],110
	mov	[_vyoff],20
	mov	[_vstarted],0
	mov	[_vpopulation],0
	mov	[_vgeneration],0
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],12
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[_vfont],eax
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
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fsetup
	sub	esp,4
	mov	[esp],30
	call	_fcreatetimer
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],100
	mov	[esp],0
	call	_fclscolor
	call	_fmillisecs
	mov	[ebp-8],eax
	jmp	_26
_25
	call	_fcls
	call	_fdrawboard
	sub	esp,4
	mov	[esp],46
	call	_fkeyhit
	and	eax,eax
	jz	_27
	mov	[_vstarted],0
	call	_fsetup
_27
	sub	esp,4
	mov	[esp],19
	call	_fkeyhit
	and	eax,eax
	jz	_28
	mov	[_vstarted],0
	call	_frandomize
_28
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_29
	cmp	[_vstarted],0
	setz	al
	movzx	eax,al
	mov	[_vstarted],eax
_29
	mov	ebx,[_vstarted]
	and	ebx,ebx
	jz	_30
	call	_fmillisecs
	mov	ebx,[ebp-8]
	add	ebx,150
	cmp	eax,ebx
	jle	_31
	call	_flive
	call	_fswitchem
	call	_fmillisecs
	mov	[ebp-8],eax
_31
_30
	call	_ftrackmouse
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwaittimer
_26
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_25
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
_frandomize
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
	call	_fsetup
	sub	esp,8
	mov	[esp],1114636288
	mov	[esp+4],1117782016
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_32
_33
	mov	[ebp-12],0
	jmp	_34
_35
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_36
	mov	[ebp-16],1
	add	[_vpopulation],1
	jmp	_37
_36
	mov	[ebp-16],0
_37
	mov	ebx,[ebp-16]
	mov	esi,_ab0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ab0]
	mov	[esi],ebx
	add	[ebp-12],1
_34
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_35
_6
	add	[ebp-8],1
_32
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_33
_5
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
_fsetup
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
	mov	[_vpopulation],0
	mov	[_vgeneration],0
	mov	[ebp-4],0
	jmp	_38
_39
	mov	[ebp-8],0
	jmp	_40
_41
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,0
	mov	esi,_ab0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab0]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
	add	[ebp-8],1
_40
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_41
_9
	add	[ebp-4],1
_38
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_39
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
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
	jmp	_42
_43
	mov	[ebp-8],0
	jmp	_44
_45
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
_44
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_45
_12
	add	[ebp-4],1
_42
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_43
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
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
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],70
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vbheight]
	imul	ebx,[_vtsize]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vbwidth]
	imul	esi,[_vtsize]
	mov	[esp+8],esi
	mov	ebx,[_vyoff]
	add	ebx,10
	mov	[esp+4],ebx
	mov	eax,[_vxoff]
	add	eax,10
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],50
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vbheight]
	imul	ebx,[_vtsize]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vbwidth]
	imul	esi,[_vtsize]
	mov	[esp+8],esi
	mov	ebx,[_vyoff]
	mov	[esp+4],ebx
	mov	eax,[_vxoff]
	mov	[esp],eax
	call	_frect
	mov	[_vpopulation],0
	mov	[ebp-4],0
	jmp	_46
_47
	mov	[ebp-8],0
	jmp	_48
_49
	mov	[ebp-12],0
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_50
	mov	[ebp-12],1
	add	[_vpopulation],1
_50
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],150
	mov	[esp],150
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtsize]
	mov	[esp+12],ebx
	mov	esi,[ebp-12]
	mov	[esp+16],esi
	mov	esi,[_vtsize]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vtsize]
	add	ebx,[_vyoff]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtsize]
	add	eax,[_vxoff]
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_48
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_49
_15
	add	[ebp-4],1
_46
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_47
_14
	sub	esp,4
	mov	eax,[_vfont]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vpopulation]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],30
	mov	[esp],15
	call	_ftext
	sub	esp,32
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vgeneration]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],15
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],65
	mov	[esp],15
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],75
	mov	[esp],15
	call	_ftext
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_flive
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
	mov	[ebp-4],0
	jmp	_55
_56
	mov	[ebp-8],0
	jmp	_57
_58
	mov	[ebp-12],0
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[ebp-16],ebx
	jmp	_59
_60
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[ebp-20],ebx
	jmp	_61
_62
	cmp	[ebp-20],0
	setge	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	mov	esi,[_vbheight]
	sub	esi,1
	cmp	[ebp-4],esi
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_63
	mov	eax,[ebp-8]
	cmp	[ebp-20],eax
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	cmp	eax,0
	jnz	_64
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_65
	add	[ebp-12],1
_65
_64
_63
	add	[ebp-20],1
_61
	mov	ebx,[ebp-8]
	add	ebx,1
	cmp	[ebp-20],ebx
	jle	_62
_20
	add	[ebp-16],1
_59
	mov	ebx,[ebp-4]
	add	ebx,1
	cmp	[ebp-16],ebx
	jle	_60
_19
	cmp	[ebp-12],3
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_66
	mov	ebx,1
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
_66
	cmp	[ebp-12],2
	jnz	_67
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
_67
	cmp	[ebp-12],2
	setl	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp-12],3
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	mov	[ebp-24],eax
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
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_68
	mov	ebx,0
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
_68
	add	[ebp-8],1
_57
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_58
_18
	add	[ebp-4],1
_55
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_56
_17
	add	[_vgeneration],1
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftrackmouse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
	sub	eax,[_vxoff]
	mov	ecx,[_vtsize]
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	mov	eax,[ebp-8]
	sub	eax,[_vyoff]
	mov	ecx,[_vtsize]
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	eax,[_vxoff]
	cmp	[ebp-4],eax
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vyoff]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vbheight]
	sub	ebx,1
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_69
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[ebp-20],eax
	cmp	[_vstarted],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_70
	mov	eax,_ab0
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_ab0]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	[ebx],eax
	mov	ebx,_ab0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ab0]
	mov	ebx,[ebx]
	mov	esi,_ab1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ab1]
	mov	[esi],ebx
_70
_69
	mov	eax,[_vxoff]
	cmp	[ebp-4],eax
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vbwidth]
	sub	ebx,1
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vyoff]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	mov	esi,[_vbheight]
	sub	esi,1
	cmp	[ebp-16],esi
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-20]
	and	ebx,esi
	and	eax,ebx
	and	eax,eax
	jz	_71
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtsize]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vtsize]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	imul	ebx,[_vtsize]
	add	ebx,[_vyoff]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	imul	eax,[_vtsize]
	add	eax,[_vxoff]
	mov	[esp],eax
	call	_frect
_71
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_22	.db	"Life! by DarkNature",0
_23	.db	"",0
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
_vxoff	.dd	0
	.align	4
_vyoff	.dd	0
	.align	4
_vstarted	.dd	0
	.align	4
_vpopulation	.dd	0
	.align	4
_vgeneration	.dd	0
	.align	4
_vfont	.dd	0
_24	.db	"tahoma",0
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
_51	.db	"Population: ",0
_52	.db	"Generation: ",0
_53	.db	"c:clear r:random",0
_54	.db	"space bar:start",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

