
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	mov	eax,_aarray_all
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_aarray_all
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_aarray_all
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_aarray_all
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarray_all
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],1
	jmp	_42
_43
	mov	[ebp-8],1
	jmp	_44
_45
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	call	__bbReadInt
	mov	[ebx],eax
	add	[ebp-8],1
_44
	cmp	[ebp-8],9
	jle	_45
_4
	add	[ebp-4],1
_42
	cmp	[ebp-4],9
	jle	_43
_3
	sub	esp,4
	mov	eax,_aarray_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_aarray_x
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_aarray_x
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarray_x
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aarray_y
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_aarray_y
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_aarray_y
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarray_y
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aarray_b
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_aarray_b
	add	esi,12
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_aarray_b
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarray_b
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	[esp],_veing
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2label_anf
	sub	esp,8
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_veing
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	mov	[ebp-12],eax
	cmp	[ebp-12],49
	jnz	_59
	sub	esp,8
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_read_in_input
	call	_ffunc_into_arrays
_59
	cmp	[ebp-12],50
	jnz	_61
	sub	esp,8
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_read_in_datei
	call	_ffunc_into_arrays
_61
	cmp	[ebp-12],51
	jnz	_63
	sub	esp,8
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_show_array_x
_63
	cmp	[ebp-12],52
	jnz	_65
	sub	esp,8
	mov	eax,_66
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_show_array_y
_65
	cmp	[ebp-12],53
	jnz	_67
	sub	esp,8
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_show_array_b
_67
	cmp	[ebp-12],54
	jnz	_69
	sub	esp,8
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_show_array_all
_69
	cmp	[ebp-12],55
	jnz	_71
	sub	esp,8
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_ffunc_solve_sudoku
_71
	cmp	[ebp-12],56
	jnz	_73
	call	_fend
_73
	sub	esp,8
	mov	eax,_74
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_75
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_l_2label_anf
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
_ffunc_read_in_input
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
	sub	esp,8
	mov	eax,_77
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],1
	jmp	_78
_79
	mov	[ebp-8],1
	jmp	_80
_81
_l_5label_false
	sub	esp,44
	mov	eax,_82
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_83
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_84
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	setl	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-12],9
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_85
	jmp	_l_5label_false
_85
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	esi,[ebp-12]
	mov	[ebx],esi
	mov	[_vvar_read_in],1
	add	[ebp-8],1
_80
	cmp	[ebp-8],9
	jle	_81
_7
	add	[ebp-4],1
_78
	cmp	[ebp-4],9
	jle	_79
_6
	sub	esp,8
	mov	[esp],_veing
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_86
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
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
_ffunc_read_in_datei
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,_87
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_88
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_89
	sub	esp,8
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_l_8label_func2_end
_89
	mov	[ebp-12],1
	jmp	_91
_92
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],1
	jmp	_93
_94
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrToInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_96
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setl	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,_97
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-32]
	cmp	ebx,0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_95
	sub	esp,8
	mov	eax,_98
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_l_8label_func2_end
_95
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-20]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebx],eax
	mov	[_vvar_read_in],1
	add	[ebp-20],1
_93
	cmp	[ebp-20],9
	jle	_94
_10
	add	[ebp-12],1
_91
	cmp	[ebp-12],9
	jle	_92
_9
	sub	esp,8
	mov	eax,_99
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_100
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_101
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	[esp],_veing
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_102
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_8label_func2_end
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffunc_into_arrays
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
	mov	[ebp-4],1
	jmp	_103
_104
	mov	[ebp-8],1
	jmp	_105
_106
	mov	ebx,0
	mov	esi,_aarray_x
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aarray_x]
	mov	[esi],ebx
	add	[ebp-8],1
_105
	cmp	[ebp-8],9
	jle	_106
_13
	add	[ebp-4],1
_103
	cmp	[ebp-4],9
	jle	_104
_12
	mov	[ebp-12],1
	jmp	_107
_108
	mov	[ebp-8],1
	jmp	_109
