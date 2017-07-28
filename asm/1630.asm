
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,68
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
	mov	[_vgx],1024
	mov	[_vgy],768
	mov	ebx,[_vgx]
	sar	ebx,byte 1
	mov	[_vhx],ebx
	mov	ebx,[_vgy]
	sar	ebx,byte 1
	mov	[_vhy],ebx
	mov	ebx,[_vgx]
	sar	ebx,byte 2
	mov	[_vhhx],ebx
	mov	ebx,[_vgy]
	sar	ebx,byte 2
	mov	[_vhhy],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vgy]
	mov	[esp+4],esi
	mov	eax,[_vgx]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	mov	eax,_avertex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10000
	mov	esi,_avertex
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_avertex
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avertex
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atriangle
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4000
	mov	esi,_atriangle
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_atriangle
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atriangle
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_arv
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10000
	mov	esi,_arv
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_arv
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_art
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4000
	mov	esi,_art
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_art
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vnumberv],-1
	mov	[_vnumbert],-1
	mov	[_vjn],0
	mov	[_vavt],1
	mov	[_vvfl],1
	mov	[_vvm],0
	mov	[_vtfl],0
	mov	[_vnt],1
	call	_fhidepointer
	sub	esp,12
	mov	[esp+4],10
	mov	[esp+8],1
	mov	[esp],10
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],3
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],4
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],5
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],6
	mov	[esp+4],0
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],4
	mov	[esp+4],4
	mov	[esp],5
	call	_fline
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],_vmodus
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_foef
	mov	[ebp-8],0
	call	_fcls
_38
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_39
	call	_fcls
_39
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1066192077
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_40
	mov	[ebp-8],0
_40
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],47
	call	_fkeyhit
	mov	[ebp-64],eax
	sub	esp,4
	mov	[esp],211
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_41
	sub	[_vnumberv],1
_41
	sub	esp,4
	mov	[esp],20
	call	_fkeyhit
	mov	[ebp-64],eax
	sub	esp,4
	mov	[esp],211
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_42
	sub	[_vnumbert],1
_42
	sub	esp,16
	mov	ebx,[_vgx]
	mov	[esp+8],ebx
	mov	esi,[_vhy]
	mov	[esp+12],esi
	mov	esi,[_vhy]
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	ebx,[_vhx]
	mov	[esp+8],ebx
	mov	esi,[_vgy]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vhx]
	mov	[esp],eax
	call	_fline
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],5
	mov	[esp],5
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],5
	mov	eax,[_vhx]
	add	eax,5
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[_vhy]
	add	ebx,5
	mov	[esp+4],ebx
	mov	[esp],5
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[_vnumberv]
	add	ebx,1
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[_vhy]
	add	ebx,5
	mov	[esp+4],ebx
	mov	eax,[_vhx]
	add	eax,10
	mov	[esp],eax
	call	_ftext
	sub	esp,32
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[_vnumbert]
	add	ebx,1
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[_vhy]
	add	ebx,20
	mov	[esp+4],ebx
	mov	eax,[_vhx]
	add	eax,10
	mov	[esp],eax
	call	_ftext
	sub	esp,32
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_vmodus
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[_vhy]
	add	ebx,35
	mov	[esp+4],ebx
	mov	eax,[_vhx]
	add	eax,10
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_49
	call	_fchangevfl
_49
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_50
	call	_fchangevm
_50
	cmp	[_vvm],1
	jnz	_51
	call	_fvm
	call	_fvv
_51
	cmp	[_vvfl],1
	jnz	_52
	call	_fvfl
_52
	call	_ftfl
	call	_ftz
	call	_fvz
	sub	esp,4
	mov	[esp],1
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_38
_3
	call	_fcls
	sub	esp,12
	mov	eax,_va10
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_54
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_53
	sub	esp,8
	mov	[esp],_va10
	mov	[ebp-64],eax
	sub	esp,4
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
_53
	sub	esp,16
	mov	eax,_va10
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[_vnumberv]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[_vnumbert]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	mov	[ebp-16],0
	jmp	_57
