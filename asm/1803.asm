
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,12
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[_vf],eax
	sub	esp,4
	mov	eax,[_vf]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,-1
	jz	_14
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fcreatedir
_14
	mov	[_vmoney],10000
	mov	[_vcoxp],0
	mov	[_vcar],1
	mov	[_vcd],0
	mov	[_vtape],0
	mov	[_vradio],0
	mov	[_vcushionlv],1
	mov	[_vsteerlv],1
	mov	[_vspeedlv],1
	mov	[_vaerolv],1
	mov	[_vmileagelv],1
	mov	[_vtv],0
	mov	[_vssound],0
	mov	[_vofficelv],1
	mov	[_vbc],0
	mov	[_vadlv],0
	mov	[_vcolv],1
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],_vname
	mov	[ebp-36],eax
	sub	esp,4
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_vname
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_18
	sub	esp,24
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_vname
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmoney]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcolv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcoxp]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcar]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcd]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vtape]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vradio]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcushionlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vsteerlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vspeedlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vaerolv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmileagelv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vtv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vssound]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vofficelv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vbc]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vadlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	jmp	_l_2ctyp
_18
	sub	esp,24
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_vname
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fistp	[esp]
	pop	eax
	mov	[_vmoney],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vcolv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadfloat
	push	eax
	fistp	[esp]
	pop	eax
	mov	[_vcoxp],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vcar],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vcd],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vtape],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vradio],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vcushionlv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vsteerlv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vspeedlv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vaerolv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vmileagelv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vtv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vssound],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vofficelv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vbc],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_freadbyte
	mov	[_vadlv],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
_l_2startingpoint
_l_2main
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,24
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_vname
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vmoney]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_vname
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmoney]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcolv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcoxp]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fwritefloat
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcar]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcd]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vtape]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vradio]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vcushionlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vsteerlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vspeedlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vaerolv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vmileagelv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vtv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vssound]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vofficelv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vbc]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vadlv]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[_vcoxp]
	mov	ecx,1000
	cdq
	idiv	ecx
	add	eax,1
	mov	[_vcolv],eax
_33
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_34
	jmp	_l_2lvup
_34
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_35
	jmp	_l_2cfea
_35
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	and	eax,eax
	jz	_36
	jmp	_l_2cuco
_36
	sub	esp,4
	mov	[esp],5
	call	_fkeyhit
	and	eax,eax
	jz	_37
	jmp	_l_2advr
_37
	sub	esp,4
	mov	[esp],6
	call	_fkeyhit
	and	eax,eax
	jz	_38
	jmp	_l_2boom
_38
	jmp	_33
_3
	call	_fend
_l_2ctyp
	sub	esp,8
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	cmp	[_vcolv],0
	jle	_40
	sub	esp,8
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_40
	cmp	[_vcolv],2
	jle	_42
	sub	esp,8
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_42
	cmp	[_vcolv],3
	jle	_44
	sub	esp,8
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_44
	cmp	[_vcolv],10
	jle	_46
	sub	esp,8
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_46
	cmp	[_vcolv],20
	jle	_48
	sub	esp,8
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_48
	cmp	[_vcolv],40
	jle	_50
	sub	esp,8
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_50
	cmp	[_vcolv],60
	jle	_52
	sub	esp,8
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_52
	cmp	[_vcolv],100
	jle	_54
	sub	esp,8
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_54
	cmp	[_vmoney],8500
	jge	_56
	sub	esp,8
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_56
_58
	cmp	[_vcolv],0
	jle	_59
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_60
	cmp	[_vmoney],8500
	jl	_61
	sub	[_vmoney],9500
	mov	[_vcar],1
	add	[ebp-12],1
	jmp	_l_2main
_61
_60
_59
	cmp	[_vcolv],2
	jle	_62
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_63
	cmp	[_vmoney],11000
	jl	_64
	sub	[_vmoney],11000
	mov	[_vcar],2
	add	[ebp-12],1
	jmp	_l_2main
_64
_63
_62
	cmp	[_vcolv],3
	jle	_65
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	and	eax,eax
	jz	_66
	cmp	[_vmoney],13000
	jl	_67
	sub	[_vmoney],13000
	mov	[_vcar],3
	add	[ebp-12],1
	jmp	_l_2main
_67
_66
_65
	cmp	[_vcolv],10
	jle	_68
	sub	esp,4
	mov	[esp],5
	call	_fkeyhit
	and	eax,eax
	jz	_69
	cmp	[_vmoney],12000
	jl	_70
	sub	[_vmoney],12000
	mov	[_vcar],4
	add	[ebp-12],1
	jmp	_l_2main
