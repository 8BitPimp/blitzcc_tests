
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
	mov	[_vnumnouns],14
	mov	[_vnumverbs],12
	mov	[_vcharposition],3
	mov	[_vnuminvitems],1
	mov	[_vnumcuffs],0
	mov	[_vwinflag],0
	mov	[_vlostflag],0
	mov	[_vunlockflag],0
	mov	[_vflippersflag],0
	mov	[_vcutflag],0
	mov	[_vverbindex],0
	mov	[_vnounindex],0
	mov	[_vnewgameflag],0
	mov	[_vexitflag],0
	sub	esp,4
	mov	eax,_adataone
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_adataone
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adataone
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adatatwo
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_adatatwo
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adatatwo
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aexits
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_aexits
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_aexits
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aexits
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_anounname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnumnouns]
	mov	esi,_anounname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_anounname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_averbname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnumverbs]
	mov	esi,_averbname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_averbname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aobjectname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_aobjectname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aobjectname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aobjectlist
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_aobjectlist
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aobjectlist
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	jmp	_119
_118
	cmp	[_vnewgameflag],0
	jnz	_120
	mov	[_vnewgameflag],1
	call	_finitialize
	call	_flook
_120
	call	_fgameinput
	call	_fsort
	cmp	[_vwinflag],1
	jnz	_121
	call	_fendgame
_121
	cmp	[_vlostflag],1
	jnz	_122
	call	_fendgame
_122
_119
	cmp	[_vexitflag],0
	jz	_118
_3
	call	_fend
_l_2gamedata
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgameinput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_123
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_124
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_125
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_126
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	mov	[ebp-8],1
	jmp	_127
_128
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_130
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_129
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],3
	call	_fleft
	mov	[esp+4],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_averbname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],3
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_anounname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-8],eax
_129
	add	[ebp-8],1
_127
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_128
_5
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_132
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_131
	mov	eax,0
	jmp	_4_leave
_131
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],3
	call	_fleft
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
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_134
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_133
	mov	[_vexitflag],1
	mov	eax,0
	jmp	_4_leave
_133
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_136
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_135
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_137
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_135
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_139
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_138
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_140
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_138
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_142
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_141
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_143
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_141
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_145
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_144
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_146
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_144
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_148
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_147
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_149
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_147
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_151
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_150
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_152
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_150
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_154
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_153
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_155
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_153
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_157
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_156
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_158
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_4_leave
_156
	sub	esp,8
	mov	eax,_159
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsort
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
	mov	[_vverbindex],0
	mov	[_vnounindex],0
	mov	[ebp-4],1
	jmp	_160
_161
	sub	esp,20
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],3
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_162
	mov	ebx,[ebp-4]
	mov	[_vverbindex],ebx
	mov	ebx,[_vnumverbs]
	mov	[ebp-4],ebx
_162
	add	[ebp-4],1
_160
	mov	ebx,[_vnumverbs]
	cmp	[ebp-4],ebx
	jle	_161
_7
	mov	[ebp-12],1
	jmp	_163
_164
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_anounname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_165
	mov	ebx,[ebp-12]
	mov	[_vnounindex],ebx
	mov	ebx,[_vnumnouns]
	mov	[ebp-12],ebx
_165
	add	[ebp-12],1
_163
	mov	ebx,[_vnumnouns]
	cmp	[ebp-12],ebx
	jle	_164
_8
	cmp	[_vnounindex],0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vverbindex],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_166
	sub	esp,8
	mov	eax,_167
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_6_leave
_166
	mov	ebx,[_vverbindex]
	mov	[ebp-16],ebx
	cmp	[ebp-16],1
	jz	_169
	cmp	[ebp-16],2
	jz	_170
	cmp	[ebp-16],3
	jz	_171
	cmp	[ebp-16],4
	jz	_172
	cmp	[ebp-16],5
	jz	_173
	cmp	[ebp-16],6
	jz	_174
	cmp	[ebp-16],7
	jz	_175
	cmp	[ebp-16],8
	jz	_176
	cmp	[ebp-16],9
	jz	_177
	cmp	[ebp-16],10
	jz	_178
	cmp	[ebp-16],11
	jz	_179
	jmp	_168
