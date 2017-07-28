
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,_akbd
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,23
	mov	esi,_akbd
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akbd
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,86
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,30
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,44
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,31
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,45
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,46
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,33
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,47
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,34
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,48
	mov	esi,10
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,35
	mov	esi,11
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,49
	mov	esi,12
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,50
	mov	esi,13
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,37
	mov	esi,14
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,51
	mov	esi,15
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,38
	mov	esi,16
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,52
	mov	esi,17
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	mov	ebx,53
	mov	esi,18
	shl	esi,byte 2
	add	esi,[_akbd]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akey_virgin
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,18
	mov	esi,_akey_virgin
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akey_virgin
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afreq
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,23
	mov	esi,_afreq
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afreq
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],22000
	mov	[ebp-12],0
	jmp	_31
_32
	mov	ebx,[ebp-8]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afreq]
	mov	[esi],ebx
	mov	ebx,1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1108344832
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,1194057728
	push	ebx
	fld	[esp]
	pop	ebx
	fdivrp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-8],esi
	add	[ebp-12],1
_31
	cmp	[ebp-12],23
	jle	_32
_3
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_afreq]
	mov	ebx,[ebx]
	add	ebx,50
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_afreq]
	mov	[esi],ebx
	mov	ebx,8
	shl	ebx,byte 2
	add	ebx,[_afreq]
	mov	ebx,[ebx]
	sub	ebx,750
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_afreq]
	mov	[esi],ebx
	mov	ebx,17
	shl	ebx,byte 2
	add	ebx,[_afreq]
	mov	ebx,[ebx]
	sub	ebx,1500
	mov	esi,17
	shl	esi,byte 2
	add	esi,[_afreq]
	mov	[esi],ebx
	mov	ebx,18
	shl	ebx,byte 2
	add	ebx,[_afreq]
	mov	ebx,[ebx]
	sub	ebx,2500
	mov	esi,18
	shl	esi,byte 2
	add	esi,[_afreq]
	mov	[esi],ebx
	mov	[_vmax_note],100000
	mov	[_vmax_trax],2
	sub	esp,4
	mov	eax,_atrack
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmax_trax]
	mov	esi,_atrack
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmax_note]
	mov	esi,_atrack
	add	esi,16
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_atrack
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atrack
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atrack_counter
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmax_trax]
	mov	esi,_atrack_counter
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atrack_counter
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atrack_octave
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmax_trax]
	mov	esi,_atrack_octave
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atrack_octave
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_33
_34
	mov	ebx,4
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_octave]
	mov	[esi],ebx
	add	[ebp-12],1
_33
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_34
_4
	jmp	_36
_35
	cmp	[ebp-16],0
	jnz	_37
	mov	[ebp-20],0
	jmp	_38
_39
	sub	esp,4
	mov	eax,59
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_40
	mov	[ebp-16],1
	mov	[ebp-24],0
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	mov	[ebp-12],0
	jmp	_41
_42
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-28]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-28]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-12],1
_41
	mov	ebx,[_vmax_note]
	cmp	[ebp-12],ebx
	jle	_42
_7
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jnz	_43
	mov	[ebp-36],0
	jmp	_44
_45
	mov	ebx,[_vmax_note]
	mov	[ebp-12],ebx
	jmp	_46
_47
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-36]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_48
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-36]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	add	ebx,3000
	mov	[_vsong_end_time],ebx
	jmp	_l_2getoutofhere
_48
	add	[ebp-12],-1
_46
	cmp	[ebp-12],0
	jge	_47
_9
	add	[ebp-36],1
_44
	mov	ebx,[_vmax_trax]
	cmp	[ebp-36],ebx
	jle	_45
_8
_l_2getoutofhere
_43
	mov	[ebp-12],0
	jmp	_49
_50
	mov	ebx,0
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
	add	[ebp-12],1
_49
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_50
_10
	call	_fmillisecs
	mov	[_vstart_time],eax
_40
	add	[ebp-20],1
_38
	mov	ebx,[_vmax_trax]
	cmp	[ebp-20],ebx
	jle	_39
