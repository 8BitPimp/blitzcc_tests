
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],1036831949
	mov	[esp+8],1120403456
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,4
	mov	eax,_astatic
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_astatic
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astatic
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],1
	jmp	_14
_15
	add	[_vstaticscount],1
	mov	ebx,[_vstaticscount]
	mov	[ebp-12],ebx
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],2
	call	_frand
	mov	[ebp-16],eax
	cmp	[ebp-16],1
	jnz	_16
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_astatic]
	mov	[ebx],eax
	jmp	_17
_16
	cmp	[ebp-16],2
	jnz	_18
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_astatic]
	mov	[ebx],eax
_18
_17
	sub	esp,16
	mov	[esp+8],1048576000
	mov	[esp+12],1048576000
	mov	[esp+4],1048576000
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_astatic]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1048576000
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_astatic]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionmesh
_l_2linechoosestaticposition
	sub	esp,28
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_astatic]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	mov	[ebp-20],1
	jmp	_19
_20
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jz	_21
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_astatic]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_astatic]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1060655596
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_22
	jmp	_l_2linechoosestaticposition
_22
_21
	add	[ebp-20],1
_19
	mov	ebx,[_vstaticscount]
	cmp	[ebp-20],ebx
	jle	_20
_4
	add	[ebp-8],1
_14
	cmp	[ebp-8],10
	jle	_15
_3
	sub	esp,4
	mov	eax,_aturningmoving
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_aturningmoving
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aturningmoving
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],1
	jmp	_23
_24
	add	[_vturningmovingscount],1
	mov	ebx,[_vturningmovingscount]
	mov	[ebp-12],ebx
	sub	esp,8
	mov	[esp],16
	mov	[esp+4],0
	call	_fcreatesphere
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1048576000
	mov	[esp+12],1048576000
	mov	[esp+4],1048576000
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],1000593162
	mov	[esp+12],1056964608
	mov	[esp+4],1000593162
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,28
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-32],eax
	sub	esp,8
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,12
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentityparent
_l_2linechooseturningmovingposition
	sub	esp,28
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-32]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],1048576000
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aturningmoving]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
	mov	[ebp-20],1
	jmp	_25
_26
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_astatic]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1058810102
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_27
	jmp	_l_2linechooseturningmovingposition
_27
	add	[ebp-20],1
_25
	mov	ebx,[_vstaticscount]
	cmp	[ebp-20],ebx
	jle	_26
_6
	mov	[ebp-20],1
	jmp	_28
_29
	mov	ebx,[ebp-12]
	cmp	[ebp-20],ebx
	jz	_30
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_astatic]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_astatic]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fentitydistance
	mov	ebx,1056964608
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_31
	jmp	_l_2linechooseturningmovingposition
_31
_30
	add	[ebp-20],1
_28
	mov	ebx,[_vstaticscount]
	cmp	[ebp-20],ebx
	jle	_29
_7
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
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	add	[ebp-8],1
_23
	cmp	[ebp-8],2
	jle	_24
_5
	sub	esp,20
	mov	[esp+12],-1058013184
	mov	[esp+16],0
	mov	[esp+8],1089470464
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1110704128
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frotateentity
	mov	[ebp-12],1
	jmp	_32
_33
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_astatic]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytype
	add	[ebp-12],1
_32
	mov	ebx,[_vstaticscount]
	cmp	[ebp-12],ebx
	jle	_33
_8
	mov	[ebp-12],1
	jmp	_34
_35
	sub	esp,12
	mov	[esp+4],1048576000
	mov	[esp+8],0
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityradius
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],0
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytype
	add	[ebp-12],1
_34
	mov	ebx,[_vturningmovingscount]
	cmp	[ebp-12],ebx
	jle	_35
_9
	sub	esp,16
	mov	[esp+8],2
	mov	[esp+12],1
	mov	[esp+4],1
	mov	[esp],2
	call	_fcollisions
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],1
	mov	[esp+4],2
	mov	[esp],2
	call	_fcollisions
	jmp	_37
_36
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	cmp	eax,1
	jnz	_38
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1069547520
	mov	[esp+4],0
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_39
_38
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	cmp	eax,1
	jnz	_40
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1077936128
	mov	[esp+4],0
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
_40
_39
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	cmp	eax,1
	jnz	_41
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_42
_41
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	cmp	eax,1
	jnz	_43
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1119040307
	mov	[esp+4],0
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
_43
_42
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	cmp	eax,1
	jnz	_44
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1069547520
	mov	[esp+4],0
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	jmp	_45
_44
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	cmp	eax,1
	jnz	_46
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1077936128
	mov	[esp+4],0
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
_46
_45
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	cmp	eax,1
	jnz	_47
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1028443341
	mov	[esp+4],0
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	jmp	_48
_47
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	cmp	eax,1
	jnz	_49
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1119040307
	mov	[esp+4],0
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
_49
_48
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	mov	[ebp-12],1
	jmp	_50
_51
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_astatic]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-12],1
_50
	mov	ebx,[_vstaticscount]
	cmp	[ebp-12],ebx
	jle	_51
_11
	mov	[ebp-12],1
	jmp	_52
_53
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-12],1
_52
	mov	ebx,[_vturningmovingscount]
	cmp	[ebp-12],ebx
	jle	_53
_12
	mov	[ebp-12],1
	jmp	_54
_55
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcountcollisions
	mov	[ebp-28],eax
	cmp	[ebp-28],0
	jle	_56
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,24
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aturningmoving]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fcollisionentity
	mov	[esp],eax
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1123680256
	call	_fentitycolor
_56
	add	[ebp-12],1
_54
	mov	ebx,[_vturningmovingscount]
	cmp	[ebp-12],ebx
	jle	_55
_13
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_37
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_36
_10
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
_vstaticscount	.dd	0
	.align	4
_astatic	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vturningmovingscount	.dd	0
	.align	4
_aturningmoving	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

