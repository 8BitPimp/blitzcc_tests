
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],13
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1054867456
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1106247680
	mov	[esp+16],0
	mov	[esp+8],1106247680
	mov	[esp+4],1106247680
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,_apar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_apar
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apar
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apar_bk
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_apar_bk
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apar_bk
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apr
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,6
	mov	esi,_apr
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apr
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,3
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,4
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,1065353216
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_apar]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_apar]
	mov	[esi],ebx
	mov	ebx,1065353216
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_apar]
	mov	[esi],ebx
	mov	[_vex],110
	mov	[_vey],230
	jmp	_18
_17
	call	_fcheck_editor
	cmp	[_vdrag],1
	jnz	_19
	sub	esp,20
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_apar]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_apar]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frotateentity
_19
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	call	_fdraw_editor
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_17
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
_fdraw_editor
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	sub	esp,20
	mov	[esp+12],112
	mov	[esp+16],1
	mov	[esp+8],200
	mov	ebx,[_vey]
	mov	[esp+4],ebx
	mov	eax,[_vex]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-4],3
	jmp	_20
_21
	sub	esp,16
	mov	ebx,[_vex]
	add	ebx,196
	mov	[esp+8],ebx
	mov	esi,[_vey]
	add	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[_vey]
	add	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vex]
	add	eax,4
	mov	[esp],eax
	call	_fline
	add	[ebp-4],2
_20
	cmp	[ebp-4],12
	jle	_21
_5
	mov	[_vtooltip1],0
	mov	[ebp-4],0
	jmp	_22
_23
	mov	ebx,[_vdrag_this]
	cmp	[ebp-4],ebx
	jnz	_24
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[_vtooltip1],1
	jmp	_25
_24
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_25
	sub	esp,20
	mov	ebx,[_vey]
	add	ebx,16
	mov	esi,[ebp-4]
	shl	esi,byte 4
	add	ebx,esi
	mov	[esp+4],ebx
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apar]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	eax,[_vex]
	add	eax,100
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	ebx,[_vey]
	add	ebx,16
	mov	esi,[ebp-4]
	shl	esi,byte 4
	add	ebx,esi
	mov	[esp+4],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apr]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	eax,[_vex]
	add	eax,4
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],200
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vey]
	add	ebx,15
	mov	esi,[ebp-4]
	shl	esi,byte 4
	add	ebx,esi
	mov	[esp+4],ebx
	mov	[esp+12],15
	mov	[esp+16],0
	mov	[esp+8],196
	mov	eax,[_vex]
	add	eax,2
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	cmp	[_vtooltip1],1
	jnz	_26
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	[esp],4
	call	_ftext
_26
	cmp	[_vtooltip2],1
	jnz	_28
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-8]
	sub	ebx,16
	mov	[esp+4],ebx
	mov	[esp],4
	call	_ftext
_28
	add	[ebp-4],1
_22
	cmp	[ebp-4],5
	jle	_23
_6
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
_fcheck_editor
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
	mov	[ebp-16],ebx
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	mov	[_vtooltip2],0
	cmp	[_vdrag],0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vwin_drag],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_30
	mov	eax,[_vex]
	cmp	[ebp-4],eax
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vex]
	add	ebx,200
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vey]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vey]
	add	ebx,15
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_31
	mov	[_vtooltip2],1
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_32
	mov	[_vwin_drag],1
	mov	ebx,[_vex]
	mov	[_vold_ex],ebx
	mov	ebx,[_vey]
	mov	[_vold_ey],ebx
	mov	ebx,[ebp-4]
	mov	[_vwin_xo],ebx
	mov	ebx,[ebp-8]
	mov	[_vwin_yo],ebx
_32
_31
_30
	mov	ebx,[_vwin_drag]
	and	ebx,ebx
	jz	_33
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_34
	mov	ebx,[ebp-4]
	sub	ebx,[_vwin_xo]
	add	ebx,[_vold_ex]
	mov	[_vex],ebx
	mov	ebx,[ebp-8]
	sub	ebx,[_vwin_yo]
	add	ebx,[_vold_ey]
	mov	[_vey],ebx
	jmp	_35
