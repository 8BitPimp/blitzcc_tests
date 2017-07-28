
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],800
	mov	[esp],1200
	call	_fgraphics3d
	sub	esp,12
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_agrid
	add	esi,12
	mov	[esi],ebx
	mov	ebx,255
	mov	esi,_agrid
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agrid
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vplay],0
	mov	[_vspd],50
	call	_fcls
	call	_fgraphicswidth
	sar	eax,byte 8
	mov	[ebp-4],eax
	call	_fgraphicsheight
	sar	eax,byte 8
	mov	[ebp-8],eax
	sub	esp,12
	mov	[esp+4],127
	mov	[esp+8],127
	mov	[esp],127
	call	_fcolor
	mov	[ebp-12],0
	jmp	_15
_16
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 8
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	imul	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	imul	esi,[ebp-8]
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	shl	esi,byte 8
	mov	[esp+12],esi
	mov	[esp+4],0
	mov	eax,[ebp-12]
	imul	eax,[ebp-4]
	mov	[esp],eax
	call	_fline
	add	[ebp-12],1
_15
	cmp	[ebp-12],255
	jle	_16
_3
_17
	mov	[ebp-12],1
	jmp	_18
_19
	mov	[ebp-16],1
	jmp	_20
_21
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,[ebp-20]
	neg	ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],-1
	jmp	_22
_23
	mov	[ebp-32],-1
	jmp	_24
_25
	mov	ebx,[ebp-16]
	add	ebx,[ebp-32]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-12]
	add	esi,[ebp-28]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	add	[ebp-24],esi
	add	[ebp-32],1
_24
	cmp	[ebp-32],1
	jle	_25
_8
	add	[ebp-28],1
_22
	cmp	[ebp-28],1
	jle	_23
_7
	mov	ebx,[_vplay]
	and	ebx,ebx
	jz	_26
	cmp	[ebp-20],0
	setz	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-24],3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_27
	mov	[ebp-20],1
	jmp	_28
_27
	cmp	[ebp-24],3
	setg	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-24],2
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	or	eax,ebx
	mov	[ebp-44],eax
	cmp	[ebp-20],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	ebx,eax
	and	ebx,ebx
	jz	_29
	mov	[ebp-20],0
_29
_28
	jmp	_30
_26
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	[esp+24],ebx
	mov	esi,[ebp-8]
	mov	[esp+28],esi
	mov	esi,[ebp-16]
	imul	esi,[ebp-8]
	mov	[esp+20],esi
	mov	ebx,[ebp-12]
	imul	ebx,[ebp-4]
	mov	[esp+16],ebx
	mov	[esp+12],1
	mov	[esp+8],1
	call	_fmousey
	mov	[esp+4],eax
	mov	[ebp-44],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frectsoverlap
	mov	ebx,eax
	and	ebx,ebx
	jz	_31
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_32
	mov	ebx,1
	sub	ebx,[ebp-20]
	mov	[ebp-20],ebx
_32
_31
_30
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jz	_33
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	add	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	imul	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-20]
	imul	ebx,127
	add	ebx,127
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	imul	esi,127
	add	esi,127
	mov	[esp+8],esi
	mov	eax,[ebp-20]
	imul	eax,127
	add	eax,127
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	add	ebx,1
	mov	[esp+12],ebx
	mov	esi,[ebp-20]
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	add	esi,1
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	imul	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,_tchange
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-12]
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
_33
	add	[ebp-16],1
_20
	cmp	[ebp-16],254
	jle	_21
_6
	add	[ebp-12],1
_18
	cmp	[ebp-12],254
	jle	_19
_5
	sub	esp,8
	lea	eax,[ebp-36]
	mov	[esp],eax
	mov	[esp+4],_tchange
	call	__bbObjEachFirst
	and	eax,eax
	jz	_9
_34
	mov	ebx,[ebp-36]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	esi,[esi]
	mov	ebx,1
	sub	ebx,esi
	mov	esi,[ebp-36]
	mov	esi,[esi]
	add	esi,4
	mov	esi,[esi]
	mov	edi,_agrid
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,[ebp-36]
	mov	edi,[edi]
	add	edi,0
	mov	edi,[edi]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_agrid]
	mov	[edi],ebx
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-36]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_34
_9
	sub	esp,4
	mov	[esp],1
	call	_fflip
	mov	ebx,[_vplay]
	and	ebx,ebx
	jz	_35
	sub	esp,4
	mov	eax,1000
	mov	ecx,[_vspd]
	cdq
	idiv	ecx
	mov	[esp],eax
	call	_fdelay
_35
	sub	esp,4
	mov	[esp],78
	call	_fkeyhit
	add	eax,[_vspd]
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],74
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-44]
	sub	eax,ebx
	mov	[_vspd],eax
	cmp	[_vspd],0
	setz	al
	movzx	eax,al
	add	[_vspd],eax
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_36
	mov	ebx,1
	sub	ebx,[_vplay]
	mov	[_vplay],ebx
_36
	sub	esp,4
	mov	[esp],31
	call	_fkeyhit
	and	eax,eax
	jz	_37
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-40],eax
	mov	[ebp-12],0
	jmp	_39
_40
	mov	[ebp-16],0
	jmp	_41
_42
	mov	ebx,_agrid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_agrid]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_43
	sub	esp,8
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-40]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fwritebyte
_43
	add	[ebp-16],1
_41
	cmp	[ebp-16],255
	jle	_42
_11
	add	[ebp-12],1
_39
	cmp	[ebp-12],255
	jle	_40
_10
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fclosefile
_37
	sub	esp,4
	mov	[esp],24
	call	_fkeyhit
	and	eax,eax
	jz	_44
	sub	esp,8
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-40],eax
_46
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-16],eax
	mov	ebx,1
	mov	esi,_agrid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-16]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_agrid]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	ebx,[ebp-16]
	imul	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	imul	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_46
_12
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fclosefile
_44
	jmp	_17
_4
	ret
_2_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_13	.db	"Game Of Life",0
_14	.db	"",0
	.align	4
_agrid	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vplay	.dd	0
	.align	4
_vspd	.dd	0
_38	.db	"save.dat",0
_45	.db	"save.dat",0
	.align	4
_tchange	.dd	5
_47	.dd	0
	.dd	_47
	.dd	_47
	.dd	0
	.dd	-1
_48	.dd	0
	.dd	_48
	.dd	_48
	.dd	0
	.dd	-1
	.dd	2
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

