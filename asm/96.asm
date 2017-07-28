
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,104
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
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	sub	esp,8
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2re
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_42
	jmp	_l_2re
_42
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	cmp	eax,0
	jg	_44
	jmp	_l_2re
_44
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_am_
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_am_
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_am_
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_am_st
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_am_st
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_am_st
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_am_st]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_am_st]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_am_st]
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,_ax1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ax1
	add	esi,12
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_ax1
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ay1
	add	esi,12
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_ay1
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_az1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_az1
	add	esi,12
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_az1
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_az1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ax3
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ax3
	add	esi,12
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_ax3
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax3
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay3
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ay3
	add	esi,12
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_ay3
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay3
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_az3
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_az3
	add	esi,12
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,_az3
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_az3
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_af1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_af1
	add	esi,12
	mov	[esi],ebx
	mov	ebx,12
	mov	esi,_af1
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_af2
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_af2
	add	esi,12
	mov	[esi],ebx
	mov	ebx,12
	mov	esi,_af2
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af2
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_af3
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_af3
	add	esi,12
	mov	[esi],ebx
	mov	ebx,12
	mov	esi,_af3
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af3
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ax_o
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ax_o
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax_o
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay_o
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ay_o
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay_o
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_az_o
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_az_o
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_az_o
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ap_x1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ap_x1
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ap_x1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ap_y1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ap_y1
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ap_y1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ap_z1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ap_z1
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ap_z1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ap_z3
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_ap_z3
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ap_z3
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atm0
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_atm0
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atm0
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atm0
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atm1
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_atm1
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atm1
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atm1
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atme
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,2
	mov	esi,_atme
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atme
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atme
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atmr
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_atmr
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atmr
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atmr
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atmr
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atmo
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-12]
	mov	esi,_atmo
	add	esi,12
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atmo
	add	esi,16
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,_atmo
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atmo
	mov	[esp],eax
	call	__bbDimArray
	mov	ebx,1065353216
	mov	esi,_atme
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atme]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,_atme
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_atme]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,_atme
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_atme]
	mov	[esi],ebx
	mov	[ebp-16],0
	jmp	_49
_50
	mov	[ebp-20],0
	jmp	_51
_52
	mov	ebx,_atme
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atme]
	mov	ebx,[ebx]
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	[esi],ebx
	mov	ebx,_atme
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atme]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	add	[ebp-20],1
_51
	cmp	[ebp-20],2
	jle	_52
_4
	add	[ebp-16],1
_49
	cmp	[ebp-16],2
	jle	_50
_3
	mov	[ebp-24],0
	jmp	_53
_54
	mov	[ebp-16],0
	jmp	_55
_56
	mov	[ebp-20],0
	jmp	_57
_58
	mov	ebx,_atmr
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-24]
	mov	esi,_atmr
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmr]
	mov	esi,_atme
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atme]
	mov	esi,[esi]
	mov	[ebx],esi
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-24]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	esi,_atme
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atme]
	mov	esi,[esi]
	mov	[ebx],esi
	add	[ebp-20],1
_57
	cmp	[ebp-20],2
	jle	_58
_7
	add	[ebp-16],1
_55
	cmp	[ebp-16],2
	jle	_56
_6
	add	[ebp-24],1
_53
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	jle	_54
_5
	mov	[ebp-24],0
	jmp	_59
_60
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-28],eax
	mov	[ebp-32],0
	jmp	_61
_62
	call	__bbReadInt
	mov	ebx,_ax1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax1]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_ay1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay1]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_az1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_az1]
	mov	[ebx],eax
	add	[ebp-32],1
_61
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jle	_62
_9
	sub	esp,4
	mov	eax,__DATA
	add	eax,224
	mov	[esp],eax
	call	__bbRestore
	call	__bbReadInt
	mov	[ebp-36],eax
	mov	[ebp-32],0
	jmp	_63
_64
	call	__bbReadInt
	mov	ebx,_af1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_af1]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_af2
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_af2]
	mov	[ebx],eax
	call	__bbReadInt
	mov	ebx,_af3
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_af3]
	mov	[ebx],eax
	add	[ebp-32],1
_63
	mov	ebx,[ebp-36]
	cmp	[ebp-32],ebx
	jle	_64
_10
	add	[ebp-24],1
_59
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	jle	_60
_8
	mov	[ebp-32],1
	jmp	_65
_66
	sub	esp,8
	mov	[esp],1128792064
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,1165623296
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ap_x1]
	mov	[ebx],esi
	sub	esp,8
	mov	[esp],1128792064
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	esi,1165623296
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ap_y1]
	mov	[ebx],esi
	mov	ebx,-969179136
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ap_z1]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_ap_z3]
	mov	[esi],ebx
	add	[ebp-32],1
