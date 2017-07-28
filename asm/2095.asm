
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fx360_leftstickx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_33
	sub	esp,4
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_34
_33
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_34
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_leftsticky
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_35
	sub	esp,4
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_36
_35
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_36
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_leftstickxdir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_37
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	mov	[ebp-4],eax
	jmp	_38
_37
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyxdir
	mov	[ebp-4],eax
_38
	mov	eax,[ebp-4]
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_leftstickydir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_39
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	mov	[ebp-4],eax
	jmp	_40
_39
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyydir
	mov	[ebp-4],eax
_40
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rightstickx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_41
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_42
_41
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoypitch
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
_42
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	jmp	_7_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rightsticky
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_43
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_44
_43
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyyaw
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
_44
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	jmp	_8_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rightstickxdir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],-1
	jnz	_45
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_46
	mov	[ebp-4],-1
_46
	sub	esp,4
	mov	[esp],0
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_47
	mov	[ebp-4],1
_47
	jmp	_48
_45
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_49
	mov	[ebp-4],-1
_49
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoypitch
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_50
	mov	[ebp-4],1
_50
_48
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
	ret	word 8
	.align	16
_fx360_rightstickydir
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+24],-1
	jnz	_51
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_52
	mov	[ebp-4],-1
_52
	sub	esp,4
	mov	[esp],0
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_53
	mov	[ebp-4],1
_53
	jmp	_54
_51
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_55
	mov	[ebp-4],-1
_55
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fjoyyaw
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_56
	mov	[ebp-4],1
_56
_54
	mov	eax,[ebp-4]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fx360_returntrigger
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_57
	sub	esp,4
	mov	[esp],0
	call	_fjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	jmp	_58
_57
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_58
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_triggerdown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],-1
	jnz	_59
	sub	esp,4
	mov	[esp],0
	call	_fjoyzdir
	mov	[ebp-4],eax
	jmp	_60
_59
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fjoyzdir
	mov	[ebp-4],eax
_60
	mov	eax,[ebp-4]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_abuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_61
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_62
	mov	eax,1
	jmp	_13_leave
_62
	jmp	_63
_61
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_64
	mov	eax,1
	jmp	_13_leave
_64
_63
	mov	eax,0
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_bbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_65
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_66
	mov	eax,1
	jmp	_14_leave
_66
	jmp	_67
_65
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_68
	mov	eax,1
	jmp	_14_leave
_68
_67
	mov	eax,0
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_ybuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_69
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_70
	mov	eax,1
	jmp	_15_leave
_70
	jmp	_71
_69
	sub	esp,8
	mov	[esp],4
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_72
	mov	eax,1
	jmp	_15_leave
_72
_71
	mov	eax,0
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_xbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_73
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_74
	mov	eax,1
	jmp	_16_leave
_74
	jmp	_75
_73
	sub	esp,8
	mov	[esp],3
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_76
	mov	eax,1
	jmp	_16_leave
_76
_75
	mov	eax,0
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rbbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_77
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_78
	mov	eax,1
	jmp	_17_leave
_78
	jmp	_79
_77
	sub	esp,8
	mov	[esp],6
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_80
	mov	eax,1
	jmp	_17_leave
_80
_79
	mov	eax,0
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
_fx360_lbbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_81
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_82
	mov	eax,1
	jmp	_18_leave
_82
	jmp	_83
_81
	sub	esp,8
	mov	[esp],5
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_84
	mov	eax,1
	jmp	_18_leave
_84
_83
	mov	eax,0
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
_fx360_startbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_85
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_86
	mov	eax,1
	jmp	_19_leave
_86
	jmp	_87
_85
	sub	esp,8
	mov	[esp],8
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_88
	mov	eax,1
	jmp	_19_leave
_88
_87
	mov	eax,0
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
_fx360_backbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_89
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_90
	mov	eax,1
	jmp	_20_leave
_90
	jmp	_91