_70
_69
_68
	cmp	[_vcolv],20
	jle	_71
	sub	esp,4
	mov	[esp],6
	call	_fkeyhit
	and	eax,eax
	jz	_72
	cmp	[_vmoney],12500
	jl	_73
	sub	[_vmoney],12500
	mov	[_vcar],5
	add	[ebp-12],1
	jmp	_l_2main
_73
_72
_71
	cmp	[_vcolv],40
	jle	_74
	sub	esp,4
	mov	[esp],7
	call	_fkeyhit
	and	eax,eax
	jz	_75
	cmp	[_vmoney],21000
	jl	_76
	sub	[_vmoney],21000
	mov	[_vcar],6
	add	[ebp-12],1
	jmp	_l_2main
_76
_75
_74
	cmp	[_vcolv],60
	jle	_77
	sub	esp,4
	mov	[esp],8
	call	_fkeyhit
	and	eax,eax
	jz	_78
	cmp	[_vmoney],41000
	jl	_79
	sub	[_vmoney],41000
	mov	[_vcar],7
	add	[ebp-12],1
	jmp	_l_2main
_79
_78
_77
	cmp	[_vcolv],100
	jle	_80
	sub	esp,4
	mov	[esp],8
	call	_fkeyhit
	and	eax,eax
	jz	_81
	cmp	[_vmoney],100000
	jl	_82
	sub	[_vmoney],100000
	mov	[_vcar],8
	add	[ebp-12],1
	jmp	_l_2main
_82
_81
_80
	jmp	_58
_4
	call	_fend
_l_2lvup
	sub	esp,8
	mov	eax,_83
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_84
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_85
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vspeedlv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_87
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vaerolv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vcushionlv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_89
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vsteerlv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vmileagelv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_91
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_92
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_93
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,250
	imul	ebx,[_vspeedlv]
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_94
	mov	ebx,250
	imul	ebx,[_vspeedlv]
	sub	[_vmoney],ebx
	add	[_vspeedlv],1
	jmp	_l_2main
_94
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,75
	imul	ebx,[_vaerolv]
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_95
	mov	ebx,75
	imul	ebx,[_vaerolv]
	sub	[_vmoney],ebx
	add	[_vaerolv],1
	jmp	_l_2main
_95
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,100
	imul	ebx,[_vcushionlv]
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_96
	mov	ebx,100
	imul	ebx,[_vcushionlv]
	sub	[_vmoney],ebx
	add	[_vcushionlv],1
	jmp	_l_2main
_96
	sub	esp,4
	mov	[esp],5
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,75
	imul	ebx,[_vsteerlv]
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_97
	mov	ebx,75
	imul	ebx,[_vsteerlv]
	sub	[_vmoney],ebx
	add	[_vsteerlv],1
	jmp	_l_2main
_97
	sub	esp,4
	mov	[esp],6
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,80
	imul	ebx,[_vmileagelv]
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_98
	mov	ebx,80
	imul	ebx,[_vmileagelv]
	sub	[_vmoney],ebx
	add	[_vmileagelv],1
	jmp	_l_2main
_98
	sub	esp,4
	mov	[esp],7
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,100
	imul	ebx,[ebp-16]
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_99
	mov	ebx,100
	imul	ebx,[ebp-16]
	sub	[_vmoney],ebx
	add	[ebp-16],1
	jmp	_l_2main
_99
	sub	esp,4
	mov	[esp],8
	call	_fkeyhit
	and	eax,eax
	jz	_100
	jmp	_l_2main
_100
	jmp	_93
_5
	call	_fend
_l_2cfea
	sub	esp,8
	mov	eax,_101
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_102
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_103
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_104
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_105
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_106
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_107
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_108
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	mov	[ebp-36],eax
	cmp	[_vmoney],500
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_109
	sub	[_vmoney],500
	mov	[_vtv],1
	jmp	_l_2main
_109
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	mov	[ebp-36],eax
	cmp	[_vmoney],50
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_110
	sub	[_vmoney],50
	mov	[_vcd],1
	jmp	_l_2main
_110
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	mov	[ebp-36],eax
	cmp	[_vmoney],25
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_111
	sub	[_vmoney],25
	mov	[_vtape],1
	jmp	_l_2main
_111
	sub	esp,4
	mov	[esp],5
	call	_fkeyhit
	mov	[ebp-36],eax
	cmp	[_vmoney],50
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_112
	sub	[_vmoney],50
	mov	[_vradio],1
	jmp	_l_2main
