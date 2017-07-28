
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
	mov	[ebp-20],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vwall],4
	mov	[_vflr],5
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],25
	mov	[esp+8],100
	mov	[esp],25
	call	_fgenerate_map
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	call	_fcls
	sub	esp,32
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],588
	mov	[esp],1
	call	_ftext
	mov	[ebp-16],0
	jmp	_35
_36
	mov	[ebp-20],0
	jmp	_37
_38
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_39
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	mov	[esp],eax
	call	_frect
_39
	add	[ebp-20],1
_37
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_38
_4
	add	[ebp-16],1
_35
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_36
_3
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],250
	mov	[esp],1
	call	_ftext
	sub	esp,12
	mov	[esp+4],25
	mov	[esp+8],66
	mov	[esp],25
	call	_fgenerate_map
	mov	[ebp-16],0
	jmp	_41
_42
	mov	[ebp-20],0
	jmp	_43
_44
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_45
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	add	eax,260
	mov	[esp],eax
	call	_frect
_45
	add	[ebp-20],1
_43
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_44
_6
	add	[ebp-16],1
_41
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_42
_5
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],250
	mov	[esp],260
	call	_ftext
	sub	esp,12
	mov	[esp+4],25
	mov	[esp+8],33
	mov	[esp],25
	call	_fgenerate_map
	mov	[ebp-16],0
	jmp	_47
_48
	mov	[ebp-20],0
	jmp	_49
_50
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_51
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	add	eax,520
	mov	[esp],eax
	call	_frect
_51
	add	[ebp-20],1
_49
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_50
_8
	add	[ebp-16],1
_47
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_48
_7
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],250
	mov	[esp],520
	call	_ftext
	sub	esp,12
	mov	[esp+4],25
	mov	[esp+8],0
	mov	[esp],25
	call	_fgenerate_map
	mov	[ebp-16],0
	jmp	_53
_54
	mov	[ebp-20],0
	jmp	_55
_56
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_57
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	add	ebx,270
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	mov	[esp],eax
	call	_frect
_57
	add	[ebp-20],1
_55
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_56
_10
	add	[ebp-16],1
_53
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_54
_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],1
	call	_ftext
	sub	esp,4
	mov	[esp],5
	call	_fdilutemap
	mov	[ebp-16],0
	jmp	_59
_60
	mov	[ebp-20],0
	jmp	_61
_62
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_63
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	add	ebx,270
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	add	eax,260
	mov	[esp],eax
	call	_frect
_63
	add	[ebp-20],1
_61
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_62
_12
	add	[ebp-16],1
_59
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_60
_11
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],260
	call	_ftext
	sub	esp,4
	mov	[esp],5
	call	_fdilutemap
	mov	[ebp-16],0
	jmp	_65
_66
	mov	[ebp-20],0
	jmp	_67
_68
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_69
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	add	ebx,270
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	add	eax,520
	mov	[esp],eax
	call	_frect
_69
	add	[ebp-20],1
_67
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_68
_14
	add	[ebp-16],1
_65
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_66
_13
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],520
	mov	[esp],520
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],550
	mov	[esp],1
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],55
	mov	[esp+8],50
	mov	[esp],79
	call	_fgenerate_map
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	call	_fcls
	sub	esp,32
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],588
	mov	[esp],1
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],578
	mov	[esp],1
	call	_ftext
	mov	[ebp-16],0
	jmp	_74
_75
	mov	[ebp-20],0
	jmp	_76
_77
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_78
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	mov	[esp],eax
	call	_frect
_78
	add	[ebp-20],1
_76
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_77
_16
	add	[ebp-16],1
_74
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_75
_15
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],25
	mov	[esp+8],50
	mov	[esp],79
	call	_fgenerate_map
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	call	_fcls
	sub	esp,32
	mov	eax,_79
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],588
	mov	[esp],1
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],578
	mov	[esp],1
	call	_ftext
	mov	[ebp-16],0
	jmp	_81
