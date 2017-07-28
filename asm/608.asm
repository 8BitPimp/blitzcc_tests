
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
	sub	esp,8
	mov	[esp],_vinfo1
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fsetgfx
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetgfx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,12
	mov	eax,_vinfo1
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_14
	sub	esp,28
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_vinfo1
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_vinfo1
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fapptitle
	mov	ebx,eax
_14
	call	_fflushkeys
	call	_fcountgfxmodes3d
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_18
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_18
	mov	[ebp-8],0
	call	_fwindowed3d
	cmp	eax,0
	jnz	_20
	mov	[ebp-8],1
	jmp	_21
_20
	mov	[ebp-12],1
	jmp	_22
_23
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fgfxmodewidth
	cmp	eax,1024
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodeheight
	mov	ebx,eax
	mov	eax,[ebp-56]
	cmp	ebx,768
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodedepth
	mov	ebx,eax
	mov	eax,[ebp-56]
	cmp	ebx,32
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	and	eax,eax
	jz	_24
	mov	ebx,[ebp-12]
	mov	[ebp-8],ebx
_24
	add	[ebp-12],1
_22
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_23
_4
_21
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],17
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-20],480
	mov	[ebp-24],-160
	mov	[ebp-28],-32
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_26
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-36],6
	mov	[ebp-40],210
	sub	esp,24
	mov	[esp+16],24
	mov	[esp+20],0
	mov	[esp+12],30
	call	_ffontheight
	imul	eax,5
	add	eax,[ebp-28]
	mov	[esp+8],eax
	mov	[esp+4],60
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fbutton
	sub	esp,24
	mov	[esp+16],24
	mov	[esp+20],0
	mov	[esp+12],30
	call	_ffontheight
	imul	eax,5
	add	eax,[ebp-28]
	mov	[esp+8],eax
	mov	[esp+4],230
	sub	esp,4
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fbutton
	sub	esp,24
	mov	[esp+16],32
	mov	[esp+20],0
	mov	[esp+12],40
	mov	[esp+8],202
	mov	[esp+4],272
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fbutton
	sub	esp,24
	mov	[esp+16],24
	mov	[esp+20],0
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	mov	[esp+12],eax
	mov	ebx,[ebp-40]
	mov	[esp+8],ebx
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	sub	esp,4
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fbutton
_30
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],64
	mov	[esp],0
	call	_fclscolor
	call	_fcls
	call	_fupdatesimplebuttons
	sub	esp,16
	call	_fmousex
	mov	[esp],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_fgetsimplebutton
	mov	[esp+4],eax
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	cmp	[ebp-8],0
	jnz	_32
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	ebx,5
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	jmp	_34
_32
	sub	esp,60
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgfxmodewidth
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodeheight
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodedepth
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	ebx,5
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
_34
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	ebx,7
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-52]
	shl	ebx,byte 3
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	_ffontheight
	mov	ebx,eax
	mov	eax,[ebp-52]
	imul	ebx,9
	add	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_40
	call	_fend
_40
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],28
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	ebx,eax
	and	ebx,ebx
	jz	_41
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ffreefont
	sub	esp,4
	mov	eax,[ebp-48]
	mov	[esp],eax
	call	_ffreeimage
	call	_fendgraphics
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_43
	sub	esp,20
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgfxmodedepth
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fgfxmodeheight
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgfxmodewidth
	mov	[esp],eax
	call	_fgraphics3d
	jmp	_44
_43
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
_44
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	eax,0
	jmp	_3_leave
_41
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_45
	mov	[ebp-8],0
	call	_fwindowed3d
	cmp	eax,0
	jnz	_46
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
_46
	call	_fflushmouse
	jmp	_l_3next_ctrl
_45
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_48
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	ebx,eax
	and	ebx,ebx
	jz	_47
	sub	[ebp-8],1
	cmp	[ebp-8],0
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	mov	[ebp-56],eax
	mov	eax,ebx
	call	_fwindowed3d
	mov	ebx,eax
	mov	eax,[ebp-56]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	and	eax,ebx
	mov	[ebp-52],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	ebx,eax
	and	ebx,ebx
	jz	_49
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
_49
	jmp	_50