_6
_37
	sub	esp,4
	mov	[esp],67
	call	_fkeyhit
	and	eax,eax
	jz	_51
	cmp	[ebp-16],1
	jnz	_52
	call	_fmillisecs
	sub	eax,[_vstart_time]
	cmp	eax,[_vsong_end_time]
	jle	_53
	call	_fmillisecs
	sub	eax,[_vstart_time]
	mov	[_vsong_end_time],eax
	mov	ebx,[ebp-28]
	mov	[ebp-32],ebx
_53
_52
	mov	[ebp-24],1
	mov	[ebp-16],0
	mov	[ebp-12],0
	jmp	_54
_55
	mov	ebx,0
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
	add	[ebp-12],1
_54
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_55
_11
	call	_fmillisecs
	mov	[_vstart_time],eax
	call	_fflushkeys
_51
	sub	esp,4
	mov	[esp],68
	call	_fkeyhit
	and	eax,eax
	jz	_56
	cmp	[ebp-16],1
	jnz	_57
	call	_fmillisecs
	sub	eax,[_vstart_time]
	cmp	eax,[_vsong_end_time]
	jle	_58
	call	_fmillisecs
	sub	eax,[_vstart_time]
	mov	[_vsong_end_time],eax
	mov	ebx,[ebp-28]
	mov	[ebp-32],ebx
_58
_57
	mov	[ebp-16],0
	mov	[ebp-24],0
	call	_fflushkeys
_56
	sub	esp,4
	mov	[esp],87
	call	_fkeyhit
	and	eax,eax
	jz	_59
	cmp	[ebp-16],0
	jnz	_60
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],260
	call	_flocate
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fload_song
	call	_fflushkeys
_60
_59
	sub	esp,4
	mov	[esp],88
	call	_fkeyhit
	and	eax,eax
	jz	_62
	cmp	[ebp-16],0
	jnz	_63
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],260
	call	_flocate
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fsave_song
	call	_fflushkeys
_63
_62
	mov	[ebp-12],0
	jmp	_65
_66
	sub	esp,4
	mov	eax,[ebp-12]
	add	eax,2
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_67
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_octave]
	mov	ebx,[ebx]
	shl	ebx,byte 1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_octave]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_octave]
	mov	ebx,[ebx]
	cmp	ebx,7
	jle	_68
	mov	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_octave]
	mov	[esi],ebx
_68
	cmp	[ebp-16],0
	jnz	_69
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
_69
_67
	add	[ebp-12],1
_65
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_66
_12
	mov	[ebp-12],0
	jmp	_70
_71
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_akbd]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeydown
	cmp	eax,1
	jnz	_72
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_akey_virgin]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_73
	cmp	[ebp-16],1
	jnz	_74
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	mov	esi,_atrack
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-28]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	call	_fmillisecs
	sub	eax,[_vstart_time]
	mov	[ebx],eax
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	mov	esi,_atrack
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-28]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	esi,1
	add	esi,[ebp-12]
	mov	[ebx],esi
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	cmp	ebx,[_vmax_note]
	jl	_75
	mov	[ebp-16],0
_75
_74
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fplaysound
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_afreq]
	mov	eax,[eax]
	mov	ecx,[ebp-28]
	shl	ecx,byte 2
	add	ecx,[_atrack_octave]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchannelpitch
	mov	ebx,eax
	mov	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_akey_virgin]
	mov	[esi],ebx
_73
	jmp	_76
_72
	mov	ebx,0
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_akey_virgin]
	mov	[esi],ebx
_76
	add	[ebp-12],1
_70
	cmp	[ebp-12],18
	jle	_71
_13
	cmp	[ebp-16],1
	jnz	_77
	mov	[ebp-12],0
	jmp	_78
_79
	mov	ebx,[ebp-28]
	cmp	[ebp-12],ebx
	jz	_80
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	mov	esi,_atrack
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	add	ebx,[_vstart_time]
	call	_fmillisecs
	cmp	eax,ebx
	jl	_81
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	cmp	ebx,[_vmax_note]
	jge	_82
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	mov	esi,_atrack
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_83
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fplaysound
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_atrack_counter]
	mov	eax,[eax]
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-12]
	mov	ebx,_atrack
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_atrack]
	mov	eax,[eax]
	sub	eax,1
	shl	eax,byte 2
	add	eax,[_afreq]
	mov	eax,[eax]
	mov	ecx,[ebp-12]
	shl	ecx,byte 2
	add	ecx,[_atrack_octave]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchannelpitch
	mov	ebx,eax
