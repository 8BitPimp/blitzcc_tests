
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	mov	[_vkey_num],4
	sub	esp,4
	mov	eax,_aids
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_aids
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vkey_num]
	mov	esi,_aids
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aids
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_akeynames
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vkey_num]
	mov	esi,_akeynames
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeynames
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vmouse_factor_x],1065353216
	mov	[_vmouse_factor_y],1065353216
	mov	[_vmouse_factor_z],1065353216
	mov	[_vjoystick_factor_x],1065353216
	mov	[_vjoystick_factor_y],1065353216
	sub	esp,4
	mov	eax,_ajoystick_minmax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_ajoystick_minmax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ajoystick_minmax
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,-1113336054
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,-1085485875
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,1034147594
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,1061997773
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,-1113336054
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,-1085485875
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,1034147594
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	mov	ebx,1061997773
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_ajoystick_minmax]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ajoy_dir_list
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_ajoy_dir_list
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ajoy_dir_list
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_20
_21
	sub	esp,24
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwrite
	mov	[ebp-8],-1
	call	_fpreidsconfigure
	jmp	_25
_24
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fidsconfigure
	mov	[ebp-8],eax
_25
	cmp	[ebp-8],-1
	jz	_24
_4
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
_20
	mov	ebx,[_vkey_num]
	cmp	[ebp-4],ebx
	jle	_21
_3
	jmp	_27
_26
	mov	[ebp-4],0
	jmp	_28
_29
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fhit
	and	eax,eax
	jz	_30
	sub	esp,24
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_31
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
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fdown
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_30
	add	[ebp-4],1
_28
	mov	ebx,[_vkey_num]
	cmp	[ebp-4],ebx
	jle	_29
_6
	sub	esp,4
	mov	[esp],30
	call	_fdelay
_27
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_26
_5
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
_fsave_key_settings
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_32
	mov	eax,0
	jmp	_7_leave
_32
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmouse_factor_x]
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmouse_factor_y]
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmouse_factor_z]
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vjoystick_factor_x]
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vjoystick_factor_y]
	mov	[esp+4],ebx
	call	_fwritefloat
	mov	[ebp-8],0
	jmp	_33
_34
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwritefloat
	add	[ebp-8],1
_33
	cmp	[ebp-8],7
	jle	_34
_8
	mov	[ebp-8],0
	jmp	_35
_36
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_akeynames]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritestring
	add	[ebp-8],1
_35
	mov	ebx,[_vkey_num]
	cmp	[ebp-8],ebx
	jle	_36
_9
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fload_key_settings
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_37
	mov	eax,0
	jmp	_10_leave
_37
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmouse_factor_x],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmouse_factor_y],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vmouse_factor_z],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vjoystick_factor_x],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vjoystick_factor_y],eax
	mov	[ebp-8],0
	jmp	_38
_39
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	[ebx],eax
	add	[ebp-8],1
_38
	cmp	[ebp-8],7
	jle	_39
_11
	mov	[ebp-8],0
	jmp	_40
_41
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadint
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadstring
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-8],1
_40
	mov	ebx,[_vkey_num]
	cmp	[ebp-8],ebx
	jle	_41
_12
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fhit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_42
	sub	esp,4
	mov	eax,_aids
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_aids]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeyhit
	jmp	_13_leave
	jmp	_43
_42
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_44
	sub	esp,4
	mov	eax,_aids
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_aids]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmousehit
	jmp	_13_leave
	jmp	_45
_44
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_46
	sub	esp,8
	mov	eax,_aids
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_aids]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoyhit
	jmp	_13_leave
	jmp	_47
_46
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_48
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_49
	call	_fmousex
	sub	eax,[_vlast_mouse_x_hitn]
	mov	[ebp-4],eax
	cmp	[ebp-4],-20
	jge	_50
	call	_fmousex
	mov	[_vlast_mouse_x_hitn],eax
	mov	eax,1
	jmp	_13_leave
	jmp	_51
_50
	cmp	[ebp-4],20
	jle	_52
	call	_fmousex
	mov	[_vlast_mouse_x_hitn],eax
	mov	eax,0
	jmp	_13_leave
	jmp	_53
_52
	mov	eax,0
	jmp	_13_leave
_53
_51
	jmp	_54