_65
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jle	_66
_11
	mov	[ebp-32],1
	jmp	_67
_68
	sub	esp,8
	mov	[esp],1157234688
	mov	[esp+4],0
	call	_frnd
	mov	ebx,981668463
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ax_o]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1133903872
	mov	[esp+4],0
	call	_frnd
	mov	ebx,981668463
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_ay_o]
	mov	[ebx],eax
	add	[ebp-32],1
_67
	mov	ebx,[ebp-12]
	cmp	[ebp-32],ebx
	jle	_68
_12
	mov	[ebp-24],0
	jmp	_69
_70
	mov	[ebp-32],0
	jmp	_71
_72
	mov	ebx,_ax1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ax1]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,_ay1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_ay1]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	ebx,_az1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_az1]
	mov	ebx,[ebx]
	mov	[ebp-48],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 0
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 0
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-56],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-60],ebx
	add	[ebp-32],1
_71
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jle	_72
_14
	add	[ebp-24],1
_69
	mov	ebx,[ebp-12]
	cmp	[ebp-24],ebx
	jle	_70
_13
_73
	call	_fmillisecs
	mov	[ebp-64],eax
	call	_fmillisecs
	mov	[ebp-68],eax
	call	_fcls
	call	_finvert_matrix
	mov	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_ap_x1]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-72],ebx
	mov	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_ap_y1]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-76]
	shl	ebx,byte 2
	add	ebx,[_ap_z1]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	sub	esp,4
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fsteuerung_m
	call	_fmillisecs
	mov	[ebp-68],eax
	call	_frotate
	call	_fmillisecs
	mov	[ebp-88],eax
	sub	esp,12
	mov	[esp+4],153
	mov	[esp+8],153
	mov	[esp],153
	call	_fcolor
	call	_fmillisecs
	mov	[ebp-92],eax
	call	_fzeichne_object
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-88]
	sub	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],10
	call	_ftext
	sub	esp,40
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	[ebp-104],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-104]
	sub	ebx,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],55
	mov	[esp],10
	call	_ftext
	sub	esp,40
	mov	eax,_76
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	[ebp-104],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-104]
	sub	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],70
	mov	[esp],10
	call	_ftext
	call	_fmillisecs
	sub	eax,[ebp-64]
	mov	[ebp-96],eax
	sub	esp,32
	mov	eax,1000
	mov	[ebp-100],eax
	mov	eax,ebx
	call	_fmillisecs
	mov	ebx,eax
	mov	eax,[ebp-100]
	sub	ebx,[ebp-64]
	mov	ecx,ebx
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,_78
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],85
	mov	[esp],10
	call	_ftext
	mov	[ebp-32],0
	jmp	_79
_80
	sub	esp,32
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_am_st]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_am_]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-32]
	imul	ebx,15
	add	ebx,115
	mov	[esp+4],ebx
	mov	[esp],10
	call	_ftext
	add	[ebp-32],1
_79
	cmp	[ebp-32],3
	jle	_80
_16
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_73
_15
	call	_fend
_l_2dat01
_l_2dat02
	ret
_2_leave
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[ebp-100],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-100]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frotate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,116
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
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	ebx,0
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_am_]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_am_]
	mov	[esi],ebx
	mov	[ebp-4],-1
	mov	[ebp-8],0
	jmp	_81
_82
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmake_rot_mat
	mov	[ebp-16],0
	jmp	_83
_84
	mov	[ebp-20],0
	jmp	_85
_86
	mov	ebx,0
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-20]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	[esi],ebx
	add	[ebp-20],1
_85
	cmp	[ebp-20],2
	jle	_86
_20
	add	[ebp-16],1
_83
	cmp	[ebp-16],2
	jle	_84
_19
	mov	[ebp-16],0
	jmp	_87
_88
	mov	[ebp-24],0
	jmp	_89
_90
	mov	[ebp-20],0
	jmp	_91
_92
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp-8]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-8]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp-20]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,_atm0
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atm0]
	mov	[ebx],esi
	add	[ebp-20],1
_91
	cmp	[ebp-20],2
	jle	_92
_23
	add	[ebp-24],1
_89
	cmp	[ebp-24],2
	jle	_90
_22
	add	[ebp-16],1
_87
	cmp	[ebp-16],2
	jle	_88
_21
	mov	[ebp-16],0
	jmp	_93
_94
	mov	[ebp-24],0
	jmp	_95
_96
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	mov	[ebx],esi
	add	[ebp-24],1
_95
	cmp	[ebp-24],2
	jle	_96
_25
	add	[ebp-16],1
_93
	cmp	[ebp-16],2
	jle	_94