_83
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
_82
_81
_80
	add	[ebp-12],1
_78
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_79
_14
_77
	cmp	[ebp-24],1
	jnz	_84
	mov	[ebp-12],0
	jmp	_85
_86
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	mov	esi,_atrack
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	add	ebx,[_vstart_time]
	call	_fmillisecs
	cmp	eax,ebx
	jl	_87
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	cmp	ebx,[_vmax_note]
	jge	_88
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	mov	esi,_atrack
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-12]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_89
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fplaysound
	mov	[ebp-44],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_atrack_counter]
	mov	eax,[eax]
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-12]
	mov	ebx,_atrack
	add	ebx,16
	mov	ebx,[ebx]
	imul	ebx,0
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_atrack]
	mov	eax,[eax]
	sub	eax,1
	shl	eax,byte 2
	add	eax,[_afreq]
	mov	eax,[eax]
	mov	ecx,[ebp-12]
	shl	ecx,byte 2
	add	ecx,[_atrack_octave]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	[esp+4],eax
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchannelpitch
	mov	ebx,eax
_89
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_counter]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
_88
_87
	call	_fmillisecs
	mov	ebx,[_vsong_end_time]
	add	ebx,[_vstart_time]
	cmp	eax,ebx
	jl	_90
	mov	[ebp-36],0
	jmp	_91
_92
	mov	ebx,0
	mov	esi,[ebp-36]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
	add	[ebp-36],1
_91
	mov	ebx,[_vmax_trax]
	cmp	[ebp-36],ebx
	jle	_92
_16
	call	_fmillisecs
	mov	[_vstart_time],eax
	jmp	_15
_90
	add	[ebp-12],1
_85
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_86
_15
_84
	call	_fcls
	sub	esp,4
	call	_fmillisecs
	sub	eax,[_vstart_time]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1140457472
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-48],eax
	cmp	[ebp-16],1
	setz	al
	movzx	eax,al
	mov	[ebp-60],eax
	cmp	[ebp-24],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	or	eax,ebx
	mov	ebx,[ebp-48]
	and	eax,ebx
	mov	ebx,1
	and	eax,ebx
	mov	[ebp-60],eax
	cmp	[ebp-48],16
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_93
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],480
	mov	[esp+16],1
	mov	[esp+8],20
	mov	[esp+4],0
	mov	[esp],620
	call	_frect
_93
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_94
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
	mov	eax,_95
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],16
	mov	[esp],0
	call	_ftext
	cmp	[ebp-16],1
	jnz	_96
	sub	esp,56
	mov	eax,_97
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_98
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-64]
	sub	ebx,[_vstart_time]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_99
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],32
	mov	[esp],0
	call	_ftext
_96
	cmp	[ebp-24],1
	jnz	_100
	sub	esp,40
	mov	eax,_101
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-64]
	sub	ebx,[_vstart_time]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_102
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],32
	mov	[esp],0
	call	_ftext
_100
	sub	esp,32
	mov	eax,_103
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],48
	mov	[esp],0
	call	_ftext
	mov	[ebp-12],0
	jmp	_104
_105
	sub	esp,48
	mov	eax,_106
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_107
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_atrack_octave]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-12]
	shl	ebx,byte 4
	add	ebx,64
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-12],1
_104
	mov	ebx,[_vmax_trax]
	cmp	[ebp-12],ebx
	jle	_105
_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_108
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],184
	mov	[esp],0
	call	_ftext
	sub	esp,8
	lea	eax,[ebp-52]
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_109
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-56]
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_110
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-52]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],204
	mov	[esp],0
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-12],1
	jmp	_111
_112
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-52]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_114
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_113
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],9
	mov	[esp+4],201
	mov	eax,[ebp-12]
	sub	eax,1
	shl	eax,byte 3
	mov	[esp],eax
	call	_frect
_113
	add	[ebp-12],1
_111
	sub	esp,8
	lea	eax,[ebp-52]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-12],eax
	jle	_112
_18
	mov	[ebp-12],1
	jmp	_115
_116
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-56]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,_118
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_117
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],7
	mov	[esp+4],202
	mov	eax,[ebp-12]
	sub	eax,1
	shl	eax,byte 3
	mov	[esp],eax
	call	_frect
_117
	add	[ebp-12],1
