
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
	mov	[_vwidth],640
	mov	[_vheight],480
	mov	[_vdepth],16
	mov	[_vwindow],2
	sub	esp,16
	mov	ebx,[_vdepth]
	mov	[esp+8],ebx
	mov	esi,[_vwindow]
	mov	[esp+12],esi
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_finitwindow
	jmp	_9
_8
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1048576000
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_frotateentity
	call	_fswitchwindow
	call	_fswitchresolution
	call	_fswitchcolours
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,32
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vwindow]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],8
	mov	[esp],8
	call	_ftext
	sub	esp,48
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vwidth]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vheight]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],24
	mov	[esp],8
	call	_ftext
	sub	esp,40
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vdepth]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],8
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
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
_finitwindow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],1119092736
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[_vcube],eax
	sub	esp,20
	mov	[esp+12],1084227584
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],256
	mov	[esp],256
	call	_fcreatetexture
	mov	[_vtex],eax
	sub	esp,12
	mov	eax,[_vtex]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],16
	mov	[esp],8
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],32
	mov	[esp],8
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],48
	mov	[esp],8
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],64
	mov	[esp],8
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],8
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtex]
	mov	[esp+4],esi
	mov	eax,[_vcube]
	mov	[esp],eax
	call	_fentitytexture
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fswitchwindow
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	and	eax,eax
	jz	_20
	cmp	[ebp-4],0
	jnz	_21
	mov	[ebp-4],1
	add	[_vwindow],1
	cmp	[_vwindow],2
	jle	_22
	mov	[_vwindow],1
_22
	call	_fendgraphics
	sub	esp,16
	mov	ebx,[_vdepth]
	mov	[esp+8],ebx
	mov	esi,[_vwindow]
	mov	[esp+12],esi
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_finitwindow
_21
	jmp	_23
_20
	mov	[ebp-4],0
_23
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fswitchresolution
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],19
	call	_fkeydown
	and	eax,eax
	jz	_24
	cmp	[ebp-4],0
	jnz	_25
	mov	[ebp-4],1
	cmp	[_vwidth],640
	jnz	_26
	mov	[_vwidth],800
	mov	[_vheight],600
	jmp	_27
_26
	mov	[_vwidth],640
	mov	[_vheight],480
_27
	call	_fendgraphics
	sub	esp,16
	mov	ebx,[_vdepth]
	mov	[esp+8],ebx
	mov	esi,[_vwindow]
	mov	[esp+12],esi
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_finitwindow
_25
	jmp	_28
_24
	mov	[ebp-4],0
_28
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
_fswitchcolours
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,4
	mov	[esp],46
	call	_fkeydown
	and	eax,eax
	jz	_29
	cmp	[ebp-4],0
	jnz	_30
	mov	[ebp-4],1
	cmp	[_vdepth],16
	jnz	_31
	mov	[_vdepth],32
	jmp	_32
_31
	mov	[_vdepth],16
_32
	call	_fendgraphics
	sub	esp,16
	mov	ebx,[_vdepth]
	mov	[esp+8],ebx
	mov	esi,[_vwindow]
	mov	[esp+12],esi
	mov	esi,[_vheight]
	mov	[esp+4],esi
	mov	eax,[_vwidth]
	mov	[esp],eax
	call	_finitwindow
_30
	jmp	_33
_29
	mov	[ebp-4],0
_33
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vwidth	.dd	0
	.align	4
_vheight	.dd	0
	.align	4
_vdepth	.dd	0
	.align	4
_vwindow	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vlight	.dd	0
	.align	4
_vcube	.dd	0
	.align	4
_vtex	.dd	0
_10	.db	"Press W for window: ",0
_11	.db	"Press R for resolution: ",0
_12	.db	"x",0
_13	.db	"Press C for colours: ",0
_14	.db	" bit",0
_15	.db	"This texture",0
_16	.db	"was created using",0
_17	.db	"CreateTexture()",0
_18	.db	"and drawn to using",0
_19	.db	"SetBuffer TextureBuffer()",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

