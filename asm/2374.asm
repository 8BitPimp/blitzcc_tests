
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_aworld
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,200
	mov	esi,_aworld
	add	esi,12
	mov	[esi],ebx
	mov	ebx,19
	mov	esi,_aworld
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aworld
	mov	[esp],eax
	call	__bbDimArray
	call	_floadtileset
	mov	[_vtileset],eax
	call	_floadmainchar
	mov	[_vmain],eax
	mov	[_vscore],0
	call	_floadworld
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	[ebp-8],0
_24
	call	_fcls
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-12]
	add	[ebp-8],ebx
	jmp	_26
_25
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_27
	sub	esp,12
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[_vmain]
	mov	[esp],eax
	call	_ftestcollision
	cmp	eax,0
	jnz	_28
	sub	[ebp-16],1
_28
_27
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_29
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[_vmain]
	mov	[esp],eax
	call	_ftestcollision
	cmp	eax,0
	jnz	_30
	add	[ebp-16],1
_30
_29
	cmp	[ebp-24],0
	jle	_31
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	[esp+8],esi
	mov	eax,[_vmain]
	mov	[esp],eax
	call	_ftestcollision
	cmp	eax,0
	jnz	_32
	sub	[ebp-20],1
	sub	[ebp-24],1
	jmp	_33
_32
	mov	[ebp-24],0
_33
	jmp	_34
_31
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	add	esi,1
	mov	[esp+8],esi
	mov	eax,[_vmain]
	mov	[esp],eax
	call	_ftestcollision
	cmp	eax,0
	jnz	_35
	add	[ebp-20],1
	jmp	_36
_35
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_37
	mov	[ebp-24],160
_37
_36
_34
	sub	[ebp-8],5
_26
	cmp	[ebp-8],5
	jg	_25
_4
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-28]
	cmp	ebx,600
	jle	_38
	mov	ebx,[ebp-16]
	sub	ebx,600
	mov	[ebp-28],ebx
_38
	mov	ebx,[ebp-16]
	sub	ebx,[ebp-28]
	cmp	ebx,100
	jge	_39
	mov	ebx,[ebp-16]
	sub	ebx,100
	mov	[ebp-28],ebx
_39
	cmp	[ebp-28],0
	jge	_40
	mov	[ebp-28],0
_40
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	[esp+4],32
	call	__bbMod
	mov	[ebp-32],eax
	mov	ebx,[ebp-28]
	sar	ebx,byte 5
	mov	[ebp-36],ebx
	mov	[ebp-40],0
	jmp	_41
_42
	mov	[ebp-44],0
	jmp	_43
_44
	sub	esp,8
	mov	eax,[ebp-40]
	add	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_freadworld
	mov	[ebp-48],eax
	cmp	[ebp-48],0
	jle	_45
	sub	esp,16
	mov	ebx,[ebp-44]
	shl	ebx,byte 5
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-40]
	shl	esi,byte 5
	sub	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[_vtileset]
	mov	[esp],eax
	call	_fdrawimage
_45
	add	[ebp-44],1
_43
	cmp	[ebp-44],18
	jle	_44
_6
	add	[ebp-40],1
_41
	cmp	[ebp-40],25
	jle	_42
_5
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	sub	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[_vmain]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[_vscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_24
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
_floadmainchar
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],48
	mov	[esp+8],1
	mov	[esp],48
	call	_fcreateimage
	mov	[ebp-4],eax
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],48
	mov	[esp+16],1
	mov	[esp+8],48
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgrabimage
	mov	eax,[ebp-4]
	jmp	_7_leave
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
_floadworld
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
	mov	[ebp-4],15
	mov	[ebp-8],0
	jmp	_48
_49
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],5
	call	_frand
	cmp	eax,1
	jnz	_50
	sub	esp,20
	mov	[esp],9
	mov	[esp+4],12
	call	_frand
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteworld
	mov	ebx,eax
_50
	sub	esp,8
	mov	[esp],-1
	mov	[esp+4],1
	call	_frand
	add	[ebp-4],eax
	cmp	[ebp-4],13
	jge	_51
	mov	[ebp-4],13
_51
	cmp	[ebp-4],17
	jle	_52
	mov	[ebp-4],17
_52
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	jmp	_53
_54
	sub	esp,12
	mov	ebx,4
	mov	eax,[ebp-4]
	cmp	[ebp-12],eax
	setz	al
	movzx	eax,al
	sub	ebx,eax
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwriteworld
	add	[ebp-12],1
_53
	cmp	[ebp-12],18
	jle	_54
_10
	add	[ebp-8],1
_48
	cmp	[ebp-8],200
	jle	_49
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
_floadtileset
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
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],4
	mov	[esp],32
	call	_fcreateimage
	mov	[ebp-4],eax
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgrabimage
	call	_fcls
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],0
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],160
	mov	[esp+8],160
	mov	[esp],255
	call	_fcolor
	mov	[ebp-8],-1
	jmp	_55
_56
	mov	[ebp-12],0
	jmp	_57
