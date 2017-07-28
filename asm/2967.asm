
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1148846080
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vcubicalxmesh],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vcubicalxmesh]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[_vcubicalxmesh]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	[_vcylindricalxmesh],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vcylindricalxmesh]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[_vcylindricalxmesh]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vsphericalxmesh],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vsphericalxmesh]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[_vsphericalxmesh]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],4
	call	_fcreatecone
	mov	[_vpyramidalxmesh],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vpyramidalxmesh]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	eax,[_vpyramidalxmesh]
	mov	[esp],eax
	call	_fhideentity
	mov	[_vthingscount],0
	sub	esp,4
	mov	eax,_athingshape
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_athingshape
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_athingshape
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_athingmaterial
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_athingmaterial
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_athingmaterial
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_athingname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_athingname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_athingname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_athingmesh
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_athingmesh
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_athingmesh
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vswap_thingscount],0
	sub	esp,4
	mov	eax,_aswap_thingshape
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aswap_thingshape
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aswap_thingshape
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aswap_thingmaterial
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aswap_thingmaterial
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aswap_thingmaterial
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aswap_thingname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aswap_thingname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aswap_thingname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aswap_thingmesh
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aswap_thingmesh
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aswap_thingmesh
	mov	[esp],eax
	call	__bbDimArray
	call	_fbuildthings
	sub	esp,20
	mov	[esp+12],-1063256064
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],1084227584
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1132068864
	mov	[esp+12],1132068864
	mov	[esp+4],1132068864
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],-1027080192
	mov	[esp+16],0
	mov	[esp+8],1120403456
	mov	[esp+4],-1027080192
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1036779520
	mov	[esp+4],1110704128
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],1112014848
	mov	[esp+8],1112014848
	mov	[esp],1112014848
	call	_fambientlight
	sub	esp,20
	mov	[esp+12],-1043857408
	mov	[esp+16],0
	mov	[esp+8],1112014848
	mov	[esp+4],1112014848
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	jmp	_16
_15
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	cmp	eax,0
	jle	_17
	cmp	[_vthingscount],0
	jle	_18
	sub	esp,8
	mov	[esp],1
	mov	ebx,[_vthingscount]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fdeletething
	call	_fmillisecs
	mov	[ebp-12],eax
	call	_freorganizethingslist
	call	_fmillisecs
	sub	eax,[ebp-12]
	mov	[_vroutinetime],eax
_18
_17
	call	_fupdatethings
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_ftrisrendered
	mov	ebx,eax
	mov	eax,[ebp-20]
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
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vthingscount]
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
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vroutinetime]
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
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_16
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_15
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
_fbuildthings
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
	mov	[ebp-4],1
	jmp	_23
_24
	add	[_vthingscount],1
	mov	ebx,[_vthingscount]
	mov	[ebp-8],ebx
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],4
	call	_frand
	mov	[ebp-12],eax
	cmp	[ebp-12],1
	jnz	_25
	mov	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
	jmp	_26
_25
	cmp	[ebp-12],2
	jnz	_27
	mov	ebx,2
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
	jmp	_28
_27
	cmp	[ebp-12],3
	jnz	_29
	mov	ebx,3
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
	jmp	_30
_29
	cmp	[ebp-12],4
	jnz	_31
	mov	ebx,4
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
_31
_30
_28
_26
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingshape]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_32
	sub	esp,8
	mov	eax,[_vcubicalxmesh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_34
_32
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingshape]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_35
	sub	esp,8
	mov	eax,[_vcylindricalxmesh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_37
_35
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingshape]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_38
	sub	esp,8
	mov	eax,[_vsphericalxmesh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_39
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_40
_38
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingshape]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_41
	sub	esp,8
	mov	eax,[_vpyramidalxmesh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_41
_40
_37
_34
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],4
	call	_frand
	mov	[ebp-12],eax
	cmp	[ebp-12],1
	jnz	_43
	mov	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,28
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_44
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
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_46
_43
	cmp	[ebp-12],2
	jnz	_47
	mov	ebx,2
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,28
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_48
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
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_50
_47
	cmp	[ebp-12],3
	jnz	_51
	mov	ebx,3
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,28
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_52
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
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_54
_51
	cmp	[ebp-12],4
	jnz	_55
	mov	ebx,4
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,28
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_56
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
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_55
_54
_50
_46
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmaterial]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_58
	sub	esp,16
	mov	[esp+8],1127153664
	mov	[esp+12],1127153664
	mov	[esp+4],1127153664
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	jmp	_59
_58
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmaterial]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_60
	sub	esp,16
	mov	[esp+8],1117782016
	mov	[esp+12],0
	mov	[esp+4],1126170624
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	jmp	_61
_60
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmaterial]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_62
	sub	esp,16
	mov	[esp+8],1123680256
	mov	[esp+12],1123680256
	mov	[esp+4],1123680256
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	jmp	_63
_62
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmaterial]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_64
	sub	esp,16
	mov	[esp+8],1126498304
	mov	[esp+12],0
	mov	[esp+4],1127153664
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
_64
_63
_61
_59
	sub	esp,28
	mov	[esp],0
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120403456
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1120403456
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],-1020002304
	mov	[esp+4],1127481344
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,20
	mov	eax,_65
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
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnameentity
	mov	ebx,eax
	add	[ebp-4],1
