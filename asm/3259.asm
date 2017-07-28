
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[esp+4],625
	mov	[esp],1000
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vxcharacter_body],eax
	sub	esp,16
	mov	[esp+8],1063256064
	mov	[esp+12],1040187392
	mov	[esp+4],1048576000
	mov	eax,[_vxcharacter_body]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1063256064
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vxcharacter_body]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,4
	mov	eax,[_vxcharacter_body]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],16
	call	_fcreatecylinder
	mov	[_vxcharacter_collidable],eax
	sub	esp,16
	mov	[esp+8],1063256064
	mov	[esp+12],1048576000
	mov	[esp+4],1048576000
	mov	eax,[_vxcharacter_collidable]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1063256064
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vxcharacter_collidable]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,4
	mov	eax,[_vxcharacter_collidable]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vxrotatingdoor_wall],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1069547520
	mov	[esp+12],1036831949
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1069547520
	mov	[esp+12],0
	mov	[esp+4],-1090519040
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vxrotatingdoor_wall]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1069547520
	mov	[esp+12],1036831949
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1069547520
	mov	[esp+12],0
	mov	[esp+4],1069547520
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vxrotatingdoor_wall]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1036831949
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1075838976
	mov	[esp+12],0
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vxrotatingdoor_wall]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,16
	mov	[esp+8],1128792064
	mov	[esp+12],1128792064
	mov	[esp+4],1128792064
	mov	eax,[_vxrotatingdoor_wall]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	eax,[_vxrotatingdoor_wall]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vxrotatingdoor_door],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1020054733
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],0
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vxrotatingdoor_door]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,16
	mov	[esp+8],1125515264
	mov	[esp+12],1125515264
	mov	[esp+4],1125515264
	mov	eax,[_vxrotatingdoor_door]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	eax,[_vxrotatingdoor_door]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vxrotatingdoor_triggera],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1028443341
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1028443341
	mov	[esp+12],-1090519040
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vxrotatingdoor_triggera]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vxrotatingdoor_triggera]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	eax,[_vxrotatingdoor_triggera]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vxrotatingdoor_triggerb],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],1028443341
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1028443341
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[_vxrotatingdoor_triggerb]
	mov	[esp+4],ebx
	call	_faddmesh
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vxrotatingdoor_triggerb]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	eax,[_vxrotatingdoor_triggerb]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1000593162
	mov	[esp+12],1000593162
	mov	[esp+4],1000593162
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1120403456
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],1130364928
	mov	[esp+12],1130364928
	mov	[esp+4],1130364928
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,20
	mov	[esp+12],-998637568
	mov	[esp+16],1
	mov	[esp+8],1148846080
	mov	[esp+4],1112014848
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	[esp+4],1115684864
	mov	[esp+8],1115684864
	mov	[esp],1115684864
	call	_fambientlight
	sub	esp,4
	mov	eax,_atempi
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_atempi
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atempi
	mov	[esp],eax
	call	__bbDimArray
	call	_fbuildground
	sub	esp,4
	mov	eax,_arotatingdoor_root
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_root
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_root
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatingdoor_wall
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_wall
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_wall
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatingdoor_door
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_door
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_door
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatingdoor_triggera
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_triggera
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_triggera
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatingdoor_triggerb
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_triggerb
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_triggerb
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatingdoor_triggern
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_triggern
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_triggern
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arotatingdoor_state
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_arotatingdoor_state
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arotatingdoor_state
	mov	[esp],eax
	call	__bbDimArray
	call	_fbuildrotatingdoors
	sub	esp,4
	mov	eax,_acharacter_root
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acharacter_root
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acharacter_root
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acharacter_eyes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acharacter_eyes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acharacter_eyes
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acharacter_body
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acharacter_body
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acharacter_body
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acharacter_collidable
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acharacter_collidable
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acharacter_collidable
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acharacter_state
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_acharacter_state
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acharacter_state
	mov	[esp],eax
	call	__bbDimArray
	call	_fbuildcharacters
	mov	[_vplayeri],1
	call	_fmain
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
_fmain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
_25
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	cmp	eax,1
	jnz	_26
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],10
	call	_frand
	mov	[_vplayeri],eax