_82
	mov	[ebp-20],0
	jmp	_83
_84
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_85
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-20]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,10
	mov	[esp],eax
	call	_frect
_85
	add	[ebp-20],1
_83
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_84
_18
	add	[ebp-16],1
_81
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_82
_17
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],110
	mov	[esp+8],50
	mov	[esp],158
	call	_fgenerate_map
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	call	_fcls
	sub	esp,32
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],588
	mov	[esp],1
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_87
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],578
	mov	[esp],1
	call	_ftext
	mov	[ebp-16],0
	jmp	_88
_89
	mov	[ebp-20],0
	jmp	_90
_91
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_92
	sub	esp,20
	mov	[esp+12],5
	mov	[esp+16],1
	mov	[esp+8],5
	mov	ebx,[ebp-20]
	imul	ebx,5
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	imul	eax,5
	mov	[esp],eax
	call	_frect
_92
	add	[ebp-20],1
_90
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_91
_20
	add	[ebp-16],1
_88
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_89
_19
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fmillisecs
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],50
	mov	[esp],399
	call	_fgenerate_map
	call	_fmillisecs
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-4]
	mov	[ebp-12],ebx
	call	_fcls
	sub	esp,32
	mov	eax,_93
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],588
	mov	[esp],1
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_94
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],578
	mov	[esp],1
	call	_ftext
	mov	[ebp-16],0
	jmp	_95
_96
	mov	[ebp-20],0
	jmp	_97
_98
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	jnz	_99
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-20]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	shl	eax,byte 1
	mov	[esp],eax
	call	_frect
_99
	add	[ebp-20],1
_97
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_98
_22
	add	[ebp-16],1
_95
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_96
_21
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_100
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_101
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_102
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_103
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],580
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdilutemap
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
	mov	[ebp-4],1
	jmp	_104
_105
	mov	[ebp-8],0
	jmp	_106
_107
	mov	[ebp-12],0
	jmp	_108
_109
	mov	[ebp-16],0
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,[_vsizex]
	sub	esi,1
	cmp	ebx,esi
	jge	_110
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vflr]
	jnz	_111
	add	[ebp-16],1
_111
_110
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	ebx,0
	jle	_112
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vflr]
	jnz	_113
	add	[ebp-16],1
_113
_112
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,[_vsizey]
	sub	esi,1
	cmp	ebx,esi
	jge	_114
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vflr]
	jnz	_115
	add	[ebp-16],1
_115
_114
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	ebx,0
	jle	_116
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vflr]
	jnz	_117
	add	[ebp-16],1
_117
_116
	cmp	[ebp-16],1
	jnz	_118
	mov	ebx,[_vwall]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
_118
	add	[ebp-12],1
_108
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_109
_26
	add	[ebp-8],1
_106
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_107
_25
	add	[ebp-4],1
_104
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_105
_24
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
_fgenerate_map
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	ebx,[ebp+20]
	mov	[_vsizex],ebx
	mov	ebx,[ebp+24]
	mov	[_vsizey],ebx
	mov	[ebp-4],0
	mov	[ebp-8],1
	mov	[ebp-12],2
	mov	[ebp-16],3
	mov	ebx,[_vsizex]
	imul	ebx,[_vsizey]
	mov	[ebp-20],ebx
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],3
	call	_frand
	mov	[ebp-24],eax
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-40],ebx
	mov	[ebp-44],0
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vsizex]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vsizey]
	sub	ebx,1
	mov	esi,_amap
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amap
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-48],0
	jmp	_119
_120
	mov	[ebp-52],0
	jmp	_121
_122
	mov	ebx,[_vwall]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-52]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	add	[ebp-52],1
_121
	mov	ebx,[_vsizey]
	sub	ebx,1
	cmp	[ebp-52],ebx
	jle	_122
_29
	add	[ebp-48],1
