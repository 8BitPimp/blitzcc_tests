
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vmw],100
	mov	[_vmh],100
	call	_fgraphicswidth
	mov	ecx,[_vmw]
	cdq
	idiv	ecx
	mov	[_vtw],eax
	call	_fgraphicsheight
	mov	ecx,[_vmh]
	cdq
	idiv	ecx
	mov	[_vth],eax
	mov	[_vminroomsize],5
	mov	[_vmaxroomsize],15
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmw]
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmh]
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fmakemap
	sub	esp,4
	mov	[esp],10
	call	_fcreatetimer
	mov	[_vtimer],eax
	jmp	_29
_28
	sub	esp,4
	mov	eax,[_vtimer]
	mov	[esp],eax
	call	_fwaittimer
	call	_fcls
	call	_fdrawmap
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	mov	[ebp-8],eax
	cmp	[ebp-4],20
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_30
	call	_fnewmap
	mov	[ebp-4],0
_30
	add	[ebp-4],1
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_29
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_28
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
_fnewmap
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
_34
	mov	ebx,[_vmw]
	cmp	[ebp-8],ebx
	jle	_35
_6
	add	[ebp-4],1
_32
	mov	ebx,[_vmh]
	cmp	[ebp-4],ebx
	jle	_33
_5
	call	_fmakemap
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
_fmakemap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	[ebp-44],ebx
	mov	ebx,[_vmh]
	sar	ebx,byte 1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[_vmw]
	sar	esi,byte 1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	ebx,3
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],20000
	mov	[esp+4],150000
	call	_frand
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_36
_37
	sub	esp,8
	mov	ebx,[_vmw]
	mov	esi,[_vmaxroomsize]
	add	esi,2
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[_vmaxroomsize]
	add	eax,2
	mov	[esp],eax
	call	_frand
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vmh]
	mov	esi,[_vmaxroomsize]
	add	esi,2
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[_vmaxroomsize]
	add	eax,2
	mov	[esp],eax
	call	_frand
	mov	[ebp-16],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_38
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],4
	call	_frand
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[_vminroomsize]
	mov	[esp],eax
	mov	ebx,[_vmaxroomsize]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[_vminroomsize]
	mov	[esp],eax
	mov	ebx,[_vmaxroomsize]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-28],eax
	mov	ebx,[ebp-20]
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jz	_40
	cmp	[ebp-32],1
	jz	_41
	cmp	[ebp-32],2
	jz	_42
	cmp	[ebp-32],3
	jz	_43
	jmp	_39
_40
	sub	esp,16
	mov	eax,[ebp-12]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	sub	esi,[ebp-28]
	mov	[esp+4],esi
	call	_ffits
	cmp	eax,1
	jnz	_44
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+24],ebx
	mov	esi,[ebp-16]
	mov	edi,[ebp-28]
	sar	edi,byte 1
	sub	esi,edi
	mov	[esp+28],esi
	mov	esi,[ebp-16]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	mov	edi,[ebp-28]
	sar	edi,byte 1
	sub	esi,edi
	mov	[esp+12],esi
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	sub	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmr
_44
	jmp	_39
_41
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	edi,[ebp-28]
	mov	[esp+12],edi
	mov	eax,[ebp-12]
	add	eax,1
	mov	[esp],eax
	call	_ffits
	cmp	eax,1
	jnz	_45
	sub	esp,32
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+24],esi
	mov	edi,[ebp-16]
	mov	[esp+28],edi
	mov	edi,[ebp-28]
	sar	edi,byte 1
	add	edi,[ebp-16]
	mov	[esp+20],edi
	mov	esi,[ebp-24]
	sar	esi,byte 1
	add	esi,[ebp-12]
	mov	[esp+16],esi
	mov	edi,[ebp-16]
	mov	[esp+12],edi
	mov	esi,[ebp-12]
	add	esi,[ebp-24]
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	sar	eax,byte 1
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fmr
_45
	jmp	_39
_42
	sub	esp,16
	mov	eax,[ebp-12]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-16]
	add	esi,1
	mov	[esp+4],esi
	call	_ffits
	cmp	eax,1
	jnz	_46
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+24],ebx
	mov	esi,[ebp-28]
	sar	esi,byte 1
	add	esi,[ebp-16]
	mov	[esp+28],esi
	mov	esi,[ebp-16]
	add	esi,[ebp-28]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	mov	[esp+16],ebx
	mov	esi,[ebp-28]
	sar	esi,byte 1
	add	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmr
_46
	jmp	_39
