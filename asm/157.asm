
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
	sub	esp,12
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[_vwidth],352
	mov	[_vheight],420
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],196
	mov	[esp],128
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],_vimage
	mov	[ebp-64],eax
	sub	esp,4
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_38
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
	sub	esp,12
	mov	eax,_vimage
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_39
	sub	esp,8
	mov	[esp],_vimage
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
_39
	sub	esp,12
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
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
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_43
	mov	[ebp-4],1120403456
_43
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	sub	esp,12
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[_vtilesizex],eax
	cmp	[_vtilesizex],0
	jnz	_45
	mov	[_vtilesizex],8
_45
	sub	esp,12
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[_vtilesizey],eax
	cmp	[_vtilesizey],0
	jnz	_47
	mov	[_vtilesizey],8
_47
	sub	esp,8
	mov	eax,_vimage
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	mov	[_vpicwidth],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimageheight
	mov	[_vpicheight],eax
	mov	ebx,[_vtilesizex]
	imul	ebx,[_vtilesizey]
	mov	[_vtilesize],ebx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_ffreeimage
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1128469299
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vtilesize]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vmaxloss],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1128469299
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,[_vtilesize]
	mov	ecx,20
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vthreshold],ebx
	mov	eax,[_vpicwidth]
	mov	ecx,[_vtilesizex]
	cdq
	idiv	ecx
	mov	[_vtilesx],eax
	mov	eax,[_vpicheight]
	mov	ecx,[_vtilesizey]
	cdq
	idiv	ecx
	mov	[_vtilesy],eax
	mov	ebx,[_vtilesx]
	imul	ebx,[_vtilesy]
	mov	[_vmapsize],ebx
	call	_fmillisecs
	mov	[ebp-16],eax
	mov	ebx,[_vpicwidth]
	add	ebx,32
	mov	[_vwidth],ebx
	mov	ebx,[_vpicheight]
	add	ebx,260
	mov	[_vheight],ebx
	cmp	[_vwidth],352
	jge	_48
	mov	[_vwidth],352
_48
	cmp	[_vheight],420
	jge	_49
	mov	[_vheight],420
_49
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],196
	mov	[esp],128
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	ebx,[_vpicheight]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vpicwidth]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-20],eax
	mov	ebx,[_vwidth]
	sub	ebx,[_vpicwidth]
	sar	ebx,byte 1
	mov	[_voffsetx],ebx
	mov	ebx,[_vheight]
	sub	ebx,[_vpicheight]
	sar	ebx,byte 2
	mov	[_voffsety],ebx
	sub	esp,4
	mov	eax,_anewmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapsize]
	mov	esi,_anewmap
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anewmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aflipmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapsize]
	mov	esi,_aflipmap
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aflipmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apercentmap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapsize]
	mov	esi,_apercentmap
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apercentmap
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetred
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetred
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetred
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetred
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetgreen
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetgreen
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetgreen
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetgreen
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetblue
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetblue
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetblue
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetblue
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetredflipx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetredflipx
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetredflipx
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetredflipx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetgreenflipx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetgreenflipx
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetgreenflipx
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetgreenflipx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetblueflipx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetblueflipx
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetblueflipx
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetblueflipx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetredflipy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetredflipy
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetredflipy
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetredflipy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetgreenflipy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetgreenflipy
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetgreenflipy
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetgreenflipy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetblueflipy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetblueflipy
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetblueflipy
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetblueflipy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetredflipxy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetredflipxy
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetredflipxy
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetredflipxy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetgreenflipxy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetgreenflipxy
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetgreenflipxy
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetgreenflipxy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atilesetblueflipxy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vtilesize]
	mov	esi,_atilesetblueflipxy
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vmapsize]
	mov	esi,_atilesetblueflipxy
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atilesetblueflipxy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acountarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmapsize]
	mov	esi,_acountarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acountarray
	mov	[esp],eax
	call	__bbDimArray
	call	_fsetup
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[_vmapsize]
	mov	[esp+16],esi
	mov	esi,[_vtilesizey]
	mov	[esp+8],esi
	mov	ebx,[_vtilesizex]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_vimage
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vtiles],eax
	call	_fprecalculate
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	call	_fmillisecs
	mov	[ebp-24],eax
	call	_fdrawdestination
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,[ebp-24]
	sub	eax,[ebp-16]
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	[esp+16],0
	mov	esi,[_voffsety]
	sub	esi,20
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	call	_fmain
	mov	ebx,[_vmapsize]
	sub	ebx,1
	mov	[ebp-28],ebx
	jmp	_52