_58
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-16],1
_57
	mov	ebx,[_vnumberv]
	cmp	[ebp-16],ebx
	jle	_58
_4
	mov	[ebp-16],0
	jmp	_59
_60
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteline
	add	[ebp-16],1
_59
	mov	ebx,[_vnumbert]
	cmp	[ebp-16],ebx
	jle	_60
_5
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	call	_fcls
	call	_fhidepointer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vgy]
	mov	[esp+4],esi
	mov	eax,[_vgx]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-24],eax
	sub	esp,16
	mov	[esp+8],1112014848
	mov	[esp+12],1112014848
	mov	[esp+4],1112014848
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcameraclscolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatemesh
	mov	[_vmesh],eax
	sub	esp,8
	mov	eax,[_vmesh]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-28],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-16],0
	jmp	_61
_62
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_faddvertex
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_arv]
	mov	[ebx],eax
	add	[ebp-16],1
_61
	mov	ebx,[_vnumberv]
	cmp	[ebp-16],ebx
	jle	_62
_6
	mov	[ebp-16],0
	jmp	_63
_64
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	sub	esp,16
	mov	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_arv]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_arv]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_arv]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_faddtriangle
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_art]
	mov	[ebx],eax
	add	[ebp-16],1
_63
	mov	ebx,[_vnumbert]
	cmp	[ebp-16],ebx
	jle	_64
_7
	call	_flines
_65
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_66
	sub	esp,36
	mov	eax,_va10
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_67
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsavebuffer
	mov	ebx,eax
	add	[ebp-44],1
_66
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_69
	mov	ebx,1
	sub	ebx,[ebp-48]
	mov	[ebp-48],ebx
_69
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_70
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_70
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_71
	sub	esp,16
	mov	[esp+8],-1082130432
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_71
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_72
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1065353216
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_72
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_73
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],-1082130432
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_73
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_74
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1065353216
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_74
	sub	esp,4
	mov	[esp],44
	call	_fkeydown
	and	eax,eax
	jz	_75
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1082130432
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
_75
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_fwireframe
	sub	esp,16
	mov	[esp+8],0
	call	_fmousezspeed
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmoveentity
	call	_fmousexspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1048576000
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-52],eax
	call	_fmouseyspeed
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1048576000
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-56],eax
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-64],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-64]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	mov	ebx,[ebp-56]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-60]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-60],esi
	cmp	[ebp-60],-85
	jge	_76
	mov	[ebp-60],-85
_76
	cmp	[ebp-60],85
	jle	_77
	mov	[ebp-60],85
_77
	sub	esp,28
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fentityyaw
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_65
_8
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
_fchangevfl
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vvfl],0
	jnz	_78
	mov	[_vvfl],1
	jmp	_79
_78
	mov	[_vvfl],0
_79
	mov	[_vvm],0
	mov	[_vtfl],0
	sub	esp,8
	mov	[esp],_vmodus
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vnt],1
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fchangevm
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vvm],0
	jnz	_81
	mov	[_vvm],1
	jmp	_82
_81
	mov	[_vvm],0
_82
	mov	[_vvfl],0
	mov	[_vtfl],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],_vmodus
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_83
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vnt],1
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fchangem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_84
_85
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_86
	mov	ebx,0
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,5
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	jmp	_87
_86
	mov	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,5
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_87
	add	[ebp-4],1
