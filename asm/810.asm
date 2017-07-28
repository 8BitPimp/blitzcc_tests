
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	mov	[_vnn],14
	mov	[_vvv],12
	mov	[_vcp],3
	mov	[_vin],1
	mov	[_vhc],0
	mov	[_vwf],0
	mov	[_vlf],0
	mov	[_vuf],0
	mov	[_vff],0
	mov	[_vcf],0
	mov	[_vvbi],0
	mov	[_vnoi],0
	sub	esp,4
	mov	eax,_at
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_at
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_at
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_ad
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ad
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,24
	mov	esi,_aex
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_aex
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aex
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ano
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vnn]
	mov	esi,_ano
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ano
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_avb
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vvv]
	mov	esi,_avb
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_avb
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aob
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_aob
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aob
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aobi
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_aobi
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aobi
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
_l_2l10
_l_2l20
	call	_l_2l5000
_l_2l30
	call	_l_2l1000
_l_2l40
	call	_l_2l2000
_l_2l50
	cmp	[_vwf],1
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vlf],1
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_95
	jmp	_l_2l30
_95
_l_2l60
	jmp	_l_2l5500
_l_2l70
	call	_fend
_l_2l1000
_l_2l1010
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_avb]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_96
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_97
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_98
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2l1020
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_99
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
_l_2l1030
	mov	[ebp-8],1
	jmp	_100
_101
_l_2l1040
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
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_103
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_102
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
	add	ebx,[_avb]
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
	add	ebx,[_ano]
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
_102
_l_2l1050
	add	[ebp-8],1
_100
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_101
_3
_l_2l1060
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_105
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_104
	ret
_104
_l_2l1070
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
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_107
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_106
	call	_fend
_106
_l_2l1080
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_109
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_110
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_111
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_112
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_108
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_avb]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_113
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_108
_l_2l1090
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_115
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_116
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_117
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_118
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-24]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_114
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_119
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_avb]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_114
_l_2l1100
	sub	esp,8
	mov	eax,_120
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l1110
	jmp	_l_2l1010
_l_2l2000
_l_2l2010
	mov	[_vvbi],0
	mov	[_vnoi],0
_l_2l2020
	mov	[ebp-8],1
	jmp	_121
_122
_l_2l2030
	sub	esp,20
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_avb]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],3
	call	_fleft
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_avb]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	cmp	ebx,0
	jnz	_123
	mov	ebx,[ebp-8]
	mov	[_vvbi],ebx
	mov	ebx,[_vvv]
	mov	[ebp-8],ebx
_123
_l_2l2040
	add	[ebp-8],1
_121
	mov	ebx,[_vvv]
	cmp	[ebp-8],ebx
	jle	_122
_4
_l_2l2050
	mov	[ebp-8],1
	jmp	_124
_125
_l_2l2060
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ano]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_126
	mov	ebx,[ebp-8]
	mov	[_vnoi],ebx
	mov	ebx,[_vnn]
	mov	[ebp-8],ebx
_126
_l_2l2070
	add	[ebp-8],1
_124
	mov	ebx,[_vnn]
	cmp	[ebp-8],ebx
	jle	_125
_5
_l_2l2080
	cmp	[_vnoi],0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vvbi],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_127
	sub	esp,8
	mov	eax,_128
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_127
_l_2l2090
	mov	ebx,[_vvbi]
	mov	[ebp-12],ebx
	cmp	[ebp-12],1
	jz	_130
	cmp	[ebp-12],2
	jz	_131
	cmp	[ebp-12],3
	jz	_132
	cmp	[ebp-12],4
	jz	_133
	cmp	[ebp-12],5
	jz	_134
	cmp	[ebp-12],6
	jz	_135
	cmp	[ebp-12],7
	jz	_136
	cmp	[ebp-12],8
	jz	_137
	cmp	[ebp-12],9
	jz	_138
	cmp	[ebp-12],10
	jz	_139
	cmp	[ebp-12],11
	jz	_140
	jmp	_129
_130
	jmp	_l_2l3000
	jmp	_129
_131
	jmp	_l_2l3100
	jmp	_129
_132
	jmp	_l_2l3200
	jmp	_129
_133
	jmp	_l_2l3300
	jmp	_129
_134
	jmp	_l_2l3400
	jmp	_129
