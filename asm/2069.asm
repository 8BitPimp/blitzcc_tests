
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,112
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_ar_map
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,21
	mov	esi,_ar_map
	add	esi,12
	mov	[esi],ebx
	mov	ebx,21
	mov	esi,_ar_map
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ar_map
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aa_map
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,21
	mov	esi,_aa_map
	add	esi,12
	mov	[esi],ebx
	mov	ebx,21
	mov	esi,_aa_map
	add	esi,16
	mov	[esi],ebx
	mov	ebx,5
	mov	esi,_aa_map
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa_map
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vs_x],2
	mov	[_vs_y],2
_l_2map_data
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-8],1
	jmp	_19
_20
	mov	[ebp-12],1
	jmp	_21
_22
	call	__bbReadInt
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	mov	esi,_ar_map
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ar_map]
	mov	[esi],ebx
	add	[ebp-12],1
_21
	cmp	[ebp-12],20
	jle	_22
_4
	add	[ebp-8],1
_19
	cmp	[ebp-8],20
	jle	_20
_3
	jmp	_24
_23
	call	_fcls
	mov	[ebp-8],1
	jmp	_25
_26
	mov	[ebp-12],1
	jmp	_27
_28
	mov	ebx,_ar_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ar_map]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_29
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],20
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_frect
_29
	mov	ebx,_ar_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ar_map]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_30
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],0
	mov	[esp],200
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],20
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,19
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,19
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,10
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,10
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,15
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,20
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,10
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	add	eax,15
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,10
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_fline
_30
	mov	ebx,[ebp-12]
	cmp	[_ve_x],ebx
	jnz	_31
	mov	ebx,[ebp-8]
	cmp	[_ve_y],ebx
	jnz	_32
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],150
	mov	[esp],250
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	add	ebx,8
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	add	eax,8
	mov	[esp],eax
	call	_ftext
_32
_31
	mov	ebx,[ebp-12]
	cmp	[_vs_x],ebx
	jnz	_34
	mov	ebx,[ebp-8]
	cmp	[_vs_y],ebx
	jnz	_35
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],200
	mov	[esp],150
	call	_fcolor
	sub	esp,20
	mov	[esp+12],5
	mov	[esp+16],1
	mov	[esp+8],5
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	add	ebx,5
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	add	eax,7
	mov	[esp],eax
	call	_foval
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,10
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,15
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,5
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	add	eax,10
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,10
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,10
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,10
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,15
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,20
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-12]
	sub	ebx,1
	imul	ebx,20
	add	ebx,10
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,15
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	sub	esi,1
	imul	esi,20
	add	esi,20
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	add	eax,20
	mov	[esp],eax
	call	_fline
_35
_34
	call	_fmousex
	mov	ecx,20
	cdq
	idiv	ecx
	mov	ebx,[ebp-12]
	sub	ebx,1
	cmp	eax,ebx
	jnz	_36
	call	_fmousey
	mov	ecx,20
	cdq
	idiv	ecx
	mov	ebx,[ebp-8]
	sub	ebx,1
	cmp	eax,ebx
	jnz	_37
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],200
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],20
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_frect
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_38
	mov	ebx,[ebp-12]
	mov	[_vs_x],ebx
	mov	ebx,[ebp-8]
	mov	[_vs_y],ebx
_38
	mov	[ebp-20],0
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	and	eax,eax
	jz	_39
	mov	ebx,[ebp-12]
	mov	[_ve_x],ebx
	mov	ebx,[ebp-8]
	mov	[_ve_y],ebx
	mov	[ebp-20],1
_39
_37
_36
	add	[ebp-12],1
_27
	cmp	[ebp-12],20
	jle	_28
_7
	add	[ebp-8],1
_25
	cmp	[ebp-8],20
	jle	_26
_6
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	and	eax,eax
	jz	_40
	mov	[ebp-8],1
	jmp	_41
_42
	mov	[ebp-12],1
	jmp	_43