_84
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_85
_12
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fline3d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vc1],eax
	sub	esp,20
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vc1]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vc1]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[_vc1]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[_vc2],eax
	sub	esp,20
	mov	ebx,[ebp+40]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+36]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+32]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vc2]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[_vc2]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1132396544
	mov	[esp+4],0
	mov	eax,[_vc2]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[_vp],eax
	sub	esp,20
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vp]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[_vc1]
	mov	[esp],eax
	mov	ebx,[_vc2]
	mov	[esp+4],ebx
	call	_fentitydistance
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-4],esi
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	[esp],8
	call	_fcreatecylinder
	mov	[_vc3],eax
	sub	esp,20
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp+28]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	[esp+16],0
	mov	esi,[ebp+20]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vc3]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	[esp+4],1056964608
	mov	eax,[_vc3]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],1132396544
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vc3]
	mov	[esp],eax
	call	_fentitycolor
	sub	esp,12
	mov	ebx,[_vp]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vc3]
	mov	[esp],eax
	call	_fentityparent
	sub	esp,12
	mov	ebx,[_vc2]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vp]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[_vp]
	mov	[esp],eax
	call	_fturnentity
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_flines
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
	mov	[ebp-4],0
	jmp	_88
_89
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	sub	esp,24
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	mov	[esp+16],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+20],esi
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+12],esi
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	mov	[esp+8],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+4],esi
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	neg	eax
	mov	[esp],eax
	call	_fline3d
	sub	esp,24
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	mov	[esp+16],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+20],esi
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+12],esi
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	mov	[esp+8],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+4],esi
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	neg	eax
	mov	[esp],eax
	call	_fline3d
	sub	esp,24
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	mov	[esp+16],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+20],esi
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+12],esi
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	neg	ebx
	mov	[esp+8],ebx
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	esi,[esi]
	neg	esi
	mov	[esp+4],esi
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	neg	eax
	mov	[esp],eax
	call	_fline3d
	add	[ebp-4],1
_88
	mov	ebx,[_vnumbert]
	cmp	[ebp-4],ebx
	jle	_89
_15
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fneuvertex
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fneutriangle
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_foef
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
	sub	esp,8
	mov	[esp],_va10
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcommandline
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	eax,_va10
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_91
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_90
	sub	esp,8
	mov	[esp],_va10
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_92
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
_90
	sub	esp,12
	mov	eax,_va10
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_94
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_93
	jmp	_l_18endoef
_93
	sub	esp,16
	mov	eax,_va10
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_95
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_96
	jmp	_l_18endoef
_96
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-16],0
	jmp	_97
_98
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-28],eax
	add	[_vnumberv],1
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[_vnumberv]
	mov	[esp],eax
	call	_fneuvertex
	add	[ebp-16],1
_97
	mov	ebx,[ebp-8]
	cmp	[ebp-16],ebx
	jle	_98
_19
	mov	[ebp-16],0
	jmp	_99
_100
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadline
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-28],eax
	add	[_vnumbert],1
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[_vnumbert]
	mov	[esp],eax
	call	_fneutriangle
	add	[ebp-16],1
_99
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jle	_100
_20
_l_18endoef
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
_fvfl
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	cmp	eax,1
	jnz	_101
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	mov	[_vjn],1
_101
	cmp	[_vjn],1
	jnz	_102
	mov	ebx,[_vhx]
	cmp	[ebp-4],ebx
	jle	_103
	mov	[_vx1],1
	jmp	_104
_103
	mov	[_vx1],0
_104
	mov	ebx,[_vhy]
	cmp	[ebp-8],ebx
	jle	_105
	mov	[_vy1],1
	jmp	_106
_105
	mov	[_vy1],0
_106
	cmp	[_vx1],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vy1],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_107
	add	[_vnumberv],1
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	ebx,[_vhhy]
	mov	[esp+12],ebx
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[_vnumberv]
	mov	[esp],eax
	call	_fneuvertex
_107
	cmp	[_vx1],1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vy1],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_108
	add	[_vnumberv],1
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	sub	ebx,[_vhx]
	mov	[esp+12],ebx
	mov	ebx,[_vhhy]
	mov	[esp+4],ebx
	mov	eax,[_vnumberv]
	mov	[esp],eax
	call	_fneuvertex
