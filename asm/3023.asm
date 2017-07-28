
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
	mov	[ebp-36],ebx
	mov	[ebp-4],800
	mov	[ebp-8],600
	mov	[ebp-12],32
	mov	[ebp-16],2
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	call	_fhidepointer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-20],eax
	sub	esp,16
	mov	[esp+8],1140457472
	mov	[esp+12],1000593162
	mov	[esp+4],1000593162
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamerafront],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamerafront]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,8
	mov	eax,[_vcamerafront]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,20
	mov	[esp+12],1106247680
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcamerafront]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1127481344
	mov	[esp+4],0
	mov	eax,[_vcamerafront]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[_vcamerafront]
	mov	[esp],eax
	mov	[esp+4],1023968522
	call	_fcamerazoom
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcameraleft],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+16],esi
	mov	[esp+8],0
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[_vcameraleft]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,8
	mov	eax,[_vcameraleft]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],-1041235968
	mov	eax,[_vcameraleft]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1028390912
	mov	[esp+4],0
	mov	eax,[_vcameraleft]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[_vcameraleft]
	mov	[esp],eax
	mov	[esp+4],1023968522
	call	_fcamerazoom
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcameratop],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+16],esi
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[_vcameratop]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,8
	mov	eax,[_vcameratop]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fcameraprojmode
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1106247680
	mov	[esp+4],0
	mov	eax,[_vcameratop]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[_vcameratop]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,8
	mov	eax,[_vcameratop]
	mov	[esp],eax
	mov	[esp+4],1023968522
	call	_fcamerazoom
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera3d],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+16],esi
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[_vcamera3d]
	mov	[esp],eax
	call	_fcameraviewport
	sub	esp,20
	mov	[esp+12],-1041235968
	mov	[esp+16],0
	mov	[esp+8],1106247680
	mov	[esp+4],1106247680
	mov	eax,[_vcamera3d]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1110704128
	mov	[esp+4],1110704128
	mov	eax,[_vcamera3d]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],1028443341
	mov	[esp+12],1098907648
	mov	[esp+4],1098907648
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],-1119040307
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,16
	mov	[esp+8],1123680256
	mov	[esp+12],1123680256
	mov	[esp+4],1123680256
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fentitycolor
	mov	[ebp-28],10
	mov	[_vobjectscount],0
	sub	esp,4
	mov	eax,_aobjectmesh
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[ebp-28]
	mov	esi,_aobjectmesh
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aobjectmesh
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-32],1
	jmp	_7
_8
	add	[_vobjectscount],1
	mov	ebx,[_vobjectscount]
	mov	[ebp-36],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_aobjectmesh]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-36]
	shl	eax,byte 2
	add	eax,[_aobjectmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],1056964608
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-36]
	shl	eax,byte 2
	add	eax,[_aobjectmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionmesh
	sub	esp,24
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	shl	eax,byte 2
	add	eax,[_aobjectmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,28
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-40],eax
	sub	esp,8
	mov	[esp],-1054867456
	mov	[esp+4],1092616192
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-40]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[esp+8],0
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_aobjectmesh]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpositionentity
	mov	ebx,eax
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
	mov	eax,[ebp-36]
	shl	eax,byte 2
	add	eax,[_aobjectmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	add	[ebp-32],1
_7
	cmp	[ebp-32],10
	jle	_8
_3
_9
	call	_flogicupdate
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,0
	jle	_10
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	jmp	_11
_10
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
_11
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
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
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],200
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sar	esi,byte 1
	sub	esi,1
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sar	esi,byte 1
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	sar	eax,byte 1
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	sar	eax,byte 1
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jle	_9
_4
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
_flogicupdate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_16
_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aobjectmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1036831949
	mov	[esp+4],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aobjectmesh]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	add	[ebp-4],1
_16
	mov	ebx,[_vobjectscount]
	cmp	[ebp-4],ebx
	jle	_17
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vcamerafront	.dd	0
	.align	4
_vcameraleft	.dd	0
	.align	4
_vcameratop	.dd	0
	.align	4
_vcamera3d	.dd	0
	.align	4
_vobjectscount	.dd	0
	.align	4
_aobjectmesh	.dd	0
	.dd	1
	.dd	1
	.dd	0
_12	.db	"Front view",0
_13	.db	"Left view",0
_14	.db	"Top view",0
_15	.db	"3D view",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