_24
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ap_x1]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ap_y1]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ap_z1]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-28]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	cmp	[ebp-52],-2000
	setl	al
	movzx	eax,al
	mov	[ebp-116],eax
	cmp	[ebp-52],-120000
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-116]
	and	eax,ebx
	and	eax,eax
	jz	_97
	add	[ebp-4],1
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_am_]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_am_]
	mov	[esi],ebx
	mov	[ebp-56],1
	jmp	_98
_99
	mov	ebx,_ax1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-56]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ax1]
	mov	ebx,[ebx]
	mov	[ebp-64],ebx
	mov	ebx,_ay1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-56]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ay1]
	mov	ebx,[ebx]
	mov	[ebp-68],ebx
	mov	ebx,_az1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-56]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_az1]
	mov	ebx,[ebx]
	mov	[ebp-72],ebx
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 0
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 0
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,_atm0
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm0]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-68]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-72]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,_atm0
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm0]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-28]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-76],ebx
	mov	ebx,[ebp-80]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-80],ebx
	mov	ebx,[ebp-84]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-84],ebx
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	imul	edi,0
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-88],ebx
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 0
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 0
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-92],ebx
	mov	ebx,[ebp-76]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-80]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,1
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	mov	esi,[ebp-84]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,_atm1
	add	edi,12
	mov	edi,[edi]
	shl	edi,byte 1
	add	edi,2
	shl	edi,byte 2
	add	edi,[_atm1]
	mov	edi,[edi]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-96],ebx
	mov	ebx,[ebp-88]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1140850688
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-100],ebx
	mov	ebx,[ebp-92]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1140850688
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-104],ebx
	mov	ebx,[ebp-96]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-52],ebx
	cmp	[ebp-52],0
	jnz	_100
	mov	[ebp-52],1
_100
	mov	eax,[ebp-100]
	mov	ecx,[ebp-52]
	cdq
	idiv	ecx
	mov	[ebp-100],eax
	mov	eax,[ebp-104]
	mov	ecx,[ebp-52]
	cdq
	idiv	ecx
	mov	[ebp-104],eax
	mov	ebx,[ebp-108]
	add	ebx,[ebp-100]
	mov	esi,_ax3
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-56]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ax3]
	mov	[esi],ebx
	mov	ebx,[ebp-112]
	add	ebx,[ebp-104]
	mov	esi,_ay3
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-56]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ay3]
	mov	[esi],ebx
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_am_]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_am_]
	mov	[esi],ebx
	add	[ebp-56],1
_98
	mov	ebx,[ebp-60]
	cmp	[ebp-56],ebx
	jle	_99
_26
_97
	add	[ebp-8],1
_81
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jle	_82
_18
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmake_rot_mat
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
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax_o]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax_o]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ay_o]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ay_o]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_az_o]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_az_o]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,_atmr
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	mov	esi,_atmr
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmr]
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fchs
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebx],esi
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-12]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-24]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	imul	edi,0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-12]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 0
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_atmr
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp+20]
	mov	edi,_atmr
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 1
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_atmr]
	mov	[esi],ebx
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
_fzeichne_object
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,64
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
	mov	ebx,0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_am_]
	mov	[esi],ebx
	cmp	[ebp-20],-1
	jle	_101
	mov	[ebp-4],0
	jmp	_102
_103
	mov	ebx,_az3
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_az3]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	[ebp-12],0
	jmp	_104
_105
	mov	ebx,_af1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_af1]
	mov	ebx,[ebx]
	mov	esi,_ax3
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax3]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,_af1
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_af1]
	mov	ebx,[ebx]
	mov	esi,_ay3
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ay3]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,_af2
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_af2]
	mov	ebx,[ebx]
	mov	esi,_ax3
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax3]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,_af2
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_af2]
	mov	ebx,[ebx]
	mov	esi,_ay3
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ay3]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,_af3
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_af3]
	mov	ebx,[ebx]
	mov	esi,_ax3
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax3]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	ebx,_af3
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_af3]
	mov	ebx,[ebx]
	mov	esi,_ay3
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ay3]
	mov	ebx,[ebx]
	mov	[ebp-48],ebx
	mov	ebx,[ebp-44]
	sub	ebx,[ebp-28]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-40]
	sub	ebx,[ebp-32]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-48]
	sub	ebx,[ebp-32]
	mov	[ebp-60],ebx
	mov	ebx,[ebp-36]
	sub	ebx,[ebp-28]
	mov	[ebp-64],ebx
	mov	ebx,[ebp-52]
	imul	ebx,[ebp-56]
	mov	esi,[ebp-60]
	imul	esi,[ebp-64]
	sub	ebx,esi
	mov	[ebp-16],ebx
	cmp	[ebp-16],0
	jge	_106
	sub	esp,16
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-48]
	mov	[esp+12],esi
	mov	esi,[ebp-40]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fline
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_am_]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_am_]
	mov	[esi],ebx
