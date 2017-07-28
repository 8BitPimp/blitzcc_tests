
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
_l_2top
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,12
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_l_2camandlight
	sub	esp,12
	mov	[esp+4],1107296256
	mov	[esp+8],1107296256
	mov	[esp],1107296256
	call	_fambientlight
	mov	[_vcameramovespeed],1036831949
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,8
	mov	[esp],_vcams
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_tcameratype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	ebx,[_vcams]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[_vcams]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcreatepivot
	mov	ebx,[_vcams]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1027080192
	mov	[esp+4],0
	mov	eax,[_vcams]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],1
	mov	ebx,[_vcams]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fcreatelight
	mov	ebx,[_vcams]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],1065353216
	mov	[esp+8],1148846080
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerarange
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],1132396544
	mov	[esp+4],1132396544
	mov	eax,[_vcams]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,8
	mov	eax,[_vcams]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1148846080
	call	_flightrange
_l_2sampleentitys
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],1132396544
	call	_fcreatebrush
	mov	[_vbrush1],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],0
	mov	[esp],0
	call	_fcreatebrush
	mov	[_vbrush2],eax
	sub	esp,12
	mov	[esp+4],1132396544
	mov	[esp+8],1132396544
	mov	[esp],0
	call	_fcreatebrush
	mov	[_vbrush3],eax
	sub	esp,8
	mov	[esp],4
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_ve1],eax
	sub	esp,16
	mov	[esp+8],1103626240
	mov	[esp+12],1103626240
	mov	[esp+4],1103626240
	mov	eax,[_ve1]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1030356992
	mov	eax,[_ve1]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[_ve1]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fnameentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_ve1]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	eax,[_ve1]
	mov	[esp],eax
	mov	ebx,[_vbrush1]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	[_ve2],eax
	sub	esp,16
	mov	[esp+8],1103626240
	mov	[esp+12],1097859072
	mov	[esp+4],1097859072
	mov	eax,[_ve2]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_ve2]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[_ve2]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fnameentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_ve2]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	eax,[_ve2]
	mov	[esp],eax
	mov	ebx,[_vbrush2]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecone
	mov	[_ve3],eax
	sub	esp,16
	mov	[esp+8],1103626240
	mov	[esp+12],1097859072
	mov	[esp+4],1097859072
	mov	eax,[_ve3]
	mov	[esp],eax
	call	_fscalemesh
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1117126656
	mov	eax,[_ve3]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	eax,[_ve3]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fnameentity
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],1
	mov	eax,[_ve3]
	mov	[esp],eax
	call	_fentitypickmode
	sub	esp,8
	mov	eax,[_ve3]
	mov	[esp],eax
	mov	ebx,[_vbrush3]
	mov	[esp+4],ebx
	call	_fpaintentity
_l_2selectbox
	sub	esp,16
	mov	[esp+8],13
	mov	[esp+12],1
	mov	[esp+4],64
	mov	[esp],64
	call	_fcreatetexture
	mov	[_vfittex],eax
	sub	esp,12
	mov	eax,[_vfittex]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],40
	mov	[esp+8],40
	mov	[esp],40
	call	_fcolor
	sub	esp,20
	mov	[esp+12],64
	mov	[esp+16],1
	mov	[esp+8],64
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],0
	jmp	_30
_31
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],63
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	add	[ebp-4],16
_30
	cmp	[ebp-4],63
	jle	_31
_3
	mov	[ebp-8],0
	jmp	_32
_33
	sub	esp,16
	mov	[esp+8],63
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	add	[ebp-8],16
_32
	cmp	[ebp-8],63
	jle	_33
_4
	sub	esp,20
	mov	[esp+12],64
	mov	[esp+16],0
	mov	[esp+8],64
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_l_2main
	jmp	_35
_34
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[_vmaushitl],eax
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	mov	[_vmaushitr],eax
	call	_fmousetest
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[_ve1]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],1065353216
	mov	eax,[_ve2]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1065353216
	mov	[esp+4],-1082130432
	mov	eax,[_ve3]
	mov	[esp],eax
	call	_fturnentity
	call	_ffitallselectboxes
	sub	esp,4
	mov	eax,[_vcams]
	mov	[esp],eax
	call	_fcameraset
	sub	esp,4
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fsetectboxshownames
	sub	esp,4
	mov	[esp],1
	call	_fflip
_35
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_34
_5
	call	_fend
_l_2selectboxfunctions
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcameraset
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,28
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
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
	mov	[esp+16],0
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
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
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
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
	mov	[esp+16],0
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
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
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_frotateentity
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmousetest
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
	mov	[ebp-24],ebx
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,12
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-8]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fcamerapick
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jz	_40
	mov	ebx,[_vmaushitr]
	and	ebx,ebx
	jz	_41
	call	_ffreeselectboxes
_41
	sub	esp,28
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fpickedentity
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fentityname
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[_vmaushitl]
	and	ebx,ebx
	jz	_44
	sub	esp,4
	call	_fpickedentity
	mov	[esp],eax
	call	_fselectbox
_44
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_46
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmousehelp
_40
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-20]
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
	mov	esi,[ebp-16]
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
_fmousehelp
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],20
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_8_leave
_8_leave
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
	ret	word 4
	.align	16
_fselectbox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],0
	jnz	_47
	mov	eax,0
	jmp	_9_leave
_47
	sub	esp,8
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdebuglog
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],_vmyselectbox
	mov	[esp+4],_tmyselectboxtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_49
	mov	ebx,[_vmyselectbox]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_50
	call	_ffreeselectbox
	mov	[ebp-4],1
