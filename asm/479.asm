
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,124
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
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[_vswidth],800
	mov	[_vsheight],600
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	esi,[_vsheight]
	mov	[esp+4],esi
	mov	eax,[_vswidth]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],128
	mov	[esp],0
	call	_fclscolor
	call	_fcls
	sub	esp,12
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
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
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-12],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,_42
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-16],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[ebp-24],eax
	jmp	_47
_48
	sub	esp,28
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	[ebp-28],1
	jmp	_51
_50
	sub	esp,12
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-120],eax
	cmp	[ebp-36],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-120]
	and	eax,ebx
	and	eax,eax
	jz	_52
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],2
	call	_fright
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_54
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-44],ebx
	mov	eax,[ebp-44]
	add	eax,6
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-120]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-120],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-120]
	and	ebx,eax
	mov	esi,[ebp-20]
	and	ebx,esi
	and	ebx,ebx
	jz	_57
	jmp	_l_2erasedir
_57
	sub	esp,16
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-44],ebx
	mov	eax,[ebp-44]
	add	eax,5
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-120]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-120],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-120]
	and	ebx,eax
	mov	esi,[ebp-12]
	and	ebx,esi
	and	ebx,ebx
	jz	_59
	jmp	_l_2erasedir
_59
	sub	esp,16
	mov	eax,_60
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-44],ebx
	mov	eax,[ebp-44]
	add	eax,4
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-120]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-120],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-120]
	and	ebx,eax
	mov	esi,[ebp-12]
	and	ebx,esi
	and	ebx,ebx
	jz	_61
	jmp	_l_2erasedir
_61
	sub	esp,16
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-44],ebx
	mov	eax,[ebp-44]
	add	eax,25
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-120]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,[ebp-44]
	and	ebx,eax
	and	ebx,ebx
	jz	_63
_l_2erasedir
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletedir
	jmp	_64
_63
_l_2askerase
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	and	ebx,ebx
	jz	_66
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletedir
_66
_64
_54
_52
	sub	esp,16
	mov	[esp],0
	call	_fchr
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-44],ebx
	cmp	[ebp-44],0
	jnz	_68
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-44],eax
_68
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-44]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	[ebp-36],0
	sub	esp,20
	mov	ebx,[ebp-44]
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
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_70
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_69
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_71
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_69
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freaddir
	mov	[ebp-44],eax
	jmp	_73
_72
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fnextfile
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_75
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_74
	jmp	_5
_74
	sub	esp,20
	lea	eax,[ebp-48]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_77
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_76
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-36],1
	mov	ebx,[ebp-28]
	and	ebx,ebx
	jz	_78
	mov	[ebp-28],0
	add	[ebp-52],1
_78
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,2
	jnz	_79
	sub	esp,28
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-56],1
	jmp	_80
_79
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],192
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[ebp-60],eax
	sub	esp,8
	lea	eax,[ebp-64]
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	[ebp-124],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-124]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrStore
	cmp	[ebp-60],0
	jnz	_81
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	add	[ebp-68],1
	mov	ebx,[ebp-8]
	and	ebx,ebx
	jz	_82
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
_82
	jmp	_83
_81
	sub	esp,16
	mov	eax,_85
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	esp,16
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	esi,[ebp-64]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[esp],esi
	mov	eax,esi
	call	_finstr
	mov	esi,eax
	or	ebx,esi
	and	ebx,ebx
	jz	_84
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	mov	ebx,[ebp-20]
	and	ebx,ebx
	jz	_87
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
_87
	jmp	_88
_84
	sub	esp,16
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-64]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	esp,16
	mov	eax,_91
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-120],eax
	sub	esp,4
	lea	esi,[ebp-64]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[esp],esi
	mov	eax,esi
	call	_finstr
	mov	esi,eax
	or	ebx,esi
	and	ebx,ebx
	jz	_89
	jmp	_l_2killtmps
	jmp	_92
_89
	sub	esp,24
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],4
	call	_fright
	mov	[esp],eax
	call	_fupper
	mov	[esp+4],eax
	lea	ebx,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-72]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_95
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_94
	sub	esp,12
	lea	eax,[ebp-72]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_97
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_96
	sub	esp,12
	lea	eax,[ebp-72]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_99
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_98
	jmp	_93