_135
	jmp	_l_2l3500
	jmp	_129
_136
	jmp	_l_2l3620
	jmp	_129
_137
	jmp	_l_2l3700
	jmp	_129
_138
	jmp	_l_2l3800
	jmp	_129
_139
	jmp	_l_2l3900
	jmp	_129
_140
	jmp	_l_2l4000
	jmp	_129
_129
_l_2l3000
_l_2l3010
	cmp	[_vnoi],4
	jle	_141
	sub	esp,8
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_141
_l_2l3020
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vnoi]
	add	ebx,[_vcp]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_143
	sub	esp,8
	mov	eax,_144
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_143
_l_2l3030
	cmp	[_vnoi],1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],4
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[_vcp],16
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	cmp	[_vff],0
	setz	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_145
	mov	[_vlf],1
	ret
_145
_l_2l3040
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[_vnoi]
	add	ebx,[_vcp]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	ebx,[ebx]
	mov	[_vcp],ebx
	call	_l_2l4000
_l_2l3050
	ret
_l_2l3100
_l_2l3110
	cmp	[_vnoi],6
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vcp],13
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_146
	sub	esp,8
	mov	eax,_147
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_146
_l_2l3120
	cmp	[_vnoi],8
	jge	_148
	sub	esp,8
	mov	eax,_149
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_148
_l_2l3130
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_151
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[_vnoi]
	sub	ebx,7
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_150
	sub	esp,8
	mov	eax,_152
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_150
_l_2l3140
	mov	[ebp-8],7
	jmp	_153
_154
_l_2l3150
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aobi]
	mov	eax,[eax]
	cmp	eax,[_vcp]
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],14
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_155
	mov	ebx,[ebp-8]
	add	ebx,7
	mov	[_vnoi],ebx
	add	[_vhc],1
	mov	[ebp-8],10
_155
_l_2l3160
	add	[ebp-8],1
_153
	cmp	[ebp-8],10
	jle	_154
_7
_l_2l3170
	mov	ebx,[_vnoi]
	sub	ebx,7
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,[_vcp]
	jnz	_156
	sub	esp,8
	mov	eax,_157
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,99
	mov	esi,[_vnoi]
	sub	esi,7
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	add	[_vin],1
	ret
_156
_l_2l3180
	sub	esp,8
	mov	eax,_158
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_l_2l3200
_l_2l3210
	cmp	[_vnoi],8
	jge	_159
	sub	esp,8
	mov	eax,_160
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_159
_l_2l3220
	mov	[ebp-8],7
	jmp	_161
_162
_l_2l3230
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aobi]
	mov	eax,[eax]
	cmp	eax,99
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],14
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_163
	mov	ebx,[ebp-8]
	add	ebx,7
	mov	[_vnoi],ebx
	sub	[_vhc],1
	mov	[ebp-8],10
_163
_l_2l3240
	add	[ebp-8],1
_161
	cmp	[ebp-8],10
	jle	_162
_8
_l_2l3250
	mov	ebx,[_vnoi]
	sub	ebx,7
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_164
	sub	esp,8
	mov	eax,_165
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_164
_l_2l3260
	sub	esp,8
	mov	eax,_166
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	ebx,[_vcp]
	mov	esi,[_vnoi]
	sub	esi,7
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	sub	[_vin],1
_l_2l3270
	cmp	[_vcp],19
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],13
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_167
	mov	[_vwf],1
_167
_l_2l3280
	ret
_l_2l3300
_l_2l3310
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_168
	sub	esp,8
	mov	eax,_169
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_168
_l_2l3320
	cmp	[_vnoi],11
	jz	_170
	sub	esp,8
	mov	eax,_171
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_170
_l_2l3330
	cmp	[_vcp],5
	jz	_172
	sub	esp,8
	mov	eax,_173
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_172
_l_2l3340
	cmp	[_vcf],1
	jnz	_174
	sub	esp,8
	mov	eax,_175
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_174
_l_2l3350
	sub	esp,8
	mov	eax,_176
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l3360
	mov	ebx,5
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	mov	ebx,11
	mov	esi,_aex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,5
	shl	esi,byte 2
	add	esi,[_aex]
	mov	[esi],ebx
	mov	[_vcf],1
