
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,8
	mov	[esp],_vxmashkey
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vxdefaultfilesize],1000
	mov	[_vbankstep],1500
	mov	[_vmaxfilehandles],500
	sub	esp,4
	mov	eax,_afilehandle
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afilehandle
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afilehandle
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afilebank
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afilebank
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afilebank
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afilefn
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afilefn
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afilefn
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afilesiz
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afilesiz
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afilesiz
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afileenc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afileenc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afileenc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afilecmp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afilecmp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afilecmp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afileoffset
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afileoffset
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afileoffset
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_afiletyp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxfilehandles]
	mov	esi,_afiletyp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afiletyp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	[esp],_vxtokenid
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],255
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vmaxxtokens],255
	sub	esp,4
	mov	eax,_axtoken
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vmaxxtokens]
	mov	esi,_axtoken
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_axtoken
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fxwritefile
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fxwriteimage
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fxclosefile
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fxreadfile
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fxreadimage
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fxclosefile
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fdrawimage
	call	_fwaitkey
	sub	esp,8
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdeletefile
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
_fxsetkey
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	[esp],_vxmashkey
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxreadfile
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_58
	sub	esp,24
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
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
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_58
	mov	[ebp-12],1
	jmp	_61
_62
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_63
	mov	ebx,[ebp-4]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afileenc]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afilecmp]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_afiletyp]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_afilefn]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_64
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fxmash
_64
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_65
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fxdecompress
_65
	mov	eax,[ebp-12]
	jmp	_4_leave
_63
	add	[ebp-12],1
_61
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp-12],ebx
	jle	_62
_5
	sub	esp,8
	mov	eax,_66
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fxwritefile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_67
_68
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_69
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_afileenc]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_afilecmp]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_afiletyp]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[_vxdefaultfilesize]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_afilefn]
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
_69
	add	[ebp-4],1
_67
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp-4],ebx
	jle	_68
_7
	sub	esp,8
	mov	eax,_70
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
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
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fxclosefile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_71
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilecmp]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_72
	sub	esp,12
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fxcompress
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	[ebx],eax
_72
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileenc]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_73
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fxmash
_73
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilefn]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_74
	sub	esp,24
	mov	eax,_75
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilefn]
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
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_74
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritebytes
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afiletyp]
	mov	[esi],ebx
_71
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_77
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afiletyp]
	mov	[esi],ebx
_77
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxeof
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_78
	sub	esp,8
	mov	eax,_79
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_78
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_80
	sub	esp,8
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_80
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,1
	jz	_82
	sub	esp,8
	mov	eax,_83
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_82
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	cmp	ebx,esi
	jl	_84
	mov	eax,1
	jmp	_9_leave
_84
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxwriteint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_85
	sub	esp,8
	mov	eax,_86
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_85
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_87
	sub	esp,8
	mov	eax,_88
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_87
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,2
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_89
	sub	esp,8
	mov	eax,_90
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_89
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_91
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	[esi],ebx
_91
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fbanksize
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	cmp	eax,ebx
	jge	_92
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	add	ebx,[_vbankstep]
	mov	[esp+4],ebx
	call	_fresizebank
_92
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokeint
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxwritefloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_93
	sub	esp,8
	mov	eax,_94
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_93
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_95
	sub	esp,8
	mov	eax,_96
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_95
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,2
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_97
	sub	esp,8
	mov	eax,_98
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_97
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_99
	mov	ebx,[ebp-4]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	[esi],ebx
_99
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fbanksize
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	cmp	eax,ebx
	jge	_100
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	add	ebx,[_vbankstep]
	mov	[esp+4],ebx
	call	_fresizebank
_100
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokefloat
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxwritebyte
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_101
	sub	esp,8
	mov	eax,_102
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_101
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_103
	sub	esp,8
	mov	eax,_104
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_103
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,2
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_105
	sub	esp,8
	mov	eax,_106
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_105
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_107
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	[esi],ebx
_107
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fbanksize
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	cmp	eax,ebx
	jge	_108
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	add	ebx,[_vbankstep]
	mov	[esp+4],ebx
	call	_fresizebank
_108
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpokebyte
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxwritestring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_109
	sub	esp,8
	mov	eax,_110
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_109
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_111
	sub	esp,8
	mov	eax,_112
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_111
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,2
	setnz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_113
	sub	esp,8
	mov	eax,_114
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_113
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_115
	cmp	[_vxtokens],0
	jle	_116
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxtokenise
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_116
_115
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fxwriteint
	mov	[ebp-4],1
	jmp	_117