_49
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_55
	call	_fmousex
	sub	eax,[_vlast_mouse_x_hitp]
	mov	[ebp-4],eax
	cmp	[ebp-4],20
	jle	_56
	call	_fmousex
	mov	[_vlast_mouse_x_hitp],eax
	mov	eax,1
	jmp	_13_leave
	jmp	_57
_56
	cmp	[ebp-4],-20
	jge	_58
	call	_fmousex
	mov	[_vlast_mouse_x_hitp],eax
	mov	eax,0
	jmp	_13_leave
	jmp	_59
_58
	mov	eax,0
	jmp	_13_leave
_59
_57
	jmp	_60
_55
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_61
	call	_fmousey
	sub	eax,[_vlast_mouse_y_hitn]
	mov	[ebp-4],eax
	cmp	[ebp-4],-20
	jge	_62
	call	_fmousey
	mov	[_vlast_mouse_y_hitn],eax
	mov	eax,1
	jmp	_13_leave
	jmp	_63
_62
	cmp	[ebp-4],20
	jle	_64
	call	_fmousey
	mov	[_vlast_mouse_y_hitn],eax
	mov	eax,0
	jmp	_13_leave
	jmp	_65
_64
	mov	eax,0
	jmp	_13_leave
_65
_63
	jmp	_66
_61
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_67
	call	_fmousey
	sub	eax,[_vlast_mouse_y_hitp]
	mov	[ebp-4],eax
	cmp	[ebp-4],20
	jle	_68
	call	_fmousey
	mov	[_vlast_mouse_y_hitp],eax
	mov	eax,1
	jmp	_13_leave
	jmp	_69
_68
	cmp	[ebp-4],-20
	jge	_70
	call	_fmousey
	mov	[_vlast_mouse_y_hitp],eax
	mov	eax,0
	jmp	_13_leave
	jmp	_71
_70
	mov	eax,0
	jmp	_13_leave
_71
_69
	jmp	_72
_67
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_73
	call	_fmousez
	sub	eax,[_vlast_mouse_z_neg]
	mov	[ebp-4],eax
	call	_fmousez
	mov	[_vlast_mouse_z_neg],eax
	cmp	[ebp-4],0
	jge	_74
	mov	eax,1
	jmp	_13_leave
	jmp	_75
_74
	mov	eax,0
	jmp	_13_leave
_75
	jmp	_76
_73
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_77
	call	_fmousez
	sub	eax,[_vlast_mouse_z_pos]
	mov	[ebp-4],eax
	call	_fmousez
	mov	[_vlast_mouse_z_pos],eax
	cmp	[ebp-4],0
	jle	_78
	mov	eax,1
	jmp	_13_leave
	jmp	_79
_78
	mov	eax,0
	jmp	_13_leave
_79
	jmp	_80
_77
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_81
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	jnz	_82
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_83
	mov	eax,0
	jmp	_13_leave
	jmp	_84
_83
	mov	ebx,1
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,1
	jmp	_13_leave
_84
	jmp	_85
_82
	mov	ebx,0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,0
	jmp	_13_leave
_85
	jmp	_86
_81
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_87
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	jnz	_88
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_89
	mov	eax,0
	jmp	_13_leave
	jmp	_90
_89
	mov	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,1
	jmp	_13_leave
_90
	jmp	_91
_88
	mov	ebx,0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,0
	jmp	_13_leave
_91
	jmp	_92
_87
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,8
	jnz	_93
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	jnz	_94
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_95
	mov	eax,0
	jmp	_13_leave
	jmp	_96
_95
	mov	ebx,1
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,1
	jmp	_13_leave
_96
	jmp	_97
_94
	mov	ebx,0
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,0
	jmp	_13_leave
_97
	jmp	_98
_93
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,9
	jnz	_99
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	jnz	_100
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_101
	mov	eax,0
	jmp	_13_leave
	jmp	_102
_101
	mov	ebx,1
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,1
	jmp	_13_leave
_102
	jmp	_103
_100
	mov	ebx,0
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
	mov	eax,0
	jmp	_13_leave
_103
_99
_98
_92
_86
_80
_76
_72
_66
_60
_54
_48
_47
_45
_43
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
_fdown
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_104
	sub	esp,4
	mov	eax,_aids
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_aids]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fkeydown
	push	eax
	fild	[esp]
	pop	eax
	jmp	_14_leave
	jmp	_105