_34
	mov	[_vwin_drag],0
_35
_33
	cmp	[_vdrag],0
	jnz	_36
	mov	eax,[_vey]
	add	eax,16
	cmp	[ebp-8],eax
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vey]
	add	ebx,16
	add	ebx,96
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vex]
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,[_vex]
	add	ebx,200
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_37
	mov	[_vdrag_this],-1
_37
	mov	eax,[_vex]
	cmp	[ebp-4],eax
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vex]
	add	ebx,200
	cmp	[ebp-4],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_38
	mov	[ebp-12],0
	jmp	_39
_40
	mov	eax,[_vey]
	add	eax,16
	mov	ebx,[ebp-12]
	shl	ebx,byte 4
	add	eax,ebx
	cmp	[ebp-8],eax
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vey]
	add	ebx,32
	mov	esi,[ebp-12]
	shl	esi,byte 4
	add	ebx,esi
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_41
	mov	ebx,[ebp-12]
	mov	[_vdrag_this],ebx
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_42
	mov	[_vdrag],1
	mov	ebx,[ebp-8]
	mov	[_vdragy],ebx
	mov	[ebp-16],0
	jmp	_43
_44
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_apar_bk]
	mov	[esi],ebx
	add	[ebp-16],1
_43
	cmp	[ebp-16],6
	jle	_44
_9
_42
_41
	add	[ebp-12],1
_39
	cmp	[ebp-12],5
	jle	_40
_8
_38
	jmp	_45
_36
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	cmp	eax,1
	jnz	_46
	cmp	[_vdrag_this],3
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vdrag_this],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_47
	mov	ebx,[_vdragy]
	call	_fmousey
	sub	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vdrag_this]
	shl	esi,byte 2
	add	esi,[_apar_bk]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[_vdrag_this]
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	[ebx],esi
_47
	cmp	[_vdrag_this],0
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vdrag_this],2
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_48
	mov	ebx,[_vdragy]
	call	_fmousey
	sub	ebx,eax
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[_vdrag_this]
	shl	ebx,byte 2
	add	ebx,[_apar_bk]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vdrag_this]
	shl	esi,byte 2
	add	esi,[_apar]
	mov	[esi],ebx
_48
	cmp	[_vdrag_this],3
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vdrag_this],5
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_49
	mov	eax,[_vdrag_this]
	shl	eax,byte 2
	add	eax,[_apar]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_50
	mov	ebx,[_vdrag_this]
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vdrag_this]
	shl	esi,byte 2
	add	esi,[_apar]
	mov	[esi],ebx
_50
	mov	eax,[_vdrag_this]
	shl	eax,byte 2
	add	eax,[_apar]
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
	jz	_51
	mov	ebx,[_vdrag_this]
	shl	ebx,byte 2
	add	ebx,[_apar]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vdrag_this]
	shl	esi,byte 2
	add	esi,[_apar]
	mov	[esi],ebx
_51
_49
	jmp	_52
_46
	mov	[_vdrag],0
_52
_45
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_10	.db	"Tahoma",0
	.align	4
_apar	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_apar_bk	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_apr	.dd	0
	.dd	3
	.dd	1
	.dd	0
_11	.db	"X",0
_12	.db	"Y",0
_13	.db	"Z",0
_14	.db	"Pitch",0
_15	.db	"Yaw",0
_16	.db	"Roll",0
	.align	4
_vex	.dd	0
	.align	4
_vold_ex	.dd	0
	.align	4
_vey	.dd	0
	.align	4
_vold_ey	.dd	0
	.align	4
_vdrag	.dd	0
	.align	4
_vdrag_this	.dd	0
	.align	4
_vdragy	.dd	0
	.align	4
_vwin_drag	.dd	0
	.align	4
_vwin_xo	.dd	0
	.align	4
_vwin_yo	.dd	0
	.align	4
_vtooltip1	.dd	0
	.align	4
_vtooltip2	.dd	0
_27	.db	"Press LMB and drag up or down...",0
_29	.db	"Press LMB and drag Editor Window...",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