_47
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-52],eax
	sub	esp,4
	mov	[esp],205
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-52]
	or	ebx,eax
	and	ebx,ebx
	jz	_51
	add	[ebp-8],1
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_53
	mov	[ebp-8],0
	call	_fwindowed3d
	cmp	eax,0
	jnz	_54
	mov	[ebp-8],1
_54
_53
_51
_50
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_55
	sub	esp,8
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fexecfile
	call	_fend
_55
_l_3next_ctrl
	cmp	[ebp-20],160
	jle	_57
	sub	[ebp-20],32
_57
	cmp	[ebp-24],160
	jge	_58
	add	[ebp-24],32
_58
	sub	esp,4
	mov	[esp],1
	call	_fflip
	jmp	_30
_5
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbutton
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tsimplebutton
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_fupdatesimplebuttons
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_tsimplebutton
	call	__bbObjEachFirst
	and	eax,eax
	jz	_8
_59
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_60
	sub	esp,12
	mov	[esp+4],160
	mov	[esp+8],192
	mov	[esp],160
	call	_fcolor
	jmp	_61
_60
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],160
	mov	[esp],128
	call	_fcolor
_61
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	ebx,[ebp-20]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_62
	sub	esp,12
	mov	[esp+4],192
	mov	[esp+8],240
	mov	[esp],192
	call	_fcolor
	jmp	_63
_62
	sub	esp,12
	mov	[esp+4],240
	mov	[esp+8],255
	mov	[esp],240
	call	_fcolor
_63
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,[ebp-16]
	sub	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	add	esi,[ebp-20]
	sub	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fline
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_64
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],128
	mov	[esp],80
	call	_fcolor
	jmp	_65
_64
	sub	esp,12
	mov	[esp+4],92
	mov	[esp+8],148
	mov	[esp],92
	call	_fcolor
_65
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	add	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	add	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,[ebp-16]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	add	esi,[ebp-20]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	add	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	add	eax,[ebp-16]
	mov	[esp],eax
	call	_fline
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	sar	eax,byte 1
	add	eax,[ebp-8]
	add	eax,1
	mov	[esp],eax
	call	_ftext
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_66
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	jmp	_67
_66
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_67
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	sar	eax,byte 1
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_ftext
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	add	ebx,[ebp-12]
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringheight
	sar	eax,byte 1
	add	ebx,eax
	mov	[ebp-28],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_68
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,[ebp-16]
	sub	ebx,5
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	add	eax,5
	mov	[esp],eax
	call	_fline
_68
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_59
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgetsimplebutton
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_69
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],_tsimplebutton
	call	__bbObjEachFirst
	and	eax,eax
	jz	_10
_70
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	sub	esp,32
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	[esp+24],ebx
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,12
	mov	esi,[esi]
	mov	[esp+28],esi
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	[esp+20],esi
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	mov	[esp+16],ebx
	mov	[esp+12],1
	mov	[esp+8],1
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frectsoverlap
	and	eax,eax
	jz	_71
	mov	ebx,1
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_72
	mov	ebx,0
	mov	esi,[ebp-8]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	ebx,[ebx]
	add	ebx,16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
_72
_71
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_70
_10
	call	_fflushmouse
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vinfo1	.dd	0
_11	.db	"GUI Demo for Blitz Community",0
	.align	4
_tsimplebutton	.dd	5
_12	.dd	0
	.dd	_12
	.dd	_12
	.dd	0
	.dd	-1
_13	.dd	0
	.dd	_13
	.dd	_13
	.dd	0
	.dd	-1
	.dd	6
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbStrType
	.dd	__bbIntType
_15	.db	"",0
_16	.db	"Exit ",0
_17	.db	" ?",0
_19	.db	"Can't find any 3D graphics modes",0
_25	.db	"",0
_26	.db	" www.intensiveworks.tk ",0
_27	.db	"<<",0
_28	.db	">>",0
_29	.db	"OK",0
_31	.db	"Select screen resolution...",0
_33	.db	"Windowed",0
_35	.db	",",0
_36	.db	",",0
_37	.db	"[Return] to begin",0
_38	.db	"[Arrows] change mode",0
_39	.db	"[Escape] to exit",0
_42	.db	"OK",0
_48	.db	"<<",0
_52	.db	">>",0
_56	.db	"http:\\www.intensiveworks.tk",0
_69	.db	"",0
_73	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