_104
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_106
	sub	esp,4
	mov	eax,_aids
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_aids]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmousedown
	push	eax
	fild	[esp]
	pop	eax
	jmp	_14_leave
	jmp	_107
_106
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_108
	sub	esp,8
	mov	eax,_aids
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+20]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_aids]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoydown
	push	eax
	fild	[esp]
	pop	eax
	jmp	_14_leave
	jmp	_109
_108
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_110
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_111
	call	_fmousex
	sub	eax,[_vlast_mouse_x_neg]
	mov	[ebp-4],eax
	call	_fmousex
	mov	[_vlast_mouse_x_neg],eax
	cmp	[ebp-4],0
	jge	_112
	mov	ebx,[ebp-4]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vmouse_factor_x]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	jmp	_14_leave
	jmp	_113
_112
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_113
	jmp	_114
_111
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_115
	call	_fmousex
	sub	eax,[_vlast_mouse_x_pos]
	mov	[ebp-4],eax
	call	_fmousex
	mov	[_vlast_mouse_x_pos],eax
	cmp	[ebp-4],0
	jle	_116
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vmouse_factor_x]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	jmp	_14_leave
	jmp	_117
_116
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_117
	jmp	_118
_115
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_119
	call	_fmousey
	sub	eax,[_vlast_mouse_y_neg]
	mov	[ebp-4],eax
	call	_fmousey
	mov	[_vlast_mouse_y_neg],eax
	cmp	[ebp-4],0
	jge	_120
	mov	ebx,[ebp-4]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vmouse_factor_y]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	jmp	_14_leave
	jmp	_121
_120
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_121
	jmp	_122
_119
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_123
	call	_fmousey
	sub	eax,[_vlast_mouse_y_pos]
	mov	[ebp-4],eax
	call	_fmousey
	mov	[_vlast_mouse_y_pos],eax
	cmp	[ebp-4],0
	jle	_124
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vmouse_factor_y]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	jmp	_14_leave
	jmp	_125
_124
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_125
	jmp	_126
_123
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_127
	call	_fmousez
	sub	eax,[_vlast_mouse_z_neg]
	mov	[ebp-4],eax
	call	_fmousez
	mov	[_vlast_mouse_z_neg],eax
	cmp	[ebp-4],0
	jge	_128
	mov	ebx,[ebp-4]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vmouse_factor_z]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	jmp	_14_leave
	jmp	_129
_128
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_129
	jmp	_130
_127
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_131
	call	_fmousez
	sub	eax,[_vlast_mouse_z_pos]
	mov	[ebp-4],eax
	call	_fmousez
	mov	[_vlast_mouse_z_pos],eax
	cmp	[ebp-4],0
	jle	_132
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vmouse_factor_z]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	jmp	_14_leave
	jmp	_133
_132
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_133
	jmp	_134
_131
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_135
	sub	esp,4
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_136
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
	jmp	_137
_136
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_138
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vjoystick_factor_x]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1
	shl	edi,byte 2
	add	edi,[_ajoystick_minmax]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	jmp	_14_leave
	jmp	_139
_138
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_139
_137
	jmp	_140
_135
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_141
	sub	esp,4
	mov	[esp],0
	call	_fjoyx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_142
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
	jmp	_143
_142
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_144
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vjoystick_factor_x]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,3
	shl	edi,byte 2
	add	edi,[_ajoystick_minmax]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	jmp	_14_leave
	jmp	_145
_144
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_145
_143
	jmp	_146
_141
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,8
	jnz	_147
	sub	esp,4
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_148
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
	jmp	_149
_148
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_150
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vjoystick_factor_y]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,5
	shl	edi,byte 2
	add	edi,[_ajoystick_minmax]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	jmp	_14_leave
	jmp	_151
_150
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_151
_149
	jmp	_152
_147
	mov	ebx,_aids
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aids]
	mov	ebx,[ebx]
	cmp	ebx,9
	jnz	_153
	sub	esp,4
	mov	[esp],0
	call	_fjoyy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_154
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
	jmp	_155
_154
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_156
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vjoystick_factor_y]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_ajoystick_minmax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,7
	shl	edi,byte 2
	add	edi,[_ajoystick_minmax]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fdivp	st(1)
	jmp	_14_leave
	jmp	_157