_23
	cmp	[ebp-4],100
	jle	_24
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
_fupdatethings
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_66
_67
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,0
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_68
	sub	esp,28
	mov	[esp],-1020002304
	mov	[esp+4],1127481344
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
_68
	add	[ebp-4],1
_66
	mov	ebx,[_vthingscount]
	cmp	[ebp-4],ebx
	jle	_67
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdeletething
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_athingmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_athingmesh]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_freorganizethingslist
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[_vswap_thingscount],0
	mov	[ebp-4],1
	jmp	_70
_71
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_72
	add	[_vswap_thingscount],1
	mov	ebx,[_vswap_thingscount]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingshape]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aswap_thingshape]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmaterial]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aswap_thingmaterial]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aswap_thingname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aswap_thingmesh]
	mov	[esi],ebx
_72
	add	[ebp-4],1
_70
	mov	ebx,[_vthingscount]
	cmp	[ebp-4],ebx
	jle	_71
_10
	mov	[ebp-4],1
	jmp	_73
_74
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_athingmesh]
	mov	[esi],ebx
	add	[ebp-4],1
_73
	mov	ebx,[_vthingscount]
	cmp	[ebp-4],ebx
	jle	_74
_11
	mov	[_vthingscount],0
	mov	[_vthingscount],0
	mov	[ebp-8],1
	jmp	_76
_77
	add	[_vthingscount],1
	mov	ebx,[_vthingscount]
	mov	[ebp-4],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aswap_thingshape]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_athingshape]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aswap_thingmaterial]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_athingmaterial]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_athingname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aswap_thingname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aswap_thingmesh]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_athingmesh]
	mov	[esi],ebx
	add	[ebp-8],1
_76
	mov	ebx,[_vswap_thingscount]
	cmp	[ebp-8],ebx
	jle	_77
_12
	mov	[ebp-8],1
	jmp	_78
_79
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aswap_thingshape]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aswap_thingmaterial]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aswap_thingname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aswap_thingmesh]
	mov	[esi],ebx
	add	[ebp-8],1
_78
	mov	ebx,[_vswap_thingscount]
	cmp	[ebp-8],ebx
	jle	_79
_13
	mov	[_vswap_thingscount],0
	mov	[ebp-4],1
	jmp	_81
_82
	sub	esp,20
	mov	eax,_83
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
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_athingmesh]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnameentity
	mov	ebx,eax
	add	[ebp-4],1
_81
	mov	ebx,[_vthingscount]
	cmp	[ebp-4],ebx
	jle	_82
_14
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vcamera	.dd	0
	.align	4
_vcubicalxmesh	.dd	0
	.align	4
_vcylindricalxmesh	.dd	0
	.align	4
_vsphericalxmesh	.dd	0
	.align	4
_vpyramidalxmesh	.dd	0
	.align	4
_vthingscount	.dd	0
	.align	4
_athingshape	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_athingmaterial	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_athingname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_athingmesh	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vswap_thingscount	.dd	0
	.align	4
_aswap_thingshape	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aswap_thingmaterial	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aswap_thingname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aswap_thingmesh	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vroutinetime	.dd	0
_19	.db	"Triangles = ",0
_20	.db	"ThingsCount = ",0
_21	.db	"RoutineTime = ",0
_22	.db	"Press Space to delete a random Thing in the list.",0
_33	.db	"Cube",0
_36	.db	"Cylinder",0
_39	.db	"Sphere",0
_42	.db	"Pyramid",0
_44	.db	"Of",0
_45	.db	"Tin",0
_48	.db	"Of",0
_49	.db	"Copper",0
_52	.db	"Of",0
_53	.db	"Silver",0
_56	.db	"Of",0
_57	.db	"Gold",0
_65	.db	"THI",0
_69	.db	"",0
_75	.db	"",0
_80	.db	"",0
_83	.db	"THI",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