_l_2l3370
	sub	esp,28
	mov	eax,5
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],19
	call	_fleft
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_177
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	ret
_l_2l3400
_l_2l3410
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_179
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vff],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_178
	sub	esp,8
	mov	eax,_180
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_178
_l_2l3420
	sub	esp,12
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_182
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_181
	mov	[_vff],1
	sub	esp,8
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aob]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_183
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_184
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_181
_l_2l3430
	cmp	[_vnoi],14
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vhc],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_185
	sub	esp,8
	mov	eax,_186
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_185
_l_2l3440
	sub	esp,8
	mov	eax,_187
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_l_2l3500
_l_2l3510
	cmp	[_vcp],10
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],11
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_188
	jmp	_l_2l3550
_188
_l_2l3520
	cmp	[_vcp],7
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],12
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_189
	jmp	_l_2l3580
_189
_l_2l3530
	cmp	[_vcp],20
	jnz	_190
	sub	esp,8
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_190
_l_2l3540
	sub	esp,8
	mov	eax,_192
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_l_2l3550
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_193
	sub	esp,8
	mov	eax,_194
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_193
_l_2l3560
	mov	ebx,0
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	mov	ebx,10
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
_l_2l3570
	sub	esp,8
	mov	eax,_195
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_l_2l3580
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_196
	sub	esp,8
	mov	eax,_197
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_196
_l_2l3590
	mov	ebx,0
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	mov	ebx,13
	mov	esi,_aex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,7
	shl	esi,byte 2
	add	esi,[_aex]
	mov	[esi],ebx
_l_2l3600
	sub	esp,8
	mov	eax,_198
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l3610
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_199
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2l3615
	sub	esp,8
	mov	eax,7
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_200
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_l_2l3620
_l_2l3630
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	jz	_201
	sub	esp,8
	mov	eax,_202
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_201
_l_2l3640
	cmp	[_vcp],3
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vcp],9
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[_vnoi],5
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	ebx,eax
	and	ebx,ebx
	jz	_203
	sub	esp,8
	mov	eax,_204
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_203
_l_2l3650
	cmp	[_vcp],13
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],6
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_205
	sub	esp,8
	mov	eax,_206
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_205
_l_2l3660
	cmp	[_vuf],1
	jnz	_207
	sub	esp,8
	mov	eax,_208
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_207
_l_2l3670
	mov	[_vuf],1
	mov	ebx,13
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,_209
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l3680
	sub	esp,8
	mov	eax,13
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_210
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2l3690
	sub	esp,8
	mov	eax,13
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_211
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_l_2l3700
_l_2l3710
	cmp	[_vcp],20
	setnz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vnoi],14
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_212
	sub	esp,8
	mov	eax,_213
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_212
_l_2l3720
	cmp	[_vhc],4
	jge	_214
	sub	esp,8
	mov	eax,_215
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_214
_l_2l3730
	sub	esp,8
	mov	eax,_216
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l3740
	mov	[ebp-8],7
	jmp	_217
_218
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_aobi]
	mov	[esi],ebx
	add	[ebp-8],1
_217
	cmp	[ebp-8],10
	jle	_218
_9
_l_2l3750
	mov	[_vhc],0
	mov	ebx,19
	mov	esi,_aex
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,20
	shl	esi,byte 2
	add	esi,[_aex]
	mov	[esi],ebx
_l_2l3760
	sub	esp,8
	mov	eax,20
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_219
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2l3770
	sub	esp,8
	mov	eax,20
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_220
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	ret
_l_2l3800
_l_2l3810
	sub	esp,8
	mov	eax,_221
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_222
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l3820
	cmp	[_vin],0
	jnz	_223
	sub	esp,8
	mov	eax,_224
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_223
_l_2l3830
	mov	[ebp-8],1
	jmp	_225
_226
_l_2l3840
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,99
	jnz	_227
	sub	esp,16
	mov	eax,_228
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aob]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_227
_l_2l3850
	add	[ebp-8],1
_225
	cmp	[ebp-8],10
	jle	_226
_10
	ret
_l_2l3900
_l_2l3910
	sub	esp,8
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_230
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l3920
	mov	[ebp-8],1
	jmp	_231
_232
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_avb]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_231
	mov	ebx,[_vvv]
	cmp	[ebp-8],ebx
	jle	_232
