
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	[esp],_vpathtaken
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,_aleveldata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,25
	mov	esi,_aleveldata
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_aleveldata
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aleveldata
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_awaypoints
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,25
	mov	esi,_awaypoints
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_awaypoints
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awaypoints
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_awaypointdirection
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,25
	mov	esi,_awaypointdirection
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_awaypointdirection
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awaypointdirection
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],1
	jmp	_24
_25
	mov	[ebp-8],1
	jmp	_26
_27
	mov	ebx,-1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	add	[ebp-8],1
_26
	cmp	[ebp-8],15
	jle	_27
_4
	add	[ebp-4],1
_24
	cmp	[ebp-4],25
	jle	_25
_3
	sub	esp,4
	mov	eax,_aangletostart
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,25
	mov	esi,_aangletostart
	add	esi,12
	mov	[esi],ebx
	mov	ebx,15
	mov	esi,_aangletostart
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aangletostart
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vstartx],8
	mov	[_vstarty],5
	mov	[_vfinishx],21
	mov	[_vfinishy],2
	mov	[_vmouseychange],0
	mov	[_vmousexchange],0
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],1
	jmp	_28
_29
	mov	[ebp-8],1
	jmp	_30
_31
	call	__bbReadInt
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	[ebx],eax
	add	[ebp-8],1
_30
	cmp	[ebp-8],25
	jle	_31
_6
	add	[ebp-4],1
_28
	cmp	[ebp-4],15
	jle	_29
_5
	call	_fmain
	call	_fend
_l_2level1pointer
	ret
_2_leave
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
_32
	call	_fpathfinder
	call	_fchangepoints
	call	_fmoveplayer
	call	_fdrawlevel
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_vpathtaken
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_32
_8
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmoveplayer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_33
	mov	eax,[_vfinishx]
	cmp	[_vstartx],eax
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vfinishy]
	cmp	[_vstarty],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_34
	mov	eax,0
	jmp	_9_leave
_34
	sub	esp,12
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[_vfinishy]
	add	eax,[_vfinishx]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_35
	sub	[_vfinishx],1
	mov	eax,0
	jmp	_9_leave
_35
	sub	esp,12
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[_vfinishy]
	add	eax,[_vfinishx]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_37
	add	[_vfinishx],1
	mov	eax,0
	jmp	_9_leave
_37
	sub	esp,12
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[_vfinishy]
	add	eax,[_vfinishx]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_39
	sub	[_vfinishy],1
	mov	eax,0
	jmp	_9_leave
_39
	sub	esp,12
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[_vfinishy]
	add	eax,[_vfinishx]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_41
	add	[_vfinishy],1
	mov	eax,0
	jmp	_9_leave
_41
_33
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
_fdrawlevel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_43
_44
	mov	[ebp-8],1
	jmp	_45
_46
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_47
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	ebx,[ebp-8]
	shl	ebx,byte 5
	add	ebx,-32
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 5
	add	eax,-32
	mov	[esp],eax
	call	_frect
	jmp	_48
_47
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],64
	mov	[esp],64
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],1
	mov	[esp+8],32
	mov	ebx,[ebp-8]
	shl	ebx,byte 5
	add	ebx,-32
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 5
	add	eax,-32
	mov	[esp],eax
	call	_frect
_48
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,32
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	ebx,[ebp-8]
	shl	ebx,byte 5
	add	ebx,-16
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 5
	add	eax,-16
	mov	[esp],eax
	call	_ftext
	add	[ebp-8],1
_45
	cmp	[ebp-8],15
	jle	_46
_12
	add	[ebp-4],1
_43
	cmp	[ebp-4],25
	jle	_44
_11
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],0
	mov	[esp+8],32
	mov	ebx,[_vstarty]
	shl	ebx,byte 5
	add	ebx,-32
	mov	[esp+4],ebx
	mov	eax,[_vstartx]
	shl	eax,byte 5
	add	eax,-32
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],0
	mov	[esp+8],32
	mov	ebx,[_vfinishy]
	shl	ebx,byte 5
	add	ebx,-32
	mov	[esp+4],ebx
	mov	eax,[_vfinishx]
	shl	eax,byte 5
	add	eax,-32
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],120
	mov	[esp+16],1
	mov	[esp+8],800
	mov	[esp+4],480
	mov	[esp],0
	call	_frect
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
_fpathfinder
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],2
	jmp	_49
_50
	mov	[ebp-8],2
	jmp	_51
_52
	mov	ebx,-1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	add	[ebp-8],1
_51
	cmp	[ebp-8],14
	jle	_52