_106
	add	[ebp-12],1
_104
	mov	ebx,[ebp-24]
	cmp	[ebp-12],ebx
	jle	_105
_30
	add	[ebp-4],1
_102
	mov	ebx,[ebp-20]
	cmp	[ebp-4],ebx
	jle	_103
_29
_101
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finvert_matrix
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	imul	esi,0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,2
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	ebx,_atmo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	mov	esi,_atmo
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_atmo]
	mov	ebx,[ebx]
	mov	esi,_atm1
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,2
	shl	esi,byte 2
	add	esi,[_atm1]
	mov	[esi],ebx
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsteuerung_m
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
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax_o]
	mov	[ebx],eax
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1036831949
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ay_o]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_107
	mov	ebx,10
	imul	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_az_o]
	mov	[esi],ebx
	jmp	_108
_107
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_109
	mov	ebx,-10
	imul	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,981668463
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_az_o]
	mov	[esi],ebx
	jmp	_110
_109
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_az_o]
	mov	[esi],ebx
_110
_108
	sub	esp,4
	mov	[esp],74
	call	_fkeydown
	and	eax,eax
	jz	_111
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ap_z3]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ap_z3]
	mov	[esi],ebx
_111
	sub	esp,4
	mov	[esp],78
	call	_fkeydown
	and	eax,eax
	jz	_112
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ap_z3]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ap_z3]
	mov	[esi],ebx
_112
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_33	.db	" BlitzBasic V 1.55",0
_34	.db	"",0
_35	.db	"",0
_36	.db	" Code date 23.8.2001 / 30.9.2001",0
_37	.db	" SerNr: 2001.0001-0",0
_38	.db	" EMail tft@optima-code.de",0
_39	.db	" Inter http://www.optima-code.de",0
_40	.db	"",0
_41	.db	"Bitte Objecteanzahl eingeben 100-100000:",0
_43	.db	"",0
_45	.db	"",0
	.align	4
_am_	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_am_st	.dd	0
	.dd	3
	.dd	1
	.dd	0
_46	.db	"Anzahl Sichtbare Dreiecke :",0
_47	.db	"Anzahl Sichtbare Objecte :",0
_48	.db	"Anzahl Sichtbare Punkte :",0
	.align	4
_ax1	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ay1	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_az1	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ax3	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ay3	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_az3	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_af1	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_af2	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_af3	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ax_o	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ay_o	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_az_o	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ap_x1	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ap_y1	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ap_z1	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ap_z3	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atm0	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atm1	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atme	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atmr	.dd	0
	.dd	2
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
_atmo	.dd	0
	.dd	2
	.dd	3
	.dd	0
	.dd	0
	.dd	0
_74	.db	" Objecte berechnen = ",0
_75	.db	" Objecte Zeichnen = ",0
_76	.db	"Loop Time ",0
_77	.db	"/1000 se",0
_78	.db	" FPS",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	-500
	.dd	1
	.dd	0
	.dd	1
	.dd	800
	.dd	1
	.dd	500
	.dd	1
	.dd	0
	.dd	1
	.dd	800
	.dd	1
	.dd	1000
	.dd	1
	.dd	0
	.dd	1
	.dd	-300
	.dd	1
	.dd	500
	.dd	1
	.dd	-300
	.dd	1
	.dd	-300
	.dd	1
	.dd	-500
	.dd	1
	.dd	-300
	.dd	1
	.dd	-300
	.dd	1
	.dd	-1000
	.dd	1
	.dd	0
	.dd	1
	.dd	-300
	.dd	1
	.dd	-500
	.dd	1
	.dd	300
	.dd	1
	.dd	-300
	.dd	1
	.dd	500
	.dd	1
	.dd	300
	.dd	1
	.dd	-300
	.dd	1
	.dd	11
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	4
	.dd	1
	.dd	5
	.dd	1
	.dd	2
	.dd	1
	.dd	3
	.dd	1
	.dd	4
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	6
	.dd	1
	.dd	5
	.dd	1
	.dd	7
	.dd	1
	.dd	6
	.dd	1
	.dd	5
	.dd	1
	.dd	4
	.dd	1
	.dd	7
	.dd	1
	.dd	4
	.dd	1
	.dd	8
	.dd	1
	.dd	7
	.dd	1
	.dd	4
	.dd	1
	.dd	3
	.dd	1
	.dd	8
	.dd	1
	.dd	2
	.dd	1
	.dd	8
	.dd	1
	.dd	3
	.dd	1
	.dd	1
	.dd	1
	.dd	6
	.dd	1
	.dd	7
	.dd	1
	.dd	1
	.dd	1
	.dd	7
	.dd	1
	.dd	2
	.dd	1
	.dd	2
	.dd	1
	.dd	7
	.dd	1
	.dd	8
	.dd	0

