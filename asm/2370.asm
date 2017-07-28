
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],120
	mov	[esp],160
	call	_fgraphics
	sub	esp,4
	mov	eax,_amov
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_amov
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amov
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_agrid
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_agrid
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amoved
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,9
	mov	esi,_amoved
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amoved
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vmembankcount],0
	mov	[_vtest],0
	mov	[ebp-4],0
	jmp	_19
_18
	sub	esp,28
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	cmp	[ebp-16],0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_22
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	add	[_vmembankcount],1
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-16],eax
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_tgame
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,16
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,28
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,20
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,32
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,12
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,24
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,36
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	jmp	_23
_22
	mov	[ebp-8],1
_23
_19
	cmp	[ebp-8],1
	jnz	_18
_4
	sub	esp,8
	mov	[esp],1120403456
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	cmp	[ebp-24],50
	jle	_24
	mov	[ebp-24],1
	jmp	_25
_24
	mov	[ebp-24],0
_25
	mov	ebx,[ebp-24]
	mov	[_vmove],ebx
	mov	ebx,[_vmove]
	mov	[_vstart],ebx
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,12
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fflushkeys
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	sub	esp,16
	mov	[esp+8],14
	mov	[esp+12],95
	mov	[esp+4],40
	mov	[esp],14
	call	_fline
	sub	esp,16
	mov	[esp+8],34
	mov	[esp+12],95
	mov	[esp+4],40
	mov	[esp],34
	call	_fline
	sub	esp,16
	mov	[esp+8],54
	mov	[esp+12],54
	mov	[esp+4],54
	mov	[esp],1
	call	_fline
	sub	esp,16
	mov	[esp+8],54
	mov	[esp+12],74
	mov	[esp+4],74
	mov	[esp],1
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	[ebp-8],0
	jmp	_31
_30
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_32
	mov	[ebp-8],1
_32
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	cmp	[_vmove],0
	jnz	_34
	jmp	_l_2wngplc2
_l_2wngplc
	sub	[_vnum],1
_l_2wngplc2
	call	_fwaitkey
	add	[_vnum],1
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_35
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_36
	mov	ebx,1
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_37
_36
	call	_fflushkeys
	jmp	_l_2wngplc
_37
	jmp	_38
_35
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_39
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_40
	mov	ebx,2
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_41
_40
	call	_fflushkeys
	jmp	_l_2wngplc
_41
	jmp	_42
_39
	sub	esp,4
	mov	[esp],4
	call	_fkeyhit
	and	eax,eax
	jz	_43
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_44
	mov	ebx,3
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_45
_44
	call	_fflushkeys
	jmp	_l_2wngplc
_45
	jmp	_46
_43
	sub	esp,4
	mov	[esp],16
	call	_fkeyhit
	and	eax,eax
	jz	_47
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_48
	mov	ebx,4
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_49
_48
	call	_fflushkeys
	jmp	_l_2wngplc
_49
	jmp	_50
_47
	sub	esp,4
	mov	[esp],17
	call	_fkeyhit
	and	eax,eax
	jz	_51
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_52
	mov	ebx,5
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_53
_52
	call	_fflushkeys
	jmp	_l_2wngplc
_53
	jmp	_54
_51
	sub	esp,4
	mov	[esp],18
	call	_fkeyhit
	and	eax,eax
	jz	_55
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_56
	mov	ebx,6
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_57
_56
	call	_fflushkeys
	jmp	_l_2wngplc
_57
	jmp	_58
_55
	sub	esp,4
	mov	[esp],30
	call	_fkeyhit
	and	eax,eax
	jz	_59
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_60
	mov	ebx,7
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_61
_60
	call	_fflushkeys
	jmp	_l_2wngplc
_61
	jmp	_62
_59
	sub	esp,4
	mov	[esp],31
	call	_fkeyhit
	and	eax,eax
	jz	_63
	mov	ebx,8
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_64
	mov	ebx,8
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_65
_64
	call	_fflushkeys
	jmp	_l_2wngplc
_65
	jmp	_66
_63
	sub	esp,4
	mov	[esp],32
	call	_fkeyhit
	and	eax,eax
	jz	_67
	mov	ebx,9
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_68
	mov	ebx,9
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_69
_68
	call	_fflushkeys
	jmp	_l_2wngplc
_69
_67
_66
_62
_58
_54
_50
_46
_42
_38
	jmp	_70
_34
	sub	esp,4
	mov	[esp],400
	call	_fdelay
	jmp	_l_2wngplc4
_l_2wngplc3
	sub	[_vnum],1