_112
	sub	esp,4
	mov	[esp],6
	call	_fkeyhit
	mov	[ebp-36],eax
	cmp	[_vmoney],125
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_113
	sub	[_vmoney],125
	mov	[_vssound],1
	jmp	_l_2main
_113
	sub	esp,4
	mov	[esp],7
	call	_fkeyhit
	and	eax,eax
	jz	_114
	jmp	_l_2main
_114
	jmp	_108
_6
	call	_fend
_l_2cuco
	sub	esp,8
	mov	eax,_115
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_116
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,[_vcar]
	mov	[ebp-20],ebx
	cmp	[ebp-20],1
	jz	_118
	cmp	[ebp-20],2
	jz	_119
	cmp	[ebp-20],3
	jz	_120
	cmp	[ebp-20],4
	jz	_121
	cmp	[ebp-20],5
	jz	_122
	cmp	[ebp-20],6
	jz	_123
	cmp	[ebp-20],7
	jz	_124
	cmp	[ebp-20],8
	jz	_125
	jmp	_117
_118
	mov	[ebp-24],7500
	jmp	_117
_119
	mov	[ebp-24],9000
	jmp	_117
_120
	mov	[ebp-24],10000
	jmp	_117
_121
	mov	[ebp-24],10000
	jmp	_117
_122
	mov	[ebp-24],11000
	jmp	_117
_123
	mov	[ebp-24],19000
	jmp	_117
_124
	mov	[ebp-24],39500
	jmp	_117
_125
	mov	[ebp-24],80000
	jmp	_117
_117
	cmp	[_vtv],1
	jnz	_126
	add	[ebp-24],1000
_126
	cmp	[_vcd],1
	jnz	_127
	add	[ebp-24],100
_127
	cmp	[_vradio],1
	jnz	_128
	add	[ebp-24],100
_128
	cmp	[_vtape],1
	jnz	_129
	add	[ebp-24],100
_129
	mov	ebx,125
	imul	ebx,[ebp-16]
	add	[ebp-24],ebx
	mov	ebx,500
	imul	ebx,[_vspeedlv]
	add	[ebp-24],ebx
	mov	ebx,105
	imul	ebx,[_vcushionlv]
	add	[ebp-24],ebx
	mov	ebx,100
	imul	ebx,[_vaerolv]
	add	[ebp-24],ebx
	mov	ebx,[_vmileagelv]
	imul	ebx,100
	add	[ebp-24],ebx
	mov	ebx,200
	imul	ebx,[_vadlv]
	add	[ebp-24],ebx
	mov	ebx,100
	imul	ebx,[_vsteerlv]
	add	[ebp-24],ebx
	cmp	[_vssound],1
	jnz	_130
	add	[ebp-24],100
_130
	sub	esp,8
	mov	[esp],-1000
	mov	[esp+4],1200
	call	_frand
	add	[ebp-24],eax
	sub	esp,24
	mov	eax,_131
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_132
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_133
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_134
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_135
	jmp	_l_2haggle
_135
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_136
	jmp	_l_2take
_136
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	and	eax,eax
	jz	_137
	jmp	_l_2main
_137
	jmp	_134
_8
_l_2haggle
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],2
	call	_frand
	mov	[ebp-28],eax
	cmp	[ebp-28],1
	jnz	_138
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],5000
	call	_frand
	add	[ebp-24],eax
	sub	esp,16
	mov	eax,_139
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_138
	cmp	[ebp-28],1
	jle	_140
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1000
	call	_frand
	sub	[ebp-24],eax
	sub	esp,16
	mov	eax,_141
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_140
	jmp	_l_2q1
_l_2q1
	sub	esp,8
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_143
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_144
	jmp	_l_2take
_144
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_145
	jmp	_l_2main
_145
	jmp	_143
_9
_l_2take
	mov	ebx,[ebp-24]
	add	[_vmoney],ebx
	mov	[ebp-32],1
	sub	esp,24
	mov	eax,_146
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vmoney]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_147
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	eax,[ebp-24]
	mov	ecx,11
	cdq
	idiv	ecx
	add	[_vcoxp],eax
	jmp	_l_2boom
	call	_fend
_l_2advr
	sub	esp,24
	mov	eax,_148
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vadlv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_149
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_150
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_151
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	mov	[ebp-36],eax
	mov	ebx,[_vadlv]
	imul	ebx,125
	cmp	[_vmoney],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_152
	mov	ebx,[_vadlv]
	imul	ebx,125
	sub	[_vmoney],ebx
	add	[_vadlv],1
	jmp	_l_2main
_152
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_153
	jmp	_l_2main
_153
	jmp	_151