_156
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_157
_155
_153
_152
_146
_140
_134
_130
_126
_122
_118
_114
_110
_109
_107
_105
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpreidsconfigure
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	call	_fflushkeys
	call	_fflushmouse
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	call	_fmousex
	mov	[_vmx_keys],eax
	call	_fmousey
	mov	[_vmy_keys],eax
	call	_fmousez
	mov	[_vmz_keys],eax
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	setz	al
	movzx	eax,al
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	setz	al
	movzx	eax,al
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	[ebx],eax
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fidsconfigure
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	jz	_158
	mov	ebx,0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
_158
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	jz	_159
	mov	ebx,0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
_159
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	jz	_160
	mov	ebx,0
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
_160
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	jz	_161
	mov	ebx,0
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_ajoy_dir_list]
	mov	[esi],ebx
_161
	call	_fmousex
	sub	eax,[_vmx_keys]
	cmp	eax,-50
	jge	_162
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_163
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_164
_162
	call	_fmousex
	sub	eax,[_vmx_keys]
	cmp	eax,50
	jle	_165
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_166
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_167
_165
	call	_fmousey
	sub	eax,[_vmy_keys]
	cmp	eax,-50
	jge	_168
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
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
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_170
_168
	call	_fmousey
	sub	eax,[_vmy_keys]
	cmp	eax,50
	jle	_171
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_172
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_173
_171
	call	_fmousez
	sub	eax,[_vmz_keys]
	cmp	eax,0
	jge	_174
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_175
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_176
_174
	call	_fmousez
	sub	eax,[_vmz_keys]
	cmp	eax,0
	jle	_177
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_178
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_179
_177
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,-1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_180
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,6
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_181
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_182
_180
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_183
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,7
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
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
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_185
_183
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,-1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_186
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_187
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
	jmp	_188
_186
	sub	esp,4
	mov	[esp],0
	call	_fjoyydir
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_ajoy_dir_list]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_189
	mov	ebx,3
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_190
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_16_leave
_189
_188
_185
_182
_179
_176
_173
_170
_167
_164
	mov	[ebp-4],0
	jmp	_191