_l_2wngplc4
	mov	[ebp-28],0
	mov	[ebp-32],0
	mov	[ebp-36],0
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],_tgame
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_71
	add	[ebp-36],1
	mov	[ebp-40],0
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
	cmp	[_vstart],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	mov	[ebp-72],eax
	cmp	[_vnum],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_72
	mov	[ebp-40],1
	mov	[ebp-44],1
	jmp	_73
_74
	mov	ebx,[ebp-44]
	shl	ebx,byte 2
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-44]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	esi,[esi]
	cmp	ebx,esi
	jz	_75
	mov	[ebp-40],0
_75
	add	[ebp-44],1
_73
	mov	ebx,[_vnum]
	cmp	[ebp-44],ebx
	jle	_74
_7
	jmp	_76
_72
	mov	eax,[ebp-20]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	cmp	eax,2
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
	cmp	[_vstart],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	mov	[ebp-72],eax
	cmp	[_vnum],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_77
	mov	[ebp-40],1
	mov	[ebp-44],1
	jmp	_78
_79
	mov	ebx,[ebp-44]
	shl	ebx,byte 2
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	esi,[ebp-44]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	esi,[esi]
	cmp	ebx,esi
	jz	_80
	mov	[ebp-40],0
_80
	add	[ebp-44],1
_78
	mov	ebx,[_vnum]
	cmp	[ebp-44],ebx
	jle	_79
_8
_77
_76
	cmp	[_vnum],0
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
	mov	ebx,[ebp-20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	and	eax,ebx
	and	eax,eax
	jz	_81
	mov	[ebp-40],1
_81
	cmp	[ebp-40],1
	jnz	_82
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1092616192
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-48],eax
	cmp	[ebp-48],5
	jle	_83
	mov	ebx,[_vnum]
	add	ebx,1
	shl	ebx,byte 2
	mov	esi,[ebp-20]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	ebx,esi
	mov	ebx,[ebx]
	mov	[ebp-32],ebx
	mov	[_vtest],1
_83
	jmp	_84
_82
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjDelete
_84
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_71
_6
	cmp	[ebp-32],0
	jnz	_85
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1091567616
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-52],eax
	jmp	_86
_85
	mov	ebx,[ebp-32]
	mov	[ebp-52],ebx
_86
	add	[_vnum],1
	cmp	[ebp-52],1
	jnz	_87
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_88
	mov	ebx,1
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_89
_88
	call	_fflushkeys
	jmp	_l_2wngplc3
_89
	jmp	_90
_87
	cmp	[ebp-52],2
	jnz	_91
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_92
	mov	ebx,2
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_93
_92
	call	_fflushkeys
	jmp	_l_2wngplc3
_93
	jmp	_94
_91
	cmp	[ebp-52],3
	jnz	_95
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_96
	mov	ebx,3
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,3
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_97
_96
	call	_fflushkeys
	jmp	_l_2wngplc3
_97
	jmp	_98
_95
	cmp	[ebp-52],4
	jnz	_99
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_100
	mov	ebx,4
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,4
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_101
_100
	call	_fflushkeys
	jmp	_l_2wngplc3
_101
	jmp	_102
_99
	cmp	[ebp-52],5
	jnz	_103
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_104
	mov	ebx,5
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,5
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_105
_104
	call	_fflushkeys
	jmp	_l_2wngplc3
_105
	jmp	_106
_103
	cmp	[ebp-52],6
	jnz	_107
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_108
	mov	ebx,6
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,6
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_109
_108
	call	_fflushkeys
	jmp	_l_2wngplc3
_109
	jmp	_110
_107
	cmp	[ebp-52],7
	jnz	_111
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_112
	mov	ebx,7
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,7
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_113
_112
	call	_fflushkeys
	jmp	_l_2wngplc3
_113
	jmp	_114
_111
	cmp	[ebp-52],8
	jnz	_115
	mov	ebx,8
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_116
	mov	ebx,8
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,8
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_117
_116
	call	_fflushkeys
	jmp	_l_2wngplc3
_117
	jmp	_118
_115
	cmp	[ebp-52],9
	jnz	_119
	mov	ebx,9
	shl	ebx,byte 2
	add	ebx,[_amoved]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_120
	mov	ebx,9
	mov	esi,[_vnum]
	shl	esi,byte 2
	add	esi,[_amov]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,9
	shl	esi,byte 2
	add	esi,[_amoved]
	mov	[esi],ebx
	jmp	_121
_120
	call	_fflushkeys
	jmp	_l_2wngplc3
_121
_119
_118
_114
_110
_106
_102
_98
_94
_90
_70
	mov	[ebp-44],1
	jmp	_122
