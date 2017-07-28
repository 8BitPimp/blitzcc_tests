
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	mov	[_vscrwidth],1024
	mov	[_vscrheight],768
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vscrheight]
	mov	[esp+4],esi
	mov	eax,[_vscrwidth]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],4
	mov	[esp+8],6
	mov	[esp+4],6
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vstar1],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],4
	mov	[esp+8],6
	mov	[esp+4],6
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vstar2],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],4
	mov	[esp+8],6
	mov	[esp+4],6
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vstar3],eax
	mov	[_vnostars],100
	mov	[_vz_start],300
	mov	[_vd],250
	mov	ebx,[_vscrwidth]
	sar	ebx,byte 1
	sub	ebx,[_vd]
	mov	[_vcentrex],ebx
	mov	ebx,[_vscrheight]
	sar	ebx,byte 1
	sub	ebx,[_vd]
	mov	[_vcentrey],ebx
	sub	esp,4
	mov	eax,_astars
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnostars]
	mov	esi,_astars
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astars
	mov	[esp],eax
	call	__bbDimArray
	call	_finitstars
	jmp	_15
_14
	call	_fcls
	call	_fmovestars
	call	_fdrawstars
	sub	esp,4
	mov	[esp],1
	call	_fvwait
	sub	esp,4
	mov	[esp],1
	call	_fflip
_15
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_14
_3
	call	_fend
_l_2stardata
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitstars
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_18
_19
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_astars]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tstarfile
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1077936128
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1112014848
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[_vz_start]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],0
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	add	[ebp-4],1
_18
	mov	ebx,[_vnostars]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_19
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
_fmovestars
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
	jmp	_20
_21
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_astars]
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
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
	jz	_22
	mov	ebx,1133903872
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1077936128
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
_22
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],1
	jmp	_23
_24
	call	__bbReadInt
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	add	[ebp-12],1
_23
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_24
_8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vd]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vd]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vd]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,16
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vd]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	add	[ebp-4],1
_20
	mov	ebx,[_vnostars]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_21
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
_fdrawstars
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_25
_26
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_27
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	add	ebx,[_vcentrey]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	add	esi,[_vcentrex]
	mov	[esp+4],esi
	mov	eax,[_vstar1]
	mov	[esp],eax
	call	_fdrawimage
_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_28
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	add	ebx,[_vcentrey]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	add	esi,[_vcentrex]
	mov	[esp+4],esi
	mov	eax,[_vstar2]
	mov	[esp],eax
	call	_fdrawimage
_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_29
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astars]
	mov	ebx,[ebx]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	add	ebx,[_vcentrey]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astars]
	mov	esi,[esi]
	mov	esi,[esi]
	add	esi,20
	mov	esi,[esi]
	add	esi,[_vcentrex]
	mov	[esp+4],esi
	mov	eax,[_vstar3]
	mov	[esp],eax
	call	_fdrawimage
_29
	add	[ebp-4],1
_25
	mov	ebx,[_vnostars]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_26
_10
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
_vscrwidth	.dd	0
	.align	4
_vscrheight	.dd	0
	.align	4
_vstar1	.dd	0
_11	.db	"star1.bmp",0
	.align	4
_vstar2	.dd	0
_12	.db	"star2.bmp",0
	.align	4
_vstar3	.dd	0
_13	.db	"star3.bmp",0
	.align	4
_vnostars	.dd	0
	.align	4
_vz_start	.dd	0
	.align	4
_vd	.dd	0
	.align	4
_vcentrex	.dd	0
	.align	4
_vcentrey	.dd	0
	.align	4
_astars	.dd	0
	.dd	5
	.dd	1
	.dd	0
	.align	4
_tstarfile	.dd	5
_16	.dd	0
	.dd	_16
	.dd	_16
	.dd	0
	.dd	-1
_17	.dd	0
	.dd	_17
	.dd	_17
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbFltType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	3
	.dd	1
	.dd	2
	.dd	1
	.dd	1
	.dd	0