_115
	sub	esp,8
	lea	eax,[ebp-56]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-12],eax
	jle	_116
_19
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-56]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],220
	mov	[esp],0
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,16
	mov	[esp+8],200
	mov	[esp+12],201
	mov	[esp+4],201
	mov	[esp],0
	call	_fline
	sub	esp,4
	mov	[esp],0
	call	_fflip
_36
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_35
_5
	call	_fend
	ret
_2_leave
	mov	[ebp-60],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-60]
	mov	[ebp-60],eax
	sub	esp,4
	mov	esi,[ebp-56]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	[ebp-60],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsave_song
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
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_120
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_119
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_121
_122
	mov	[ebp-12],0
	jmp	_123
_124
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_125
	jmp	_22
_125
	add	[ebp-12],1
_123
	mov	ebx,[_vmax_note]
	cmp	[ebp-12],ebx
	jle	_124
_22
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atrack_octave]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	[ebp-12],0
	jmp	_126
_127
	sub	esp,8
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwriteint
	sub	esp,8
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fwriteint
	add	[ebp-12],1
_126
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_127
_23
	add	[ebp-8],1
_121
	mov	ebx,[_vmax_trax]
	cmp	[ebp-8],ebx
	jle	_122
_21
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
_119
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fload_song
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
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_129
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-24],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffiletype
	mov	ebx,eax
	mov	eax,[ebp-28]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_128
	mov	[ebp-4],0
	jmp	_130
_131
	mov	[ebp-8],0
	jmp	_132
_133
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	esi,0
	mov	[ebx],esi
	add	[ebp-8],1
_132
	mov	ebx,[_vmax_note]
	cmp	[ebp-8],ebx
	jle	_133
_26
	add	[ebp-4],1
_130
	mov	ebx,[_vmax_trax]
	cmp	[ebp-4],ebx
	jle	_131
_25
	mov	[_vsong_end_time],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	mov	[ebp-4],0
	jmp	_134
_135
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atrack_octave]
	mov	[ebx],eax
	mov	[ebp-8],0
	jmp	_136
_137
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[ebx],eax
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[ebx],eax
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	cmp	ebx,[_vsong_end_time]
	jle	_138
	mov	ebx,_atrack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	mov	esi,_atrack
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atrack]
	mov	ebx,[ebx]
	mov	[_vsong_end_time],ebx
_138
	add	[ebp-8],1
_136
	mov	ebx,[ebp-16]
	cmp	[ebp-8],ebx
	jle	_137
_28
	add	[ebp-4],1
_134
	mov	ebx,[_vmax_trax]
	cmp	[ebp-4],ebx
	jle	_135
_27
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	mov	[ebp-4],0
	jmp	_139
_140
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atrack_counter]
	mov	[esi],ebx
	add	[ebp-4],1
_139
	mov	ebx,[_vmax_trax]
	cmp	[ebp-4],ebx
	jle	_140
_29
	call	_fmillisecs
	mov	[_vstart_time],eax
	mov	[ebp-20],0
	add	[_vsong_end_time],3000
_128
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_30	.db	"piano.wav",0
	.align	4
_akbd	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_akey_virgin	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afreq	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vstart_time	.dd	0
	.align	4
_vsong_end_time	.dd	0
	.align	4
_vmax_note	.dd	0
	.align	4
_vmax_trax	.dd	0
	.align	4
_atrack	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_atrack_counter	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_atrack_octave	.dd	0
	.dd	1
	.dd	1
	.dd	0
_61	.db	"Please enter Filename to load: ",0
_64	.db	"Please enter Filename to SAVE: ",0
_94	.db	"Press F1,F2,F3 to record Track, F9 to play, F10 to stop",0
_95	.db	"1,2,3 to select Octaves per Track, F11=Load, F12=Save Song",0
_97	.db	"Recording Track: ",0
_98	.db	" : ",0
_99	.db	" ms",0
_101	.db	"Currently Replaying all Tracks : ",0
_102	.db	" ms",0
_103	.db	"Active Track ",0
_106	.db	"Track ",0
_107	.db	" uses Octave ",0
_108	.db	"Piano Keys: (germ. layout)",0
_109	.db	" A S  F G H  K L ",0
_110	.db	"< Y XC V B NM ; :_",0
_114	.db	" ",0
_118	.db	" ",0
_120	.db	"",0
_129	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

