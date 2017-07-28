
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[_vmouse_move_speed],1048576000
	mov	[_vgw],800
	mov	[_vgh],600
	mov	[_vtype_ellipsoide],1
	mov	[_vspaceplanet],0
	mov	[_vx],-2
	mov	[_vy],-2
	mov	[_vz],-2
	mov	[_vparentplayer0],0
	mov	[_vplayer0],0
	mov	[_vcamera],0
	mov	[_vpivotplanete4],0
	mov	[_vpivotorbiplanete4],0
	mov	[_vplanete4],0
	mov	[_vtextureplanete4],0
	mov	[_vrndscale],0
	mov	[_vmvx],0
	mov	[_vmvz],0
	mov	[_vvitesse],10
	mov	[_vdeplacy],0
	mov	[_vdeplacx],0
	mov	[_vcampitch],0
	mov	[_vcamyaw],0
	mov	[_vcamroll],0
	mov	[_voldpitch],0
	mov	[_voldyaw],0
	mov	[_voldroll],0
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[_vgh]
	mov	[esp+4],esi
	mov	eax,[_vgw]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],32
	mov	[esp],32
	call	_fcreatetexture
	mov	[_vtextureplanete4],eax
	sub	esp,12
	mov	eax,[_vtextureplanete4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],110
	mov	[esp+8],130
	mov	[esp],100
	call	_fclscolor
	sub	esp,12
	mov	[esp+4],190
	mov	[esp+8],180
	mov	[esp],200
	call	_fcolor
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_7
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
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],8
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],16
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],24
	mov	[esp],0
	call	_ftext
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vparentplayer0],eax
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vplayer0],eax
	sub	esp,12
	mov	[esp+4],1120403456
	mov	[esp+8],0
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,12
	mov	ebx,[_vtype_ellipsoide]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	[esp+8],1092616192
	mov	[esp+4],1092616192
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,4
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,20
	mov	ebx,[_vgw]
	mov	[esp+12],ebx
	mov	esi,[_vgh]
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,20
	mov	[esp+12],-979615744
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fpositionentity
	mov	[_vx],-2
	jmp	_11
_12
	mov	[_vy],-2
	jmp	_13
_14
	mov	[_vz],-2
	jmp	_15
_16
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],30
	call	_frand
	mov	[_vrndscale],eax
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vspaceplanet],eax
	sub	esp,20
	mov	ebx,10
	imul	ebx,[_vrndscale]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,10
	imul	esi,[_vrndscale]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,10
	imul	ebx,[_vrndscale]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vspaceplanet]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,24
	mov	[esp],50
	mov	[esp+4],200
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],50
	mov	[esp+4],250
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],100
	mov	[esp+4],150
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vspaceplanet]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp],5
	mov	[esp+4],20
	call	_frand
	mov	ebx,100
	imul	ebx,[_vy]
	imul	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],20
	call	_frand
	mov	esi,100
	imul	esi,[_vz]
	imul	esi,eax
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],20
	call	_frand
	mov	esi,100
	imul	esi,[_vx]
	imul	esi,eax
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vspaceplanet]
	mov	[esp],eax
	call	_fpositionentity
	add	[_vz],4
_15
	cmp	[_vz],2
	jle	_16
_5
	add	[_vy],4
_13
	cmp	[_vy],2
	jle	_14
_4
	add	[_vx],4
_11
	cmp	[_vx],2
	jle	_12
_3
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vpivotplanete4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vpivotplanete4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_vpivotplanete4]
	mov	[esp],eax
	call	_fcreatepivot
	mov	[_vpivotorbiplanete4],eax
	sub	esp,8
	mov	[esp],32
	mov	ebx,[_vpivotplanete4]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	[_vplanete4],eax
	sub	esp,12
	mov	[esp+4],1149861888
	mov	[esp+8],0
	mov	eax,[_vplanete4]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,12
	mov	ebx,[_vtype_ellipsoide]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vplanete4]
	mov	[esp],eax
	call	_fentitytype
	sub	esp,20
	mov	[esp+12],1148846080
	mov	[esp+16],0
	mov	[esp+8],1148846080
	mov	[esp+4],1148846080
	mov	eax,[_vplanete4]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtextureplanete4]
	mov	[esp+4],esi
	mov	eax,[_vplanete4]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],3
	mov	esi,[_vtype_ellipsoide]
	mov	[esp+4],esi
	mov	eax,[_vtype_ellipsoide]
	mov	[esp],eax
	call	_fcollisions
	call	_fhidepointer
	jmp	_18
_17
	cmp	[_vparentplayer0],0
	jnz	_19
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	ebx,[_vpivotplanete4]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1161527296
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_20
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldpitch],eax
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldyaw],eax
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldroll],eax
	sub	esp,12
	mov	ebx,[_vpivotplanete4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,32
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],2
	mov	[esp+20],1065353216
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vplayer0]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vpivotorbiplanete4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faligntovector
	mov	ebx,eax
	sub	esp,12
	mov	ebx,[_vpivotorbiplanete4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	ebx,[_voldroll]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_voldyaw]
	mov	[esp+8],esi
	mov	ebx,[_voldpitch]
	mov	[esp+4],ebx
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vcampitch],eax
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vcamyaw],eax
	mov	[_vcamroll],0