_50
	sub	esp,4
	mov	eax,_vmyselectbox
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_49
_10
	cmp	[ebp-4],1
	jnz	_51
	mov	eax,0
	jmp	_9_leave
_51
	sub	esp,8
	mov	[esp],_vmyselectbox
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tmyselectboxtype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[_vmyselectbox]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[_vmyselectbox]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[_vmyselectbox]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,8
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vfittex]
	mov	[esp+4],esi
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vfittex]
	mov	[esp+4],esi
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffitselectbox
	mov	eax,1
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fselectboxremoveentity
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],0
	jnz	_52
	mov	eax,0
	jmp	_11_leave
_52
	sub	esp,8
	mov	[esp],_vmyselectbox
	mov	[esp+4],_tmyselectboxtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_12
_53
	mov	ebx,[_vmyselectbox]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[ebp+20]
	jnz	_54
	call	_ffreeselectbox
	mov	eax,1
	jmp	_11_leave
_54
	sub	esp,4
	mov	eax,_vmyselectbox
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_53
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffitselectbox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	mov	[ebp-4],2139081118
	mov	[ebp-8],2139081118
	mov	[ebp-12],2139081118
	mov	[ebp-16],-8402530
	mov	[ebp-20],-8402530
	mov	[ebp-24],-8402530
	mov	[ebp-40],0
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	eax,0
	jle	_55
	mov	[ebp-28],1
	jmp	_56
_57
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fcountvertices
	cmp	eax,1
	jl	_58
	mov	[ebp-32],0
	jmp	_59
_60
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_61
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
_61
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_62
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
_62
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_63
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
_63
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_64
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
_64
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexy
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_65
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
_65
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexz
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_66
	sub	esp,8
	mov	eax,[ebp-36]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
_66
	mov	[ebp-40],1
	add	[ebp-32],1
_59
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	cmp	[ebp-32],eax
	jle	_60
_15
_58
	add	[ebp-28],1
_56
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	cmp	[ebp-28],eax
	jle	_57
_14
_55
	cmp	[ebp-40],0
	jnz	_67
	mov	[ebp-4],0
	mov	[ebp-16],0
	mov	[ebp-8],0
	mov	[ebp-20],0
	mov	[ebp-12],0
	mov	[ebp-24],0
_67
	sub	esp,4
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,20
	mov	ebx,[ebp-64]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,[ebp-64]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-60]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,28
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityyaw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityroll
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-68],eax
	sub	esp,8
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentitypitch
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,32
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1045220557
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1045220557
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[esp+28],0
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1045220557
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffitmesh
	sub	esp,32
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1045220557
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+20],ebx
	mov	esi,[ebp-52]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1045220557
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+24],esi
	mov	[esp+28],0
	mov	esi,[ebp-44]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1045220557
	push	edi
	fld	[esp]
	pop	edi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffitmesh
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
_ffitallselectboxes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[esp],_vmyselectbox
	mov	[esp+4],_tmyselectboxtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_17
_68
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffitselectbox
	sub	esp,4
	mov	eax,_vmyselectbox
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_68
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
_ffreeselectboxes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[esp],_vmyselectbox
	mov	[esp+4],_tmyselectboxtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_19
_69
	call	_ffreeselectbox
	sub	esp,4
	mov	eax,_vmyselectbox
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_69
_19
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
_ffreeselectbox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmoveselectboxes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[esp],_vmyselectbox
	mov	[esp+4],_tmyselectboxtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_22
_70
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	mov	[esp],eax
	call	_ftranslateentity
	sub	esp,4
	mov	eax,_vmyselectbox
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_70
_22
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fsetectboxshownames
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
	mov	[esp],_vmyselectbox
	mov	[esp+4],_tmyselectboxtype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_24
_71
	sub	esp,8
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fentityinview
	cmp	eax,1
	jnz	_72
	sub	esp,24
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vmyselectbox]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityz
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vmyselectbox]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fentityx
	mov	ebx,eax
	mov	eax,[ebp-12]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcameraproject
	call	_fprojectedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	call	_fprojectedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],64
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[_vmyselectbox]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentityname
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
_72
	sub	esp,4
	mov	eax,_vmyselectbox
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_71
_24
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_25	.db	"SelectBoxes Example",0
_26	.db	"",0
	.align	4
_vcameramovespeed	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vcams	.dd	0
	.align	4
_vbrush1	.dd	0
	.align	4
_vbrush2	.dd	0
	.align	4
_vbrush3	.dd	0
	.align	4
_ve1	.dd	0
_27	.db	"Sphere E1",0
	.align	4
_ve2	.dd	0
_28	.db	"Cylinder E2",0
	.align	4
_ve3	.dd	0
_29	.db	"Cone E3",0
	.align	4
_vmyselectbox	.dd	0
	.align	4
_vfittex	.dd	0
	.align	4
_vmaushitl	.dd	0
	.align	4
_vmaushitr	.dd	0
	.align	4
_tcameratype	.dd	5
_36	.dd	0
	.dd	_36
	.dd	_36
	.dd	0
	.dd	-1
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
_tmyselectboxtype	.dd	5
_38	.dd	0
	.dd	_38
	.dd	_38
	.dd	0
	.dd	-1
_39	.dd	0
	.dd	_39
	.dd	_39
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_42	.db	" '",0
_43	.db	"'",0
_45	.db	"PICK A Entity (Mesh) -> Left Mouse = Select",0
_46	.db	" , Right Mouse = Free Select Boxes",0
_48	.db	"SelectBox",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