_169
	call	_fgo
	jmp	_168
_170
	call	_fgameget
	jmp	_168
_171
	call	_fgamedrop
	jmp	_168
_172
	call	_fgamecut
	jmp	_168
_173
	call	_fgamewear
	jmp	_168
_174
	call	_fgamegive
	jmp	_168
_175
	call	_fgameunlock
	jmp	_168
_176
	call	_fgameuse
	jmp	_168
_177
	call	_finventory
	jmp	_168
_178
	call	_fgamehelp
	jmp	_168
_179
	call	_flook
	jmp	_168
_168
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vnounindex],4
	jle	_180
	sub	esp,8
	mov	eax,_181
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_10_leave
_180
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vnounindex]
	add	ebx,[_vcharposition]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_182
	sub	esp,8
	mov	eax,_183
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_10_leave
_182
	cmp	[_vcharposition],16
	jnz	_184
	cmp	[_vnounindex],1
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vnounindex],4
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_185
	cmp	[_vflippersflag],0
	jnz	_186
	mov	[_vlostflag],1
	mov	eax,0
	jmp	_10_leave
_186
_185
_184
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vnounindex]
	add	ebx,[_vcharposition]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	ebx,[ebx]
	mov	[_vcharposition],ebx
	call	_flook
	mov	eax,0
	jmp	_10_leave
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
_fgameget
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[_vnounindex],6
	jnz	_187
	cmp	[_vcharposition],13
	jnz	_188
	sub	esp,8
	mov	eax,_189
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_11_leave
_188
_187
	cmp	[_vnounindex],8
	jge	_190
	sub	esp,8
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_11_leave
_190
	mov	ebx,[_vnounindex]
	sub	ebx,7
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jnz	_192
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_194
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_193
	sub	esp,8
	mov	eax,_195
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_11_leave
_193
_192
	mov	[ebp-4],7
	jmp	_196
_197
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,[_vcharposition]
	jnz	_198
	cmp	[_vnounindex],14
	jnz	_199
	mov	ebx,[ebp-4]
	add	ebx,7
	mov	[_vnounindex],ebx
	add	[_vnumcuffs],1
	mov	[ebp-4],10
_199
_198
	add	[ebp-4],1
_196
	cmp	[ebp-4],10
	jle	_197
_12
	mov	ebx,[_vnounindex]
	sub	ebx,7
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,[_vcharposition]
	jnz	_200
	sub	esp,8
	mov	eax,_201
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,99
	mov	esi,[_vnounindex]
	sub	esi,7
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	add	[_vnuminvitems],1
	mov	eax,0
	jmp	_11_leave
_200
	sub	esp,8
	mov	eax,_202
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgamedrop
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[_vnounindex],8
	jge	_203
	sub	esp,8
	mov	eax,_204
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_13_leave
_203
	mov	[ebp-4],7
	jmp	_205
_206
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jnz	_207
	cmp	[_vnounindex],14
	jnz	_208
	mov	ebx,[ebp-4]
	add	ebx,7
	mov	[_vnounindex],ebx
	sub	[_vnumcuffs],1
	mov	[ebp-4],10
_208
_207
	add	[ebp-4],1
_205
	cmp	[ebp-4],10
	jle	_206
_14
	mov	ebx,[_vnounindex]
	sub	ebx,7
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_209
	sub	esp,8
	mov	eax,_210
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_13_leave
_209
	sub	esp,8
	mov	eax,_211
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,[_vcharposition]
	mov	esi,[_vnounindex]
	sub	esi,7
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	sub	[_vnuminvitems],1
	cmp	[_vcharposition],19
	jnz	_212
	cmp	[_vnounindex],13
	jnz	_213
	mov	[_vwinflag],1