_123
	cmp	[ebp-44],1
	setz	al
	movzx	eax,al
	mov	[ebp-72],eax
	cmp	[ebp-44],3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	mov	[ebp-72],eax
	cmp	[ebp-44],5
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	mov	[ebp-72],eax
	cmp	[ebp-44],7
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	mov	[ebp-72],eax
	cmp	[ebp-44],9
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-72]
	or	eax,ebx
	and	eax,eax
	jz	_124
	mov	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	mov	[ebp-56],ebx
	cmp	[ebp-56],1
	jz	_126
	cmp	[ebp-56],2
	jz	_127
	cmp	[ebp-56],3
	jz	_128
	cmp	[ebp-56],4
	jz	_129
	cmp	[ebp-56],5
	jz	_130
	cmp	[ebp-56],6
	jz	_131
	cmp	[ebp-56],7
	jz	_132
	cmp	[ebp-56],8
	jz	_133
	cmp	[ebp-56],9
	jz	_134
	jmp	_125
_126
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_135
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],1
	call	_ftext
	jmp	_125
_127
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_136
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],20
	call	_ftext
	jmp	_125
_128
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_137
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],40
	call	_ftext
	jmp	_125
_129
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_138
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],1
	call	_ftext
	jmp	_125
_130
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_139
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],20
	call	_ftext
	jmp	_125
_131
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_140
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],40
	call	_ftext
	jmp	_125
_132
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_141
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],1
	call	_ftext
	jmp	_125
_133
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],20
	call	_ftext
	jmp	_125
_134
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_143
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],40
	call	_ftext
	jmp	_125
_125
	jmp	_144
_124
	mov	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	mov	[ebp-60],ebx
	cmp	[ebp-60],1
	jz	_146
	cmp	[ebp-60],2
	jz	_147
	cmp	[ebp-60],3
	jz	_148
	cmp	[ebp-60],4
	jz	_149
	cmp	[ebp-60],5
	jz	_150
	cmp	[ebp-60],6
	jz	_151
	cmp	[ebp-60],7
	jz	_152
	cmp	[ebp-60],8
	jz	_153
	cmp	[ebp-60],9
	jz	_154
	jmp	_145
_146
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_155
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],1
	call	_ftext
	jmp	_145
_147
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_156
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],20
	call	_ftext
	jmp	_145
_148
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_157
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],40
	call	_ftext
	jmp	_145
_149
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_158
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],1
	call	_ftext
	jmp	_145
_150
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_159
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],20
	call	_ftext
	jmp	_145
_151
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_160
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],40
	call	_ftext
	jmp	_145
_152
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_161
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],1
	call	_ftext
	jmp	_145
_153
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_162
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],20
	call	_ftext
	jmp	_145
_154
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_163
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],40
	call	_ftext
	jmp	_145
_145
_144
	add	[ebp-44],1
_122
	cmp	[ebp-44],9
	jle	_123
_9
	sub	esp,16
	mov	[esp+8],14
	mov	[esp+12],95
	mov	[esp+4],40
	mov	[esp],14
	call	_fline
	sub	esp,16
	mov	[esp+8],34
	mov	[esp+12],95
	mov	[esp+4],40
	mov	[esp],34
	call	_fline
	sub	esp,16
	mov	[esp+8],54
	mov	[esp+12],54
	mov	[esp+4],54
	mov	[esp],1
	call	_fline
	sub	esp,16
	mov	[esp+8],54
	mov	[esp+12],74
	mov	[esp+4],74
	mov	[esp],1
	call	_fline
	cmp	[_vmove],0
	setz	al
	movzx	eax,al
	mov	[_vmove],eax
	call	_fcheckwin
	and	eax,eax
	jz	_164
	mov	[ebp-8],1
_164
	cmp	[_vnum],9
	jnz	_165
	mov	[ebp-8],1
_165
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],1
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_31
	cmp	[ebp-8],0
	jz	_30
_5
	call	_fcheckwin
	mov	[ebp-64],eax
	call	_fcls
	cmp	[ebp-64],1
	jnz	_166
	cmp	[_vstart],0
	jnz	_167
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_168
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	jmp	_169
_167
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_170
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
_169
	jmp	_171
_166
	cmp	[ebp-64],2
	jnz	_172
	cmp	[_vstart],1
	jnz	_173
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_174
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
	jmp	_175
_173
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_176
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],1
	mov	[esp],1
	call	_ftext
_175
_172
_171
	sub	esp,28
	mov	eax,_177
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[_vmembankcount]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_178
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-68],eax
	mov	[ebp-44],1
	jmp	_179