_53
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	ebx,[ebp-32]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	cmp	[ebp-32],ebx
	jz	_54
	mov	ebx,[ebp-32]
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
_54
	add	[ebp-28],-1
_52
	cmp	[ebp-28],0
	jge	_53
_3
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_ffliptiles
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	ebx,[_voffsety]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_voffsetx]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdrawimage
	mov	[ebp-28],0
	jmp	_55
_56
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[ebp-40],ebx
	jmp	_57
_58
	mov	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	cmp	[ebp-36],ebx
	jnz	_59
	mov	ebx,0
	mov	esi,[ebp-40]
	shl	esi,byte 2
	add	esi,[_acountarray]
	mov	[esi],ebx
_59
	add	[ebp-40],1
_57
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[ebp-40],ebx
	jle	_58
_5
	add	[ebp-28],1
_55
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_56
_4
	mov	[ebp-44],0
	mov	[ebp-48],0
	mov	[ebp-52],0
	mov	[ebp-56],0
	mov	[ebp-28],0
	jmp	_60
_61
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_acountarray]
	mov	ebx,[ebx]
	add	[ebp-44],ebx
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_62
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_63
	add	[ebp-48],1
_63
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_64
	add	[ebp-52],1
_64
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_65
	add	[ebp-56],1
_65
_62
	add	[ebp-28],1
_60
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_61
_6
	call	_ftileset
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],196
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],120
	mov	[esp+4],20
	mov	eax,[_vwidth]
	sar	eax,byte 1
	sub	eax,60
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	call	_fmillisecs
	mov	[ebp-60],eax
	sub	esp,40
	mov	eax,[ebp-60]
	sub	eax,[ebp-16]
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],20
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,32
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[_vmapsize]
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
	mov	ebx,[_vheight]
	sub	ebx,180
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
	sub	esp,32
	mov	eax,_69
	mov	[esp],eax
	call	__bbStrConst
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
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[_vheight]
	sub	ebx,160
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
	sub	esp,32
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-48]
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
	mov	ebx,[_vheight]
	sub	ebx,120
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
	sub	esp,32
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-52]
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
	mov	ebx,[_vheight]
	sub	ebx,100
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
	sub	esp,32
	mov	eax,_72
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-56]
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
	mov	ebx,[_vheight]
	sub	ebx,80
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[_vheight]
	sub	ebx,40
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_74
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[_vheight]
	sub	ebx,20
	mov	[esp+4],ebx
	mov	[esp],8
	call	_ftext
_75
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_76
	call	_fend
_76
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	cmp	eax,1
	jnz	_77
	sub	esp,24
	mov	eax,_78
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_vimage
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
	call	_fend
_77
	jmp	_75
_7
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
_fsetup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_79
_80
	mov	ebx,[ebp-4]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,[_vmaxloss]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_acountarray]
	mov	[esi],ebx
	add	[ebp-4],1
_79
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_80
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fprecalculate
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	mov	[ebp-4],0
	jmp	_82
_83
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	jmp	_84
_85
	mov	[ebp-24],0
	jmp	_86