_213
_212
	mov	eax,0
	jmp	_13_leave
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
_fgamecut
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_214
	sub	esp,8
	mov	eax,_215
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_15_leave
_214
	cmp	[_vnounindex],11
	jz	_216
	sub	esp,8
	mov	eax,_217
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_15_leave
_216
	cmp	[_vcharposition],5
	jz	_218
	sub	esp,8
	mov	eax,_219
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_15_leave
_218
	cmp	[_vcutflag],1
	jnz	_220
	sub	esp,8
	mov	eax,_221
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_15_leave
_220
	sub	esp,8
	mov	eax,_222
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,5
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	mov	ebx,11
	mov	esi,_aexits
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,5
	shl	esi,byte 2
	add	esi,[_aexits]
	mov	[esi],ebx
	mov	[_vcutflag],1
	sub	esp,20
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],9
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_223
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_adatatwo]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	eax,0
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
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
	ret	word 0
	.align	16
_fgamewear
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vflippersflag],1
	jnz	_224
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_226
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_225
	sub	esp,8
	mov	eax,_227
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_16_leave
_225
_224
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jnz	_228
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_230
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_229
	mov	[_vflippersflag],1
	mov	ebx,0
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_231
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_16_leave
_229
_228
	cmp	[_vnounindex],14
	jnz	_232
	cmp	[_vnumcuffs],0
	jle	_233
	sub	esp,8
	mov	eax,_234
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_16_leave
_233
_232
	sub	esp,8
	mov	eax,_235
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_16_leave
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
_fgamegive
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[_vcharposition],10
	jnz	_236
	cmp	[_vnounindex],11
	jnz	_237
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_238
	sub	esp,8
	mov	eax,_239
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_17_leave
_238
	mov	ebx,0
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_240
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_17_leave
_237
_236
	cmp	[_vcharposition],7
	jnz	_241
	cmp	[_vnounindex],12
	jnz	_242
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_243
	sub	esp,8
	mov	eax,_244
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_17_leave
_243
	mov	ebx,0
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	mov	ebx,13
	mov	esi,_aexits
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,7
	shl	esi,byte 2
	add	esi,[_aexits]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_245
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_246
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
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_247
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_adataone]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_17_leave
_242
_241
	cmp	[_vcharposition],20
	jnz	_248
	sub	esp,8
	mov	eax,_249
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_17_leave
_248
	sub	esp,8
	mov	eax,_250
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_17_leave
	mov	eax,0
	jmp	_17_leave
_17_leave
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
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgameunlock
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_251
	sub	esp,8
	mov	eax,_252
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_18_leave
_251
	cmp	[_vnounindex],5
	jnz	_253
	cmp	[_vcharposition],3
	jnz	_254
	sub	esp,8
	mov	eax,_255
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_18_leave
_254
	cmp	[_vcharposition],9
	jnz	_256
	sub	esp,8
	mov	eax,_257
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_258
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_18_leave
_256
_253
	cmp	[_vcharposition],13
	jz	_259
	sub	esp,8
	mov	eax,_260
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_18_leave
_259
	cmp	[_vnounindex],6
	jz	_261
	sub	esp,8
	mov	eax,_262
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_263
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_18_leave
_261
	cmp	[_vunlockflag],1
	jnz	_264
	sub	esp,8
	mov	eax,_265
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_18_leave
_264
	mov	[_vunlockflag],1
	mov	ebx,13
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_266
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_267
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
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_268
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,13
	shl	eax,byte 2
	add	eax,[_adataone]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,13
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
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
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgameuse
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
	cmp	[_vcharposition],20
	jz	_269
	sub	esp,8
	mov	eax,_270
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_19_leave
_269
	cmp	[_vnounindex],14
	jz	_271
	sub	esp,8
	mov	eax,_272
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_19_leave
_271
	cmp	[_vnumcuffs],4
	jge	_273
	sub	esp,8
	mov	eax,_274
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_19_leave
_273
	sub	esp,8
	mov	eax,_275
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_276
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],7
	jmp	_277
_278
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aobjectlist]
	mov	[esi],ebx
	add	[ebp-4],1