_180
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	add	[ebp-44],1
_179
	cmp	[ebp-44],9
	jle	_180
_12
	sub	esp,8
	mov	eax,[ebp-68]
	mov	[esp],eax
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	call	_fend
	ret
_2_leave
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcheckwin
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
	mov	[ebp-4],0
	mov	[ebp-8],1
	jmp	_183
_184
	mov	[ebp-12],1
	jmp	_185
_186
	mov	ebx,0
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	[esi],ebx
	add	[ebp-12],1
_185
	cmp	[ebp-12],3
	jle	_186
_15
	add	[ebp-8],1
_183
	cmp	[ebp-8],3
	jle	_184
_14
	mov	[ebp-16],1
	jmp	_187
_188
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_189
	cmp	[ebp-16],1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[ebp-16],3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],5
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],7
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	mov	[ebp-20],eax
	cmp	[ebp-16],9
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	or	eax,ebx
	and	eax,eax
	jz	_190
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_amov]
	mov	eax,[eax]
	cmp	eax,3
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,7
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_191
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	esi,1
	mov	[ebx],esi
	jmp	_192
_191
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,6
	jle	_193
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	sub	ebx,6
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	esi,1
	mov	[ebx],esi
	jmp	_194
_193
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,4
	jge	_195
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	esi,1
	mov	[ebx],esi
_195
_194
_192
	jmp	_196
_190
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_amov]
	mov	eax,[eax]
	cmp	eax,3
	setg	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,7
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_197
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	sub	ebx,3
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	esi,2
	mov	[ebx],esi
	jmp	_198
_197
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,6
	jle	_199
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	sub	ebx,6
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	esi,2
	mov	[ebx],esi
	jmp	_200
_199
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	cmp	ebx,4
	jge	_201
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_amov]
	mov	ebx,[ebx]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	esi,2
	mov	[ebx],esi
_201
_200
_198
_196
_189
	add	[ebp-16],1
_187
	cmp	[ebp-16],9
	jle	_188
_16
	mov	[ebp-16],1
	jmp	_202
_203
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_204
	mov	[ebp-4],1
_204
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,2
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_205
	mov	[ebp-4],2
_205
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_206
	mov	[ebp-4],1
_206
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,1
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,2
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_207
	mov	[ebp-4],2
_207
	add	[ebp-16],1
_202
	cmp	[ebp-16],3
	jle	_203
_17
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,1
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_208
	mov	[ebp-4],1
_208
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,3
	add	eax,1
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_209
	mov	[ebp-4],1
_209
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,1
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,2
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,3
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_210
	mov	[ebp-4],2
_210
	mov	eax,_agrid
	add	eax,12
	mov	eax,[eax]
	imul	eax,3
	add	eax,1
	shl	eax,byte 2
	add	eax,[_agrid]
	mov	eax,[eax]
	cmp	eax,2
	setz	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	mov	[ebp-20],eax
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,3
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_211
	mov	[ebp-4],2
_211
	mov	eax,[ebp-4]
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
	.align	4
_amov	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_agrid	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_amoved	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vmembankcount	.dd	0
	.align	4
_vtest	.dd	0
_20	.db	"membank",0
_21	.db	".mem",0
	.align	4
_vmove	.dd	0
	.align	4
_vnum	.dd	0
	.align	4
_vstart	.dd	0
_26	.db	"Tic-Tac-Toe",0
_27	.db	"",0
_28	.db	"Tic-Tac-Toe",0
_29	.db	"Tic-Tac-Toe",0
_33	.db	"Tic-Tac-Toe",0
_135	.db	"X",0
_136	.db	"X",0
_137	.db	"X",0
_138	.db	"X",0
_139	.db	"X",0
_140	.db	"X",0
_141	.db	"X",0
_142	.db	"X",0
_143	.db	"X",0
_155	.db	"O",0
_156	.db	"O",0
_157	.db	"O",0
_158	.db	"O",0
_159	.db	"O",0
_160	.db	"O",0
_161	.db	"O",0
_162	.db	"O",0
_163	.db	"O",0
_168	.db	"Player Wins",0
_170	.db	"Computer Wins",0
_174	.db	"Player Wins",0
_176	.db	"Computer Wins",0
_177	.db	"membank",0
_178	.db	".mem",0
	.align	4
_3	.dd	6
	.dd	10
	.dd	__bbIntType
	.align	4
_tgame	.dd	5
_181	.dd	0
	.dd	_181
	.dd	_181
	.dd	0
	.dd	-1
_182	.dd	0
	.dd	_182
	.dd	_182
	.dd	0
	.dd	-1
	.dd	2
	.dd	_3
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

