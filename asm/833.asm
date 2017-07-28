
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
	sub	esp,12
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_amapa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,50
	mov	esi,_amapa
	add	esi,12
	mov	[esi],ebx
	mov	ebx,50
	mov	esi,_amapa
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amapa
	mov	[esp],eax
	call	__bbDimArray
	call	_fmillisecs
	mov	[_vsnaketimer],eax
	mov	[_vscore],0
	mov	[_vhighscore],0
	sub	esp,28
	mov	[esp+20],205
	mov	[esp+24],2
	mov	[esp+16],50
	mov	[esp+12],50
	mov	[esp+8],210
	mov	[esp+4],3
	mov	[esp],2
	call	_fnovoplayer
	call	_finiciamapa
	jmp	_24
_23
	call	_fcls
	call	_fteclado
	call	_fmovesnake
	call	_fprintmap
	call	_fimprimetextos
	sub	esp,4
	mov	[esp],1
	call	_fflip
_24
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_23
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finiciamapa
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],1
	jmp	_27
_28
	mov	ebx,1
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	esi,50
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,1
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,50
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	[esi],ebx
	add	[ebp-4],1
_27
	cmp	[ebp-4],50
	jle	_28
_5
	mov	[ebp-4],1
	jmp	_29
_30
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],40
	call	_frand
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],40
	call	_frand
	mov	[ebp-12],eax
	mov	ebx,1
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	[esi],ebx
	add	[ebp-4],1
_29
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],32
	call	_frand
	cmp	[ebp-4],eax
	jle	_30
_6
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_freiniciamapa
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
	mov	[ebp-4],1
	jmp	_31
_32
	mov	[ebp-8],1
	jmp	_33
_34
	mov	ebx,0
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	[esi],ebx
	add	[ebp-8],1
_33
	cmp	[ebp-8],50
	jle	_34
_9
	add	[ebp-4],1
_31
	cmp	[ebp-4],50
	jle	_32
_8
	call	_finiciamapa
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	ebx,[ebx]
	add	ebx,32
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	[_vscore],0
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fprintmap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_35
_36
	mov	[ebp-8],1
	jmp	_37
_38
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fprinttile
	add	[ebp-8],1
_37
	cmp	[ebp-8],50
	jle	_38
_12
	add	[ebp-4],1
_35
	cmp	[ebp-4],50
	jle	_36
_11
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
_fprinttile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	ebx,_amapa
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amapa]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_40
	cmp	[ebp-4],0
	jz	_41
	cmp	[ebp-4],2
	jz	_42
	cmp	[ebp-4],3
	jz	_43
	jmp	_39
_40
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
	jmp	_39
_41
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	jmp	_39
_42
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],50
	mov	[esp],50
	call	_fcolor
	jmp	_39
_43
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],50
	mov	[esp],150
	call	_fcolor
	jmp	_39
_39
	mov	ebx,[ebp+20]
	imul	ebx,10
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	imul	ebx,10
	mov	[ebp+24],ebx
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fnovoplayer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,32
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,16
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,20
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,24
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	ebx,2
	mov	[esi],ebx
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 28
	.align	16
_fmovesnake
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
	call	_fmillisecs
	mov	ebx,[_vsnaketimer]
	add	ebx,100
	cmp	eax,ebx
	jle	_44
	call	_fmillisecs
	mov	[_vsnaketimer],eax
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	[ebp-8],0
	mov	[ebp-12],0
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	cmp	[ebp-16],200
	jz	_46
	cmp	[ebp-16],208
	jz	_47
	cmp	[ebp-16],203
	jz	_48
	cmp	[ebp-16],205
	jz	_49
	jmp	_45
_46
	mov	[ebp-12],-1
	jmp	_45
_47
	mov	[ebp-12],1
	jmp	_45
_48
	mov	[ebp-8],-1
	jmp	_45
_49
	mov	[ebp-8],1
	jmp	_45
_45
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fverificacolisao
	cmp	eax,0
	jnz	_50
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,[ebp-8]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	add	[_vscore],10
	mov	ebx,[_vscore]
	cmp	[_vhighscore],ebx
	jge	_51
	mov	ebx,[_vscore]
	mov	[_vhighscore],ebx
_51
	jmp	_52
_50
	call	_freiniciamapa
_52
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	mov	esi,_amapa
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	esi,[esi]
	add	esi,ebx
	shl	esi,byte 2
	add	esi,[_amapa]
	mov	ebx,2
	mov	[esi],ebx
_44
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fteclado
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_tplayer
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjFirst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	and	eax,eax
	jz	_53
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,200
	jz	_54
	mov	ebx,208
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
_54
_53
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	and	eax,eax
	jz	_55
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,208
	jz	_56
	mov	ebx,200
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
_56
_55
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	and	eax,eax
	jz	_57
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,205
	jz	_58
	mov	ebx,203
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
_58
_57
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	and	eax,eax
	jz	_59
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,28
	mov	ebx,[ebx]
	cmp	ebx,203
	jz	_60
	mov	ebx,205
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,28
	mov	[esi],ebx
_60
_59
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fverificacolisao
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	mov	ebx,_amapa
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amapa]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_61
	mov	[ebp-4],1
_61
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
	ret	word 8
	.align	16
_fimprimetextos
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_62
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],550
	mov	[esp],5
	call	_ftext
	sub	esp,32
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vhighscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],565
	mov	[esp],5
	call	_ftext
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_21	.db	"Insane Snake !",0
_22	.db	"",0
	.align	4
_amapa	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vsnaketimer	.dd	0
	.align	4
_vscore	.dd	0
	.align	4
_vhighscore	.dd	0
	.align	4
_tplayer	.dd	5
_25	.dd	0
	.dd	_25
	.dd	_25
	.dd	0
	.dd	-1
_26	.dd	0
	.dd	_26
	.dd	_26
	.dd	0
	.dd	-1
	.dd	9
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
_62	.db	"Score : ",0
_63	.db	"HighScore : ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