_108
	cmp	[_vx1],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vy1],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_109
	add	[_vnumberv],1
	sub	esp,16
	mov	ebx,[_vhhy]
	mov	[esp+8],ebx
	call	_fmousey
	sub	eax,[_vhy]
	mov	[esp+12],eax
	call	_fmousex
	mov	[esp+4],eax
	mov	ebx,[_vnumberv]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fneuvertex
	mov	ebx,eax
_109
	mov	[_vjn],0
_102
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftfl
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[_vtvc],0
	mov	[ebp-4],0
	jmp	_110
_111
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_112
	add	[_vtvc],1
_112
	add	[ebp-4],1
_110
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_111
_23
	cmp	[_vtvc],3
	jge	_113
	mov	[_vtvc],0
	jmp	_114
_113
	cmp	[_vtvc],3
	jle	_115
	mov	[_vtvc],0
_115
_114
	mov	[_vnt],0
	cmp	[_vtvc],3
	jnz	_116
_116
	sub	esp,4
	mov	[esp],48
	call	_fkeyhit
	and	eax,eax
	jz	_117
	add	[_vnumbert],1
	mov	[ebp-4],0
	jmp	_118
_119
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_120
	mov	ebx,[ebp-4]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vavt]
	add	esi,[_vnumbert]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_vnumbert]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	add	[_vavt],1
	cmp	[_vavt],4
	jnz	_121
	mov	[_vavt],1
_121
_120
	add	[ebp-4],1
_118
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_119
_24
	add	[_vnumbert],1
	mov	[ebp-4],0
	jmp	_122
_123
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_124
	mov	ebx,[ebp-4]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vavt]
	add	esi,[_vnumbert]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_vnumbert]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	add	[_vavt],1
	cmp	[_vavt],4
	jnz	_125
	mov	[_vavt],1
_125
_124
	add	[ebp-4],1
_122
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_123
_25
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[_vnumbert]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[_vnumbert]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[_vnumbert]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[_vnumbert]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
_117
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvm
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
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_126
	call	_fmousex
	mov	[_vx3],eax
	call	_fmousey
	mov	[_vy3],eax
	mov	[_vrectjn],1
_126
	cmp	[_vy3],21
	jge	_127
	mov	[_vy3],20
_127
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_128
	call	_fmousex
	cmp	eax,[_vhx]
	jge	_129
	mov	[_vx2],0
	jmp	_130
_129
	mov	[_vx2],1
_130
	call	_fmousey
	cmp	eax,[_vhy]
	jle	_131
	mov	[_vy2],1
	jmp	_132
_131
	mov	[_vy2],0
_132
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	call	_fmousey
	sub	eax,[_vy3]
	mov	[esp+12],eax
	mov	[esp+16],0
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	sub	ebx,[_vx3]
	mov	[esp+8],ebx
	mov	esi,[_vy3]
	mov	[esp+4],esi
	mov	eax,[_vx3]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_133
_128
	mov	[_vrectjn],0
_133
	cmp	[_vx2],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vy2],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_134
	mov	[ebp-4],0
	jmp	_135
_136
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vx3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-16]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vy3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],29
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vrectjn],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_137
	mov	ebx,0
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	jmp	_138
_137
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vx3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-16]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vy3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vrectjn],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_139
	mov	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_139
_138
	add	[ebp-4],1
_135
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_136
_27
_134
	cmp	[_vx2],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vy2],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_140
	mov	[ebp-4],0
	jmp	_141
_142
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vx3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-16]
	sub	esi,[_vhy]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	esi,[_vy3]
	sub	esi,[_vhy]
	cmp	ebx,esi
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],29
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vrectjn],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_143
	mov	ebx,0
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	jmp	_144
_143
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vx3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-16]
	sub	esi,[_vhy]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	esi,[_vy3]
	sub	esi,[_vhy]
	cmp	ebx,esi
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vrectjn],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_145
	mov	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_145
_144
	add	[ebp-4],1