_89
	sub	esp,8
	mov	[esp],7
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_92
	mov	eax,1
	jmp	_20_leave
_92
_91
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
	ret	word 4
	.align	16
_fx360_lstickbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_93
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_94
	mov	eax,1
	jmp	_21_leave
_94
	jmp	_95
_93
	sub	esp,8
	mov	[esp],9
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_96
	mov	eax,1
	jmp	_21_leave
_96
_95
	mov	eax,0
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
	.align	16
_fx360_rstickbuttonhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_97
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_98
	mov	eax,1
	jmp	_22_leave
_98
	jmp	_99
_97
	sub	esp,8
	mov	[esp],10
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoyhit
	and	eax,eax
	jz	_100
	mov	eax,1
	jmp	_22_leave
_100
_99
	mov	eax,0
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_abuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_101
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_102
	mov	eax,1
	jmp	_23_leave
_102
	jmp	_103
_101
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_104
	mov	eax,1
	jmp	_23_leave
_104
_103
	mov	eax,0
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_bbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_105
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_106
	mov	eax,1
	jmp	_24_leave
_106
	jmp	_107
_105
	sub	esp,8
	mov	[esp],2
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_108
	mov	eax,1
	jmp	_24_leave
_108
_107
	mov	eax,0
	jmp	_24_leave
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_ybuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_109
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_110
	mov	eax,1
	jmp	_25_leave
_110
	jmp	_111
_109
	sub	esp,8
	mov	[esp],4
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_112
	mov	eax,1
	jmp	_25_leave
_112
_111
	mov	eax,0
	jmp	_25_leave
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_xbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_113
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_114
	mov	eax,1
	jmp	_26_leave
_114
	jmp	_115
_113
	sub	esp,8
	mov	[esp],3
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_116
	mov	eax,1
	jmp	_26_leave
_116
_115
	mov	eax,0
	jmp	_26_leave
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rbbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_117
	sub	esp,8
	mov	[esp],6
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_118
	mov	eax,1
	jmp	_27_leave
_118
	jmp	_119
_117
	sub	esp,8
	mov	[esp],6
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_120
	mov	eax,1
	jmp	_27_leave
_120
_119
	mov	eax,0
	jmp	_27_leave
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_lbbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_121
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_122
	mov	eax,1
	jmp	_28_leave
_122
	jmp	_123
_121
	sub	esp,8
	mov	[esp],5
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_124
	mov	eax,1
	jmp	_28_leave
_124
_123
	mov	eax,0
	jmp	_28_leave
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_startbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_125
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_126
	mov	eax,1
	jmp	_29_leave
_126
	jmp	_127
_125
	sub	esp,8
	mov	[esp],8
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_128
	mov	eax,1
	jmp	_29_leave
_128
_127
	mov	eax,0
	jmp	_29_leave
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_backbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_129
	sub	esp,8
	mov	[esp],7
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_130
	mov	eax,1
	jmp	_30_leave
_130
	jmp	_131
_129
	sub	esp,8
	mov	[esp],7
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_132
	mov	eax,1
	jmp	_30_leave
_132
_131
	mov	eax,0
	jmp	_30_leave
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_lstickbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_133
	sub	esp,8
	mov	[esp],9
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_134
	mov	eax,1
	jmp	_31_leave
_134
	jmp	_135
_133
	sub	esp,8
	mov	[esp],9
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_136
	mov	eax,1
	jmp	_31_leave
_136
_135
	mov	eax,0
	jmp	_31_leave
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fx360_rstickbuttondown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],-1
	jnz	_137
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],0
	call	_fjoydown
	and	eax,eax
	jz	_138
	mov	eax,1
	jmp	_32_leave
_138
	jmp	_139
_137
	sub	esp,8
	mov	[esp],10
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fjoydown
	and	eax,eax
	jz	_140
	mov	eax,1
	jmp	_32_leave
_140
_139
	mov	eax,0
	jmp	_32_leave
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