_192
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fkeyhit
	and	eax,eax
	jz	_193
	mov	ebx,0
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	call	_fgetkey
	mov	[ebp-8],eax
	cmp	[ebp-4],1
	jnz	_194
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_195
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_196
_194
	cmp	[ebp-4],15
	jnz	_197
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_198
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_199
_197
	cmp	[ebp-4],58
	jnz	_200
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_201
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_202
_200
	cmp	[ebp-4],42
	jnz	_203
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_204
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_205
_203
	cmp	[ebp-4],29
	jnz	_206
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_207
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_208
_206
	cmp	[ebp-4],219
	jnz	_209
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_210
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_211
_209
	cmp	[ebp-4],56
	jnz	_212
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_213
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_214
_212
	cmp	[ebp-4],57
	jnz	_215
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_216
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_217
_215
	cmp	[ebp-4],184
	jnz	_218
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_219
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_220
_218
	cmp	[ebp-4],220
	jnz	_221
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_222
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_223
_221
	cmp	[ebp-4],221
	jnz	_224
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_225
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_226
_224
	cmp	[ebp-4],157
	jnz	_227
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_228
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_229
_227
	cmp	[ebp-4],54
	jnz	_230
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_231
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_232
_230
	cmp	[ebp-4],28
	jnz	_233
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_234
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_235
_233
	cmp	[ebp-4],14
	jnz	_236
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_237
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_238
_236
	cmp	[ebp-4],59
	jnz	_239
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_240
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_241
_239
	cmp	[ebp-4],60
	jnz	_242
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_243
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_244
_242
	cmp	[ebp-4],61
	jnz	_245
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_246
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_247
_245
	cmp	[ebp-4],62
	jnz	_248
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_249
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_250
_248
	cmp	[ebp-4],63
	jnz	_251
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_252
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_253
_251
	cmp	[ebp-4],64
	jnz	_254
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_255
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_256
_254
	cmp	[ebp-4],65
	jnz	_257
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_258
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_259
_257
	cmp	[ebp-4],66
	jnz	_260
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_261
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_262
_260
	cmp	[ebp-4],67
	jnz	_263
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_264
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_265
_263
	cmp	[ebp-4],68
	jnz	_266
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_267
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_268
_266
	cmp	[ebp-4],87
	jnz	_269
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_270
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_271
_269
	cmp	[ebp-4],88
	jnz	_272
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_273
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_274
_272
	cmp	[ebp-4],183
	jnz	_275
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_276
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_277
_275
	cmp	[ebp-4],70
	jnz	_278
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_279
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_280
_278
	cmp	[ebp-4],197
	jnz	_281
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_282
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_283
_281
	cmp	[ebp-4],210
	jnz	_284
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_285
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_286
_284
	cmp	[ebp-4],199
	jnz	_287
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_288
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_289
_287
	cmp	[ebp-4],201
	jnz	_290
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_291
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_292
_290
	cmp	[ebp-4],211
	jnz	_293
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_294
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_295
_293
	cmp	[ebp-4],207
	jnz	_296
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_297
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_298
_296
	cmp	[ebp-4],209
	jnz	_299
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_300
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_301
_299
	cmp	[ebp-4],200
	jnz	_302
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_303
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_304
_302
	cmp	[ebp-4],203
	jnz	_305
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_306
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_307
_305
	cmp	[ebp-4],208
	jnz	_308
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_309
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_310
_308
	cmp	[ebp-4],205
	jnz	_311
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_312
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_313
_311
	cmp	[ebp-4],69
	jnz	_314
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_315
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_316
_314
	cmp	[ebp-4],181
	jnz	_317
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_318
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_319
_317
	cmp	[ebp-4],55
	jnz	_320
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_321
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_322
_320
	cmp	[ebp-4],71
	jnz	_323
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_324
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_325
_323
	cmp	[ebp-4],72
	jnz	_326
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_327
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_328
_326
	cmp	[ebp-4],73
	jnz	_329
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_330
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_331
_329
	cmp	[ebp-4],74
	jnz	_332
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_333
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_334
_332
	cmp	[ebp-4],75
	jnz	_335
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_336
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_337
_335
	cmp	[ebp-4],76
	jnz	_338
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_339
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_340
_338
	cmp	[ebp-4],77
	jnz	_341
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_342
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_343
_341
	cmp	[ebp-4],78
	jnz	_344
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_345
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_346
_344
	cmp	[ebp-4],79
	jnz	_347
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_348
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_349
_347
	cmp	[ebp-4],80
	jnz	_350
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_351
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_352
_350
	cmp	[ebp-4],81
	jnz	_353
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_354
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_355
_353
	cmp	[ebp-4],82
	jnz	_356
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_357
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_358
_356
	cmp	[ebp-4],83
	jnz	_359
	cmp	[ebp-8],0
	jnz	_360
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_361
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_362
_360
	sub	esp,20
	mov	eax,_363
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_akeynames]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_362
	jmp	_364
_359
	cmp	[ebp-4],156
	jnz	_365
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_366
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_367
_365
	cmp	[ebp-8],223
	jle	_368
	sub	[ebp-8],32
_368
	cmp	[ebp-8],0
	jnz	_369
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_370
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_371
_369
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
_371
_367
_364
_358
_355
_352
_349
_346
_343
_340
_337
_334
_331
_328
_325
_322
_319
_316
_313
_310
_307
_304
_301
_298
_295
_292
_289
_286
_283
_280
_277
_274
_271
_268
_265
_262
_259
_256
_253
_250
_247
_244
_241
_238
_235
_232
_229
_226
_223
_220
_217
_214
_211
_208
_205
_202
_199
_196
	mov	eax,0
	jmp	_16_leave
_193
	add	[ebp-4],1
_191
	cmp	[ebp-4],255
	jle	_192
_17
	mov	[ebp-4],0
	jmp	_372
_373
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fjoyhit
	and	eax,eax
	jz	_374
	mov	ebx,2
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	sub	esp,20
	mov	eax,_375
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_akeynames]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	eax,0
	jmp	_16_leave
_374
	add	[ebp-4],1
_372
	cmp	[ebp-4],15
	jle	_373
_18
	mov	[ebp-4],1
	jmp	_376
_377
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmousehit
	and	eax,eax
	jz	_378
	mov	ebx,1
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,_aids
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_aids]
	mov	[esi],ebx
	cmp	[ebp-4],1
	jnz	_379
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_380
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_381
_379
	cmp	[ebp-4],2
	jnz	_382
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_383
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_384
_382
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_akeynames]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_385
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
_384
_381
	mov	eax,0
	jmp	_16_leave