_277
	cmp	[ebp-4],10
	jle	_278
_20
	mov	[_vnumcuffs],0
	mov	ebx,19
	mov	esi,_aexits
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,20
	shl	esi,byte 2
	add	esi,[_aexits]
	mov	[esi],ebx
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_279
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_280
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,20
	shl	eax,byte 2
	add	eax,[_adataone]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,20
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finventory
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_282
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	cmp	[_vnuminvitems],0
	jnz	_283
	sub	esp,8
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_21_leave
_283
	mov	[ebp-4],1
	jmp	_285
_286
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,99
	jnz	_287
	sub	esp,16
	mov	eax,_288
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aobjectname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_287
	add	[ebp-4],1
_285
	cmp	[ebp-4],10
	jle	_286
_22
	mov	eax,0
	jmp	_21_leave
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgamehelp
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_289
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_290
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],1
	jmp	_291
_292
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
_291
	mov	ebx,[_vnumverbs]
	cmp	[ebp-4],ebx
	jle	_292
_24
	sub	esp,8
	mov	eax,_293
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_294
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_flook
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_295
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[_vcharposition]
	shl	eax,byte 2
	add	eax,[_adataone]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[_vcharposition]
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	cmp	[_vcharposition],22
	jnz	_296
	mov	[_vlostflag],1
	mov	eax,0
	jmp	_25_leave
_296
	mov	[ebp-4],1
	jmp	_297
_298
	cmp	[ebp-4],5
	setnz	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[_vcharposition],15
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_299
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	ebx,[ebx]
	cmp	ebx,[_vcharposition]
	jnz	_300
	sub	esp,24
	mov	eax,_301
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aobjectname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_302
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_300
_299
	add	[ebp-4],1
_297
	cmp	[ebp-4],10
	jle	_298
_26
	sub	esp,8
	mov	eax,_303
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_304
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[_vcharposition]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_305
	sub	esp,8
	mov	eax,_306
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_305
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[_vcharposition]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_307
	sub	esp,8
	mov	eax,_308
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_307
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[_vcharposition]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_309
	sub	esp,8
	mov	eax,_310
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_309
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_vcharposition]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_311
	sub	esp,8
	mov	eax,_312
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_311
	sub	esp,8
	mov	eax,_313
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_314
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_25_leave
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitialize
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
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	sub	esp,8
	mov	eax,_315
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_316
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_317
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_318
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_319
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_320
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_321
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_322
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_323
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[_vnumnouns],14
	mov	[_vnumverbs],12
	mov	[_vcharposition],3
	mov	[_vnuminvitems],1
	mov	[_vnumcuffs],0
	mov	[_vwinflag],0
	mov	[_vlostflag],0
	mov	[_vunlockflag],0
	mov	[_vflippersflag],0
	mov	[_vcutflag],0
	mov	[_vverbindex],0
	mov	[_vnounindex],0
	mov	[ebp-4],1
	jmp	_324
_325
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_adataone]
	mov	[esp],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_adataone]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adataone]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_adatatwo]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_adatatwo]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_326
_327
	call	__bbReadInt
	mov	ebx,_aexits
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aexits]
	mov	[ebx],eax
	add	[ebp-8],1
_326
	cmp	[ebp-8],4
	jle	_327
_29
	add	[ebp-4],1
_324
	cmp	[ebp-4],24
	jle	_325
_28
	mov	[ebp-12],1
	jmp	_328
_329
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aobjectname]
	mov	[esp],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	__bbReadInt
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aobjectlist]
	mov	[ebx],eax
	add	[ebp-12],1
_328
	cmp	[ebp-12],10
	jle	_329
_30
	mov	[ebp-16],1
	jmp	_330
_331
	sub	esp,8
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_anounname]
	mov	[esp],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-16],1
_330
	mov	ebx,[_vnumnouns]
	cmp	[ebp-16],ebx
	jle	_331
_31
	mov	[ebp-20],1
	jmp	_332