_44
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_45
	sub	esp,12
	mov	[esp+4],60
	mov	[esp+8],20
	mov	[esp],60
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],20
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_frect
_45
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_46
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],20
	mov	[esp],20
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],20
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_frect
_46
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_47
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],200
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],20
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_frect
_47
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_48
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_48
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_50
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_50
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_52
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_52
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,8
	jnz	_54
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_55
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_54
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_56
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_56
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_58
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_58
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_60
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_61
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_60
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,9
	jnz	_62
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	imul	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,20
	mov	[esp],eax
	call	_ftext
_62
	add	[ebp-12],1
_43
	cmp	[ebp-12],20
	jle	_44
_9
	add	[ebp-8],1
_41
	cmp	[ebp-8],20
	jle	_42
_8
_40
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],410
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],10
	mov	[esp],410
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_66
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],410
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],410
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_68
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],50
	mov	[esp],410
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	call	_fmousex
	add	eax,10
	mov	[esp+8],eax
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	add	ebx,15
	mov	[esp+12],ebx
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	_fmousex
	mov	[esp],eax
	call	_fline
	sub	esp,16
	call	_fmousex
	add	eax,10
	mov	[esp+8],eax
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	add	ebx,5
	mov	[esp+12],ebx
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	_fmousex
	mov	[esp],eax
	call	_fline
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	add	ebx,10
	mov	[esp+12],ebx
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	_fmousex
	mov	[esp],eax
	call	_fline
	sub	esp,16
	call	_fmousex
	mov	[esp+8],eax
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	add	ebx,10
	mov	[esp+12],ebx
	mov	[ebp-108],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-108]
	add	ebx,5
	mov	[esp+4],ebx
	call	_fmousex
	add	eax,10
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	cmp	[ebp-20],1
	jnz	_69
	mov	ebx,[_vs_x]
	mov	[ebp-24],ebx
	mov	ebx,[_vs_y]
	mov	[ebp-28],ebx
	mov	[ebp-8],1
	jmp	_70
_71
	mov	[ebp-12],1
	jmp	_72
_73
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,3
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 2
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,0
	mov	[ebx],esi
	mov	ebx,_ar_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ar_map]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_74
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-12]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,1
	mov	[ebx],esi
_74
	add	[ebp-12],1
_72
	cmp	[ebp-12],20
	jle	_73
_11
	add	[ebp-8],1
_70
	cmp	[ebp-8],20
	jle	_71
_10
	mov	[ebp-32],0
	mov	[ebp-36],0
	jmp	_76
_75
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,3
	mov	[ebx],esi
	mov	[ebp-40],0
	mov	[ebp-44],0
	mov	[ebp-48],10000
	mov	ebx,[ebp-24]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-28]
	mov	[ebp-56],ebx
	mov	[ebp-60],1
	jmp	_77
_78
	mov	[ebp-64],1
	jmp	_79
_80
	add	[ebp-44],1
	mov	ebx,[ebp-64]
	sub	ebx,2
	add	ebx,[ebp-24]
	mov	[ebp-68],ebx
	mov	ebx,[ebp-60]
	sub	ebx,2
	add	ebx,[ebp-28]
	mov	[ebp-72],ebx
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,1
	jz	_81
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,3
	jz	_82
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,2
	mov	[ebx],esi
	sub	esp,4
	mov	eax,[ebp-64]
	sub	eax,2
	mov	ebx,[ebp-60]
	sub	ebx,2
	add	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,0
	jle	_83
	mov	[ebp-40],10
_83
	sub	esp,4
	mov	eax,[ebp-64]
	sub	eax,2
	mov	ebx,[ebp-60]
	sub	ebx,2
	add	eax,ebx
	mov	[esp],eax
	call	__bbAbs
	cmp	eax,2
	jnz	_84
	mov	[ebp-40],14