_87
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fgetcolor
	call	_fcolorred
	mov	ebx,_atilesetred
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atilesetred]
	mov	[ebx],eax
	call	_fcolorgreen
	mov	ebx,_atilesetgreen
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreen]
	mov	[ebx],eax
	call	_fcolorblue
	mov	ebx,_atilesetblue
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_atilesetblue]
	mov	[ebx],eax
	mov	ebx,[_vtilesizex]
	sub	ebx,1
	sub	ebx,[ebp-24]
	mov	[ebp-28],ebx
	mov	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[_vtilesizex]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-28]
	mov	[ebp-36],ebx
	call	_fcolorred
	mov	ebx,_atilesetredflipx
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atilesetredflipx]
	mov	[ebx],eax
	call	_fcolorgreen
	mov	ebx,_atilesetgreenflipx
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipx]
	mov	[ebx],eax
	call	_fcolorblue
	mov	ebx,_atilesetblueflipx
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_atilesetblueflipx]
	mov	[ebx],eax
	mov	ebx,[ebp-24]
	mov	[ebp-28],ebx
	mov	ebx,[_vtilesizey]
	sub	ebx,1
	sub	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[_vtilesizex]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-28]
	mov	[ebp-40],ebx
	call	_fcolorred
	mov	ebx,_atilesetredflipy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_atilesetredflipy]
	mov	[ebx],eax
	call	_fcolorgreen
	mov	ebx,_atilesetgreenflipy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipy]
	mov	[ebx],eax
	call	_fcolorblue
	mov	ebx,_atilesetblueflipy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-40]
	shl	ebx,byte 2
	add	ebx,[_atilesetblueflipy]
	mov	[ebx],eax
	mov	ebx,[_vtilesizex]
	sub	ebx,1
	sub	ebx,[ebp-24]
	mov	[ebp-28],ebx
	mov	ebx,[_vtilesizey]
	sub	ebx,1
	sub	ebx,[ebp-20]
	mov	[ebp-32],ebx
	mov	ebx,[_vtilesizex]
	imul	ebx,[ebp-32]
	add	ebx,[ebp-28]
	mov	[ebp-44],ebx
	call	_fcolorred
	mov	ebx,_atilesetredflipxy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_atilesetredflipxy]
	mov	[ebx],eax
	call	_fcolorgreen
	mov	ebx,_atilesetgreenflipxy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipxy]
	mov	[ebx],eax
	call	_fcolorblue
	mov	ebx,_atilesetblueflipxy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_atilesetblueflipxy]
	mov	[ebx],eax
	add	[ebp-8],1
	add	[ebp-24],1
_86
	mov	ebx,[_vtilesizex]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_87
_13
	add	[ebp-20],1
_84
	mov	ebx,[_vtilesizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_85
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_88
	call	_fend
_88
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],196
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],120
	mov	[esp+4],20
	mov	eax,[_vwidth]
	sar	eax,byte 1
	sub	eax,60
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_89
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[_vmapsize]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],20
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	add	[ebp-4],1
_82
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_83
_11
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
_fmain
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],128
	mov	[esp],0
	call	_fcolor
	mov	[ebp-4],0
	mov	[ebp-8],0
	mov	[_vtileone],0
	jmp	_90
_91
	mov	ebx,[_vpicwidth]
	cmp	[ebp-4],ebx
	jnz	_92
	mov	[ebp-4],0
	mov	ebx,[_vtilesizey]
	add	[ebp-8],ebx
_92
	mov	eax,[_vtileone]
	shl	eax,byte 2
	add	eax,[_apercentmap]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	and	eax,eax
	jz	_93
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],196
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],120
	mov	[esp+4],20
	mov	eax,[_vwidth]
	sar	eax,byte 1
	sub	eax,60
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,[_vtileone]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_94
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
	mov	ebx,[_vmapsize]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],20
	mov	eax,[_vwidth]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	mov	[_vtiletwo],0
	jmp	_95
_96
	mov	eax,[_vtiletwo]
	shl	eax,byte 2
	add	eax,[_apercentmap]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1082130432
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vtileone]
	cmp	[_vtiletwo],ebx
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_97
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vtilesizey]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vtilesizex]
	mov	[esp+8],esi
	mov	ebx,[_voffsety]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[_voffsetx]
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	call	_fcomparetiles
_97
	add	[_vtiletwo],1
_95
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[_vtiletwo],ebx
	jle	_96
_16
	cmp	[_vchangeflag],1
	jnz	_98
	call	_fdrawdestination
	mov	[_vchangeflag],0
_98
_93
	mov	ebx,[_vtilesizex]
	add	[ebp-4],ebx
	add	[_vtileone],1
_90
	mov	ebx,[_vmapsize]
	sub	ebx,1
	cmp	[_vtileone],ebx
	jle	_91
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
_fdrawsource
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_99
_100
	mov	[ebp-12],0
	jmp	_101
_102
	sub	esp,16
	mov	ebx,[ebp-8]
	imul	ebx,[_vtilesizey]
	add	ebx,[_voffsety]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	imul	esi,[_vtilesizex]
	add	esi,[_voffsetx]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-4],1
	add	[ebp-12],1
_101
	mov	ebx,[_vtilesx]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_102
_19
	add	[ebp-8],1
_99
	mov	ebx,[_vtilesy]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_100
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
_fdrawdestination
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_103
_104
	mov	[ebp-12],0
	jmp	_105