_10
	call	_fend
_l_2boom
	mov	[_vtv],0
	mov	[_vtape],0
	mov	[_vradio],0
	mov	[_vcd],0
	mov	[_vsteerlv],1
	mov	[_vcushionlv],1
	mov	[_vspeedlv],1
	mov	[_vaerolv],1
	mov	[_vmileagelv],1
	mov	[_vssound],0
	call	_fwaitkey
	jmp	_l_2ctyp
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_11	.db	"Car Salesman",0
_12	.db	"Quit?",0
	.align	4
_vf	.dd	0
_13	.db	"Times",0
_15	.db	"Data",0
_16	.db	"Data",0
	.align	4
_vmoney	.dd	0
	.align	4
_vcoxp	.dd	0
	.align	4
_vcar	.dd	0
	.align	4
_vcd	.dd	0
	.align	4
_vtape	.dd	0
	.align	4
_vradio	.dd	0
	.align	4
_vcushionlv	.dd	0
	.align	4
_vsteerlv	.dd	0
	.align	4
_vspeedlv	.dd	0
	.align	4
_vaerolv	.dd	0
	.align	4
_vmileagelv	.dd	0
	.align	4
_vtv	.dd	0
	.align	4
_vssound	.dd	0
	.align	4
_vofficelv	.dd	0
	.align	4
_vbc	.dd	0
	.align	4
_vadlv	.dd	0
	.align	4
_vcolv	.dd	0
	.align	4
_vname	.dd	0
_17	.db	"What is your name? ",0
_19	.db	"Data\",0
_20	.db	".car",0
_21	.db	"Data\",0
_22	.db	".car",0
_23	.db	"Data\",0
_24	.db	".car",0
_25	.db	"Welcome to the main screen of Car Salesman, ",0
_26	.db	".",0
_27	.db	"Press '1' to make your car and office better by level. Press '2' to access car features.",0
_28	.db	"Press '3' to see if there is a customer waiting, or '4' to make your advertising better.",0
_29	.db	"Press '5' to stop selling and start a new car, destroying the old brand for a newer one.",0
_30	.db	"Your money - $",0
_31	.db	"Data\",0
_32	.db	".car",0
_39	.db	"Press the number corresponding to the car type you want (price is listed).",0
_41	.db	"1 - Granny Car - $9,500",0
_43	.db	"2 - Van - $11,000",0
_45	.db	"3 - Truck - $13,000",0
_47	.db	"4 - Minivan - $12,000",0
_49	.db	"5 - Sports Van - $12,500",0
_51	.db	"6 - Sports Car - $21,000",0
_53	.db	"7 - Racecar - $41,000",0
_55	.db	"8 - Airplane - $100,000",0
_57	.db	"You lose, dude!",0
_83	.db	"Here is where you can make your car or office go up levels to help its value. Press",0
_84	.db	"the corresponding key to raise the level if you have enough money. All prices are",0
_85	.db	"multiplied by the current level.",0
_86	.db	"1 - Speed - $250 - Current level: ",0
_87	.db	"2 - Aerodynamics - $75 - Current level: ",0
_88	.db	"3 - Cushions - $100 - Current level: ",0
_89	.db	"4 - Handling - $75 - Current level: ",0
_90	.db	"5 - Mileage - $80 - Current level: ",0
_91	.db	"6 - Office - $100 - Current level: ",0
_92	.db	"7 - Go back to main page",0
_101	.db	"You can give your car new features here, such as a TV or a CD Player. Press the key:",0
_102	.db	"1 - TV - $500",0
_103	.db	"2 - CD player - $50",0
_104	.db	"3 - Tape deck - $25",0
_105	.db	"4 - Radio - $50",0
_106	.db	"5 - Surround Sound - $125",0
_107	.db	"6 - Go back to the main page",0
_115	.db	"This customer wants to know all about the car you are selling. You must tell",0
_116	.db	"them everything. As you do, they stare in awe. You can bet the price will be",0
_131	.db	"good. Their offer is $",0
_132	.db	".",0
_133	.db	"Haggle up with '1' or take the offer with '2'. Dump the customer with '3'",0
_139	.db	"You were successful in your haggle. The price is now $",0
_141	.db	"They don't like haggling. The price is now $",0
_142	.db	"Take with '1' or dump with '2'.",0
_146	.db	"You decide to take the offer. Your money is now $",0
_147	.db	".",0
_148	.db	"Your advertising priority level is ",0
_149	.db	". Press '1' to raise it a level for $125 times",0
_150	.db	"your current level. Press '2' to go to the main page.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