_333
	sub	esp,8
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_averbname]
	mov	[esp],eax
	mov	[ebp-24],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-20],1
_332
	mov	ebx,[_vnumverbs]
	cmp	[ebp-20],ebx
	jle	_333
_32
	mov	eax,0
	jmp	_27_leave
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fendgame
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[ebp-4],0
	cmp	[_vcharposition],22
	jnz	_334
	sub	esp,8
	mov	eax,_335
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_336
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_337
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_338
_334
	cmp	[_vcharposition],16
	jnz	_339
	sub	esp,8
	mov	eax,_340
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_341
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_342
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_343
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_344
_339
	sub	esp,8
	mov	eax,_345
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_346
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_347
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_348
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_349
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_344
_338
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_350
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_352
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_351
	mov	[_vnewgameflag],0
	jmp	_353
_351
	mov	[_vexitflag],1
_353
	mov	eax,0
	jmp	_33_leave
	mov	eax,0
	jmp	_33_leave
_33_leave
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
	ret	word 0
	.align	4
_vnumnouns	.dd	0
	.align	4
_vnumverbs	.dd	0
	.align	4
_vcharposition	.dd	0
	.align	4
_vnuminvitems	.dd	0
	.align	4
_vnumcuffs	.dd	0
	.align	4
_vwinflag	.dd	0
	.align	4
_vlostflag	.dd	0
	.align	4
_vunlockflag	.dd	0
	.align	4
_vflippersflag	.dd	0
	.align	4
_vcutflag	.dd	0
	.align	4
_vverbindex	.dd	0
	.align	4
_vnounindex	.dd	0
	.align	4
_vnewgameflag	.dd	0
	.align	4
_vexitflag	.dd	0
	.align	4
_adataone	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_adatatwo	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aexits	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_anounname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_averbname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aobjectname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aobjectlist	.dd	0
	.dd	1
	.dd	1
	.dd	0