_118
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxwritebyte
	mov	ebx,eax
	add	[ebp-4],1
_117
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_118
_14
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 12
	.align	16
_fxwriteline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_119
	sub	esp,8
	mov	eax,_120
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_119
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_121
	sub	esp,8
	mov	eax,_122
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_121
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,2
	setnz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_123
	sub	esp,8
	mov	eax,_124
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_123
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_125
	cmp	[_vxtokens],0
	jle	_126
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxtokenise
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_126
_125
	mov	[ebp-4],1
	jmp	_127
_128
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxwritebyte
	mov	ebx,eax
	add	[ebp-4],1
_127
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_128
_16
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],13
	call	_fxwritebyte
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],10
	call	_fxwritebyte
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 12
	.align	16
_fxwritebytes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+24],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+24],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_129
	sub	esp,8
	mov	eax,_130
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_129
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_131
	sub	esp,8
	mov	eax,_132
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_131
	mov	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,2
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_133
	sub	esp,8
	mov	eax,_134
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_133
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	add	ebx,[ebp+32]
	mov	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_135
	mov	ebx,[ebp-4]
	add	ebx,[ebp+32]
	mov	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	[esi],ebx
_135
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fbanksize
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	cmp	eax,ebx
	jge	_136
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afilesiz]
	mov	ebx,[ebx]
	add	ebx,[_vbankstep]
	mov	[esp+4],ebx
	call	_fresizebank
_136
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+12],ebx
	mov	esi,[ebp+32]
	mov	[esp+16],esi
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcopybank
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,[ebp+32]
	mov	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fxreadbyte
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_137
	sub	esp,8
	mov	eax,_138
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_137
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_139
	sub	esp,8
	mov	eax,_140
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_139
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_141
	sub	esp,8
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_141
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxreadint
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_143
	sub	esp,8
	mov	eax,_144
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_143
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_145
	sub	esp,8
	mov	eax,_146
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_145
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_147
	sub	esp,8
	mov	eax,_148
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_147
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpeekint
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxreadfloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_149
	sub	esp,8
	mov	eax,_150
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_149
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_151
	sub	esp,8
	mov	eax,_152
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_151
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_153
	sub	esp,8
	mov	eax,_154
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_153
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afilebank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpeekfloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,4
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_20_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxreadstring
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
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_155
	sub	esp,8
	mov	eax,_156
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_155
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_157
	sub	esp,8
	mov	eax,_158
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_157
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_159
	sub	esp,8
	mov	eax,_160
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_159
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadint
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_161
_162
	sub	esp,20
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxreadbyte
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-8],1
_161
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_162
_22
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_163
	cmp	[_vxtokens],0
	jle	_164
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
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
	call	_fxdetokenise
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_164
_163
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_21_leave
	sub	esp,4
	mov	eax,_165
	mov	[esp],eax
	call	__bbStrConst
	jmp	_21_leave
_21_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxreadline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxeof
	and	eax,eax
	jz	_166
	sub	esp,4
	mov	eax,_167
	mov	[esp],eax
	call	__bbStrConst
	jmp	_23_leave
_166
	cmp	[ebp+20],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_168
	sub	esp,8
	mov	eax,_169
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_168
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_170
	sub	esp,8
	mov	eax,_171
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_170
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_172
	sub	esp,8
	mov	eax,_173
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_172
	mov	[ebp-4],1
	jmp	_174
_175
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_afilesiz]
	mov	esi,[esi]
	cmp	ebx,esi
	jl	_176
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_23_leave
_176
	cmp	[ebp-12],0
	jnz	_177
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxreadbyte
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_177
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,2
	jle	_178
	sub	esp,20
	mov	ebx,[ebp-4]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	[ebp-28],eax
	sub	esp,4
	lea	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp],esi
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,esi
	call	__bbStrCompare
	mov	esi,eax
	mov	eax,[ebp-20]
	cmp	esi,0
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-16]
	and	eax,esi
	and	eax,eax
	jz	_179
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-16]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_180
	cmp	[_vxtokens],0
	jle	_181
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fxdetokenise
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_181
_180
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_23_leave
_179
_178
	add	[ebp-4],1
_174
	cmp	[ebp-4],32000
	jle	_175
_24
	sub	esp,8
	mov	eax,_182
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
	sub	esp,4
	mov	eax,_183
	mov	[esp],eax
	call	__bbStrConst
	jmp	_23_leave