_378
	add	[ebp-4],1
_376
	cmp	[ebp-4],3
	jle	_377
_19
	mov	eax,-1
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
	.align	4
_vkey_num	.dd	0
	.align	4
_aids	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_akeynames	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_vmx_keys	.dd	0
	.align	4
_vmy_keys	.dd	0
	.align	4
_vmz_keys	.dd	0
	.align	4
_vlast_mouse_x_pos	.dd	0
	.align	4
_vlast_mouse_y_pos	.dd	0
	.align	4
_vlast_mouse_z_pos	.dd	0
	.align	4
_vlast_mouse_x_neg	.dd	0
	.align	4
_vlast_mouse_y_neg	.dd	0
	.align	4
_vlast_mouse_z_neg	.dd	0
	.align	4
_vlast_mouse_x_hitp	.dd	0
	.align	4
_vlast_mouse_y_hitp	.dd	0
	.align	4
_vlast_mouse_x_hitn	.dd	0
	.align	4
_vlast_mouse_y_hitn	.dd	0
	.align	4
_vmouse_factor_x	.dd	0
	.align	4
_vmouse_factor_y	.dd	0
	.align	4
_vmouse_factor_z	.dd	0
	.align	4
_vjoystick_factor_x	.dd	0
	.align	4
_vjoystick_factor_y	.dd	0
	.align	4
_ajoystick_minmax	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ajoy_dir_list	.dd	0
	.dd	1
	.dd	1
	.dd	0
_22	.db	"Key ",0
_23	.db	" = ",0
_31	.db	" ",0
_163	.db	"Move Mouse Left",0
_166	.db	"Move Mouse Right",0
_169	.db	"Move Mouse Up",0
_172	.db	"Move Mouse Down",0
_175	.db	"Roll Whell Backward",0
_178	.db	"Roll Whell Forward",0
_181	.db	"Joystick Left",0
_184	.db	"Joystick Right",0
_187	.db	"Joystick Up",0
_190	.db	"Joystick Down",0
_195	.db	"Escape",0
_198	.db	"Tab",0
_201	.db	"Caps Lock",0
_204	.db	"Left Shift",0
_207	.db	"Left Control",0
_210	.db	"Left Start",0
_213	.db	"Left Alt",0
_216	.db	"Space",0
_219	.db	"Right Alt Gr",0
_222	.db	"Right Start",0
_225	.db	"Menu Button",0
_228	.db	"Right Control",0
_231	.db	"Right Shift",0
_234	.db	"Enter",0
_237	.db	"Backspace",0
_240	.db	"F1",0
_243	.db	"F2",0
_246	.db	"F3",0
_249	.db	"F4",0
_252	.db	"F5",0
_255	.db	"F6",0
_258	.db	"F7",0
_261	.db	"F8",0
_264	.db	"F9",0
_267	.db	"F10",0
_270	.db	"F11",0
_273	.db	"F12",0
_276	.db	"Print Screen",0
_279	.db	"Pause",0
_282	.db	"Num Lock",0
_285	.db	"Insert",0
_288	.db	"Home",0
_291	.db	"Page Up",0
_294	.db	"Delete",0
_297	.db	"End",0
_300	.db	"Page Down",0
_303	.db	"Arrow Up",0
_306	.db	"Arrow Left",0
_309	.db	"Arrow Down",0
_312	.db	"Arrow Right",0
_315	.db	"Num Lock",0
_318	.db	"Numpad /",0
_321	.db	"Numpad *",0
_324	.db	"Numpad 7",0
_327	.db	"Numpad 8",0
_330	.db	"Numpad 9",0
_333	.db	"Numpad -",0
_336	.db	"Numpad 4",0
_339	.db	"Numpad 5",0
_342	.db	"Numpad 6",0
_345	.db	"Munpad +",0
_348	.db	"Numpad 1",0
_351	.db	"Numpad 2",0
_354	.db	"Numpad 3",0
_357	.db	"Numpad 0",0
_361	.db	"Numpad .",0
_363	.db	"Numpad ",0
_366	.db	"Numpad Enter",0
_370	.db	"Unknown Key",0
_375	.db	"Joystick Button ",0
_380	.db	"Left Mouse Key",0
_383	.db	"Right Mouse Key",0
_385	.db	"Middle Mouse Key",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