_110
	mov	ebx,0
	mov	esi,_aarray_y
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_aarray_y]
	mov	[esi],ebx
	add	[ebp-8],1
_109
	cmp	[ebp-8],9
	jle	_110
_15
	add	[ebp-12],1
_107
	cmp	[ebp-12],9
	jle	_108
_14
	mov	[ebp-16],1
	jmp	_111
_112
	mov	[ebp-8],1
	jmp	_113
_114
	mov	ebx,0
	mov	esi,_aarray_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_aarray_b]
	mov	[esi],ebx
	add	[ebp-8],1
_113
	cmp	[ebp-8],9
	jle	_114
_17
	add	[ebp-16],1
_111
	cmp	[ebp-16],9
	jle	_112
_16
	mov	[ebp-4],1
	jmp	_115
_116
	mov	[ebp-12],1
	jmp	_117
_118
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	ebx,_aarray_x
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aarray_x]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_119
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	esi,_aarray_x
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aarray_x]
	mov	esi,1
	mov	[ebx],esi
	jmp	_120
_119
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	ebx,_aarray_x
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aarray_x]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	and	eax,ebx
	and	eax,eax
	jz	_121
	sub	esp,40
	mov	eax,_122
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_123
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_124
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[_vvar_f],1
_121
_120
	add	[ebp-12],1
_117
	cmp	[ebp-12],9
	jle	_118
_19
	add	[ebp-4],1
_115
	cmp	[ebp-4],9
	jle	_116
_18
	mov	[ebp-12],1
	jmp	_125
_126
	mov	[ebp-4],1
	jmp	_127
_128
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	ebx,_aarray_y
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aarray_y]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_129
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	esi,_aarray_y
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aarray_y]
	mov	esi,1
	mov	[ebx],esi
	jmp	_130
_129
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	ebx,_aarray_y
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aarray_y]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	and	eax,ebx
	and	eax,eax
	jz	_131
	sub	esp,40
	mov	eax,_132
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_133
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_134
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[_vvar_f],1
_131
_130
	add	[ebp-4],1
_127
	cmp	[ebp-4],9
	jle	_128
_21
	add	[ebp-12],1
_125
	cmp	[ebp-12],9
	jle	_126
_20
	mov	[ebp-4],1
	jmp	_135
_136
	mov	[ebp-12],1
	jmp	_137
_138
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	ebx,_aarray_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aarray_b]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_139
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	esi,_aarray_b
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aarray_b]
	mov	esi,1
	mov	[ebx],esi
	jmp	_140
_139
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-12]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	ebx,_aarray_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_aarray_b]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_141
	sub	esp,40
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_143
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-12]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_144
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	add	[_vvar_f],1
_141
_140
	add	[ebp-12],1
_137
	cmp	[ebp-12],9
	jle	_138
_23
	add	[ebp-4],1
_135
	cmp	[ebp-4],9
	jle	_136
_22
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
_ffunc_show_array_x
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_145
_146
	sub	esp,8
	mov	eax,_147
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],1
	jmp	_148
_149
	sub	esp,48
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_150
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_151
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_aarray_x
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aarray_x]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_152
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
	add	[ebp-8],1
_148
	cmp	[ebp-8],9
	jle	_149
_26
	add	[ebp-4],1
_145
	cmp	[ebp-4],9
	jle	_146
_25
	sub	esp,8
	mov	eax,_153
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffunc_show_array_y
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_154
_155
	sub	esp,8
	mov	eax,_156
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],1
	jmp	_157
_158
	sub	esp,48
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_159
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_160
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_aarray_y
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aarray_y]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_161
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
	add	[ebp-8],1
_157
	cmp	[ebp-8],9
	jle	_158
_29
	add	[ebp-4],1
_154
	cmp	[ebp-4],9
	jle	_155
_28
	sub	esp,8
	mov	eax,_162
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffunc_show_array_b
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_163
_164
	sub	esp,8
	mov	eax,_165
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-8],1
	jmp	_166
_167
	sub	esp,48
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_168
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_169
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_aarray_b
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aarray_b]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_170
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
	add	[ebp-8],1
