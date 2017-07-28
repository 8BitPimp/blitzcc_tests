
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
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,_asbox
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_asbox
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asbox
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_akeyh
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_akeyh
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_akeyh
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	[esp],_vkey
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	[esp],_vclear
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_vkey
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_frc4init
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_vclear
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frc4cryp
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_vkey
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_frc4init
	sub	esp,8
	mov	[esp],_vclear
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frc4enc
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,_vclear
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
	ret
_2_leave
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
_frc4init
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_13
_14
	mov	ebx,[ebp-8]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asbox]
	mov	[esi],ebx
	add	[ebp-12],1
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_akeyh]
	mov	[ebx],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jnz	_15
	mov	[ebp-12],0
_15
	add	[ebp-8],1
_13
	cmp	[ebp-8],255
	jle	_14
_4
	mov	[ebp-8],0
	jmp	_16
_17
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	add	ebx,[ebp-16]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_akeyh]
	mov	esi,[esi]
	add	ebx,esi
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asbox]
	mov	[esi],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp-16]
	shl	esi,byte 2
	add	esi,[_asbox]
	mov	[esi],ebx
	add	[ebp-8],1
_16
	cmp	[ebp-8],255
	jle	_17
_5
	sub	esp,4
	mov	[esp],1
	call	_frc4k
	mov	[ebp-8],eax
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 4
	.align	16
_frc4k
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
	mov	[ebp-20],ebx
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_18
	mov	[ebp-4],0
	mov	[ebp-8],0
	jmp	_19
_18
	add	[ebp-4],1
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	add	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-8],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asbox]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asbox]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asbox]
	mov	esi,[esi]
	add	ebx,esi
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-20],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_asbox]
	mov	ebx,[ebx]
	mov	[_vrc4k],ebx
	mov	eax,[_vrc4k]
	jmp	_6_leave
_19
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
_frc4cryp
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_20
_21
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	call	_frc4k
	mov	[ebp-16],eax
	sub	esp,20
	mov	eax,[ebp-12]
	mov	ebx,[ebp-16]
	xor	eax,ebx
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_vre
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	mov	[esp],_vre
	call	__bbStrStore
	add	[ebp-8],1
_20
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_21
_8
	sub	esp,8
	mov	[esp],_vrc4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_vre
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,_vrc4
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_7_leave
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	jmp	_7_leave
_7_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 4
	.align	16
_frc4enc
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_23
_24
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],0
	call	_frc4k
	mov	[ebp-16],eax
	sub	esp,20
	mov	eax,[ebp-12]
	mov	ebx,[ebp-16]
	xor	eax,ebx
	mov	[esp],eax
	call	_fchr
	mov	[esp+4],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-8],1
_23
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_24
_10
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_9_leave
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	jmp	_9_leave
_9_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_asbox	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_akeyh	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vkey	.dd	0
	.align	4
_vrc4	.dd	0
	.align	4
_vre	.dd	0
	.align	4
_vec	.dd	0
	.align	4
_vclear	.dd	0
	.align	4
_vrc4k	.dd	0
	.align	4
_vrc4cryp	.dd	0
_11	.db	"TEST KEY",0
_12	.db	"SAFE YOUR DATA AND CODE WITH THE COOL RC4 ALGORYTMUS - (only private use, payment for commerzial) !",0
_22	.db	"",0
_25	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

