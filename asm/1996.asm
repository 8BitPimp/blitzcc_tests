
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
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],12
	mov	[esp+8],20
	mov	[esp+4],20
	sub	esp,4
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vtiles],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fmaskimage
	sub	esp,12
	mov	[esp+4],480
	mov	[esp+8],1
	mov	[esp],640
	call	_fcreateimage
	mov	[_vbuf],eax
	sub	esp,8
	mov	eax,[_vbuf]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[_vbufb],eax
	mov	[_vpx],16
	mov	[_vpy],12
	mov	[_vsc],0
	sub	esp,4
	mov	eax,_ascr
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_ascr
	add	esi,12
	mov	[esi],ebx
	mov	ebx,19
	mov	esi,_ascr
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ascr
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],0
	jmp	_89
_90
	mov	[ebp-8],0
	jmp	_91
_92
	sub	esp,8
	mov	eax,_ascr
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ascr]
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-8],1
_91
	cmp	[ebp-8],19
	jle	_92
_4
	add	[ebp-4],1
_89
	cmp	[ebp-4],1
	jle	_90
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],20
	sub	esp,4
	mov	eax,_93
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	mov	[esp],0
	call	_fsetscr
_94
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],203
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	eax,ebx
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_95
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],200
	mov	eax,ebx
	call	_fkeydown
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	eax,ebx
	mov	[ebp-16],eax
	jmp	_96
_95
	mov	[ebp-16],0
_96
	cmp	[ebp-12],0
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-16],0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_97
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fmove
_97
	cmp	[_vpy],0
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],57
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_98
	sub	esp,16
	mov	eax,[_vpx]
	mov	[esp],eax
	mov	ebx,[_vpy]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fland
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_100
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_99
	call	_frunscript
_99
_98
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_94
_5
	call	_fwaitkey
_l_2script
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsetscr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[_vbufb]
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-4],0
	jmp	_101
_102
	mov	[ebp-8],0
	jmp	_103
_104
	sub	esp,32
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_ascr
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ascr]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	sub	eax,65
	mov	[esp+12],eax
	mov	ebx,[ebp-4]
	imul	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	imul	esi,20
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	add	[ebp-8],1
_103
	cmp	[ebp-8],31
	jle	_104
_8
	add	[ebp-4],1
_101
	cmp	[ebp-4],19
	jle	_102
_7
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	ebx,[ebp+20]
	mov	[_vsc],ebx
	call	_fdrawbuf
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdrawbuf
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[_vbuf]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,16
	mov	ebx,[_vpy]
	imul	ebx,20
	mov	[esp+8],ebx
	mov	[esp+12],11
	mov	esi,[_vpx]
	imul	esi,20
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
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
_fmove
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	eax,[ebp+20]
	add	eax,[_vpx]
	cmp	eax,0
	setge	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	add	ebx,[_vpx]
	cmp	ebx,31
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	mov	[ebp-8],eax
	mov	ebx,[ebp+24]
	add	ebx,[_vpy]
	cmp	ebx,0
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	mov	[ebp-8],eax
	mov	ebx,[ebp+24]
	add	ebx,[_vpy]
	cmp	ebx,19
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_105
	sub	esp,16
	mov	eax,[_vpx]
	add	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[_vpy]
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fland
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_108
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_107
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_109
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_107
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_110
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_107
	jmp	_106
_107
	mov	ebx,[ebp+20]
	add	[_vpx],ebx
	mov	ebx,[ebp+24]
	add	[_vpy],ebx
	cmp	[_vpy],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[_vsc],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_111
	mov	[_vpy],18
	sub	esp,4
	mov	[esp],1
	call	_fsetscr
	jmp	_112
_111
	cmp	[_vpy],19
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[_vsc],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_113
	mov	[_vpy],1
	sub	esp,4
	mov	[esp],0
	call	_fsetscr
_113
_112
	call	_fdrawbuf
	sub	esp,4
	mov	[esp],100
	call	_fdelay
	jmp	_106