_166
	cmp	[ebp-8],9
	jle	_167
_32
	add	[ebp-4],1
_163
	cmp	[ebp-4],9
	jle	_164
_31
	sub	esp,8
	mov	eax,_171
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffunc_show_array_all
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_172
_173
	sub	esp,8
	mov	eax,_174
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	cmp	[ebp-4],4
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-4],7
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_175
	sub	esp,8
	mov	eax,_176
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_177
_175
	sub	esp,8
	mov	eax,_178
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_177
	sub	esp,8
	mov	eax,_179
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	mov	[ebp-8],1
	jmp	_180
_181
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_182
	cmp	[ebp-8],3
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-8],6
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_183
	sub	esp,16
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_184
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
	jmp	_185
_183
	sub	esp,16
	mov	eax,_aarray_all
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	ebx,_aarray_all
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aarray_all]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_186
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
_185
	jmp	_187
_182
	cmp	[ebp-8],3
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp-8],6
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_188
	sub	esp,8
	mov	eax,_189
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
	jmp	_190
_188
	sub	esp,8
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwrite
_190
_187
	add	[ebp-8],1
_180
	cmp	[ebp-8],9
	jle	_181
_35
	add	[ebp-4],1
_172
	cmp	[ebp-4],9
	jle	_173
_34
	sub	esp,8
	mov	eax,_192
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_193
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffunc_solve_sudoku
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
_l_36anf_func8
	mov	[ebp-4],1
	jmp	_194
_195
	mov	[ebp-8],1
	jmp	_196
_197
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_198
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_ffunc_count_m
	mov	[ebp-12],eax
	cmp	[ebp-12],1
	jz	_199
	mov	[ebp-12],0
	jmp	_200
_199
	mov	[ebp-12],0
	mov	[ebp-16],1
	jmp	_201
_202
	mov	eax,_aarray_x
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aarray_x]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_aarray_y
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aarray_y]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	esi,_aarray_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_b]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_203
	jmp	_39
_203
	add	[ebp-16],1
_201
	cmp	[ebp-16],9
	jle	_202
_39
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	esi,[ebp-16]
	mov	[ebx],esi
	call	_ffunc_into_arrays
	jmp	_l_36anf_func8
_200
_198
	add	[ebp-8],1
_196
	cmp	[ebp-8],9
	jle	_197
_38
	add	[ebp-4],1
_194
	cmp	[ebp-4],9
	jle	_195
_37
	sub	esp,8
	mov	eax,_204
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_205
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_206
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_36_leave
_36_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffunc_count_m
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
	mov	[ebp-8],1
	jmp	_207
_208
	mov	eax,_aarray_x
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_aarray_x]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_aarray_y
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aarray_y]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_aarray_all
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	mov	esi,_aarray_all
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_all]
	mov	ebx,[ebx]
	mov	esi,_aarray_b
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aarray_b]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_209
	add	[ebp-4],1
_209
	add	[ebp-8],1
_207
	cmp	[ebp-8],9
	jle	_208
_41
	mov	eax,[ebp-4]
	jmp	_40_leave
	mov	eax,0
	jmp	_40_leave
_40_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_aarray_all	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_aarray_x	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aarray_y	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aarray_b	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vvar_f	.dd	0
	.align	4
_vvar_read_in	.dd	0
	.align	4
_veing	.dd	0
_46	.db	"nicht",0
	.align	4
_vvar_f_x	.dd	0
	.align	4
_vvar_f_y	.dd	0
	.align	4