_119
	mov	ebx,[_vsizex]
	sub	ebx,1
	cmp	[ebp-48],ebx
	jle	_120
_28
	sub	esp,8
	mov	[esp],2
	mov	ebx,[_vsizex]
	sub	ebx,3
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-56],eax
	sub	esp,8
	mov	[esp],2
	mov	ebx,[_vsizey]
	sub	ebx,3
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-60],eax
_123
	mov	[ebp-64],0
	mov	[ebp-68],0
	mov	[ebp-72],1
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],100
	call	_frand
	cmp	eax,[ebp+28]
	jge	_124
	mov	[ebp-72],0
	mov	ebx,[ebp-24]
	mov	[ebp-76],ebx
_124
_125
	cmp	[ebp-72],1
	jnz	_126
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],3
	call	_frand
	mov	[ebp-76],eax
	mov	ebx,[ebp-76]
	mov	[ebp-24],ebx
_126
	mov	[ebp-72],1
	mov	ebx,[ebp-76]
	mov	[ebp-80],ebx
	cmp	[ebp-80],0
	jz	_128
	cmp	[ebp-80],1
	jz	_129
	cmp	[ebp-80],2
	jz	_130
	cmp	[ebp-80],3
	jz	_131
	jmp	_127
_128
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jnz	_132
	mov	[ebp-64],1
	sub	[ebp-60],1
_132
	jmp	_127
_129
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jnz	_133
	mov	[ebp-64],1
	add	[ebp-60],1
_133
	jmp	_127
_130
	mov	ebx,[ebp-12]
	cmp	[ebp-36],ebx
	jnz	_134
	mov	[ebp-64],1
	add	[ebp-56],1
_134
	jmp	_127
_131
	mov	ebx,[ebp-12]
	cmp	[ebp-40],ebx
	jnz	_135
	mov	[ebp-64],1
	sub	[ebp-56],1
_135
	jmp	_127
_127
	cmp	[ebp-64],1
	jnz	_125
_31
	mov	ebx,[_vflr]
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	esi,[ebp-56]
	shl	esi,byte 2
	add	esi,[_amap]
	mov	[esi],ebx
	call	_fmillisecs
	mov	[ebp-84],eax
_l_27checkdirection
	mov	ebx,[ebp-16]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-16]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-60]
	sub	ebx,2
	cmp	ebx,0
	jge	_136
	mov	ebx,[ebp-16]
	mov	[ebp-28],ebx
	jmp	_137
_136
	mov	eax,[ebp-60]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	sub	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_138
	mov	ebx,[ebp-60]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-56]
	sub	eax,1
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-56]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,[_vwall]
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-92]
	and	eax,esi
	and	eax,eax
	jz	_139
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
	jmp	_140
_139
	mov	ebx,[ebp-16]
	mov	[ebp-28],ebx
_140
_138
_137
	mov	ebx,[ebp-60]
	add	ebx,2
	mov	esi,[_vsizey]
	sub	esi,1
	cmp	ebx,esi
	jle	_141
	mov	ebx,[ebp-16]
	mov	[ebp-32],ebx
	jmp	_142
_141
	mov	eax,[ebp-60]
	add	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-56]
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	add	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_143
	mov	ebx,[ebp-60]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-56]
	sub	eax,1
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-56]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,[_vwall]
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-92]
	and	eax,esi
	and	eax,eax
	jz	_144
	mov	ebx,[ebp-12]
	mov	[ebp-32],ebx
	jmp	_145
_144
	mov	ebx,[ebp-16]
	mov	[ebp-32],ebx
_145
_143
_142
	mov	ebx,[ebp-56]
	add	ebx,2
	mov	esi,[_vsizex]
	sub	esi,1
	cmp	ebx,esi
	jle	_146
	mov	ebx,[ebp-16]
	mov	[ebp-36],ebx
	jmp	_147
