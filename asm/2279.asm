
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,24
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdownload
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,24
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdownload
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,24
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+8],ebx
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdownload
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
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
_fdownload
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,100
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
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	sub	esp,16
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	and	ebx,ebx
	jz	_28
	sub	esp,28
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	call	_ftrim
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_29
	mov	eax,0
	jmp	_3_leave
_29
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-92]
	sub	ebx,[ebp-4]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_28
	sub	esp,16
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jnz	_32
	mov	eax,0
	jmp	_3_leave
_32
	sub	esp,24
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,24
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-92]
	sub	ebx,[ebp-4]
	add	ebx,1
	mov	[esp+4],ebx
	call	_fright
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-12],eax
	jmp	_33
_34
	sub	esp,20
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
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_36
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_35
	sub	esp,24
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-92]
	sub	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	jmp	_4
_35
	add	[ebp-12],-1
_33
	cmp	[ebp-12],1
	jge	_34
_4
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_37
	mov	eax,0
	jmp	_3_leave
_37
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_39
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
_39
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],0
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopentcpstream
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jnz	_41
	mov	eax,0
	jmp	_3_leave
_41
	sub	esp,108
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_43
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-32],ebx
	sub	esp,16
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-32]
	add	ebx,1
	mov	[esp+8],ebx
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-36],ebx
	sub	esp,16
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	sub	esi,[ebp-32]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-40],eax
	mov	ebx,[ebp-40]
	mov	[ebp-44],ebx
	cmp	[ebp-44],200
	jz	_49
	cmp	[ebp-44],301
	jz	_50
	cmp	[ebp-44],302
	jz	_50
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosetcpstream
	mov	eax,0
	jmp	_3_leave
	jmp	_48
_49
	mov	[ebp-48],-1
	mov	[ebp-52],0
_51
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_52
	jmp	_6
_52
	sub	esp,16
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,24
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,24
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-92]
	sub	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-64]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_57
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_56
	sub	esp,12
	lea	eax,[ebp-64]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_58
	jmp	_55
_56
	sub	esp,8
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-48],eax
	jmp	_55
_58
	sub	esp,16
	lea	eax,[ebp-60]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flower
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_60
	mov	[ebp-52],1
_60
	jmp	_55
_55
	jmp	_51
_6
	cmp	[ebp-48],0
	jnz	_62
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-68],eax
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosetcpstream
	mov	eax,1
	jmp	_3_leave
	jmp	_63
_62
	cmp	[ebp-48],0
	jle	_64
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-68],eax
	sub	esp,4
	mov	[esp],4096
	call	_fcreatebank
	mov	[ebp-72],eax
	mov	[ebp-76],0
_65
	mov	ebx,[ebp-48]
	sub	ebx,[ebp-76]
	mov	[ebp-80],ebx
	cmp	[ebp-80],4096
	jle	_66
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],4096
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],4096
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fwritebytes
	add	[ebp-76],4096
	jmp	_67
_66
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-80]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-80]
	mov	[esp+12],esi
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fwritebytes
	jmp	_8
_67
	jmp	_65
_8
	sub	esp,4
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosetcpstream
	mov	eax,1
	jmp	_3_leave
	jmp	_68
_64
	mov	ebx,[ebp-52]
	and	ebx,ebx
	jz	_69
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-68],eax
	sub	esp,4
	mov	[esp],4096
	call	_fcreatebank
	mov	[ebp-72],eax
_70
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	mov	[ebp-100],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-100]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-84],0
	mov	[ebp-12],1
	jmp	_71
_72
	sub	esp,24
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_73
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	esi,[ebp-84]
	shl	esi,byte 4
	add	esi,ebx
	mov	[ebp-84],esi
	add	[ebp-12],1
_71
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-12],eax
	jle	_72
_10
	cmp	[ebp-84],0
	jnz	_74
	jmp	_9
_74
	sub	esp,4
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fbanksize
	cmp	eax,[ebp-84]
	jge	_75
	sub	esp,8
	mov	eax,[ebp-72]
	mov	[esp],eax
	mov	ebx,[ebp-84]
	mov	[esp+4],ebx
	call	_fresizebank
_75
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-84]
	mov	[esp+12],esi
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-84]
	mov	[esp+12],esi
	mov	esi,[ebp-68]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fwritebytes
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadshort
	jmp	_70
_9
	sub	esp,4
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_ffreebank
	sub	esp,4
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosetcpstream
	mov	eax,1
	jmp	_3_leave
	jmp	_76
_69
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosetcpstream
	mov	eax,0
	jmp	_3_leave
_76
_68
_63
	jmp	_48
_50
_77
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadline
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftrim
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_78
	jmp	_11
_78
	sub	esp,16
	mov	eax,_80
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,24
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,24
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-92]
	sub	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fright
	mov	[esp],eax
	call	_ftrim
	mov	[esp+4],eax
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-88]
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	[ebp-96],eax
	sub	esp,4
	lea	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-96]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flower
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-88]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,_83
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_82
	jmp	_81
_82
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosetcpstream
	sub	esp,16
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp+8],ebx
	mov	[ebp-92],eax
	sub	esp,4
	lea	ebx,[ebp-60]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fdownload
	mov	ebx,eax
	jmp	_3_leave
	jmp	_81
_81
	jmp	_77
_11
	jmp	_48
_48
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-88]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-60]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-92]
	mov	[ebp-92],eax
	sub	esp,4
	mov	esi,[ebp+20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-92]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_13	.db	"http://www.google.com/intl/en_us/images/logo.gif",0
_14	.db	"",0
_15	.db	"",0
_16	.db	"http://www.blitzbasic.com/index.php",0
_17	.db	"",0
_18	.db	"blitzbasic.com.index.html",0
_19	.db	"http://example.com/index.php",0
_20	.db	"",0
_21	.db	"index.html",0
_22	.db	"",0
_23	.db	"Done.",0
_24	.db	"What the download function returned is printed on the screen.",0
_25	.db	"0 = download failed",0
_26	.db	"1 = download successful",0
_27	.db	"://",0
_30	.db	"http",0
_31	.db	"/",0
_36	.db	"/",0
_38	.db	"",0
_40	.db	"",0
_42	.db	"GET ",0
_43	.db	" HTTP/1.1",0
_44	.db	"Host: ",0
_45	.db	"User-Agent: Download_Function_By_bytecode77",0
_46	.db	" ",0
_47	.db	" ",0
_53	.db	"",0
_54	.db	":",0
_57	.db	"content-length",0
_59	.db	"transfer-encoding",0
_61	.db	"chunked",0
_73	.db	"123456789ABCDEF",0
_79	.db	"",0
_80	.db	":",0
_83	.db	"location",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