_vvar_f_b	.dd	0
_47	.db	"Per Input einlesen      [1]",0
_48	.db	"Per .txt-Datei einlesen [2]",0
_49	.db	"Reihen-Array ausgeben   [3]",0
_50	.db	"Spalten-Array ausgeben  [4]",0
_51	.db	"Kästchen-Array ausgeben [5]",0
_52	.db	"Sudoku ausgeben         [6]",0
_53	.db	"Sudoku lösen            [7",0
_54	.db	"Beenden                 [8]",0
_55	.db	"",0
_56	.db	"Sudoku ",0
_57	.db	" vorhanden !",0
_58	.db	"",0
_60	.db	"Per Input einlesen !",0
_62	.db	"Per .txt-Datei einlesen !",0
_64	.db	"Reihen-Array ausgeben !",0
_66	.db	"Spalten-Array ausgeben !",0
_68	.db	"Kästchen-Array ausgeben !",0
_70	.db	"Sudoku ausgeben !",0
_72	.db	"Sudoku lösen !",0
_74	.db	"-------------------------------------------------------------------------------------",0
_75	.db	"-------------------------------------------------------------------------------------",0
_76	.db	"-------------------------------------------------------------------------------------",0
_77	.db	"",0
_82	.db	"Wert des Feldes ",0
_83	.db	"/",0
_84	.db	" :  ",0
_86	.db	"",0
_87	.db	"",0
_88	.db	"Welche Datei ?  ",0
_90	.db	"Datei existiert nicht !",0
_96	.db	"0",0
_97	.db	"9",0
_98	.db	"Fehler: Ziffer <0 oder >9 !",0
_99	.db	"",0
_100	.db	"Datei eingelesen",0
_101	.db	"",0
_102	.db	"",0
_122	.db	"Fehler in Reihe ",0
_123	.db	" durch die Zahl ",0
_124	.db	" !",0
_132	.db	"Fehler in Spalte ",0
_133	.db	" durch die Zahl ",0
_134	.db	" !",0
_142	.db	"Fehler im Kästchen ",0
_143	.db	" durch die Zahl ",0
_144	.db	" !",0
_147	.db	"",0
_150	.db	"/",0
_151	.db	": ",0
_152	.db	" | ",0
_153	.db	"",0
_156	.db	"",0
_159	.db	"/",0
_160	.db	": ",0
_161	.db	" | ",0
_162	.db	"",0
_165	.db	"",0
_168	.db	"/",0
_169	.db	": ",0
_170	.db	" | ",0
_171	.db	"",0
_174	.db	"",0
_176	.db	" +++ +++ +++ +++ +++ +++ +++ +++ +++ ",0
_178	.db	" --- --- --- --- --- --- --- --- --- ",0
_179	.db	"| ",0
_184	.db	" + ",0
_186	.db	" | ",0
_189	.db	"  | ",0
_191	.db	"  + ",0
_192	.db	"",0
_193	.db	" --- --- --- --- --- --- --- --- --- ",0
_204	.db	"",0
_205	.db	"Gelöst !",0
_206	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	3
	.dd	1
	.dd	3
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	3
	.dd	1
	.dd	3
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	3
	.dd	1
	.dd	3
	.dd	1
	.dd	4
	.dd	1
	.dd	4
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	6
	.dd	1
	.dd	6
	.dd	1
	.dd	4
	.dd	1
	.dd	4
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	6
	.dd	1
	.dd	6
	.dd	1
	.dd	4
	.dd	1
	.dd	4
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	6
	.dd	1
	.dd	6
	.dd	1
	.dd	7
	.dd	1
	.dd	7
	.dd	1
	.dd	7
	.dd	1
	.dd	8
	.dd	1
	.dd	8
	.dd	1
	.dd	8
	.dd	1
	.dd	9
	.dd	1
	.dd	9
	.dd	1
	.dd	9
	.dd	1
	.dd	7
	.dd	1
	.dd	7
	.dd	1
	.dd	7
	.dd	1
	.dd	8
	.dd	1
	.dd	8
	.dd	1
	.dd	8
	.dd	1
	.dd	9
	.dd	1
	.dd	9
	.dd	1
	.dd	9
	.dd	1
	.dd	7
	.dd	1
	.dd	7
	.dd	1
	.dd	7
	.dd	1
	.dd	8
	.dd	1
	.dd	8
	.dd	1
	.dd	8
	.dd	1
	.dd	9
	.dd	1
	.dd	9
	.dd	1
	.dd	9
	.dd	0