_106
	sub	esp,16
	mov	ebx,[ebp-8]
	imul	ebx,[_vtilesizey]
	add	ebx,[_voffsety]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	imul	esi,[_vtilesizex]
	add	esi,[_voffsetx]
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-4],1
	add	[ebp-12],1
_105
	mov	ebx,[_vtilesx]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_106
_22
	add	[ebp-8],1
_103
	mov	ebx,[_vtilesy]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_104
_21
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
_fcomparetiles
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[_vcounter],0
	mov	[_vsumred],0
	mov	[_vsumgreen],0
	mov	[_vsumblue],0
	mov	[_vsum],0
	mov	[_vsumredflipx],0
	mov	[_vsumgreenflipx],0
	mov	[_vsumblueflipx],0
	mov	[_vsumflipx],0
	mov	[_vsumredflipy],0
	mov	[_vsumgreenflipy],0
	mov	[_vsumblueflipy],0
	mov	[_vsumflipy],0
	mov	[_vsumredflipxy],0
	mov	[_vsumgreenflipxy],0
	mov	[_vsumblueflipxy],0
	mov	[_vsumflipxy],0
	mov	[_vdist],0
	mov	[_vdistflipx],0
	mov	[_vdistflipy],0
	mov	[_vdistflipxy],0
	mov	[_vcounter],0
	jmp	_107
_108
	call	_fgetrgbvalues
	call	_fgetsums
	add	[_vcounter],1
_107
	mov	ebx,[_vtilesize]
	sub	ebx,1
	cmp	[_vcounter],ebx
	jle	_108
_24
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,1
	jnz	_109
	call	_fend