_141
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_142
_28
_140
	cmp	[_vx2],1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vy2],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_146
	mov	[ebp-4],0
	jmp	_147
_148
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	imul	eax,3
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	sub	ebx,[_vhx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	esi,[_vx3]
	sub	esi,[_vhx]
	cmp	ebx,esi
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-16]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vy3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],29
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vrectjn],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_149
	mov	ebx,0
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
	jmp	_150
_149
	mov	eax,_avertex
	add	eax,12
	mov	eax,[eax]
	imul	eax,3
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_avertex]
	mov	eax,[eax]
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	sub	ebx,[_vhx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	esi,[_vx3]
	sub	esi,[_vhx]
	cmp	ebx,esi
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],eax
	mov	eax,esi
	call	_fmousey
	mov	esi,eax
	mov	eax,[ebp-16]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,[_vy3]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vrectjn],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_151
	mov	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_151
_150
	add	[ebp-4],1
_147
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_148
_29
_146
	sub	esp,4
	mov	[esp],157
	call	_fkeyhit
	and	eax,eax
	jz	_152
	call	_fchangem
_152
	mov	[ebp-4],0
	jmp	_153
_154
	mov	[_vtvc],0
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_155
	add	[_vtvc],1
_155
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_156
	add	[_vtvc],1
_156
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_157
	add	[_vtvc],1
_157
	cmp	[_vtvc],3
	jnz	_158
	mov	ebx,1
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
	jmp	_159
_158
	mov	ebx,0
	mov	esi,_atriangle
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_atriangle]
	mov	[esi],ebx
_159
	add	[ebp-4],1
_153
	mov	ebx,[_vnumbert]
	cmp	[ebp-4],ebx
	jle	_154
_30
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvv
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-4],0
	jmp	_160
_161
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_162
	sub	esp,4
	mov	[esp],71
	call	_fkeyhit
	and	eax,eax
	jz	_163
	mov	[ebp-8],1
_163
	sub	esp,4
	mov	[esp],79
	call	_fkeyhit
	and	eax,eax
	jz	_164
	mov	[ebp-12],1
_164
	sub	esp,4
	mov	[esp],72
	call	_fkeyhit
	and	eax,eax
	jz	_165
	mov	[ebp-16],1
_165
	sub	esp,4
	mov	[esp],80
	call	_fkeyhit
	and	eax,eax
	jz	_166
	mov	[ebp-20],1
_166
	sub	esp,4
	mov	[esp],73
	call	_fkeyhit
	and	eax,eax
	jz	_167
	mov	[ebp-24],1
_167
	sub	esp,4
	mov	[esp],81
	call	_fkeyhit
	and	eax,eax
	jz	_168
	mov	[ebp-28],1
_168
	cmp	[ebp-8],1
	jnz	_169
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_169
	cmp	[ebp-12],1
	jnz	_170
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_170
	cmp	[ebp-16],1
	jnz	_171
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_171
	cmp	[ebp-20],1
	jnz	_172
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_172
	cmp	[ebp-24],1
	jnz	_173
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_173
	cmp	[ebp-28],1
	jnz	_174
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_avertex
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_avertex]
	mov	[esi],ebx
_174
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_162
	add	[ebp-4],1
_160
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_161
_32
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
_ftz
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,92
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
	mov	[ebp-4],0
	jmp	_175
_176
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-44],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-48],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-56],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-60],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-64],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-68],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-72],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-76],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-80],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-84],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-88],ebx
	mov	ebx,_atriangle
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_atriangle]
	mov	ebx,[ebx]
	mov	[ebp-92],ebx
	cmp	[ebp-92],1
	jnz	_177
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],200
	call	_fcolor
	jmp	_178