_84
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	add	[ebp-40],ebx
	mov	eax,_aa_map
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-72]
	add	eax,[ebp-68]
	mov	ebx,_aa_map
	add	ebx,16
	mov	ebx,[ebx]
	shl	ebx,byte 1
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_aa_map]
	mov	eax,[eax]
	cmp	eax,[ebp-40]
	setg	al
	movzx	eax,al
	mov	[ebp-108],eax
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-108]
	or	eax,ebx
	and	eax,eax
	jz	_85
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,[ebp-40]
	mov	[ebx],esi
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,[ebp-44]
	mov	[ebx],esi
	sub	esp,4
	mov	eax,[ebp-68]
	sub	eax,[_ve_x]
	mov	[esp],eax
	call	__bbAbs
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,[ebp-72]
	sub	ebx,[_ve_y]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbAbs
	mov	ebx,eax
	mov	eax,[ebp-108]
	add	eax,ebx
	imul	eax,10
	mov	[ebp-76],eax
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,3
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	esi,[ebp-76]
	mov	[ebx],esi
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 1
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	mov	esi,_aa_map
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-72]
	add	esi,[ebp-68]
	mov	edi,_aa_map
	add	edi,16
	mov	edi,[edi]
	imul	edi,3
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aa_map]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,_aa_map
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-72]
	add	esi,[ebp-68]
	mov	edi,_aa_map
	add	edi,16
	mov	edi,[edi]
	shl	edi,byte 2
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_aa_map]
	mov	[esi],ebx
_85
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-72]
	add	ebx,[ebp-68]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 2
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	mov	[ebp-80],ebx
	mov	ebx,[ebp-48]
	cmp	[ebp-80],ebx
	jge	_86
	mov	ebx,[ebp-68]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-72]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-80]
	mov	[ebp-48],ebx
_86
_82
_81
	add	[ebp-64],1
_79
	cmp	[ebp-64],3
	jle	_80
_14
	add	[ebp-60],1
_77
	cmp	[ebp-60],3
	jle	_78
_13
	add	[ebp-32],1
	mov	ebx,[ebp-24]
	cmp	[ebp-52],ebx
	jnz	_87
	mov	ebx,[ebp-28]
	cmp	[ebp-56],ebx
	jnz	_88
	mov	[ebp-84],1
	jmp	_89
_90
	mov	[ebp-88],1
	jmp	_91
_92
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-84]
	add	ebx,[ebp-88]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	shl	esi,byte 0
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_93
	mov	ebx,[ebp-88]
	mov	[ebp-52],ebx
	mov	ebx,[ebp-84]
	mov	[ebp-56],ebx
_93
	add	[ebp-88],1
_91
	cmp	[ebp-88],20
	jle	_92
_16
	add	[ebp-84],1
_89
	cmp	[ebp-84],20
	jle	_90
_15
_88
_87
	mov	ebx,[ebp-52]
	mov	[ebp-24],ebx
	mov	ebx,[ebp-56]
	mov	[ebp-28],ebx
	mov	ebx,[_ve_x]
	cmp	[ebp-24],ebx
	jnz	_94
	mov	ebx,[_ve_y]
	cmp	[ebp-28],ebx
	jnz	_95
	mov	[ebp-32],20000
	mov	[ebp-36],1
_95
_94
_76
	cmp	[ebp-32],400
	jl	_75
_12
	cmp	[ebp-36],1
	jnz	_96
	mov	[ebp-92],0
	mov	ebx,[_ve_x]
	mov	[ebp-24],ebx
	mov	ebx,[_ve_y]
	mov	[ebp-28],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_97
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_99
_98
	mov	ebx,[_vs_x]
	cmp	[ebp-24],ebx
	jnz	_100
	mov	ebx,[_vs_y]
	cmp	[ebp-28],ebx
	jnz	_101
	mov	[ebp-92],1
_101
_100
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_102
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_103
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-24],1
	add	[ebp-28],1
_102
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_104
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_105
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-24]
	mov	[ebp-24],ebx
	add	[ebp-28],1