_109
	mov	eax,[_vsum]
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
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vsum]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vthreshold]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,[_vtiletwo]
	shl	ebx,byte 2
	add	ebx,[_apercentmap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_110
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,-1082130432
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_110
	mov	eax,[_vsumflipx]
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
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vsumflipx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vthreshold]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,[_vtiletwo]
	shl	ebx,byte 2
	add	ebx,[_apercentmap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_111
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,-1082130432
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_111
	mov	eax,[_vsumflipy]
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
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vsumflipy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vthreshold]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,[_vtiletwo]
	shl	ebx,byte 2
	add	ebx,[_apercentmap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_112
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,-1082130432
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_112
	mov	eax,[_vsumflipxy]
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
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vsumflipxy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vthreshold]
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	mov	[ebp-4],eax
	mov	ebx,[_vtiletwo]
	shl	ebx,byte 2
	add	ebx,[_apercentmap]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,-1082130432
	push	esi
	fld	[esp]
	pop	esi
	mov	eax,ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_113
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,-1082130432
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_113
	call	_fdosums
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetrgbvalues
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
	mov	ebx,_atilesetred
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtileone]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetred]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,_atilesetred
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetred]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_atilesetgreen
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtileone]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreen]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,_atilesetgreen
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreen]
	mov	ebx,[ebx]
	mov	[_vcolortwogreen],ebx
	mov	ebx,_atilesetblue
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtileone]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetblue]
	mov	ebx,[ebx]
	mov	[_vcoloroneblue],ebx
	mov	ebx,_atilesetblue
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetblue]
	mov	ebx,[ebx]
	mov	[_vcolortwoblue],ebx
	mov	ebx,_atilesetredflipx
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetredflipx]
	mov	ebx,[ebx]
	mov	[_vcolortworedflipx],ebx
	mov	ebx,_atilesetgreenflipx
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipx]
	mov	ebx,[ebx]
	mov	[_vcolortwogreenflipx],ebx
	mov	ebx,_atilesetblueflipx
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetblueflipx]
	mov	ebx,[ebx]
	mov	[_vcolortwoblueflipx],ebx
	mov	ebx,_atilesetredflipy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetredflipy]
	mov	ebx,[ebx]
	mov	[_vcolortworedflipy],ebx
	mov	ebx,_atilesetgreenflipy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipy]
	mov	ebx,[ebx]
	mov	[_vcolortwogreenflipy],ebx
	mov	ebx,_atilesetblueflipy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetblueflipy]
	mov	ebx,[ebx]
	mov	[_vcolortwoblueflipy],ebx
	mov	ebx,_atilesetredflipxy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetredflipxy]
	mov	ebx,[ebx]
	mov	[_vcolortworedflipxy],ebx
	mov	ebx,_atilesetgreenflipxy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipxy]
	mov	ebx,[ebx]
	mov	[_vcolortwogreenflipxy],ebx
	mov	ebx,_atilesetblueflipxy
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vtiletwo]
	add	ebx,[_vcounter]
	shl	ebx,byte 2
	add	ebx,[_atilesetblueflipxy]
	mov	ebx,[ebx]
	mov	[_vcolortwoblueflipxy],ebx
	mov	ebx,[ebp-4]
	sub	ebx,[ebp-8]
	mov	esi,[ebp-4]
	sub	esi,[ebp-8]
	imul	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vdist]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	ebx,[ebp-12]
	sub	ebx,[_vcolortwogreen]
	mov	edi,[ebp-12]
	sub	edi,[_vcolortwogreen]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[_vcoloroneblue]
	sub	ebx,[_vcolortwoblue]
	mov	edi,[_vcoloroneblue]
	sub	edi,[_vcolortwoblue]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vdist],esi
	mov	ebx,[ebp-4]
	sub	ebx,[_vcolortworedflipx]
	mov	esi,[ebp-4]
	sub	esi,[_vcolortworedflipx]
	imul	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vdistflipx]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	ebx,[ebp-12]
	sub	ebx,[_vcolortwogreenflipx]
	mov	edi,[ebp-12]
	sub	edi,[_vcolortwogreenflipx]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[_vcoloroneblue]
	sub	ebx,[_vcolortwoblueflipx]
	mov	edi,[_vcoloroneblue]
	sub	edi,[_vcolortwoblueflipx]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vdistflipx],esi
	mov	ebx,[ebp-4]
	sub	ebx,[_vcolortworedflipy]
	mov	esi,[ebp-4]
	sub	esi,[_vcolortworedflipy]
	imul	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vdistflipy]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	ebx,[ebp-12]
	sub	ebx,[_vcolortwogreenflipy]
	mov	edi,[ebp-12]
	sub	edi,[_vcolortwogreenflipy]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[_vcoloroneblue]
	sub	ebx,[_vcolortwoblueflipy]
	mov	edi,[_vcoloroneblue]
	sub	edi,[_vcolortwoblueflipy]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vdistflipy],esi
	mov	ebx,[ebp-4]
	sub	ebx,[_vcolortworedflipxy]
	mov	esi,[ebp-4]
	sub	esi,[_vcolortworedflipxy]
	imul	ebx,esi
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vdistflipxy]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	ebx,[ebp-12]
	sub	ebx,[_vcolortwogreenflipxy]
	mov	edi,[ebp-12]
	sub	edi,[_vcolortwogreenflipxy]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	mov	ebx,[_vcoloroneblue]
	sub	ebx,[_vcolortwoblueflipxy]
	mov	edi,[_vcoloroneblue]
	sub	edi,[_vcolortwoblueflipxy]
	imul	ebx,edi
	push	ebx
	fild	[esp]
	pop	ebx
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[_vdistflipxy],esi
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetsums
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vdist]
	mov	[_vsum],ebx
	mov	ebx,[_vdistflipx]
	mov	[_vsumflipx],ebx
	mov	ebx,[_vdistflipy]
	mov	[_vsumflipy],ebx
	mov	ebx,[_vdistflipxy]
	mov	[_vsumflipxy],ebx
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
_fdosums
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[_vsum]
	mov	[_vpercent],ebx
	mov	ebx,[_vsumflipx]
	mov	[_vpercentflipx],ebx
	mov	ebx,[_vsumflipy]
	mov	[_vpercentflipy],ebx
	mov	ebx,[_vsumflipxy]
	mov	[_vpercentflipxy],ebx
	mov	eax,[_vpercent]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vmaxloss]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vpercent]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	esi,[esi]
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
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_114
	mov	ebx,[_vpercent]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_114
	mov	eax,[_vpercentflipx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vmaxloss]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vpercentflipx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	esi,[esi]
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
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_115
	mov	ebx,[_vpercentflipx]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_115
	mov	eax,[_vpercentflipy]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vmaxloss]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vpercentflipy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	esi,[esi]
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
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_116
	mov	ebx,[_vpercentflipy]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_116
	mov	eax,[_vpercentflipxy]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vmaxloss]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vpercentflipxy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	esi,[esi]
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
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_117
	mov	ebx,[_vpercentflipxy]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_apercentmap]
	mov	[esi],ebx
	mov	ebx,[_vtileone]
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,[_vtiletwo]
	shl	esi,byte 2
	add	esi,[_aflipmap]
	mov	[esi],ebx
	mov	[_vchangeflag],1