_23_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxreadbytes
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+24],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vmaxfilehandles]
	cmp	[ebp+24],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_184
	sub	esp,8
	mov	eax,_185
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_184
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_186
	sub	esp,8
	mov	eax,_187
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_186
	mov	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_afiletyp]
	mov	eax,[eax]
	cmp	eax,1
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afiletyp]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_188
	sub	esp,8
	mov	eax,_189
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_188
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afilebank]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	mov	esi,[ebp+32]
	mov	[esp+16],esi
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcopybank
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_afileoffset]
	mov	ebx,[ebx]
	add	ebx,[ebp+32]
	mov	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_afileoffset]
	mov	[esi],ebx
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fxmash
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
	mov	[ebp-32],ebx
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-12],1
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[ebp-16],eax
	mov	[ebp-20],0
	jmp	_190
_191
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-24],eax
	add	[ebp-16],3
	cmp	[ebp-16],255
	jle	_192
	sub	[ebp-16],256
_192
	add	[ebp-28],1
	cmp	[ebp-28],12
	jnz	_193
	mov	[ebp-28],0
	sub	esp,8
	mov	[esp],3
	mov	[esp+4],121
	call	_frand
	add	[ebp-16],eax
	cmp	[ebp-16],255
	jle	_194
	sub	[ebp-16],256
_194
_193
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	ebx,[ebp-16]
	xor	eax,ebx
	mov	[ebp-32],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	esi,[ebp-32]
	xor	ebx,esi
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_195
	mov	[ebp-12],1
_195
	add	[ebp-20],1
_190
	mov	ebx,[ebp+24]
	sub	ebx,1
	cmp	[ebp-20],ebx
	jle	_191
_27
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxcompress
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
	sub	esp,4
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-4],eax
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
_196
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-16],eax
	add	[ebp-8],1
_l_28rec
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	mov	ebx,[ebp+28]
	cmp	[ebp-16],ebx
	jg	_197
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	jnz	_198
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	jmp	_l_28donec
	jmp	_199
_198
	mov	[ebp-20],1
	mov	[ebp-24],1
	jmp	_200
_201
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-28],eax
	add	[ebp-8],1
	mov	eax,[ebp-16]
	cmp	[ebp-28],eax
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_202
	add	[ebp-20],1
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	jmp	_l_28donec
_202
	mov	eax,[ebp-16]
	cmp	[ebp-28],eax
	setnz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_203
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	mov	ebx,[ebp+28]
	cmp	[ebp-28],ebx
	jg	_204
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
_204
	jmp	_l_28donec
_203
	mov	ebx,[ebp-16]
	cmp	[ebp-28],ebx
	jnz	_205
	add	[ebp-20],1
_205
	mov	ebx,[ebp-16]
	cmp	[ebp-28],ebx
	jz	_206
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	sub	esi,1
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	mov	ebx,[ebp-28]
	mov	[ebp-16],ebx
	jmp	_l_28rec
_206
	cmp	[ebp-24],256
	jnz	_207
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],255
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	jmp	_l_28donebatch
_207
	add	[ebp-24],1
_200
	cmp	[ebp-24],256
	jle	_201
_30
_l_28donebatch
_199
_197
_l_28donec
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	jnz	_196
_29
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+16],esi
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcopybank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fxdecompress
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
	sub	esp,4
	mov	eax,[ebp+24]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1069547520
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-4],eax
	mov	[ebp-8],0
	mov	[ebp-12],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-16],eax
	add	[ebp-8],1
_208
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-20],eax
	add	[ebp-8],1
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	mov	ebx,[ebp-12]
	add	ebx,10
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbanksize
	cmp	ebx,eax
	jle	_209
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-32]
	add	ebx,200
	mov	[esp+4],ebx
	call	_fresizebank
_209
	mov	ebx,[ebp-16]
	cmp	[ebp-20],ebx
	jg	_210
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-24],eax
	add	[ebp-8],1
	mov	[ebp-28],1
	jmp	_211
_212
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-12],1
	mov	ebx,[ebp-12]
	add	ebx,10
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbanksize
	cmp	ebx,eax
	jle	_213
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-32]
	add	ebx,200
	mov	[esp+4],ebx
	call	_fresizebank
_213
	add	[ebp-28],1
_211
	mov	ebx,[ebp-24]
	cmp	[ebp-28],ebx
	jle	_212
_33
_210
	mov	ebx,[ebp+24]
	cmp	[ebp-8],ebx
	jnz	_208
_32
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,20
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+16],esi
	mov	esi,[ebp+20]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcopybank
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebank
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxtokenise
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
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_214
_215
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_axtoken]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jl	_216
	sub	esp,32
	mov	eax,_vxtokenid
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_axtoken]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freplace
	mov	[esp+4],eax
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_216
	add	[ebp-8],1