_123	.db	"",0
_124	.db	"",0
_125	.db	"",0
_126	.db	"What do you do next? ",0
_130	.db	" ",0
_132	.db	"",0
_134	.db	"QUI",0
_136	.db	"NOR",0
_137	.db	"GO ",0
_139	.db	"SOU",0
_140	.db	"GO ",0
_142	.db	"EAS",0
_143	.db	"GO ",0
_145	.db	"WES",0
_146	.db	"GO ",0
_148	.db	"HEL",0
_149	.db	"DOO",0
_151	.db	"INV",0
_152	.db	"DOO",0
_154	.db	"LOO",0
_155	.db	"DOO",0
_157	.db	"QUI",0
_158	.db	"DOO",0
_159	.db	"I don't understand your words. ",0
_167	.db	"Say what?",0
_181	.db	"Go where?",0
_183	.db	"No Exit That Way",0
_189	.db	"It's too heavy!",0
_191	.db	"Don't be Silly",0
_194	.db	"HAN",0
_195	.db	"You've already got it!",0
_201	.db	"O.K.",0
_202	.db	"It isn't here!",0
_204	.db	"Don't be silly",0
_210	.db	"You haven't got it!",0
_211	.db	"O.K.",0
_215	.db	"You've nothing sharp enough!",0
_217	.db	"You can't cut that!",0
_219	.db	"You can't do that",0
_221	.db	"You've already done that!",0
_222	.db	"The seaweed falls away to reveal an open window.",0
_223	.db	"an open window in it",0
_226	.db	"FLI",0
_227	.db	"You've already got them on!",0
_230	.db	"FLI",0
_231	.db	"They fit nicely!",0
_234	.db	"That's really silly!",0
_235	.db	"You can't wear that!",0
_239	.db	"You haven't got it",0
_240	.db	"Something glints in the corner",0
_244	.db	"You haven't got it",0
_245	.db	"The Fish snatches the bone and retires to a corner",0
_246	.db	"You are in a cavern. In the corner",0
_247	.db	"a Bonefish is chewing a thigh-bone",0
_249	.db	"That won't do any good!",0
_250	.db	"Give it to whom?",0
_252	.db	"You haven't even got a key!",0
_255	.db	"There isn't even a keyhole!",0
_257	.db	"This is the otherside of the keyless door.",0
_258	.db	"DUH!!",0
_260	.db	"I don't see a lock anywhere, do you?",0
_262	.db	"Uhh, trying to key something else?",0
_263	.db	"Can we say 'childish'?",0
_265	.db	"It's already unlocked!",0
_266	.db	"The key turns easily",0
_267	.db	"You are in a room with an open chest in the middle.",0
_268	.db	"",0
_270	.db	"You can't do that here",0
_272	.db	"You want to do what?",0
_274	.db	"You haven't got enough pairs!",0
_275	.db	"Now the octopus can't move.  He doesn't amused ",0
_276	.db	"at these nasty turn of events.  Handcuffs! Pfft!",0
_279	.db	"You are in a corridor with a current going west ",0
_280	.db	"A colorful, handcuffed octopus sits sulking.",0
_281	.db	"",0
_282	.db	"You are carrying : ",0
_284	.db	"Nothing!",0
_288	.db	"A ",0
_289	.db	"",0
_290	.db	"These are the verbs you may use : ",0
_293	.db	"",0
_294	.db	"(You need only type the first three letters)",0
_295	.db	"",0
_301	.db	"A ",0
_302	.db	" is here",0
_303	.db	"",0
_304	.db	"Exits : ",0
_306	.db	"North  ",0
_308	.db	"South  ",0
_310	.db	"East   ",0
_312	.db	"West   ",0
_313	.db	"",0
_314	.db	"",0
_315	.db	"Neptune's Caverns",0
_316	.db	"You have found the magic plug that",0
_317	.db	"belongs at the bottom of the sea and",0
_318	.db	"decide to replace it before the water",0
_319	.db	"drains away.  With your scuba gear you",0
_320	.db	"dive into the ocean and begin your ",0
_321	.db	"adventure...",0
_322	.db	"",0
_323	.db	"(If you need assistance type HELP)",0
_335	.db	"With a snap, the shark bites off your head ",0
_336	.db	"",0
_337	.db	"",0
_340	.db	"You have stepped on a poisonous sea-urchin",0
_341	.db	"You die a horrible death.",0
_342	.db	"",0
_343	.db	"",0
_345	.db	"With a 'THUNK' the plug drops into the ",0
_346	.db	"hole and the swirling waters grow still",0
_347	.db	"Congratulations! You saved the seas! ",0
_348	.db	"",0
_349	.db	"",0
_350	.db	"Do you wish to play again? ",0
_352	.db	"Y",0
_34	.db	"You are on the seabed.  The way west is ",0
_35	.db	"blocked by a high coral reef.",0
_36	.db	"You are on the seabed.  To the south a ",0
_37	.db	"barnacled wall towers above you.",0
_38	.db	"You are in front of a wooden door.  You ",0
_39	.db	"can see no handle.",0
_40	.db	"You are on the seabed.  To the south a ",0
_41	.db	"barnacled wall towers above you.",0
_42	.db	"You are on the seabed.  To the south a barnacled ",0
_43	.db	"wall has a square patch of seaweed growing on it.",0
_44	.db	"You are on the seabed.  To the south is a ",0
_45	.db	"barnacled wall.  A cliff blocks the way east.",0
_46	.db	"You are in a long, low cavern.  At the far ",0
_47	.db	"end a large bonefish is swimming around.",0
_48	.db	"You are in a brightly lit chamber.  The walls, ",0
_49	.db	"floor, and room grlow in shimmering light.",0
_50	.db	"You are in a dimly lit cavern with a huge ",0
_51	.db	"door at the far end.  You can see no handle.",0
_52	.db	"You are in a room full of hungry seahorses. ",0
_53	.db	"They nuzzle your hand in a friendly manner.",0
_54	.db	"You are in a small room.  The north wall has a small ",0
_55	.db	"window in it through which you can see the seabed",0
_56	.db	"You are in an amazingly square room.  The walls, ",0
_57	.db	"floor and room are all square as are all the exits. ",0
_58	.db	"You are in a tiny little room that is occupied ",0
_59	.db	"by a chest inscribed with the initials D.J.",0
_60	.db	"You are in a cold, murky room.  Grey mud swirls ",0
_61	.db	"around you and you feel a faint current to the east.",0
_62	.db	"You are in a gloomy and eerie place.  All around ",0
_63	.db	"you are the bones of long dead explorers!",0
_64	.db	"You are in a square room.   The south exit has the words 'Do not enter!'",0
_65	.db	"above it.  The north and west doorways are crawling with sea urchins.",0
_66	.db	"You are in an amazingly square room.  You know there ",0
_67	.db	"may be other square rooms all as exciting as this one.",0
_68	.db	"Wow, it's amazingly square i've never seen this ",0
_69	.db	"before... I bet the exits are squre too... yep.",0
_70	.db	"You are in a circular room with a very strong current that ",0
_71	.db	"swirls around the room and down a hole in the floor.",0
_72	.db	"You are in a corridor with a strong current going west.  Your way ",0
_73	.db	"is blocked by tthe arms of a large rainbow colored octopus.",0
_74	.db	"You're in a shipwrecked captain's cabin. ",0
_75	.db	"You feel the flow of water to the west.",0
_76	.db	"You see a rush of swirling water and ",0
_77	.db	"face the jaws of a great white shark.",0
_78	.db	"Square rooms never cease to amaze me.  I could die ",0
_79	.db	"and go to heaven if I ever see another in my life.",0
_80	.db	"This square room looks like any other squre room.",0
_81	.db	"You know, square walls, floor, and exits as well.",0
_82	.db	"KNIFE",0
_83	.db	"PAIR OF FLIPPERS",0
_84	.db	"KEY",0
_85	.db	"CLUMP OF SEAWEED",0
_86	.db	"ROTTEN OLD BONE",0
_87	.db	"MAGIC PLUG",0
_88	.db	"YELLOW PAIR OF HANDCUFFS",0
_89	.db	"GREEN PAIR OF HANDCUFFS",0
_90	.db	"RED PAIR OF HANDCUFFS",0
_91	.db	"BLUE PAIR OF HANDCUFFS",0
_92	.db	"NOR",0
_93	.db	"SOU",0
_94	.db	"EAS",0
_95	.db	"WES",0
_96	.db	"DOO",0
_97	.db	"CHE",0
_98	.db	"WIN",0
_99	.db	"KNI",0
_100	.db	"FLI",0
_101	.db	"KEY",0
_102	.db	"SEA",0
_103	.db	"BON",0
_104	.db	"PLU",0
_105	.db	"HAN",0
_106	.db	"GO ",0
_107	.db	"GET",0
_108	.db	"DROP",0
_109	.db	"CUT",0
_110	.db	"WEAR",0
_111	.db	"GIVE",0
_112	.db	"UNLOCK",0
_113	.db	"USE",0
_114	.db	"INVENTORY",0
_115	.db	"HELP",0
_116	.db	"LOOK",0
_117	.db	"QUIT",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	4
	.dd	_36
	.dd	4
	.dd	_37
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	3
	.dd	1
	.dd	1
	.dd	4
	.dd	_38
	.dd	4
	.dd	_39
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	2
	.dd	4
	.dd	_40
	.dd	4
	.dd	_41
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	3
	.dd	4
	.dd	_42
	.dd	4
	.dd	_43
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	6
	.dd	1
	.dd	4
	.dd	4
	.dd	_44
	.dd	4
	.dd	_45
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	4
	.dd	_46
	.dd	4
	.dd	_47
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	4
	.dd	_48
	.dd	4
	.dd	_49
	.dd	1
	.dd	0
	.dd	1
	.dd	14
	.dd	1
	.dd	0
	.dd	1
	.dd	7
	.dd	4
	.dd	_50
	.dd	4
	.dd	_51
	.dd	1
	.dd	0
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_52
	.dd	4
	.dd	_53
	.dd	1
	.dd	0
	.dd	1
	.dd	16
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_54
	.dd	4
	.dd	_55
	.dd	1
	.dd	5
	.dd	1
	.dd	17
	.dd	1
	.dd	12
	.dd	1
	.dd	0
	.dd	4
	.dd	_56
	.dd	4
	.dd	_57
	.dd	1
	.dd	0
	.dd	1
	.dd	18
	.dd	1
	.dd	0
	.dd	1
	.dd	11
	.dd	4
	.dd	_58
	.dd	4
	.dd	_59
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_60
	.dd	4
	.dd	_61
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	4
	.dd	_62
	.dd	4
	.dd	_63
	.dd	1
	.dd	9
	.dd	1
	.dd	21
	.dd	1
	.dd	16
	.dd	1
	.dd	14
	.dd	4
	.dd	_64
	.dd	4
	.dd	_65
	.dd	1
	.dd	10
	.dd	1
	.dd	22
	.dd	1
	.dd	17
	.dd	1
	.dd	15
	.dd	4
	.dd	_66
	.dd	4
	.dd	_67
	.dd	1
	.dd	11
	.dd	1
	.dd	23
	.dd	1
	.dd	18
	.dd	1
	.dd	16
	.dd	4
	.dd	_68
	.dd	4
	.dd	_69
	.dd	1
	.dd	12
	.dd	1
	.dd	24
	.dd	1
	.dd	0
	.dd	1
	.dd	17
	.dd	4
	.dd	_70
	.dd	4
	.dd	_71
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	4
	.dd	_72
	.dd	4
	.dd	_73
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	21
	.dd	1
	.dd	0
	.dd	4
	.dd	_74
	.dd	4
	.dd	_75
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	20
	.dd	4
	.dd	_76
	.dd	4
	.dd	_77
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	4
	.dd	_78
	.dd	4
	.dd	_79
	.dd	1
	.dd	17
	.dd	1
	.dd	0
	.dd	1
	.dd	24
	.dd	1
	.dd	0
	.dd	4
	.dd	_80
	.dd	4
	.dd	_81
	.dd	1
	.dd	18
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	23
	.dd	4
	.dd	_82
	.dd	1
	.dd	2
	.dd	4
	.dd	_83
	.dd	1
	.dd	6
	.dd	4
	.dd	_84
	.dd	1
	.dd	0
	.dd	4
	.dd	_85
	.dd	1
	.dd	0
	.dd	4
	.dd	_86
	.dd	1
	.dd	15
	.dd	4
	.dd	_87
	.dd	1
	.dd	99
	.dd	4
	.dd	_88
	.dd	1
	.dd	0
	.dd	4
	.dd	_89
	.dd	1
	.dd	9
	.dd	4
	.dd	_90
	.dd	1
	.dd	17
	.dd	4
	.dd	_91
	.dd	1
	.dd	11
	.dd	4
	.dd	_92
	.dd	4
	.dd	_93
	.dd	4
	.dd	_94
	.dd	4
	.dd	_95
	.dd	4
	.dd	_96
	.dd	4
	.dd	_97
	.dd	4
	.dd	_98
	.dd	4
	.dd	_99
	.dd	4
	.dd	_100
	.dd	4
	.dd	_101
	.dd	4
	.dd	_102
	.dd	4
	.dd	_103
	.dd	4
	.dd	_104
	.dd	4
	.dd	_105
	.dd	4
	.dd	_106
	.dd	4
	.dd	_107
	.dd	4
	.dd	_108
	.dd	4
	.dd	_109
	.dd	4
	.dd	_110
	.dd	4
	.dd	_111
	.dd	4
	.dd	_112
	.dd	4
	.dd	_113
	.dd	4
	.dd	_114
	.dd	4
	.dd	_115
	.dd	4
	.dd	_116
	.dd	4
	.dd	_117
	.dd	0