_43
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	esi,[ebp-28]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	edi,[ebp-28]
	mov	[esp+12],edi
	mov	eax,[ebp-12]
	sub	eax,[ebp-24]
	sub	eax,1
	mov	[esp],eax
	call	_ffits
	cmp	eax,1
	jnz	_47
	sub	esp,32
	mov	ebx,[ebp-12]
	mov	esi,[ebp-24]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[esp+16],ebx
	mov	esi,[ebp-12]
	sub	esi,[ebp-24]
	mov	[esp+24],esi
	mov	edi,[ebp-16]
	mov	[esp+28],edi
	mov	edi,[ebp-28]
	sar	edi,byte 1
	add	edi,[ebp-16]
	mov	[esp+20],edi
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	edi,[ebp-28]
	sar	edi,byte 1
	sub	esi,edi
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[esp],eax
	call	_fmr
_47
	jmp	_39
_39
_38
	add	[ebp-8],1
_36
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_37
_8
	mov	[ebp-16],2
	jmp	_48
_49
	mov	[ebp-12],2
	jmp	_50
_51
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_52
	mov	eax,[ebp-12]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	or	eax,ebx
	and	eax,eax
	jz	_53
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_53
	mov	eax,[ebp-16]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-48],eax
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-48]
	or	eax,ebx
	and	eax,eax
	jz	_54
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_54
	mov	[ebp-36],0
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	[ebp-40],ebx
	jmp	_55
_56
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	[ebp-44],ebx
	jmp	_57
_58
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_59
	add	[ebp-36],1
_59
	add	[ebp-44],1
_57
	mov	ebx,[ebp-12]
	add	ebx,1
	cmp	[ebp-44],ebx
	jle	_58
_13
	add	[ebp-40],1
_55
	mov	ebx,[ebp-16]
	add	ebx,1
	cmp	[ebp-40],ebx
	jle	_56
_12
	cmp	[ebp-36],2
	jle	_60
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_60
_52
	add	[ebp-12],1
_50
	mov	ebx,[_vmw]
	sub	ebx,2
	cmp	[ebp-12],ebx
	jle	_51
_11
	add	[ebp-16],1
_48
	mov	ebx,[_vmh]
	sub	ebx,2
	cmp	[ebp-16],ebx
	jle	_49
_10
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
_fmr
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
	mov	[ebp-4],ebx
	jmp	_61
_62
	mov	ebx,[ebp+44]
	mov	[ebp-8],ebx
	jmp	_63
_64
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_63
	mov	ebx,[ebp+28]
	cmp	[ebp-8],ebx
	jle	_64
_16
	add	[ebp-4],1
_61
	mov	ebx,[ebp+40]
	cmp	[ebp-4],ebx
	jle	_62
_15
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	jmp	_65
_66
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+44]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-4],1
_65
	mov	ebx,[ebp+40]
	cmp	[ebp-4],ebx
	jle	_66
_17
	mov	ebx,[ebp+44]
	mov	[ebp-8],ebx
	jmp	_67
_68
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-8],1
_67
	mov	ebx,[ebp+28]
	cmp	[ebp-8],ebx
	jle	_68
_18
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+32]
	add	esi,[ebp+28]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+40]
	add	esi,[ebp+36]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+48]
	add	esi,[ebp+44]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_ffits
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp+24],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	ebx,[_vmw]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	ebx,[_vmh]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_69
	mov	eax,0
	jmp	_19_leave
_69
	mov	ebx,[ebp+24]
	mov	[ebp-4],ebx
	jmp	_70
_71
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	jmp	_72
_73
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_74
	mov	eax,0
	jmp	_19_leave
_74
	add	[ebp-8],1
_72
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	[ebp-8],ebx
	jle	_73
_21
	add	[ebp-4],1
_70
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	[ebp-4],ebx
	jle	_71
_20
	mov	eax,1
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
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
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	jmp	_75
_76
	mov	[ebp-8],0
	jmp	_77
_78
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-12],0
	jz	_80
	cmp	[ebp-12],1
	jz	_81
	cmp	[ebp-12],2
	jz	_82
	cmp	[ebp-12],3
	jz	_83
	jmp	_79
_80
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_79
_81
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_79
_82
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
	jmp	_79
_83
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	jmp	_79
_79
	sub	esp,20
	mov	ebx,[_vth]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtw]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	imul	ebx,[_vth]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	imul	eax,[_vtw]
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_77
	mov	ebx,[_vmh]
	cmp	[ebp-8],ebx
	jle	_78
_24
	add	[ebp-4],1
_75
	mov	ebx,[_vmh]
	cmp	[ebp-4],ebx
	jle	_76
_23
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_26	.db	"Map generator",0
_27	.db	"",0
	.align	4
_vmw	.dd	0
	.align	4
_vmh	.dd	0
	.align	4
_vtw	.dd	0
	.align	4
_vth	.dd	0
	.align	4
_vminroomsize	.dd	0
	.align	4
_vmaxroomsize	.dd	0
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vtimer	.dd	0
_31	.db	"Press space to generate new - esc = exit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