_177
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
_178
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-40]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fline
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
	sub	esp,8
	mov	[esp],0
	mov	ebx,[_vhy]
	mov	[esp+4],ebx
	call	_forigin
	sub	esp,16
	mov	ebx,[ebp-52]
	mov	[esp+8],ebx
	mov	esi,[ebp-56]
	mov	[esp+12],esi
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-48]
	mov	[esp+4],esi
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-60]
	mov	[esp+8],ebx
	mov	esi,[ebp-64]
	mov	[esp+12],esi
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-52]
	mov	[esp],eax
	call	_fline
	sub	esp,8
	mov	eax,[_vhx]
	mov	[esp],eax
	mov	[esp+4],0
	call	_forigin
	sub	esp,16
	mov	ebx,[ebp-76]
	mov	[esp+8],ebx
	mov	esi,[ebp-80]
	mov	[esp+12],esi
	mov	esi,[ebp-72]
	mov	[esp+4],esi
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-84]
	mov	[esp+8],ebx
	mov	esi,[ebp-88]
	mov	[esp+12],esi
	mov	esi,[ebp-72]
	mov	[esp+4],esi
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-84]
	mov	[esp+8],ebx
	mov	esi,[ebp-88]
	mov	[esp+12],esi
	mov	esi,[ebp-80]
	mov	[esp+4],esi
	mov	eax,[ebp-76]
	mov	[esp],eax
	call	_fline
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_forigin
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	add	[ebp-4],1
_175
	mov	ebx,[_vnumbert]
	add	ebx,1
	cmp	[ebp-4],ebx
	jle	_176
_34
	mov	eax,0
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fvz
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
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-4],0
	jmp	_179
_180
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-28],ebx
	mov	ebx,_avertex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_avertex]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	cmp	[ebp-32],1
	jnz	_181
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],200
	call	_fcolor
_181
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],512
	call	_forigin
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	[esp],640
	mov	[esp+4],0
	call	_forigin
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_forigin
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	add	[ebp-4],1
_179
	mov	ebx,[_vnumberv]
	cmp	[ebp-4],ebx
	jle	_180
_36
	mov	eax,0
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vgx	.dd	0
	.align	4
_vgy	.dd	0
	.align	4
_vhx	.dd	0
	.align	4
_vhy	.dd	0
	.align	4
_vhhx	.dd	0
	.align	4
_vhhy	.dd	0
	.align	4
_avertex	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atriangle	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_arv	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_art	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vnumberv	.dd	0
	.align	4
_vnumbert	.dd	0
	.align	4
_vjn	.dd	0
	.align	4
_vavt	.dd	0
	.align	4
_vvfl	.dd	0
	.align	4
_vvm	.dd	0
	.align	4
_vtfl	.dd	0
	.align	4
_vx1	.dd	0
	.align	4
_vmodus	.dd	0
	.align	4
_vmeld	.dd	0
	.align	4
_vx2	.dd	0
	.align	4
_vx3	.dd	0
	.align	4
_vy1	.dd	0
	.align	4
_vtvc	.dd	0
	.align	4
_vnt	.dd	0
	.align	4
_vy2	.dd	0
	.align	4
_vy3	.dd	0
	.align	4
_vrectjn	.dd	0
	.align	4
_vc1	.dd	0
	.align	4
_vc2	.dd	0
	.align	4
_vc3	.dd	0
	.align	4
_vp	.dd	0
_37	.db	"Create Vertices",0
	.align	4
_va10	.dd	0
_43	.db	"Front",0
_44	.db	"Left",0
_45	.db	"Top",0
_46	.db	"Vertex/ices:  ",0
_47	.db	"Triangles:    ",0
_48	.db	"Modus:        ",0
_54	.db	"",0
_55	.db	"Name?  ",0
_56	.db	".ogs",0
	.align	4
_vmesh	.dd	0
_67	.db	" ",0
_68	.db	".bmp",0
_80	.db	"Create Vertices ",0
_83	.db	"Mark Vertices/Triangles ",0
_91	.db	"",0
_92	.db	"Name?  ",0
_94	.db	"",0
_95	.db	".ogs",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