_26
	call	_fupdateplayer
	call	_fupdateai
	call	_fupdaterotatingdoors
	mov	ebx,[_vplayeri]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[_vcamera]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acharacter_eyes]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpositionrotateentitylikeotherentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1102315520
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1069547520
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,1
	jnz	_27
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
_27
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,24
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vd2dmstime]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],0
	mov	[esp+8],0
	call	_fctext
	sub	esp,24
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vmimstime]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],0
	mov	[esp+8],15
	call	_fctext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_25
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fctext
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fpositionentitylikeotherentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_frotateentitylikeotherentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fpositionrotateentitylikeotherentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdistance2d
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
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fdistance3d
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
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+40]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+28]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fdiag
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
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
_fbuildground
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vground],eax
	sub	esp,8
	mov	eax,[_vground]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-4],eax
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1120403456
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],1120403456
	mov	[esp+8],0
	mov	[esp+4],1120403456
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],1120403456
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddvertex
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],2
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],3
	mov	[esp+4],2
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddtriangle
	sub	esp,16
	mov	[esp+8],1124073472
	mov	[esp+12],1124073472
	mov	[esp+4],1124073472
	mov	eax,[_vground]
	mov	[esp],eax
	call	_fentitycolor
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbuildrotatingdoors
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-4],eax
	mov	[ebp-8],1
_30
	mov	[ebp-12],0
_l_13linechooserotatingdoorposition
	add	[ebp-12],1
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],98
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],98
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],-1020002304
	mov	[esp+4],1127481344
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],0
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-28],1
	mov	[ebp-32],1
	jmp	_31
_32
	sub	esp,24
	mov	eax,[ebp-32]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_root]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-44],eax
	sub	esp,8
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-44]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fdistance2d
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-36],eax
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_33
	jmp	_34
_33
	mov	[ebp-28],0
	jmp	_15
_34
	add	[ebp-32],1
_31
	mov	ebx,[_vrotatingdoorscount]
	cmp	[ebp-32],ebx
	jle	_32
_15
	cmp	[ebp-28],1
	jnz	_35
	add	[_vrotatingdoorscount],1
	mov	ebx,[_vrotatingdoorscount]
	mov	[ebp-40],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[_vxrotatingdoor_wall]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_wall]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_wall]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_vxrotatingdoor_door]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_door]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_vxrotatingdoor_triggera]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggera]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_triggera]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_triggera]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1048576000
	call	_fentityalpha
	sub	esp,8
	mov	eax,[_vxrotatingdoor_triggerb]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggerb]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_triggerb]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_triggerb]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1048576000
	call	_fentityalpha
	mov	ebx,4
	mov	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],0
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-40]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	jmp	_36
_35
	cmp	[ebp-28],0
	jnz	_37
	cmp	[ebp-12],100
	jg	_38
	jmp	_l_13linechooserotatingdoorposition
	jmp	_39
_38
	cmp	[ebp-12],100
	jle	_40
	mov	[ebp-8],0
_40
_39
_37
_36
	cmp	[_vrotatingdoorscount],100
	setz	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	or	eax,ebx
	and	eax,eax
	jz	_30
_14
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreeentity
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbuildcharacters
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
	jmp	_41
_42
	add	[_vcharacterscount],1
	mov	ebx,[_vcharacterscount]
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_root]
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_eyes]
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],1070805811
	mov	[esp+4],0
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_eyes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_eyes]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_vxcharacter_body]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_body]
	mov	[ebx],eax
	sub	esp,24
	mov	[esp],25
	mov	[esp+4],255
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],25
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_body]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_body]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,8
	mov	eax,[_vxcharacter_collidable]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcopyentity
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_collidable]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_collidable]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_collidable]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,12
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_root]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_collidable]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,28
	mov	[esp],1048576000
	mov	[esp+4],1120370688
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1048576000
	mov	[esp+4],1120370688
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acharacter_root]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_acharacter_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	add	[ebp-4],1
_41
	cmp	[ebp-4],10
	jle	_42
_17
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdateplayer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,[_vplayeri]
	mov	[ebp-4],ebx
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	cmp	eax,1
	jnz	_43
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1077936128
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acharacter_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_44
_43
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	cmp	eax,1
	jnz	_45
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1069547520
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acharacter_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
_45
_44
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	cmp	eax,1
	jnz	_46
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acharacter_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_47
_46
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	cmp	eax,1
	jnz	_48
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1119040307
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acharacter_root]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
_48
_47
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdateai
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_49
_50
	mov	ebx,[_vplayeri]
	cmp	[ebp-4],ebx
	jz	_51
_51
	add	[ebp-4],1
_49
	mov	ebx,[_vcharacterscount]
	cmp	[ebp-4],ebx
	jle	_50
_20
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdaterotatingdoors
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
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-4],1
	jmp	_52
_53
	mov	[ebp-8],0
	call	_fmillisecs
	mov	[ebp-12],eax
	mov	[_vtempscount],0
	mov	[ebp-16],1
	jmp	_54
_55
	sub	esp,24
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_acharacter_root]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_acharacter_root]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-36],eax
	sub	esp,8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_root]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_root]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fdistance2d
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],1065353216
	call	_fdiag
	mov	ebx,1048576000
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	xchg	ebx,eax
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_56
	add	[_vtempscount],1
	mov	ebx,[_vtempscount]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_atempi]
	mov	[esi],ebx