_58
	sub	esp,28
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	shl	eax,byte 2
	mov	ebx,[ebp-8]
	shl	ebx,byte 3
	add	ebx,eax
	mov	[esp],ebx
	mov	[esp+12],4
	mov	[esp+16],1
	mov	[esp+8],6
	mov	esi,[ebp-12]
	shl	esi,byte 3
	mov	[esp+4],esi
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
	add	[ebp-12],1
_57
	cmp	[ebp-12],3
	jle	_58
_13
	add	[ebp-8],1
_55
	cmp	[ebp-8],3
	jle	_56
_12
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgrabimage
	call	_fcls
	mov	[ebp-8],0
	jmp	_59
_60
	mov	[ebp-12],0
	jmp	_61
_62
	sub	esp,20
	mov	[esp],160
	mov	[esp+4],255
	call	_frand
	mov	[esp+4],eax
	mov	[esp+8],64
	mov	[esp],64
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 1
	mov	[esp],eax
	call	_frect
	add	[ebp-12],1
_61
	cmp	[ebp-12],16
	jle	_62
_15
	add	[ebp-8],1
_59
	cmp	[ebp-8],16
	jle	_60
_14
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgrabimage
	call	_fcls
	mov	[ebp-8],0
	jmp	_63
_64
	mov	[ebp-12],0
	jmp	_65
_66
	sub	esp,8
	mov	[esp],40
	mov	[esp+4],120
	call	_frand
	mov	[ebp-16],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],32
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 1
	mov	[esp],eax
	call	_frect
	add	[ebp-12],1
_65
	cmp	[ebp-12],16
	jle	_66
_17
	add	[ebp-8],1
_63
	cmp	[ebp-8],16
	jle	_64
_16
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],3
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgrabimage
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	eax,[ebp-4]
	jmp	_11_leave
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
_freadworld
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],0
	jge	_67
	mov	eax,0
	jmp	_18_leave
_67
	cmp	[ebp+24],0
	jge	_68
	mov	eax,0
	jmp	_18_leave
_68
	cmp	[ebp+20],200
	jl	_69
	mov	eax,0
	jmp	_18_leave
_69
	cmp	[ebp+24],19
	jl	_70
	mov	eax,0
	jmp	_18_leave
_70
	mov	eax,_aworld
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+24]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_aworld]
	mov	eax,[eax]
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fwriteworld
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],0
	jge	_71
	mov	eax,0
	jmp	_19_leave
_71
	cmp	[ebp+24],0
	jge	_72
	mov	eax,0
	jmp	_19_leave
_72
	cmp	[ebp+20],200
	jl	_73
	mov	eax,0
	jmp	_19_leave
_73
	cmp	[ebp+24],19
	jl	_74
	mov	eax,0
	jmp	_19_leave
_74
	mov	ebx,[ebp+28]
	mov	esi,_aworld
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aworld]
	mov	[esi],ebx
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ftestcollision
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
	mov	[ebp-28],ebx
	mov	ebx,[ebp+24]
	sar	ebx,byte 5
	mov	[ebp-4],ebx
	mov	ebx,[ebp+28]
	sar	ebx,byte 5
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	sar	eax,byte 5
	add	eax,1
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	sar	eax,byte 5
	add	eax,1
	mov	[ebp-16],eax
	mov	ebx,[ebp-4]
	mov	[ebp-20],ebx
	jmp	_75
_76
	mov	ebx,[ebp-8]
	mov	[ebp-24],ebx
	jmp	_77
_78
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_freadworld
	mov	[ebp-28],eax
	cmp	[ebp-28],0
	jle	_79
	sub	esp,32
	mov	ebx,[ebp-24]
	shl	ebx,byte 5
	mov	[esp+24],ebx
	mov	esi,[ebp-28]
	sub	esi,1
	mov	[esp+28],esi
	mov	esi,[ebp-20]
	shl	esi,byte 5
	mov	[esp+20],esi
	mov	ebx,[_vtileset]
	mov	[esp+16],ebx
	mov	[esp+12],0
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fimagescollide
	and	eax,eax
	jz	_80
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftilecollisionevent
	jmp	_20_leave
_80
_79
	add	[ebp-24],1
_77
	mov	ebx,[ebp-8]
	add	ebx,[ebp-16]
	cmp	[ebp-24],ebx
	jle	_78
_22
	add	[ebp-20],1
_75
	mov	ebx,[ebp-4]
	add	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jle	_76
_21
	mov	eax,0
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ftilecollisionevent
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vmain]
	cmp	[ebp+20],ebx
	jnz	_81
	cmp	[ebp+32],1
	jnz	_82
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fwriteworld
	add	[_vscore],1
	mov	eax,0
	jmp	_23_leave
_82
_81
	mov	eax,1
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	4
_aworld	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vtileset	.dd	0
	.align	4
_vmain	.dd	0
	.align	4
_vscore	.dd	0
_46	.db	"move = left/right   jump = space",0
_47	.db	"score:",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

