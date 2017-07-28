
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
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,16
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_fencodeurlvalue
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_fencodeurlvalue
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_fencodeurlvalue
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],0
	call	_fencodeurlvalue
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[esp+4],1
	call	_fencodeurlvalue
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_18
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
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,24
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],0
	call	_fencodeurlvalue
	mov	[esp+4],eax
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
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	call	_fwaitkey
	call	_fend
	ret
_2_leave
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
_fencodeurlvalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-20],eax
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
	cmp	[ebp-12],47
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-12],58
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-12],64
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	cmp	[ebp-12],91
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-32]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-32],eax
	cmp	[ebp-12],96
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	cmp	[ebp-12],123
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-32]
	and	ebx,esi
	or	eax,ebx
	and	eax,eax
	jz	_22
	mov	[ebp-4],0
	jmp	_23
_22
	mov	[ebp-4],1
	mov	ebx,[ebp-12]
	mov	[ebp-24],ebx
	cmp	[ebp-24],32
	jz	_25
	cmp	[ebp-24],46
	jz	_26
	cmp	[ebp-24],45
	jz	_27
	cmp	[ebp-24],95
	jz	_28
	cmp	[ebp-24],126
	jz	_29
	cmp	[ebp+24],0
	jnz	_30
	mov	ebx,[ebp-12]
	mov	[ebp-28],ebx
	cmp	[ebp-28],39
	jz	_32
	cmp	[ebp-28],33
	jz	_33
	cmp	[ebp-28],40
	jz	_34
	cmp	[ebp-28],41
	jz	_35
	cmp	[ebp-28],42
	jz	_36
	jmp	_31
_32
	mov	[ebp-4],0
	jmp	_31
_33
	mov	[ebp-4],0
	jmp	_31
_34
	mov	[ebp-4],0
	jmp	_31
_35
	mov	[ebp-4],0
	jmp	_31
_36
	mov	[ebp-4],0
	jmp	_31
_31
_30
	jmp	_24
_25
	mov	[ebp-4],0
	mov	[ebp-12],43
	jmp	_24
_26
	mov	[ebp-4],0
	jmp	_24
_27
	mov	[ebp-4],0
	jmp	_24
_28
	mov	[ebp-4],0
	jmp	_24
_29
	mov	[ebp-4],0
	jmp	_24
_24
_23
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_37
	sub	esp,28
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,8
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fhex
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	[esp+4],2
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_39
_37
	sub	esp,20
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_39
	add	[ebp-8],1
_20
	mov	ebx,[ebp-20]
	cmp	[ebp-8],ebx
	jle	_21
_4
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_3_leave
	sub	esp,4
	mov	eax,_40
	mov	[esp],eax
	call	__bbStrConst
	jmp	_3_leave
_3_leave
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	sub	esp,4
	mov	esi,[ebp-16]
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
	ret	word 8
_7	.db	"012789-ABCXYZ-abcxyz",0
_8	.db	"",0
_9	.db	"/:-@[-`{-#$%&^{|}",0
_10	.db	"",0
_11	.db	" .-_~",0
_12	.db	"",0
_13	.db	"'!()*",0
_14	.db	"",0
_15	.db	"'!()*",0
_16	.db	"",0
_17	.db	"",0
_18	.db	"https://www.google.com/search?q=",0
_19	.db	"Blitz Basic Code Archive",0
_38	.db	"%",0
_40	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