_214
	mov	ebx,[_vxtokens]
	cmp	[ebp-8],ebx
	jle	_215
_35
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_34_leave
	sub	esp,4
	mov	eax,_217
	mov	[esp],eax
	call	__bbStrConst
	jmp	_34_leave
_34_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 4
	.align	16
_fxdetokenise
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_vxtokenid
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-8]
	add	ebx,1
	cmp	eax,ebx
	jge	_218
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_36_leave
_218
	mov	[ebp-4],1
	jmp	_219
_220
	sub	esp,32
	mov	eax,_vxtokenid
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_axtoken]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+8],ebx
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freplace
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-4],1
_219
	mov	ebx,[_vxtokens]
	cmp	[ebp-4],ebx
	jle	_220
_37
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_36_leave
	sub	esp,4
	mov	eax,_221
	mov	[esp],eax
	call	__bbStrConst
	jmp	_36_leave
_36_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
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
	ret	word 4
	.align	16
_fxaddtoken
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_vxtokenid
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-4]
	add	ebx,1
	cmp	eax,ebx
	jge	_222
	sub	esp,24
	mov	eax,_223
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_224
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_222
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_vxtokenid
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-4]
	add	ebx,1
	cmp	eax,ebx
	jnz	_225
	sub	esp,24
	mov	eax,_226
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_227
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_225
	mov	ebx,[_vmaxxtokens]
	cmp	[_vxtokens],ebx
	jl	_228
	sub	esp,16
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_228
	add	[_vxtokens],1
	sub	esp,8
	mov	eax,[_vxtokens]
	shl	eax,byte 2
	add	eax,[_axtoken]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	eax,0
	jmp	_38_leave
_38_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fxwriteimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimagewidth
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fxwriteint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fimageheight
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	_fxwriteint
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_230
_231
	mov	[ebp-8],0
	jmp	_232
_233
	sub	esp,20
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fxwritebyte
	mov	ebx,[ebp-12]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fxwritebyte
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fxwritebyte
	add	[ebp-8],1
_232
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_233
_41
	add	[ebp-4],1
_230
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_231
_40
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_39_leave
_39_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxwritetexture
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
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftexturewidth
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fxwriteint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ftextureheight
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fxwriteint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fxwritebyte
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-4],0
	jmp	_234
_235
	mov	[ebp-8],0
	jmp	_236
_237
	sub	esp,20
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadpixelfast
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	esi,16711680
	and	ebx,esi
	shr	ebx,byte 16
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fxwritebyte
	mov	ebx,[ebp-12]
	mov	esi,65280
	and	ebx,esi
	shr	ebx,byte 8
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fxwritebyte
	mov	ebx,[ebp-12]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-24],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	call	_fxwritebyte
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_238
	mov	ebx,[ebp-12]
	mov	esi,-16777216
	and	ebx,esi
	shr	ebx,byte 24
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	call	_fxwritebyte
_238
	add	[ebp-8],1
_236
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-8],eax
	jle	_237
_44
	add	[ebp-4],1
_234
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-4],eax
	jle	_235
_43
	sub	esp,12
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,0
	jmp	_42_leave
_42_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fxwritebank
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fxwriteint
	sub	esp,16
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fbanksize
	mov	[esp+12],eax
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fxwritebytes
	mov	eax,0
	jmp	_45_leave
_45_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxreadtexture
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadint
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadint
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-12],eax
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatetexture
	mov	[ebp-16],eax
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-20],0
	jmp	_239
_240
	mov	[ebp-24],0
	jmp	_241
_242
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-36],eax
	mov	ebx,[ebp-12]
	and	ebx,ebx
	jz	_243
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-40],eax
_243
	mov	ebx,[ebp-28]
	shl	ebx,byte 16
	mov	esi,[ebp-32]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-36]
	or	ebx,esi
	mov	[ebp-44],ebx
	sub	esp,24
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-44]
	mov	[esp+8],ebx
	mov	esi,[ebp-24]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-24],1
_241
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftextureheight
	sub	eax,1
	cmp	[ebp-24],eax
	jle	_242
_48
	add	[ebp-20],1
_239
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_ftexturewidth
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_240
_47
	sub	esp,12
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-16]
	jmp	_46_leave
	mov	eax,0
	jmp	_46_leave
_46_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxreadimage
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
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadint
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadint
	mov	[ebp-8],eax
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-12],eax
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_flockbuffer
	mov	[ebp-16],0
	jmp	_244
_245
	mov	[ebp-20],0
	jmp	_246
