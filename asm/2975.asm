
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadimage_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_16
	sub	esp,24
	mov	eax,_17
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
	mov	ebx,_18
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_16
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadimage
	jmp	_3_leave
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
_floadanimimage_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_19
	sub	esp,24
	mov	eax,_20
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
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_19
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimimage
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
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
	ret	word 20
	.align	16
_floadsound_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_22
	sub	esp,24
	mov	eax,_23
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
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_22
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadsound
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
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
_fload3dsound_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_25
	sub	esp,24
	mov	eax,_26
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
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_25
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fload3dsound
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
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
_floadmesh_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_28
	sub	esp,24
	mov	eax,_29
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
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_28
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_floadmesh
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
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
	ret	word 8
	.align	16
_floadanimmesh_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_31
	sub	esp,24
	mov	eax,_32
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
	mov	ebx,_33
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_31
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_floadanimmesh
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
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
	ret	word 8
	.align	16
_floadanimseq_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],0
	jnz	_34
	sub	esp,8
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_34
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_36
	sub	esp,24
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+24]
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
	mov	ebx,_38
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_36
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_floadanimseq
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 8
	.align	16
_floadtexture_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_39
	sub	esp,24
	mov	eax,_40
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
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_39
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_floadtexture
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
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
	ret	word 8
	.align	16
_floadanimtexture_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_42
	sub	esp,24
	mov	eax,_43
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
	mov	ebx,_44
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_42
	sub	esp,24
	mov	ebx,[ebp+36]
	mov	[esp+16],ebx
	mov	esi,[ebp+40]
	mov	[esp+20],esi
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadanimtexture
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
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
	ret	word 24
	.align	16
_floadbrush_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_45
	sub	esp,24
	mov	eax,_46
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
	mov	ebx,_47
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_45
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadbrush
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
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
	ret	word 16
	.align	16
_floadsprite_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_48
	sub	esp,24
	mov	eax,_49
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
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_48
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadsprite
	jmp	_13_leave
	mov	eax,0
	jmp	_13_leave
_13_leave
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
	ret	word 12
	.align	16
_floadterrain_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_51
	sub	esp,24
	mov	eax,_52
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
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_51
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_floadterrain
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
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
	ret	word 8
	.align	16
_floadfont_safe
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jz	_54
	sub	esp,24
	mov	eax,_55
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
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_54
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	esi,[ebp+36]
	mov	[esp+16],esi
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadfont
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
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
	ret	word 20
_17	.db	"Image ",0
_18	.db	" missing. ",0
_20	.db	"AnimImage ",0
_21	.db	"not found.",0
_23	.db	"Sound ",0
_24	.db	"not found.",0
_26	.db	"3D Sound ",0
_27	.db	"not found.",0
_29	.db	"3D Mesh ",0
_30	.db	"not found.",0
_32	.db	"3D Animated Mesh ",0
_33	.db	"not found.",0
_35	.db	"Cannot load Animation Sequence. Non existing entity",0
_37	.db	"Animation Sequence ",0
_38	.db	"not found.",0
_40	.db	"Texture ",0
_41	.db	"not found.",0
_43	.db	"Animated Texture ",0
_44	.db	"not found.",0
_46	.db	"Brush Texture ",0
_47	.db	"not found.",0
_49	.db	"Sprite Texture ",0
_50	.db	"not found.",0
_52	.db	"Heightmap Image ",0
_53	.db	"not found.",0
_55	.db	"Font ",0
_56	.db	"not found.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