_11
_l_2l3930
	sub	esp,8
	mov	eax,_233
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_234
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_l_2l4000
_l_2l4010
	sub	esp,8
	mov	eax,_235
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[_vcp]
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[_vcp]
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	cmp	[_vcp],22
	jnz	_236
	mov	[_vlf],1
	ret
_236
_l_2l4020
	mov	[ebp-8],1
	jmp	_237
_238
_l_2l4030
	cmp	[ebp-8],5
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vcp],15
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_239
	jmp	_l_2l4050
_239
_l_2l4040
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	ebx,[ebx]
	cmp	ebx,[_vcp]
	jnz	_240
	sub	esp,24
	mov	eax,_241
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aob]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_242
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_240
_l_2l4050
	add	[ebp-8],1
_237
	cmp	[ebp-8],10
	jle	_238
_12
_l_2l4060
	sub	esp,8
	mov	eax,_243
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_244
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l4070
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[_vcp]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_245
	sub	esp,8
	mov	eax,_246
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_245
_l_2l4080
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[_vcp]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_247
	sub	esp,8
	mov	eax,_248
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_247
_l_2l4090
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[_vcp]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_249
	sub	esp,8
	mov	eax,_250
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_249
_l_2l4100
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_vcp]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_251
	sub	esp,8
	mov	eax,_252
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_251
_l_2l4110
	sub	esp,8
	mov	eax,_253
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_254
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	ret
_l_2l5000
_l_2l5010
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
_l_2l5020
	sub	esp,8
	mov	eax,_255
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5030
	sub	esp,8
	mov	eax,_256
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5040
	sub	esp,8
	mov	eax,_257
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5050
	sub	esp,8
	mov	eax,_258
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5060
	sub	esp,8
	mov	eax,_259
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5070
	sub	esp,8
	mov	eax,_260
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5080
	sub	esp,8
	mov	eax,_261
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5090
	sub	esp,8
	mov	eax,_262
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5100
	mov	[_vnn],14
	mov	[_vvv],12
	mov	[_vcp],3
	mov	[_vin],1
	mov	[_vhc],0
	mov	[_vwf],0
	mov	[_vlf],0
	mov	[_vuf],0
	mov	[_vff],0
	mov	[_vcf],0
	mov	[_vvbi],0
	mov	[_vnoi],0
_l_2l5110
_l_2l5120
_l_2l5130
	mov	[ebp-8],1
	jmp	_263
_264
_l_2l5140
	cmp	[ebp-8],17
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-8],18
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-8],23
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-8],24
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_265
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,12
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,12
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_l_2l5160
_265
_l_2l5150
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_at]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ad]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_ad]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2l5160
	add	[ebp-8],1
_263
	cmp	[ebp-8],24
	jle	_264
_13
_l_2l5170
	mov	[ebp-8],1
	jmp	_266
_267
	mov	[ebp-16],1
	jmp	_268
_269
	call	__bbReadInt
	mov	ebx,_aex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aex]
	mov	[ebx],eax
	add	[ebp-16],1
_268
	cmp	[ebp-16],4
	jle	_269
_15
	add	[ebp-8],1
_266
	cmp	[ebp-8],24
	jle	_267
_14
_l_2l5180
	mov	[ebp-8],1
	jmp	_270
_271
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aob]
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	__bbReadInt
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aobi]
	mov	[ebx],eax
	add	[ebp-8],1
_270
	cmp	[ebp-8],10
	jle	_271
_16
_l_2l5190
	mov	[ebp-8],1
	jmp	_272
_273
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ano]
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-8],1
_272
	mov	ebx,[_vnn]
	cmp	[ebp-8],ebx
	jle	_273
_17
_l_2l5200
	mov	[ebp-8],1
	jmp	_274
_275
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_avb]
	mov	[esp],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-8],1
_274
	mov	ebx,[_vvv]
	cmp	[ebp-8],ebx
	jle	_275
_18
_l_2l5210
	call	_l_2l4000
	ret
