
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],170
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_11
	call	_fend
_11
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
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1070386381
	call	_fcamerazoom
	sub	esp,12
	mov	[esp+4],68
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[_vtexture],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],64
	mov	[esp],64
	call	_fcreatetexture
	mov	[_vtxtr],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-12],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtxtr]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1123024896
	mov	[esp+12],1128136704
	mov	[esp+4],1125515264
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fpointentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1061158912
	mov	[esp+4],-1046478848
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1061158912
	mov	[esp+4],1053609165
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	eax,_aletter
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,26
	mov	esi,_aletter
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aletter
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],210
	mov	[esp],90
	call	_fclscolor
	mov	[ebp-20],0
	jmp	_12
_13
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],128
	mov	[esp],128
	call	_fcreatetexture
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aletter]
	mov	[ebx],eax
	sub	esp,12
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_aletter]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,65
	add	eax,[ebp-20]
	mov	[esp],eax
	call	_fchr
	mov	[esp+8],eax
	mov	[esp+4],63
	mov	[esp],62
	call	_ftext
	add	[ebp-20],1
_12
	cmp	[ebp-20],25
	jle	_13
_3
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fclscolor
	sub	esp,8
	mov	[esp],_vscroll
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-24],0
	mov	[_vsc_offset],1
	mov	[ebp-28],1
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],90
	mov	[esp],40
	call	_fcolor
	jmp	_16
_15
	add	[ebp-24],1
	cmp	[ebp-24],24
	jle	_17
	sub	esp,16
	mov	ebx,[_vsc_offset]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_vscroll
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	sub	eax,65
	mov	[ebp-32],eax
	cmp	[ebp-32],0
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-32],26
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_18
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_twuerfel
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,-1063675494
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,-1059061760
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	ebx,[ebp-36]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,20
	mov	[esp+12],1056964608
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],1056964608
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	esi,[ebp-32]
	shl	esi,byte 2
	add	esi,[_aletter]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vtxtr]
	mov	[esp+4],esi
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fentitytexture
_18
	mov	[ebp-24],0
	add	[_vsc_offset],1
	sub	esp,8
	mov	eax,_vscroll
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[_vsc_offset],eax
	jle	_19
	mov	[_vsc_offset],1
_19
_17
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],_twuerfel
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,20
	mov	[esp+12],1053609165
	mov	[esp+16],0
	mov	[esp+8],1050253722
	mov	[esp+4],1045220557
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_fturnentity
	mov	ebx,[ebp-36]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1032805417
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,8
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1088421888
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_21
	sub	esp,4
	mov	eax,[ebp-36]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	__bbObjDelete
_21
	sub	esp,4
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_20
_5
	mov	ebx,1
	sub	ebx,[ebp-28]
	mov	[ebp-28],ebx
	cmp	[ebp-28],1
	jnz	_22
	call	_fupdatetexture
_22
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],1061997773
	mov	[esp+16],0
	mov	[esp+8],1060320051
	mov	[esp+4],1050253722
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,20
	mov	[esp+12],479
	mov	[esp+16],1
	mov	[esp+8],2
	mov	[esp+4],0
	mov	[esp],20
	call	_frect
	sub	esp,20
	mov	[esp+12],479
	mov	[esp+16],1
	mov	[esp+8],2
	mov	[esp+4],0
	mov	[esp],123
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fflip
_16
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_15
_4
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],1
	mov	[esp],1
	call	_fclearworld
	call	_fend
	ret
_2_leave
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdatetexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,12
	mov	eax,[_vtexture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	eax,[_vtexture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],1
	jmp	_25
_26
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	sub	esp,24
	mov	[esp],0
	mov	[esp+4],1115684864
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 16
	mov	esi,[ebp-12]
	shl	esi,byte 8
	add	ebx,esi
	add	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],33
	call	_fwritepixelfast
	add	[ebp-4],1
_25
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	cmp	[ebp-4],eax
	jle	_26
_7
	mov	[ebp-20],0
	jmp	_27
_28
	mov	[ebp-24],33
	jmp	_29
_30
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-28],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	add	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-20]
	sub	eax,1
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-36],eax
	mov	ebx,[ebp-36]
	add	ebx,[ebp-32]
	sar	ebx,byte 1
	mov	[ebp-40],ebx
	mov	ebx,[ebp-40]
	add	ebx,[ebp-28]
	sar	ebx,byte 1
	mov	[ebp-28],ebx
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-24]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,67
	sub	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],-1
_29
	cmp	[ebp-24],0
	jge	_30
_9
	add	[ebp-20],1
_27
	cmp	[ebp-20],64
	jle	_28
_8
	sub	esp,12
	mov	eax,[_vtexture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	sub	esp,12
	mov	eax,[_vtxtr]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,32
	mov	[esp+24],32
	mov	[esp+28],0
	mov	[esp+20],64
	mov	[esp+16],0
	mov	[esp+12],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vtexture]
	mov	[esp],eax
	call	_fdrawblockrect
	sub	esp,32
	mov	[esp+24],32
	mov	[esp+28],0
	mov	[esp+20],64
	mov	[esp+16],36
	mov	[esp+12],0
	mov	[esp+8],32
	mov	[esp+4],0
	mov	eax,[_vtexture]
	mov	[esp],eax
	call	_fdrawblockrect
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_10	.db	"Arial Black",0
	.align	4
_vtexture	.dd	0
	.align	4
_vtxtr	.dd	0
	.align	4
_aletter	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vscroll	.dd	0
_14	.db	"     JUST A LITTLE DEMO FOR REALTIME CALCULATED TEXTURES AND TYPE BASED SCROLLTEXT     CHEERS   TXW     ",0
	.align	4
_vsc_offset	.dd	0
	.align	4
_twuerfel	.dd	5
_23	.dd	0
	.dd	_23
	.dd	_23
	.dd	0
	.dd	-1
_24	.dd	0
	.dd	_24
	.dd	_24
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbFltType
	.dd	__bbFltType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