_56
	add	[ebp-16],1
_54
	mov	ebx,[_vcharacterscount]
	cmp	[ebp-16],ebx
	jle	_55
_23
	call	_fmillisecs
	sub	eax,[ebp-12]
	mov	[_vd2dmstime],eax
	call	_fmillisecs
	mov	[ebp-28],eax
	cmp	[_vtempscount],0
	jle	_57
	mov	[ebp-24],1
	jmp	_58
_59
	mov	ebx,[ebp-24]
	shl	ebx,byte 2
	add	ebx,[_atempi]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_acharacter_collidable]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggera]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fmeshesintersect
	cmp	eax,1
	jnz	_60
	mov	[ebp-8],1
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_state]
	mov	eax,[eax]
	cmp	eax,3
	setz	al
	movzx	eax,al
	mov	[ebp-36],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggern]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_61
	mov	[ebp-8],0
_61
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_state]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_62
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_triggern]
	mov	[esi],ebx
	jmp	_63
_62
_63
	jmp	_24
	jmp	_64
_60
	sub	esp,8
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_acharacter_collidable]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggerb]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fmeshesintersect
	cmp	eax,1
	jnz	_65
	mov	[ebp-8],1
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_state]
	mov	eax,[eax]
	cmp	eax,3
	setz	al
	movzx	eax,al
	mov	[ebp-36],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggern]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-36]
	and	eax,ebx
	and	eax,eax
	jz	_66
	mov	[ebp-8],0
_66
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_state]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_67
	mov	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_triggern]
	mov	[esi],ebx
	jmp	_68
_67
_68
	jmp	_24
_65
_64
	add	[ebp-24],1
_58
	mov	ebx,[_vtempscount]
	cmp	[ebp-24],ebx
	jle	_59
_24
_57
	call	_fmillisecs
	sub	eax,[ebp-28]
	mov	[_vmimstime],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_state]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_69
	cmp	[ebp-8],0
	jnz	_70
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
	jmp	_71
_70
	cmp	[ebp-8],1
	jnz	_72
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_72
_71
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggern]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_73
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_74
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_75
_74
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1119092736
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_76
	mov	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_76
_75
	jmp	_77
_73
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggern]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_78
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1028390912
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_79
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_80
_79
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1028390912
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_81
	mov	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_81
_80
_78
_77
	jmp	_82
_69
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_state]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_83
	cmp	[ebp-8],0
	jnz	_84
	mov	ebx,3
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
	jmp	_85
_84
	cmp	[ebp-8],1
	jnz	_86
	mov	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_86
_85
	jmp	_87
_83
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_state]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_88
	cmp	[ebp-8],0
	jnz	_89
	mov	ebx,3
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
	jmp	_90
_89
	cmp	[ebp-8],1
	jnz	_91
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_91
_90
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggern]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_92
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_93
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_94
_93
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_95
	mov	ebx,4
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_95
_94
	jmp	_96
_92
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_triggern]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_97
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_98
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_arotatingdoor_door]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_99
_98
	mov	eax,[ebp-32]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_100
	mov	ebx,4
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_100
_99
_97
_96
	jmp	_101
_88
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_arotatingdoor_state]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_102
	cmp	[ebp-8],0
	jnz	_103
	mov	ebx,4
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
	jmp	_104
_103
	cmp	[ebp-8],1
	jnz	_105
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_arotatingdoor_state]
	mov	[esi],ebx
_105
_104
_102
_101
_87
_82
	add	[ebp-4],1
_52
	mov	ebx,[_vrotatingdoorscount]
	cmp	[ebp-4],ebx
	jle	_53
_22
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vxcharacter_body	.dd	0
	.align	4
_vxcharacter_collidable	.dd	0
	.align	4
_vxrotatingdoor_wall	.dd	0
	.align	4
_vxrotatingdoor_door	.dd	0
	.align	4
_vxrotatingdoor_triggera	.dd	0
	.align	4
_vxrotatingdoor_triggerb	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vtempscount	.dd	0
	.align	4
_atempi	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vground	.dd	0
	.align	4
_vrotatingdoorscount	.dd	0
	.align	4
_arotatingdoor_root	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatingdoor_wall	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatingdoor_door	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatingdoor_triggera	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatingdoor_triggerb	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatingdoor_triggern	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_arotatingdoor_state	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vcharacterscount	.dd	0
	.align	4
_acharacter_root	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acharacter_eyes	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acharacter_body	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acharacter_collidable	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acharacter_state	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vplayeri	.dd	0
	.align	4
_vd2dmstime	.dd	0
	.align	4
_vmimstime	.dd	0
_28	.db	"D2DMsTime = ",0
_29	.db	"MIMsTime = ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