_247
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-28],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadbyte
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	shl	ebx,byte 16
	mov	esi,[ebp-28]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[ebp-32]
	or	ebx,esi
	mov	[ebp-36],ebx
	sub	esp,24
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+12],eax
	mov	ebx,[ebp-36]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fwritepixelfast
	add	[ebp-20],1
_246
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimageheight
	sub	eax,1
	cmp	[ebp-20],eax
	jle	_247
_51
	add	[ebp-16],1
_244
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fimagewidth
	sub	eax,1
	cmp	[ebp-16],eax
	jle	_245
_50
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_funlockbuffer
	mov	eax,[ebp-12]
	jmp	_49_leave
	mov	eax,0
	jmp	_49_leave
_49_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fxreadbank
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
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fxreadint
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatebank
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fxreadbytes
	mov	eax,[ebp-8]
	jmp	_52_leave
	mov	eax,0
	jmp	_52_leave
_52_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vxmashkey	.dd	0
_53	.db	"This is the encryption key.  Make it as long and as random and as varied as you can, but make sure you use the same key to load files with which they were saved.",0
	.align	4
_vxdefaultfilesize	.dd	0
	.align	4
_vbankstep	.dd	0
	.align	4
_vmaxfilehandles	.dd	0
	.align	4
_afilehandle	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afilebank	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afilefn	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_afilesiz	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afileenc	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afilecmp	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afileoffset	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_afiletyp	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vxtokenid	.dd	0
	.align	4
_vxtokens	.dd	0
	.align	4
_vmaxxtokens	.dd	0
	.align	4
_axtoken	.dd	0
	.dd	3
	.dd	1
	.dd	0
_54	.db	"C:\Blitz3D\Projects\dexter's test.png",0
_55	.db	"moo.txt",0
_56	.db	"moo.txt",0
_57	.db	"moo.txt",0
_59	.db	"Couldn't read from ",0
_60	.db	".",0
_66	.db	"Too many files open!",0
_70	.db	"Too many files open!",0
_75	.db	"Couldn't write to ",0
_76	.db	".",0
_79	.db	"Invalid file handle.",0
_81	.db	"Can't use closed file handle!",0
_83	.db	"Can't check end-of-file for a file being written!",0
_86	.db	"Invalid file handle.",0
_88	.db	"Can't use a closed handle file!",0
_90	.db	"Can't write to a non-writey file handle!",0
_94	.db	"Invalid file handle.",0
_96	.db	"Can't use a closed handle file!",0
_98	.db	"Can't write to a non-writey file handle!",0
_102	.db	"Invalid file handle.",0
_104	.db	"Can't use a closed handle file!",0
_106	.db	"Can't write to a non-writey file handle!",0
_110	.db	"Invalid file handle.",0
_112	.db	"Can't use a closed handle file!",0
_114	.db	"Can't write to a non-writey file handle!",0
_120	.db	"Invalid file handle.",0
_122	.db	"Can't use a closed handle file!",0
_124	.db	"Can't write to a non-writey file handle!",0
_130	.db	"Invalid file handle.",0
_132	.db	"Can't use a closed handle file!",0
_134	.db	"Can't write to a non-writey file handle!",0
_138	.db	"Invalid file handle.",0
_140	.db	"Can't use a closed handle file!",0
_142	.db	"Can't read from a non-ready file handle!",0
_144	.db	"Invalid file handle.",0
_146	.db	"Can't use a closed handle file!",0
_148	.db	"Can't read from a non-ready file handle!",0
_150	.db	"Invalid file handle.",0
_152	.db	"Can't use a closed handle file!",0
_154	.db	"Can't read from a non-ready file handle!",0
_156	.db	"Invalid file handle.",0
_158	.db	"Can't use a closed handle file!",0
_160	.db	"Can't read from a non-ready file handle!",0
_165	.db	"",0
_167	.db	"",0
_169	.db	"Invalid file handle.",0
_171	.db	"Can't use a closed handle file!",0
_173	.db	"Can't read from a non-ready file handle!",0
_182	.db	"ReadLine timeout - no 13,10 found!",0
_183	.db	"",0
_185	.db	"Invalid file handle.",0
_187	.db	"Can't use a closed handle file!",0
_189	.db	"Can't read from a non-ready file handle!",0
_217	.db	"",0
_221	.db	"",0
_223	.db	"Pointless token: ",0
_224	.db	" (it's so short that the token would be larger!)",0
_226	.db	"Pointless token: ",0
_227	.db	" (it's so short that the token would be the same size!)",0
_229	.db	"Too many tokens: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