_94
_l_2killtmps
	sub	esp,12
	mov	[esp+4],192
	mov	[esp+8],255
	mov	[esp],192
	call	_fcolor
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_100
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
	jmp	_101
_100
	add	[ebp-76],1
	mov	ebx,[ebp-60]
	add	[ebp-80],ebx
	jmp	_103
_102
	add	[ebp-84],1
	sub	[ebp-80],100000000
_103
	cmp	[ebp-80],100000000
	jg	_102
_7
_101
	jmp	_93
_96
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],160
	mov	[esp],160
	call	_fcolor
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_104
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
	jmp	_105
_104
	add	[ebp-88],1
	mov	ebx,[ebp-60]
	add	[ebp-92],ebx
	jmp	_107
_106
	add	[ebp-96],1
	sub	[ebp-92],100000000
_107
	cmp	[ebp-92],100000000
	jg	_106
_8
_105
	jmp	_93
_98
	add	[ebp-100],1
	jmp	_93
_93
_92
_88
_83
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	call	_fstrnumb
	sub	esp,40
	mov	ebx,[_vswidth]
	sar	ebx,byte 3
	sub	esp,8
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	ebx,eax
	sub	esp,8
	mov	eax,_vv
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	ebx,eax
	sub	ebx,6
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_108
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstring
	mov	[esp+4],eax
	mov	[ebp-120],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_vv
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_109
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	add	[ebp-108],1
	mov	ebx,[ebp-60]
	add	[ebp-112],ebx
	jmp	_111
_110
	sub	[ebp-112],100000000
	add	[ebp-116],1
_111
	cmp	[ebp-112],100000000
	jg	_110
_9
_80
_76
_73
	cmp	[ebp-44],0
	jg	_72
_5
_51
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_112
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jg	_50
_4
	add	[ebp-24],1
_47
	sub	esp,8
	mov	eax,_113
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[ebp-24],eax
	jle	_48
_3
	sub	esp,16
	mov	eax,_114
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_115
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_116
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-108]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[ebp-116]
	mov	[esp],eax
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	call	_fstrnumb
	sub	esp,16
	mov	eax,_117
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_vv
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_118
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-68]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[ebp-84]
	mov	[esp],eax
	mov	ebx,[ebp-80]
	mov	[esp+4],ebx
	call	_fstrnumb
	sub	esp,32
	mov	eax,_119
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-76]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_120
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_vv
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[ebp-96]
	mov	[esp],eax
	mov	ebx,[ebp-92]
	mov	[esp+4],ebx
	call	_fstrnumb
	sub	esp,32
	mov	eax,_121
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-88]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_122
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,_vv
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	ret
_2_leave
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp-104]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp-64]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-120]
	mov	[ebp-120],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-120]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fstrnumb
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
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-16],ebx
	jmp	_124
_123
	add	[ebp-8],1
	sub	[ebp-16],100000000
_124
	cmp	[ebp-16],100000000
	jg	_123
_11
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,32
	mov	ebx,8
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	ebx,eax
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_125
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstring
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,16
	mov	eax,_126
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jnz	_127
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-8],eax
	jmp	_128
_127
	sub	esp,16
	mov	eax,_129
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	and	ebx,ebx
	jz	_130
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-16]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	mov	ebx,[ebp-16]
	add	ebx,1
	mov	[esp+4],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,[ebp-16]
	mov	[esp+8],eax
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-16],eax
	sub	esp,28
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,12
	mov	[esp+4],3
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	lea	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	_flen
	mov	esi,eax
	mov	eax,[ebp-24]
	sub	esi,2
	mov	[esp+8],esi
	mov	[ebp-24],eax
	sub	esp,4
	lea	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,24
	mov	ebx,[ebp-16]
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	ebx,eax
	add	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_131
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fstring
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-4]
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
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	add	eax,1
	mov	[ebp-8],eax
	sub	esp,16
	mov	eax,_132
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	jmp	_133
_130
	jmp	_135
_134
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
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
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-20]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_135
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_136
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
	sub	esp,8
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_137
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
	jnz	_134
_12
_133
_128
	jmp	_139