_l_2l5500
_l_2l5510
	cmp	[_vcp],22
	jnz	_276
	sub	esp,8
	mov	eax,_277
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_l_2l5570
_276
_l_2l5520
	cmp	[_vcp],16
	jnz	_278
	sub	esp,8
	mov	eax,_279
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_278
_l_2l5530
	cmp	[_vcp],16
	jnz	_280
	sub	esp,8
	mov	eax,_281
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_l_2l5570
_280
_l_2l5540
	sub	esp,8
	mov	eax,_282
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5550
	sub	esp,8
	mov	eax,_283
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5560
	sub	esp,8
	mov	eax,_284
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_l_2l5570
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_285
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_l_2l5580
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_287
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_286
	jmp	_l_2l10
_286
_l_2l5590
	ret
_l_2l6000
_l_2l6010
_l_2l6011
_l_2l6020
_l_2l6021
_l_2l6030
_l_2l6031
_l_2l6040
_l_2l6041
_l_2l6050
_l_2l6051
_l_2l6060
_l_2l6061
_l_2l6070
_l_2l6071
_l_2l6080
_l_2l6081
_l_2l6090
_l_2l6091
_l_2l6100
_l_2l6101
_l_2l6110
_l_2l6111
_l_2l6120
_l_2l6121
_l_2l6130
_l_2l6131
_l_2l6140
_l_2l6141
_l_2l6150
_l_2l6151
_l_2l6160
_l_2l6161
_l_2l6170
_l_2l6171
_l_2l6180
_l_2l6181
_l_2l6190
_l_2l6191
_l_2l6200
_l_2l6201
_l_2l6210
_l_2l6220
_l_2l6230
_l_2l6240
_l_2l6250
_l_2l6260
_l_2l6270
_l_2l6300
_l_2l6310
_l_2l6320
_l_2l6330
_l_2l6340
_l_2l6350
_l_2l6360
_l_2l6370
_l_2l6380
_l_2l6390
_l_2l6400
_l_2l6500
_l_2l6510
_l_2l6520
_l_2l6530
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	.align	4
_vnn	.dd	0
	.align	4
_vvv	.dd	0
	.align	4
_vcp	.dd	0
	.align	4
_vin	.dd	0
	.align	4
_vhc	.dd	0
	.align	4
_vwf	.dd	0
	.align	4
_vlf	.dd	0
	.align	4
_vuf	.dd	0
	.align	4
_vff	.dd	0
	.align	4
_vcf	.dd	0
	.align	4
_vvbi	.dd	0
	.align	4
_vnoi	.dd	0
	.align	4
_at	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_ad	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aex	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ano	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_avb	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aob	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_aobi	.dd	0
	.dd	1
	.dd	1
	.dd	0