_117
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffliptiles
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
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_118
_119
	mov	[ebp-12],0
	jmp	_120
_121
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_122
	sub	esp,16
	mov	ebx,[ebp-8]
	imul	ebx,[_vtilesizey]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	imul	esi,[_vtilesizex]
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
_122
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_123
	mov	[ebp-16],0
	mov	[ebp-20],0
	jmp	_124
_125
	mov	[ebp-24],0
	jmp	_126
_127
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_128
	sub	esp,12
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	mov	esi,_atilesetgreenflipx
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipx]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	esi,[esi]
	mov	edi,_atilesetblueflipx
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atilesetblueflipx]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anewmap]
	mov	eax,[eax]
	mov	esi,_atilesetredflipx
	add	esi,12
	mov	esi,[esi]
	imul	eax,esi
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_atilesetredflipx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
_128
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_129
	sub	esp,12
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	mov	esi,_atilesetgreenflipy
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipy]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	esi,[esi]
	mov	edi,_atilesetblueflipy
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atilesetblueflipy]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anewmap]
	mov	eax,[eax]
	mov	esi,_atilesetredflipy
	add	esi,12
	mov	esi,[esi]
	imul	eax,esi
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_atilesetredflipy]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
_129
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aflipmap]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_130
	sub	esp,12
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_anewmap]
	mov	ebx,[ebx]
	mov	esi,_atilesetgreenflipxy
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_atilesetgreenflipxy]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	esi,[esi]
	mov	edi,_atilesetblueflipxy
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_atilesetblueflipxy]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_anewmap]
	mov	eax,[eax]
	mov	esi,_atilesetredflipxy
	add	esi,12
	mov	esi,[esi]
	imul	eax,esi
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_atilesetredflipxy]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fcolor
_130
	sub	esp,8
	mov	eax,[ebp-12]
	imul	eax,[_vtilesizex]
	add	eax,[ebp-24]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	imul	ebx,[_vtilesizey]
	add	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-16],1
	add	[ebp-24],1
_126
	mov	ebx,[_vtilesizex]
	sub	ebx,1
	cmp	[ebp-24],ebx
	jle	_127
_32
	add	[ebp-20],1
_124
	mov	ebx,[_vtilesizey]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_125
_31
_123
	add	[ebp-4],1
	add	[ebp-12],1
_120
	mov	ebx,[_vtilesx]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_121
_30
	add	[ebp-8],1
_118
	mov	ebx,[_vtilesy]
	sub	ebx,1
	cmp	[ebp-8],ebx
	jle	_119
_29
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
_ftileset
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
	sub	esp,12
	mov	ebx,[_vpicheight]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vpicwidth]
	mov	[esp],eax
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
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_fgetcolor
	sub	esp,12
	call	_fcolorgreen
	mov	[esp+4],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcolorblue
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+8],ebx
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcolorred
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fclscolor
	mov	ebx,eax
	call	_fcls
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	[ebp-16],0
	mov	[ebp-20],0
	jmp	_131
_132
_133
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_acountarray]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_134
	sub	esp,16
	mov	ebx,[ebp-16]
	imul	ebx,[_vtilesizey]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_anewmap]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	imul	esi,[_vtilesizex]
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	mov	[ebp-28],1
	add	[ebp-12],1
	mov	ebx,[_vtilesx]
	cmp	[ebp-12],ebx
	jnz	_135
	add	[ebp-16],1
	mov	[ebp-12],0
_135
_134
	add	[ebp-8],1
	cmp	[ebp-28],1
	jnz	_133
_35
	mov	[ebp-28],0
	add	[ebp-20],1
_131
	mov	ebx,[ebp-24]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_132
_34
	sub	esp,4
	call	_ffrontbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_36	.db	"TileWiper V1.2",0
_37	.db	"",0
	.align	4
_vtileone	.dd	0
	.align	4
_vtiletwo	.dd	0
	.align	4
_vchangeflag	.dd	0
	.align	4
_vtilesizex	.dd	0
	.align	4
_vtilesizey	.dd	0
	.align	4
_vtilesize	.dd	0
	.align	4
_vtilesx	.dd	0
	.align	4
_vtilesy	.dd	0
	.align	4
_vmapsize	.dd	0
	.align	4
_vpicwidth	.dd	0
	.align	4
_vpicheight	.dd	0
	.align	4