_138
	sub	[ebp-8],3
	sub	esp,36
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_140
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[ebp-24],eax
	sub	esp,4
	mov	[ebp-28],eax
	sub	esp,4
	lea	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	_flen
	mov	esi,eax
	mov	eax,[ebp-24]
	sub	esi,[ebp-8]
	add	esi,1
	mov	[esp+8],esi
	mov	[ebp-24],eax
	sub	esp,4
	lea	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_139
	cmp	[ebp-8],3
	jg	_138
_13
	jmp	_142
_141
	sub	esp,20
	mov	[esp+4],2
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,1
	mov	[esp+8],eax
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_142
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
	mov	ebx,_143
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
	sub	esp,8
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fleft
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,_144
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
	jnz	_141
_14
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_146
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_145
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_147
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrStore
_145
	sub	esp,8
	mov	[esp],_vv
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
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vswidth	.dd	0
	.align	4
_vsheight	.dd	0
	.align	4
_vv	.dd	0
_15	.db	"HD Cleaner",0
_16	.db	"",0
_17	.db	"  Hard Drive Cleaner, by Donald R. Dardem, November 2002",0
_18	.db	"",0
_19	.db	"  WARNING! Use this program with Caution!  If used or modified",0
_20	.db	"  incautiously, it may delete some essential file or directory",0
_21	.db	"  that is required for proper operation of your system.",0
_22	.db	"",0
_23	.db	"  No warrantee as to suitability or operation is given or implied,",0
_24	.db	"  so use at your own risk.  Note that some programs may use a zero-",0
_25	.db	"  length file as a flag of some sort, or there may be an empty",0
_26	.db	"  directory that is needed at certain other times for the proper",0
_27	.db	"  operation of some program.  That is the type of issue that would",0
_28	.db	"  become a problem if the needed file or directory is deleted.",0
_29	.db	"  While this approach is rarely today, some programs have behaved",0
_30	.db	"  in this fashion in the past, and others may again in the future.",0
_31	.db	"",0
_32	.db	"  Note that when a question is asked, you must enter an answer that",0
_33	.db	"  includes the letter 'Y' (such as 'y', 'Y', 'yes' or 'okay') if",0
_34	.db	"  you want to signify 'yes', otherwize the question defaults to",0
_35	.db	"  'No' when the Enter key is pressed.",0
_36	.db	"",0
_37	.db	"",0
_38	.db	"Automatically delete zero-byte (empty) files? ",0
_39	.db	"Y",0
_40	.db	"Automatically delete .TMP files? ",0
_41	.db	"Y",0
_42	.db	"Automatically delete .BAK files? ",0
_43	.db	"Y",0
_44	.db	"Automatically delete Temporary Internet Files? ",0
_45	.db	"Y",0
_46	.db	"C",0
_49	.db	":\",0
_53	.db	"",0
_55	.db	":\",0
_56	.db	"\CACHE\",0
_58	.db	"\TEMP\",0
_60	.db	"\TMP\",0
_62	.db	"\TEMPORARY INTERNET FILES\",0
_65	.db	"The above directory is empty, delete it? ",0
_67	.db	"Y",0
_70	.db	"\",0
_71	.db	"\",0
_75	.db	"",0
_77	.db	".",0
_85	.db	"\TEMPORARY INTERNET FILES\",0
_86	.db	"\CACHE\",0
_90	.db	"\TMP\",0
_91	.db	"\TEMP\",0
_95	.db	".TMP",0
_97	.db	".BAK",0
_99	.db	",BB",0
_108	.db	" ",0
_109	.db	" bytes",0
_112	.db	"",0
_113	.db	"Z",0
_114	.db	"Number of scanned drives: ",0
_115	.db	"Number of scanned directories: ",0
_116	.db	"Number of scanned files: ",0
_117	.db	"Total bytes in files: ",0
_118	.db	"Number of zero-byte files: ",0
_119	.db	"Number of .TMP files: ",0
_120	.db	", Number of bytes: ",0
_121	.db	"Number of .BAK files: ",0
_122	.db	", Number of bytes: ",0
_125	.db	"0",0
_126	.db	".",0
_129	.db	"e",0
_131	.db	"0",0
_132	.db	"w = ",0
_136	.db	"0",0
_137	.db	".",0
_140	.db	",",0
_143	.db	"0",0
_144	.db	",",0
_146	.db	"",0
_147	.db	"0",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