_106
_105
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fland
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[ebp+20]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_ascr
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp+24]
	add	eax,[_vsc]
	shl	eax,byte 2
	add	eax,[_ascr]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	jmp	_12_leave
	sub	esp,4
	mov	eax,_114
	mov	[esp],eax
	call	__bbStrConst
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_frunscript
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	sub	esp,4
	mov	eax,__DATA
	add	eax,320
	mov	[esp],eax
	call	__bbRestore
_115
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-56],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_117
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_116
	jmp	_14
_116
	sub	esp,16
	mov	eax,_118
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-8],ebx
	sub	esp,16
	mov	eax,_119
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-12],ebx
	sub	esp,24
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_120
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_121
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	add	esi,1
	mov	[esp+8],esi
	call	_finstr
	mov	[ebp-16],eax
	sub	esp,20
	mov	[esp+4],1
	mov	esi,[ebp-8]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	sub	esi,[ebp-8]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	sub	esp,20
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	sub	esi,[ebp-12]
	sub	esi,1
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],-1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-24]
	mov	[ebp-36],ebx
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-40],eax
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_124
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_123
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_126
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_125
	sub	esp,12
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_128
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_127
	sub	esp,24
	mov	eax,_129
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,_130
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdebuglog
	call	_fstop
	jmp	_122
_123
	sub	esp,8
	mov	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_ftextwindow
	jmp	_122
_125
	call	_fdrawbuf
	mov	ebx,[_vpx]
	sub	[ebp-36],ebx
	mov	[ebp-48],1
	jmp	_131
_132
	sub	esp,12
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	__bbSgn
	mov	[esp],eax
	mov	[esp+4],0
	call	_fmove
	add	[ebp-48],1
_131
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	__bbAbs
	cmp	[ebp-48],eax
	jle	_132
_16
	mov	ebx,[_vpy]
	sub	[ebp-40],ebx
	mov	[ebp-52],1
	jmp	_133
_134
	sub	esp,8
	mov	[esp],0
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbSgn
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	_fmove
	add	[ebp-52],1
_133
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	__bbAbs
	cmp	[ebp-52],eax
	jle	_134
_17
	jmp	_122
_127
	sub	esp,4
	mov	eax,[_vbufb]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,16
	mov	ebx,[ebp-40]
	imul	ebx,20
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fasc
	sub	eax,65
	mov	[esp+12],eax
	mov	esi,[ebp-36]
	imul	esi,20
	mov	[esp+4],esi
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,36
	mov	[esp+4],1
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	sub	esp,4
	mov	eax,_ascr
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-40]
	add	eax,[_vsc]
	shl	eax,byte 2
	add	eax,[_ascr]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-56],eax
	sub	esp,12
	mov	ebx,[ebp-36]
	add	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],-1
	mov	[ebp-60],eax
	sub	esp,4
	mov	esi,_ascr
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-40]
	add	esi,[_vsc]
	shl	esi,byte 2
	add	esi,[_ascr]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,_ascr
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[_vsc]
	shl	ebx,byte 2
	add	ebx,[_ascr]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_122
_122
	jmp	_115
_14
	call	_fdrawbuf
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[ebp-56],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-56]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftextwindow
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
	call	_fflushkeys
	call	_fdrawbuf
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],80
	mov	[esp+16],1
	mov	[esp+8],640
	mov	[esp+4],400
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],77
	mov	[esp+16],1
	mov	[esp+8],637
	mov	[esp+4],403
	mov	[esp],3
	call	_frect
	sub	esp,12
	mov	[esp+4],192
	mov	[esp+8],192
	mov	[esp],192
	call	_fcolor
	sub	esp,20
	mov	[esp+12],76
	mov	[esp+16],1
	mov	[esp+8],636
	mov	[esp+4],402
	mov	[esp],2
	call	_frect
	sub	esp,16
	mov	[esp+8],410
	mov	esi,9
	add	esi,[ebp+20]
	mov	[esp+12],esi
	mov	[esp+4],10
	mov	eax,[_vtiles]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-4],410
	mov	[ebp-8],1
	jmp	_135