_96	.db	"",0
_97	.db	"",0
_98	.db	"",0
_99	.db	"What do you do next? ",0
_103	.db	" ",0
_105	.db	"",0
_107	.db	"QUI",0
_109	.db	"NOR",0
_110	.db	"SOU",0
_111	.db	"EAS",0
_112	.db	"WES",0
_113	.db	"GO ",0
_115	.db	"HEL",0
_116	.db	"INV",0
_117	.db	"LOO",0
_118	.db	"QUI",0
_119	.db	"DOO",0
_120	.db	"I Don't understand that. ",0
_128	.db	"I don't understand that.",0
_142	.db	"Go where?",0
_144	.db	"No Exit That Way",0
_147	.db	"It's too heavy!",0
_149	.db	"Don't be Silly",0
_151	.db	"HAN",0
_152	.db	"You've already got it!",0
_157	.db	"O.K.",0
_158	.db	"It isn't here!",0
_160	.db	"Don't be silly",0
_165	.db	"You haven't got it!",0
_166	.db	"O.K.",0
_169	.db	"You've nothing sharp enough!",0
_171	.db	"You can't cut that!",0
_173	.db	"You can't do that",0
_175	.db	"You've already done that!",0
_176	.db	"The seaweed falls away to reveal an open window.",0
_177	.db	"An open window in it",0
_179	.db	"FLI",0
_180	.db	"You've already got them on!",0
_182	.db	"FLI",0
_183	.db	"0",0
_184	.db	"They fit nicely!",0
_186	.db	"That's really silly!",0
_187	.db	"You can't wear that!",0
_191	.db	"That won't do any good!",0
_192	.db	"Nothing here want's it",0
_194	.db	"You haven't Got it",0
_195	.db	"Something glints in the corner",0
_197	.db	"You haven't got it",0
_198	.db	"The Fish snatches the bone and retires to a corner",0
_199	.db	"You are in a cavern. In the Corner A",0
_200	.db	"Bonefish is chewing a thigh-bone",0
_202	.db	"You haven't even got a key!",0
_204	.db	"There isn't even a keyhole!",0
_206	.db	"You can't do that",0
_208	.db	"It's already unlocked!",0
_209	.db	"The key turns easily",0
_210	.db	"You are in a room with an open chest in the middle.",0
_211	.db	"",0
_213	.db	"You can't do that here",0
_215	.db	"You haven't go enough pairs!",0
_216	.db	"The octopus can't movie.  He isn't amused!",0
_219	.db	"You are in a corridor with a current going west",0
_220	.db	"A colorful, manacled octopus sits sulking. ",0
_221	.db	"",0
_222	.db	"You are carrying : ",0
_224	.db	"Nothing!",0
_228	.db	"A ",0
_229	.db	"",0
_230	.db	"These are the verbs you may use : ",0
_233	.db	"",0
_234	.db	"(You need only type the first three letters)",0
_235	.db	"",0
_241	.db	"A ",0
_242	.db	" is here",0
_243	.db	"",0
_244	.db	"Exits : ",0
_246	.db	"North  ",0
_248	.db	"South  ",0
_250	.db	"East   ",0
_252	.db	"West   ",0
_253	.db	"",0
_254	.db	"",0
_255	.db	"Neptune's Caverns",0
_256	.db	"You have found the magic plug that",0
_257	.db	"belongs at the bottom of the sea and",0
_258	.db	"decide to replace it before the water",0
_259	.db	"drains away.  With your scuba gear you",0
_260	.db	"dive into the ocean and begin your ",0
_261	.db	"adventure...",0
_262	.db	"(If you need assistance type HELP)",0
_277	.db	"with a snap, the shark bites off your head ",0
_279	.db	"You have stepped on a poisonous sea-urchin",0
_281	.db	"You die a horrible death.",0
_282	.db	"With a 'THUNK' the plug drops into the ",0
_283	.db	"hole and the swirling waters grow still",0
_284	.db	"Congratulations! You saved the seas! ",0
_285	.db	"Do you wish to play again? ",0
_287	.db	"Y",0
_19	.db	"You are on the seabed.  The way west is ",0
_20	.db	"blocked by a high coral reef.",0
_21	.db	"You are on the seabed.  To the south a ",0
_22	.db	"barnacled wall towers above you.",0
_23	.db	"You are in front of a wooden door.  You ",0
_24	.db	"can see no handle.",0
_25	.db	"You are on the seabed.  To the south a ",0
_26	.db	"barnacled wall towers above you.",0
_27	.db	"You are on the seabed.  To the south a barnacled ",0
_28	.db	"wall has a square patch of seaweed growing on it.",0
_29	.db	"You are on the seabed.  To the south is a ",0
_30	.db	"barnacled wall.  A cliff blocks the way east.",0
_31	.db	"You are in a long, low cavern.  At the far ",0
_32	.db	"end a large bonefish is swimming around.",0
_33	.db	"You are in a brightly lit chamber.  The walls, ",0
_34	.db	"floor, and room grlow in shimmering light.",0
_35	.db	"You are in a dimly lit cavern with a huge ",0
_36	.db	"door at the far end.  You can see no handle.",0
_37	.db	"You are in a room full of hungry seahorses. ",0
_38	.db	"They nuzzle your hand in a friendly manner.",0
_39	.db	"You are in a small room.  The north wall has a small ",0
_40	.db	"window in it through which you can see the seabed",0
_41	.db	"You are in an amazingly square room.  The walls, ",0
_42	.db	"floor and room are all square as are all the exits. ",0
_43	.db	"You are in a tiny little room that is occupied ",0
_44	.db	"by a chest inscribed with the initials D.J.",0
_45	.db	"You are in a cold, murky room.  Grey mud swirls ",0
_46	.db	"around you and you feel a faint current to the east.",0
_47	.db	"You are in a gloomy and eerie place.  All around ",0
_48	.db	"you are the bones of long dead explorers!",0
_49	.db	"You are in a square room.   The south exit has the words 'Do not enter!'",0
_50	.db	"above it.  The north and west doorways are crawling with sea urchins.",0
_51	.db	"You are in a circular room with a very strong current that ",0
_52	.db	"swirls around the room and down a hole in the floor.",0
_53	.db	"You are in a corridor with a stron gcurrent going west.  Your way ",0
_54	.db	"is blocked by tthe arms of a large rainbow colored octopus.",0
_55	.db	"You're in a shipwrecked captain's cabin. ",0
_56	.db	"You feel the flow of water to the west.",0
_57	.db	"You see a rush of swirling water and ",0
_58	.db	"face the jaws of a great white shark.",0
_59	.db	"KNIFE",0
_60	.db	"PAIR OF FLIPPERS",0
_61	.db	"KEY",0
_62	.db	"CLUMP OF SEAWEED",0
_63	.db	"ROTTEN OLD BONE",0
_64	.db	"MAGIC PLUG",0
_65	.db	"YELLOW PAIR OF HANDCUFFS",0
_66	.db	"GREEN PAIR OF HANDCUFFS",0
_67	.db	"RED PAIR OF HANDCUFFS",0
_68	.db	"BLUE PAIR OF HANDCUFFS",0
_69	.db	"NOR",0
_70	.db	"SOU",0
_71	.db	"EAS",0
_72	.db	"WES",0
_73	.db	"DOO",0
_74	.db	"CHE",0
_75	.db	"WIN",0
_76	.db	"KNI",0
_77	.db	"FLI",0
_78	.db	"KEY",0
_79	.db	"SEA",0
_80	.db	"BON",0
_81	.db	"PLU",0
_82	.db	"HAN",0
_83	.db	"GO ",0
_84	.db	"GET",0
_85	.db	"DROP",0
_86	.db	"CUT",0
_87	.db	"WEAR",0
_88	.db	"GIVE",0
_89	.db	"UNLOCK",0
_90	.db	"USE",0
_91	.db	"INVENTORY",0
_92	.db	"HELP",0
_93	.db	"LOOK",0
_94	.db	"QUIT",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_19
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
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	3
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	4
	.dd	1
	.dd	2
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	3
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	6
	.dd	1
	.dd	4
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	14
	.dd	1
	.dd	0
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	16
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	17
	.dd	1
	.dd	12
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	18
	.dd	1
	.dd	0
	.dd	1
	.dd	11
	.dd	1
	.dd	7
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	8
	.dd	1
	.dd	0
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	1
	.dd	9
	.dd	1
	.dd	21
	.dd	1
	.dd	16
	.dd	1
	.dd	14
	.dd	1
	.dd	10
	.dd	1
	.dd	22
	.dd	1
	.dd	17
	.dd	1
	.dd	15
	.dd	1
	.dd	11
	.dd	1
	.dd	23
	.dd	1
	.dd	18
	.dd	1
	.dd	16
	.dd	1
	.dd	12
	.dd	1
	.dd	24
	.dd	1
	.dd	0
	.dd	1
	.dd	17
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	21
	.dd	1
	.dd	0
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	20
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	17
	.dd	1
	.dd	0
	.dd	1
	.dd	24
	.dd	1
	.dd	0
	.dd	1
	.dd	18
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	23
	.dd	4
	.dd	_59
	.dd	1
	.dd	2
	.dd	4
	.dd	_60
	.dd	1
	.dd	6
	.dd	4
	.dd	_61
	.dd	1
	.dd	0
	.dd	4
	.dd	_62
	.dd	1
	.dd	0
	.dd	4
	.dd	_63
	.dd	1
	.dd	15
	.dd	4
	.dd	_64
	.dd	1
	.dd	99
	.dd	4
	.dd	_65
	.dd	1
	.dd	0
	.dd	4
	.dd	_66
	.dd	1
	.dd	9
	.dd	4
	.dd	_67
	.dd	1
	.dd	17
	.dd	4
	.dd	_68
	.dd	1
	.dd	11
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
	.dd	4
	.dd	_88
	.dd	4
	.dd	_89
	.dd	4
	.dd	_90
	.dd	4
	.dd	_91
	.dd	4
	.dd	_92
	.dd	4
	.dd	_93
	.dd	4
	.dd	_94
	.dd	0

