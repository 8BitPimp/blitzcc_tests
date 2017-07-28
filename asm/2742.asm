
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
	sub	esp,4
	mov	[esp],20
	call	_fcreatebank
	mov	[_vsphericalbank],eax
	sub	esp,4
	mov	[esp],12
	call	_fcreatebank
	mov	[_vcartesianbank],eax
	sub	esp,4
	mov	[esp],12
	call	_fcreatebank
	mov	[_vprojectionbank],eax
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fspherical
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
	mov	ebx,[ebp+32]
	mov	[ebp-4],ebx
	sub	esp,12
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
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
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],0
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	[esp+4],4
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	[esp+4],8
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	[esp+4],12
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	[esp+4],16
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	call	_fpokefloat
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fspherical_x
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fpeekfloat
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vsphericalbank]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vsphericalbank]
	mov	[esp],ebx
	mov	[esp+4],12
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	jmp	_4_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fspherical_y
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fpeekfloat
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vsphericalbank]
	mov	[esp],ebx
	mov	[esp+4],0
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vsphericalbank]
	mov	[esp],ebx
	mov	[esp+4],8
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	jmp	_5_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fspherical_z
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[_vsphericalbank]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fpeekfloat
	mov	[ebp-4],eax
	sub	esp,8
	mov	ebx,[_vsphericalbank]
	mov	[esp],ebx
	mov	[esp+4],4
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	mov	eax,[ebp-4]
	fmulp	st(1)
	jmp	_6_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcartesian
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
	mov	[ebp-48],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+40]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+36]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+40]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-32],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-36],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-32]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp+32]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-40],ebx
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-44],ebx
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[ebp-28]
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	eax,[_vcartesianbank]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	[esp+4],4
	mov	esi,[ebp-48]
	mov	[esp+8],esi
	mov	eax,[_vcartesianbank]
	mov	[esp],eax
	call	_fpokefloat
	sub	esp,12
	mov	[esp+4],8
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	eax,[_vcartesianbank]
	mov	[esp],eax
	call	_fpokefloat
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fcartesian_x
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vcartesianbank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekfloat
	jmp	_8_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcartesian_y
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vcartesianbank]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fpeekfloat
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
	ret	word 0
	.align	16
_fcartesian_z
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vcartesianbank]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fpeekfloat
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
	ret	word 0
	.align	16
_fproject_3dto2d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,[ebp+44]
	imul	eax,[ebp+32]
	mov	ecx,[ebp+40]
	add	ecx,[ebp+48]
	cdq
	idiv	ecx
	add	eax,[ebp+20]
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[_vprojectionbank]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokefloat
	mov	ebx,eax
	sub	esp,12
	mov	eax,[ebp+44]
	imul	eax,[ebp+36]
	mov	ecx,[ebp+40]
	add	ecx,[ebp+48]
	cdq
	idiv	ecx
	add	eax,[ebp+24]
	mov	[esp+4],eax
	mov	[esp+8],1082130432
	mov	ebx,[_vprojectionbank]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokefloat
	mov	ebx,eax
	sub	esp,12
	mov	eax,[ebp+44]
	imul	eax,[ebp+40]
	mov	ecx,[ebp+32]
	add	ecx,[ebp+48]
	cdq
	idiv	ecx
	add	eax,[ebp+28]
	mov	[esp+4],eax
	mov	[esp+8],1090519040
	mov	ebx,[_vprojectionbank]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokefloat
	mov	ebx,eax
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
	.align	16
_fprojected_x
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vprojectionbank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekfloat
	jmp	_12_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fprojected_y
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vprojectionbank]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fpeekfloat
	jmp	_13_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fprojected_z
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vprojectionbank]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fpeekfloat
	jmp	_14_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vsphericalbank	.dd	0
	.align	4
_vcartesianbank	.dd	0
	.align	4
_vprojectionbank	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
