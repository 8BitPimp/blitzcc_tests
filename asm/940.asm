
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vmax_path_points],100
	sub	esp,4
	mov	eax,_apathx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmax_path_points]
	sub	ebx,1
	mov	esi,_apathx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apathx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apathy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmax_path_points]
	sub	ebx,1
	mov	esi,_apathy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apathy
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vpath_counter],-1
	mov	[_vcurrent_path],0
	mov	[_vcx],0
	mov	[_vcy],0
	mov	[_vex],1137180672
	mov	[_vey],1120403456
	mov	[_vmovement_started],0
	jmp	_9
_8
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_10
	sub	esp,8
	call	_fmousex
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fsetpath
_10
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	mov	[ebp-4],eax
	cmp	[_vmovement_started],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	mov	[ebp-4],eax
	cmp	[_vpath_counter],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_11
	mov	[_vcurrent_path],0
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apathx]
	mov	ebx,[ebx]
	mov	[_vcx],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apathy]
	mov	ebx,[ebx]
	mov	[_vcy],ebx
	mov	[_vmovement_started],1
	mov	[_vex],1137180672
	mov	[_vey],1120403456
_11
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_12
	mov	[_vmovement_started],0
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apathx]
	mov	ebx,[ebx]
	mov	[_vcx],ebx
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apathy]
	mov	ebx,[ebx]
	mov	[_vcy],ebx
	mov	[_vcurrent_path],-1
_12
	call	_fdraw_path_points
	cmp	[_vmovement_started],1
	jnz	_13
	call	_fmove
_13
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],200
	call	_fcolor
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	call	_fmousey
	sub	eax,1
	mov	[esp+4],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	sub	ebx,1
	mov	[esp],ebx
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vmovement_started]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_8
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
_fmove
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],0
	mov	ebx,[_vpath_counter]
	cmp	[_vcurrent_path],ebx
	jge	_16
	sub	esp,8
	mov	eax,[_vcurrent_path]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_apathy]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vcurrent_path]
	shl	ebx,byte 2
	add	ebx,[_apathy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[_vcurrent_path]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apathx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcurrent_path]
	shl	esi,byte 2
	add	esi,[_apathx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vcx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vcx],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vcy]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vcy],ebx
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vcy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],6
	mov	[esp+16],1
	mov	[esp+8],6
	mov	eax,[_vcx]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1077936128
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	eax,[_vcx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vcurrent_path]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apathx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[_vcy]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcurrent_path]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_apathy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbFAbs
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esi,1073741824
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
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_17
	add	[_vcurrent_path],1
	mov	ebx,[_vcurrent_path]
	shl	ebx,byte 2
	add	ebx,[_apathx]
	mov	ebx,[ebx]
	mov	[_vcx],ebx
	mov	ebx,[_vcurrent_path]
	shl	ebx,byte 2
	add	ebx,[_apathy]
	mov	ebx,[ebx]
	mov	[_vcy],ebx
_17
_16
	sub	esp,8
	mov	eax,[_vcy]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vey]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[_vcx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vex]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[_vex]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vcx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	mov	ebx,[_vex]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcx]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	fmulp	st(1)
	mov	ebx,[_vey]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vcy]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,[_vey]
	push	esi
	fld	[esp]
	pop	esi
	mov	edi,[_vcy]
	push	edi
	fld	[esp]
	pop	edi
	fsubp	st(1)
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	mov	ecx,30
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vex]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vex],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	mov	ecx,30
	mov	eax,ebx
	cdq
	idiv	ecx
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[_vey]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vey],ebx
	sub	esp,20
	mov	ebx,[_vey]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1097859072
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],30
	mov	[esp+16],1
	mov	[esp+8],30
	mov	eax,[_vex]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1097859072
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
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
_fsetpath
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	add	[_vpath_counter],1
	mov	ebx,[_vmax_path_points]
	sub	ebx,1
	cmp	[_vpath_counter],ebx
	jle	_18
	mov	ebx,[_vmax_path_points]
	sub	ebx,1
	mov	[_vpath_counter],ebx
	jmp	_19
_18
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vpath_counter]
	shl	esi,byte 2
	add	esi,[_apathx]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vpath_counter]
	shl	esi,byte 2
	add	esi,[_apathy]
	mov	[esi],ebx
_19
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdraw_path_points
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_20
_21
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],200
	mov	[esp],100
	call	_fcolor
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apathy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apathx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	mov	ebx,[_vpath_counter]
	cmp	[ebp-4],ebx
	jge	_22
	sub	esp,20
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apathy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp+12],2
	mov	[esp+16],1
	mov	[esp+8],2
	mov	eax,[ebp-4]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_apathx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],150
	mov	[esp],50
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-4]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apathx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_apathy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apathy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apathx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fline
_22
	add	[ebp-4],1
_20
	mov	ebx,[_vpath_counter]
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
	.align	4
_vmax_path_points	.dd	0
	.align	4
_apathx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_apathy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_vpath_counter	.dd	0
	.align	4
_vcurrent_path	.dd	0
	.align	4
_vcx	.dd	0
	.align	4
_vcy	.dd	0
	.align	4
_vex	.dd	0
	.align	4
_vey	.dd	0
	.align	4
_vmovement_started	.dd	0
_14	.db	"Click mouse to set path point. Press spacebar to start animation. Press enter to stop.",0
_15	.db	"movement started=",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