_20
	jmp	_21
_19
	mov	ebx,[_vpivotorbiplanete4]
	cmp	[_vparentplayer0],ebx
	jnz	_22
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	ebx,[_vpivotplanete4]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1162346496
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_23
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldpitch],eax
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldyaw],eax
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityroll
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_voldroll],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],1
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,20
	mov	ebx,[_voldroll]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_voldyaw]
	mov	[esp+8],esi
	mov	ebx,[_voldpitch]
	mov	[esp+4],ebx
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentitypitch
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vcampitch],eax
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vcamyaw],eax
	mov	[_vcamroll],0
	jmp	_24
_23
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	ebx,[_vpivotplanete4]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1161936896
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_25
	sub	esp,12
	mov	ebx,[_vpivotplanete4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,32
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+16],2
	mov	[esp+20],1065353216
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vplayer0]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fentityy
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	sub	esp,8
	mov	eax,[_vplayer0]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vpivotorbiplanete4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faligntovector
	mov	ebx,eax
	sub	esp,12
	mov	ebx,[_vpivotorbiplanete4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fentityparent
_25
_24
_22
_21
	sub	esp,20
	mov	ebx,[_vcamroll]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vcamyaw]
	mov	[esp+8],esi
	mov	ebx,[_vcampitch]
	mov	[esp+4],ebx
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[_vmvz]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[_vmvx]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	eax,[_vplayer0]
	mov	[esp],eax
	call	_fgetparent
	mov	[_vparentplayer0],eax
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],3
	mov	esi,[_vtype_ellipsoide]
	mov	[esp+4],esi
	mov	eax,[_vtype_ellipsoide]
	mov	[esp],eax
	call	_fcollisions
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	cmp	[_vparentplayer0],0
	jnz	_26
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],100
	mov	eax,[_vgw]
	sar	eax,byte 2
	mov	[esp],eax
	call	_ftext
	jmp	_28
_26
_28
	mov	ebx,[_vpivotorbiplanete4]
	cmp	[_vparentplayer0],ebx
	jnz	_29
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],100
	mov	eax,3
	imul	eax,[_vgw]
	sar	eax,byte 2
	mov	[esp],eax
	call	_ftext
_29
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vmouse_move_speed]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vdeplacy],eax
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vmouse_move_speed]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vdeplacx],eax
	sub	esp,8
	mov	eax,[_vgw]
	sar	eax,byte 1
	mov	[esp],eax
	mov	ebx,[_vgh]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	sub	esp,4
	mov	[esp],0
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	mov	[_vmvx],0
	mov	[_vmvz],0
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],17
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_31
	mov	ebx,[_vvitesse]
	mov	[_vmvz],ebx
_31
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],31
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_32
	mov	ebx,[_vvitesse]
	neg	ebx
	mov	[_vmvz],ebx
_32
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],32
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_33
	mov	ebx,[_vvitesse]
	mov	[_vmvx],ebx
_33
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],30
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_34
	mov	ebx,[_vvitesse]
	neg	ebx
	mov	[_vmvx],ebx
_34
	sub	esp,8
	mov	eax,[_vcampitch]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vdeplacy]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1135869952
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vcampitch],eax
	sub	esp,8
	mov	eax,[_vcamyaw]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vdeplacx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1135869952
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vcamyaw],eax
	mov	eax,[_vcampitch]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_35
	mov	[_vcampitch],1119092736
_35
	mov	eax,[_vcampitch]
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
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_36
	mov	[_vcampitch],-1028390912
_36
_18
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_17
_6
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmouse_move_speed	.dd	0
	.align	4
_vgw	.dd	0
	.align	4
_vgh	.dd	0
	.align	4
_vtype_ellipsoide	.dd	0
	.align	4
_vspaceplanet	.dd	0
	.align	4
_vx	.dd	0
	.align	4
_vy	.dd	0
	.align	4
_vz	.dd	0
	.align	4
_vparentplayer0	.dd	0
	.align	4
_vplayer0	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vpivotplanete4	.dd	0
	.align	4
_vpivotorbiplanete4	.dd	0
	.align	4
_vplanete4	.dd	0
	.align	4
_vtextureplanete4	.dd	0
	.align	4
_vrndscale	.dd	0
	.align	4
_vmvx	.dd	0
	.align	4
_vmvz	.dd	0
	.align	4
_vvitesse	.dd	0
	.align	4
_vdeplacy	.dd	0
	.align	4
_vdeplacx	.dd	0
	.align	4
_vcampitch	.dd	0
	.align	4
_vcamyaw	.dd	0
	.align	4
_vcamroll	.dd	0
	.align	4
_voldpitch	.dd	0
	.align	4
_voldyaw	.dd	0
	.align	4
_voldroll	.dd	0
_7	.db	"++++",0
_8	.db	"++++",0
_9	.db	"++++",0
_10	.db	"++++",0
_27	.db	"Free cosmos",0
_30	.db	"Planet orbit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