_vmaxloss	.dd	0
	.align	4
_vtiles	.dd	0
	.align	4
_vwidth	.dd	0
	.align	4
_vheight	.dd	0
	.align	4
_voffsetx	.dd	0
	.align	4
_voffsety	.dd	0
	.align	4
_vthreshold	.dd	0
	.align	4
_vimage	.dd	0
	.align	4
_vcounter	.dd	0
	.align	4
_vsumred	.dd	0
	.align	4
_vsumgreen	.dd	0
	.align	4
_vsumblue	.dd	0
	.align	4
_vsum	.dd	0
	.align	4
_vpercent	.dd	0
	.align	4
_vsumredflipx	.dd	0
	.align	4
_vsumgreenflipx	.dd	0
	.align	4
_vsumblueflipx	.dd	0
	.align	4
_vsumflipx	.dd	0
	.align	4
_vpercentflipx	.dd	0
	.align	4
_vsumredflipy	.dd	0
	.align	4
_vsumgreenflipy	.dd	0
	.align	4
_vsumblueflipy	.dd	0
	.align	4
_vsumflipy	.dd	0
	.align	4
_vpercentflipy	.dd	0
	.align	4
_vsumredflipxy	.dd	0
	.align	4
_vsumgreenflipxy	.dd	0
	.align	4
_vsumblueflipxy	.dd	0
	.align	4
_vsumflipxy	.dd	0
	.align	4
_vpercentflipxy	.dd	0
	.align	4
_vcolordifred	.dd	0
	.align	4
_vcolordifgreen	.dd	0
	.align	4
_vcolordifblue	.dd	0
	.align	4
_vcolordifredflipx	.dd	0
	.align	4
_vcolordifgreenflipx	.dd	0
	.align	4
_vcolordifblueflipx	.dd	0
	.align	4
_vcolordifredflipy	.dd	0
	.align	4
_vcolordifgreenflipy	.dd	0
	.align	4
_vcolordifblueflipy	.dd	0
	.align	4
_vcolordifredflipxy	.dd	0
	.align	4
_vcolordifgreenflipxy	.dd	0
	.align	4
_vcolordifblueflipxy	.dd	0
	.align	4
_vcolortwogreen	.dd	0
	.align	4
_vcoloroneblue	.dd	0
	.align	4
_vcolortwoblue	.dd	0
	.align	4
_vcolortworedflipx	.dd	0
	.align	4
_vcolortwogreenflipx	.dd	0
	.align	4
_vcolortwoblueflipx	.dd	0
	.align	4
_vcolortworedflipy	.dd	0
	.align	4
_vcolortwogreenflipy	.dd	0
	.align	4
_vcolortwoblueflipy	.dd	0
	.align	4
_vcolortworedflipxy	.dd	0
	.align	4
_vcolortwogreenflipxy	.dd	0
	.align	4
_vcolortwoblueflipxy	.dd	0
	.align	4
_vdist	.dd	0
	.align	4
_vdistflipx	.dd	0
	.align	4
_vdistflipy	.dd	0
	.align	4
_vdistflipxy	.dd	0
_38	.db	"Source image: ",0
_40	.db	"",0
_41	.db	"background.bmp",0
_42	.db	"Loss (1-100) - Press Enter for 100 : ",0
_44	.db	"Tile size X - Press Enter for 8 : ",0
_46	.db	"Tile size Y - Press Enter for 8 : ",0
	.align	4
_anewmap	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aflipmap	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apercentmap	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_atilesetred	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetgreen	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetblue	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetredflipx	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetgreenflipx	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetblueflipx	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetredflipy	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetgreenflipy	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetblueflipy	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetredflipxy	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetgreenflipxy	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_atilesetblueflipxy	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_acountarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
_50	.db	"Precalculation done in ",0
_51	.db	" seconds",0
_66	.db	"Done in ",0
_67	.db	" seconds",0
_68	.db	" # of Tiles: ",0
_69	.db	" Unique Tiles: ",0
_70	.db	" Tiles Flipped X: ",0
_71	.db	" Tiles Flipped Y: ",0
_72	.db	" Tiles Flipped XY: ",0
_73	.db	" Press 'S' to save optimized BMP image.",0
_74	.db	" Press ESC to quit.",0
_78	.db	"TW_",0
_81	.db	"Precalculating!",0
_89	.db	"/",0
_94	.db	"/",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