_146
	mov	eax,[ebp-56]
	add	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-56]
	add	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_148
	mov	ebx,[ebp-60]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-56]
	add	eax,1
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-56]
	add	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,[_vwall]
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-92]
	and	eax,esi
	and	eax,eax
	jz	_149
	mov	ebx,[ebp-12]
	mov	[ebp-36],ebx
	jmp	_150
_149
	mov	ebx,[ebp-16]
	mov	[ebp-36],ebx
_150
_148
_147
	mov	ebx,[ebp-56]
	sub	ebx,2
	cmp	ebx,0
	jge	_151
	mov	ebx,[ebp-16]
	mov	[ebp-40],ebx
	jmp	_152
_151
	mov	eax,[ebp-56]
	sub	eax,1
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-56]
	sub	ebx,2
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-60]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vwall]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_153
	mov	ebx,[ebp-60]
	sub	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	eax,[ebp-56]
	sub	eax,1
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_amap]
	mov	eax,[eax]
	cmp	eax,[_vwall]
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-60]
	add	ebx,1
	mov	esi,_amap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-56]
	sub	esi,1
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amap]
	mov	esi,[esi]
	cmp	esi,[_vwall]
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-92]
	and	eax,esi
	and	eax,eax
	jz	_154
	mov	ebx,[ebp-12]
	mov	[ebp-40],ebx
	jmp	_155
_154
	mov	ebx,[ebp-16]
	mov	[ebp-40],ebx
_155
_153
_152
	call	_fmillisecs
	sub	eax,[ebp-84]
	cmp	eax,100
	jle	_156
	mov	[ebp-44],1
_156
	mov	eax,[ebp-16]
	cmp	[ebp-28],eax
	setz	al
	movzx	eax,al
	mov	[ebp-92],eax
	mov	ebx,[ebp-16]
	cmp	[ebp-32],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-16]
	cmp	[ebp-36],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	mov	ebx,[ebp-16]
	cmp	[ebp-40],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	mov	[ebp-92],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-92]
	and	eax,ebx
	and	eax,eax
	jz	_157
	mov	[ebp-88],0
_158
	sub	esp,8
	mov	[esp],1
	mov	ebx,[_vsizex]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-56],eax
	sub	esp,8
	mov	[esp],1
	mov	ebx,[_vsizey]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-60],eax
	mov	ebx,_amap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-60]
	add	ebx,[ebp-56]
	shl	ebx,byte 2
	add	ebx,[_amap]
	mov	ebx,[ebx]
	cmp	ebx,[_vflr]
	jnz	_159
	mov	[ebp-88],1
_159
	cmp	[ebp-88],1
	jnz	_158
_33
	jmp	_l_27checkdirection
_157
	cmp	[ebp-44],1
	jnz	_123
_30
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_amap	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vsizex	.dd	0
	.align	4
_vsizey	.dd	0
	.align	4
_vwall	.dd	0
	.align	4
_vflr	.dd	0
_34	.db	"Time to make map in millisecs :",0
_40	.db	"Straightness factor of 100",0
_46	.db	"Straightness factor of 66",0
_52	.db	"Straightness factor of 33",0
_58	.db	"Straightness factor of 0",0
_64	.db	"Last maze diluted 5 times",0
_70	.db	"Last maze diluted 5 more times",0
_71	.db	"Press any key to see more examples",0
_72	.db	"Time to make map in millisecs :",0
_73	.db	"A bigger square maze, press any key",0
_79	.db	"Time to make map in millisecs :",0
_80	.db	"A bigger rectangulr maze, press any key",0
_86	.db	"Time to make map in millisecs :",0
_87	.db	"A much bigger maze,on my computer it only takes about a half second, press any key",0
_93	.db	"Time to make map in millisecs :",0
_94	.db	"A hugh maze,on my computer it only takes about 2 seconds, press any key",0
_100	.db	"Thank you for looking at my maze generator.",0
_101	.db	"I hope it can be useful for you.",0
_102	.db	"John Chase",0
_103	.db	"Press any key to exit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