_136
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_138
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_137
	sub	esp,16
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fstringwidth
	cmp	eax,490
	jle	_139
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp],40
	call	_ftext
	add	[ebp-4],20
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_140
_139
	sub	esp,28
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_141
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_140
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_142
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_143
_137
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_143
	add	[ebp-8],1
_135
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_136
_19
	sub	esp,40
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_144
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp],40
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vtiles	.dd	0
_88	.db	"script.png",0
	.align	4
_vbuf	.dd	0
	.align	4
_vbufb	.dd	0
	.align	4
_vpx	.dd	0
	.align	4
_vpy	.dd	0
	.align	4
_vsc	.dd	0
	.align	4
_ascr	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
_93	.db	"Arial",0
_100	.db	"J",0
_108	.db	"E",0
_109	.db	"H",0
_110	.db	"I",0
_114	.db	"",0
_117	.db	"",0
_118	.db	" ",0
_119	.db	"/",0
_120	.db	"/",0
_121	.db	"/",0
_124	.db	"SPEAK",0
_126	.db	"MOVE",0
_128	.db	"CHANGE",0
_129	.db	"Unknow command '",0
_130	.db	"'",0
_138	.db	" ",0
_141	.db	" ",0
_142	.db	"",0
_144	.db	" ",0
_20	.db	"AAAAAAAAAAAAAAAEEAAAAAAAAAAAAAAA",0
_21	.db	"BBBBBBBBBBBBBBAEEABBBBBBBBBBBBBB",0
_22	.db	"FFFFFFFFFFFFFFBDDBFFFFFFFFFFFFFF",0
_23	.db	"GGGGGGGGGGGGGGGIIGGGGGGGGGGGGGGG",0
_24	.db	"GGGGGGGGGGGGGGGIIGGGGGGGGGGGGGGG",0
_25	.db	"GGGGGGGGGGGGGGGIIGGGGGGGGGGGGGGG",0
_26	.db	"GGGGGGGGGGGGGGGIIGGGGGGGGGGGGGGG",0
_27	.db	"HHHHHHHHHHHHHHJJJJHHHHHHHHHHHHHH",0
_28	.db	"HHHHHHHHHHHHHHJHHJHHHHHHHHHHHHHH",0
_29	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_30	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_31	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_32	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_33	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_34	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_35	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_36	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_37	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_38	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_39	.db	"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH",0
_40	.db	"AAAAAAAAAAAAAAAEEAAAAAAAAAAAAAAA",0
_41	.db	"BCBBBCBBBCBBBCBEEBCBBBCBBBCBBBCB",0
_42	.db	"EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE",0
_43	.db	"EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE",0
_44	.db	"AAAAAEAAAAAEAAAEEAAAEAAAAAEAAAAA",0
_45	.db	"BBABBDBBABBDBBAEEABBDBBABBDBBAEE",0
_46	.db	"EEAEEEEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_47	.db	"EEAEEEEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_48	.db	"EEAEEEEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_49	.db	"AAAAAAAAAAAAAAAEEAAAAAAAAAAAAAAA",0
_50	.db	"CBABCBCBABCBCBAEEABCBCBABCBBCABC",0
_51	.db	"EEAEEEEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_52	.db	"EEAEEKEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_53	.db	"EEAEEEEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_54	.db	"EEAEEEEEAEEEEEAEEAEEEEEAEEEEEAEE",0
_55	.db	"AAAAAEAAAAAEAAAEEAAAEAAAAAEAAAAA",0
_56	.db	"BBCBBDBBCBBDBCBEEBCBDBBCBBDBBCBB",0
_57	.db	"EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE",0
_58	.db	"AAAAAAAAAAAAAAAEEAAAAAAAAAAAAAAA",0
_59	.db	"BBBBBBBBBBBBBBAEEABBBBBBBBBBBBBB",0
_60	.db	"SPEAK 0/Stop! Who are there?",0
_61	.db	"SPEAK 2/My name is Leonard, I have come from the city of SandWorm to battle huge spiders!",0
_62	.db	"SPEAK 0/Leonard? I heard about you. You may pass. Speak with the captain of palace guards, 2-nd door along the corridor to the left.",0
_63	.db	"CHANGE 15/7/H",0
_64	.db	"CHANGE 16/7/H",0
_65	.db	"CHANGE 13/7/J",0
_66	.db	"CHANGE 18/7/J",0
_67	.db	"CHANGE 15/2/E",0
_68	.db	"CHANGE 16/2/E",0
_69	.db	"MOVE 16/1",0
_70	.db	"CHANGE 15/2/D",0
_71	.db	"CHANGE 16/2/D",0
_72	.db	"MOVE 16/0",0
_73	.db	"MOVE 16/17",0
_74	.db	"MOVE 5/17",0
_75	.db	"CHANGE 5/16/E",0
_76	.db	"MOVE 5/13",0
_77	.db	"SPEAK 2/Greetings.",0
_78	.db	"SPEAK 1/Greetings. Your name is Leonard, isn't it?",0
_79	.db	"SPEAK 2/Yes, I am Leonard.",0
_80	.db	"SPEAK 1/My name is Jean. I listen to you.",0
_81	.db	"SPEAK 2/I heard, you are collecting people for a mountain campaign, to destroy huge spiders.",0
_82	.db	"SPEAK 1/Yes, these spiders already represent threat.",0
_83	.db	"SPEAK 2/I wish to join you.",0
_84	.db	"SPEAK 1/Well, Leonard. I heard about your feats, think, we shall do without examinations. For now, go eat something. Tomorrow morning we will go.",0
_85	.db	"MOVE 5/17",0
_86	.db	"CHANGE 5/16/D",0
_87	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	4
	.dd	_24
	.dd	4
	.dd	_25
	.dd	4
	.dd	_26
	.dd	4
	.dd	_27
	.dd	4
	.dd	_28
	.dd	4
	.dd	_29
	.dd	4
	.dd	_30
	.dd	4
	.dd	_31
	.dd	4
	.dd	_32
	.dd	4
	.dd	_33
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	4
	.dd	_36
	.dd	4
	.dd	_37
	.dd	4
	.dd	_38
	.dd	4
	.dd	_39
	.dd	4
	.dd	_40
	.dd	4
	.dd	_41
	.dd	4
	.dd	_42
	.dd	4
	.dd	_43
	.dd	4
	.dd	_44
	.dd	4
	.dd	_45
	.dd	4
	.dd	_46
	.dd	4
	.dd	_47
	.dd	4
	.dd	_48
	.dd	4
	.dd	_49
	.dd	4
	.dd	_50
	.dd	4
	.dd	_51
	.dd	4
	.dd	_52
	.dd	4
	.dd	_53
	.dd	4
	.dd	_54
	.dd	4
	.dd	_55
	.dd	4
	.dd	_56
	.dd	4
	.dd	_57
	.dd	4
	.dd	_58
	.dd	4
	.dd	_59
	.dd	4
	.dd	_60
	.dd	4
	.dd	_61
	.dd	4
	.dd	_62
	.dd	4
	.dd	_63
	.dd	4
	.dd	_64
	.dd	4
	.dd	_65
	.dd	4
	.dd	_66
	.dd	4
	.dd	_67
	.dd	4
	.dd	_68
	.dd	4
	.dd	_69
	.dd	4
	.dd	_70
	.dd	4
	.dd	_71
	.dd	4
	.dd	_72
	.dd	4
	.dd	_73
	.dd	4
	.dd	_74
	.dd	4
	.dd	_75
	.dd	4
	.dd	_76
	.dd	4
	.dd	_77
	.dd	4
	.dd	_78
	.dd	4
	.dd	_79
	.dd	4
	.dd	_80
	.dd	4
	.dd	_81
	.dd	4
	.dd	_82
	.dd	4
	.dd	_83
	.dd	4
	.dd	_84
	.dd	4
	.dd	_85
	.dd	4
	.dd	_86
	.dd	4
	.dd	_87
	.dd	0

