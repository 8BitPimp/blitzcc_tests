
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_acsin
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,360
	mov	esi,_acsin
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acsin
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_accos
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,360
	mov	esi,_accos
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_accos
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_10
_11
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acsin]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_accos]
	mov	[ebx],eax
	add	[ebp-4],1
_10
	cmp	[ebp-4],359
	jle	_11
_3
	sub	esp,4
	mov	eax,_astar_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_astar_x
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astar_x
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_astar_y
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_astar_y
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astar_y
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_astar_z
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_astar_z
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astar_z
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	jmp	_12
_13
	sub	esp,8
	mov	[esp],-1012924416
	mov	[esp+4],1134559232
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astar_x]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1016070144
	mov	[esp+4],1131413504
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 8
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astar_y]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_astar_z]
	mov	[ebx],eax
	add	[ebp-8],1
_12
	cmp	[ebp-8],5000
	jle	_13
_4
	mov	[_valive],1
	mov	[_vdead],0
	mov	[_vnumaliens],100
	mov	[ebp-4],1
	jmp	_14
_15
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_talientype
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	[esp],1142947840
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1133903872
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_valive]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	add	[ebp-4],1
_14
	mov	ebx,[_vnumaliens]
	cmp	[ebp-4],ebx
	jle	_15
_5
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_valienimg],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[_valienimg]
	mov	[esp],eax
	call	_fmaskimage
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],3
	mov	[esp+8],36
	mov	[esp+4],38
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vshipimg],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[_vshipimg]
	mov	[esp],eax
	call	_fmaskimage
_18
	call	_fcls
	call	_fupdatestar
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],_talientype
	call	__bbObjEachFirst
	and	eax,eax
	jz	_7
_19
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[_valienimg]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	add	ebx,esi
	add	ebx,1
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],-1082130432
	mov	[esp+4],1065353216
	call	_frnd
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_acsin]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_accos]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,550
	jle	_20
	sub	esp,8
	mov	[esp],-1018691584
	mov	[esp+4],-1035468800
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
_20
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_19
_7
	add	[ebp-16],1
	cmp	[ebp-16],359
	jle	_21
	mov	[ebp-16],0
_21
	call	_fmousex
	cmp	eax,215
	jge	_22
	sub	esp,16
	mov	[esp+8],400
	mov	[esp+12],1
	call	_fmousex
	mov	[esp+4],eax
	mov	ebx,[_vshipimg]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdrawimage
	mov	ebx,eax
_22
	call	_fmousex
	cmp	eax,215
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,430
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_23
	sub	esp,16
	mov	[esp+8],400
	mov	[esp+12],0
	call	_fmousex
	mov	[esp+4],eax
	mov	ebx,[_vshipimg]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdrawimage
	mov	ebx,eax
_23
	call	_fmousex
	cmp	eax,430
	jl	_24
	sub	esp,16
	mov	[esp+8],400
	mov	[esp+12],2
	call	_fmousex
	mov	[esp+4],eax
	mov	ebx,[_vshipimg]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdrawimage
	mov	ebx,eax
_24
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_18
_6
	call	_fend
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdatestar
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
	jmp	_27
_28
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_z]
	mov	ebx,[ebx]
	sub	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astar_z]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_z]
	mov	ebx,[ebx]
	cmp	ebx,2
	jg	_29
	mov	ebx,255
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astar_z]
	mov	[esi],ebx
_29
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_astar_x]
	mov	eax,[eax]
	mov	ecx,[ebp-4]
	shl	ecx,byte 2
	add	ecx,[_astar_z]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	add	eax,320
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_astar_y]
	mov	eax,[eax]
	mov	ecx,[ebp-4]
	shl	ecx,byte 2
	add	ecx,[_astar_z]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	add	eax,240
	mov	[ebp-12],eax
	mov	ebx,255
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astar_z]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-16],ebx
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-4],1
_27
	cmp	[ebp-4],5000
	jle	_28
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
	.align	4
_acsin	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_accos	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_astar_x	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_astar_y	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_astar_z	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_valive	.dd	0
	.align	4
_vdead	.dd	0
	.align	4
_vnumaliens	.dd	0
	.align	4
_valienimg	.dd	0
	.align	4
_vshipimg	.dd	0
_16	.db	"Bug.png",0
_17	.db	"Player.png",0
	.align	4
_talientype	.dd	5
_25	.dd	0
	.dd	_25
	.dd	_25
	.dd	0
	.dd	-1
_26	.dd	0
	.dd	_26
	.dd	_26
	.dd	0
	.dd	-1
	.dd	5
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