_15
	add	[ebp-4],1
_49
	cmp	[ebp-4],24
	jle	_50
_14
	call	_fwaypointer
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwaypointer
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
	mov	ebx,0
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[_vstarty]
	add	esi,[_vstartx]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	mov	[ebp-4],2
	jmp	_53
_54
	mov	[ebp-8],2
	jmp	_55
_56
	mov	[ebp-12],768
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_57
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jnz	_58
	mov	eax,[ebp-4]
	sub	eax,1
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_awaypoints]
	mov	eax,[eax]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_59
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
_59
	mov	eax,[ebp-4]
	add	eax,1
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_awaypoints]
	mov	eax,[eax]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_61
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
_61
	mov	eax,[ebp-8]
	sub	eax,1
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypoints]
	mov	eax,[eax]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_63
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
_63
	mov	eax,[ebp-8]
	add	eax,1
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypoints]
	mov	eax,[eax]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_65
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_awaypoints]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_awaypointdirection
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_awaypointdirection]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	esi,_awaypoints
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
_65
_58
_57
	add	[ebp-8],1
_55
	cmp	[ebp-8],14
	jle	_56
_18
	add	[ebp-4],1
_53
	cmp	[ebp-4],24
	jle	_54
_17
	mov	[ebp-4],2
	jmp	_67
_68
	mov	[ebp-8],2
	jmp	_69
_70
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aleveldata]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_71
	mov	ebx,_awaypoints
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_awaypoints]
	mov	ebx,[ebx]
	cmp	ebx,-1
	jnz	_72
	call	_fwaypointer
_72
_71
	add	[ebp-8],1
_69
	cmp	[ebp-8],14
	jle	_70
_20
	add	[ebp-4],1
_67
	cmp	[ebp-4],24
	jle	_68
_19
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcalculateangletofinish
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
	mov	[ebp-4],4
	mov	ebx,[ebp+20]
	sub	ebx,[_vfinishx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	sub	ebx,[_vfinishy]
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	eax,ebx
	jle	_73
	cmp	[ebp-8],0
	jle	_74
	mov	[ebp-4],3
_74
	cmp	[ebp-8],0
	jge	_75
	mov	[ebp-4],1
_75
	jmp	_76
_73
	cmp	[ebp-12],0
	jle	_77
	mov	[ebp-4],0
_77
	cmp	[ebp-12],0
	jge	_78
	mov	[ebp-4],2
_78
_76
	mov	eax,[ebp-4]
	jmp	_21_leave
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fchangepoints
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	call	_fmouseyspeed
	add	[_vmouseychange],eax
	call	_fmousexspeed
	add	[_vmousexchange],eax
	mov	eax,[_vstarty]
	sub	eax,1
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vstartx]
	shl	eax,byte 2
	add	eax,[_aleveldata]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmouseychange],-32
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	ebx,eax
	and	ebx,ebx
	jz	_79
	sub	[_vstarty],1
	mov	[_vmouseychange],0
_79
	mov	eax,[_vstartx]
	add	eax,1
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vstarty]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aleveldata]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmousexchange],32
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	ebx,eax
	and	ebx,ebx
	jz	_80
	add	[_vstartx],1
	mov	[_vmousexchange],0
_80
	mov	eax,[_vstartx]
	sub	eax,1
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vstarty]
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aleveldata]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmousexchange],-32
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	ebx,eax
	and	ebx,ebx
	jz	_81
	sub	[_vstartx],1
	mov	[_vmousexchange],0
_81
	mov	eax,[_vstarty]
	add	eax,1
	mov	ebx,_aleveldata
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vstartx]
	shl	eax,byte 2
	add	eax,[_aleveldata]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmouseychange],32
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	ebx,eax
	and	ebx,ebx
	jz	_82
	add	[_vstarty],1
	mov	[_vmouseychange],0
_82
	sub	esp,8
	call	_fgraphicswidth
	sar	eax,byte 1
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-4]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fmovemouse
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vpathtaken	.dd	0
_23	.db	"5",0
	.align	4
_aleveldata	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_awaypoints	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_awaypointdirection	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aangletostart	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vstartx	.dd	0
	.align	4
_vstarty	.dd	0
	.align	4
_vfinishx	.dd	0
	.align	4
_vfinishy	.dd	0
	.align	4
_vmouseychange	.dd	0
	.align	4
_vmousexchange	.dd	0
_36	.db	"L",0
_38	.db	"R",0
_40	.db	"U",0
_42	.db	"D",0
_60	.db	"L",0
_62	.db	"R",0
_64	.db	"U",0
_66	.db	"D",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0