_104
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_106
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_107
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	[ebp-24],1
	add	[ebp-28],1
_106
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_108
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_109
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-24],1
	mov	ebx,[ebp-28]
	mov	[ebp-28],ebx
_108
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_110
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_111
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	[ebp-24],1
	mov	ebx,[ebp-28]
	mov	[ebp-28],ebx
_110
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_112
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_113
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-24],1
	sub	[ebp-28],1
_112
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,8
	jnz	_114
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_115
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	ebx,[ebp-24]
	mov	[ebp-24],ebx
	sub	[ebp-28],1
_114
	mov	ebx,_aa_map
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp-24]
	mov	esi,_aa_map
	add	esi,16
	mov	esi,[esi]
	imul	esi,5
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_aa_map]
	mov	ebx,[ebx]
	cmp	ebx,9
	jnz	_116
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_117
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	[ebp-24],1
	sub	[ebp-28],1
_116
_99
	cmp	[ebp-92],0
	jz	_98
_17
_96
	cmp	[ebp-36],0
	jnz	_118
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_119
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrStore
_118
_69
	call	_fmillisecs
	sub	eax,[ebp-100]
	mov	[ebp-96],eax
	cmp	[ebp-96],200
	jle	_120
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_122
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_121
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_123
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fright
	mov	[esp+4],eax
	lea	ebx,[ebp-104]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_125
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_124
	sub	[_vs_x],1
	sub	[_vs_y],1
_124
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_127
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_126
	mov	ebx,[_vs_x]
	mov	[_vs_x],ebx
	sub	[_vs_y],1
_126
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_129
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_128
	add	[_vs_x],1
	sub	[_vs_y],1
_128
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_131
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_130
	sub	[_vs_x],1
	mov	ebx,[_vs_y]
	mov	[_vs_y],ebx
_130
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_133
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_132
	add	[_vs_x],1
	mov	ebx,[_vs_y]
	mov	[_vs_y],ebx
_132
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_135
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_134
	sub	[_vs_x],1
	add	[_vs_y],1
_134
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_137
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_136
	mov	ebx,[_vs_x]
	mov	[_vs_x],ebx
	add	[_vs_y],1
_136
	sub	esp,12
	lea	eax,[ebp-104]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,_139
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_138
	add	[_vs_x],1
	add	[_vs_y],1
_138
	sub	esp,20
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-108],eax
	sub	esp,4
	mov	[ebp-112],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-112]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-108]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_123
_121
	call	_fmillisecs
	mov	[ebp-100],eax
_120
_24
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_23
_5
	ret
_2_leave
	mov	[ebp-108],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-108]
	mov	[ebp-108],eax
	sub	esp,4
	mov	esi,[ebp-104]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-108]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_ar_map	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aa_map	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
_18	.db	"s",0
	.align	4
_vs_x	.dd	0
	.align	4
_vs_y	.dd	0
	.align	4
_ve_x	.dd	0
	.align	4
_ve_y	.dd	0
_33	.db	"X",0
_49	.db	"->",0
_51	.db	"<-",0
_53	.db	"V",0
_55	.db	"^",0
_57	.db	"\|",0
_59	.db	"|/",0
_61	.db	"/|",0
_63	.db	"|\",0
_64	.db	"current path:",0
_65	.db	"LMB = select start point",0
_66	.db	"RMB = select end point",0
_67	.db	"1   = display A* workings out",0
_68	.db	"ESC = quit.",0
_97	.db	"",0
_103	.db	"c",0
_105	.db	"x",0
_107	.db	"z",0
_109	.db	"d",0
_111	.db	"a",0
_113	.db	"e",0
_115	.db	"w",0
_117	.db	"q",0
_119	.db	"s",0
_122	.db	"s",0
_125	.db	"c",0
_127	.db	"x",0
_129	.db	"z",0
_131	.db	"d",0
_133	.db	"a",0
_135	.db	"e",0
_137	.db	"w",0
_139	.db	"q",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	1
	.dd	0

