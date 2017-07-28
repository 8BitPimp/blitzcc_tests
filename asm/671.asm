
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	sub	esp,4
	mov	eax,_aw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,35
	mov	esi,_aw
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aw
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_as
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,35
	mov	esi,_as
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_as
	mov	[esp],eax
	call	__bbDimArray
	call	_finitialize
_44
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],3
	call	_frand
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	cmp	[ebp-8],1
	jz	_46
	cmp	[ebp-8],2
	jz	_47
	cmp	[ebp-8],3
	jz	_48
	jmp	_45
_46
	call	_fpattern1
	jmp	_45
_47
	call	_fpattern2
	jmp	_45
_48
	call	_fpattern3
	jmp	_45
_45
	sub	esp,8
	mov	eax,_49
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_50
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_52
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
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
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,_53
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-20]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_51
	sub	esp,8
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_55
_51
	sub	esp,8
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1000
	call	_fdelay
	call	_fend
_55
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_44
_3
_l_2worddata
	ret
_2_leave
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
	ret	word 0
	.align	16
_finitialize
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],1
	jmp	_58
_59
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-12],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aw]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_as]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_58
	cmp	[ebp-4],35
	jle	_59
_6
	mov	eax,0
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
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
	ret	word 0
	.align	16
_fpattern1
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,32
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_aw]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_60
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],35
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aw]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,24
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_aw]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_61
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,24
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_aw]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	mov	eax,0
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpattern2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,16
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_as]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,32
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_as]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_63
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_64
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,16
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_as]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	mov	eax,0
	jmp	_8_leave
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fpattern3
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	sub	esp,24
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_aw]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_65
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,16
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_as]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fprint
	sub	esp,40
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_aw]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_66
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,12
	mov	[esp],1
	mov	[esp+4],35
	call	_frand
	shl	eax,byte 2
	add	eax,[_as]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	mov	eax,0
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_aw	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_as	.dd	0
	.dd	3
	.dd	1
	.dd	0
_49	.db	"",0
_50	.db	"Would you like another? Y/N: ",0
_52	.db	"Y",0
_53	.db	"y",0
_54	.db	"",0
_56	.db	"",0
_57	.db	"Many blessings on you!",0
_60	.db	"...",0
_61	.db	"   ",0
_62	.db	"      ",0
_63	.db	"   ",0
_64	.db	"...",0
_65	.db	"   ",0
_66	.db	"   ",0
_67	.db	", ",0
_10	.db	"hammered",0
_11	.db	"hanging",0
_12	.db	"winding",0
_13	.db	"clearest",0
_14	.db	"weary",0
_15	.db	"optimize",0
_16	.db	"deadline",0
_17	.db	"coding",0
_18	.db	"computer",0
_19	.db	"calculating",0
_20	.db	"terminal",0
_21	.db	"keyboard",0
_22	.db	"late",0
_23	.db	"now",0
_24	.db	"thinking",0
_25	.db	"in the cool morning",0
_26	.db	"nodding in slumbering repose",0
_27	.db	"waves of coolness",0
_28	.db	"out from the deepest",0
_29	.db	"joyful, joyful",0
_30	.db	"in the black darkness",0
_31	.db	"I take your words",0
_32	.db	"I put out the light",0
_33	.db	"the time runs out",0
_34	.db	"those that are left",0
_35	.db	"learning",0
_36	.db	"action",0
_37	.db	"I hurry forward",0
_38	.db	"why should you waste",0
_39	.db	"when shall we finish",0
_40	.db	"little sleeping",0
_41	.db	"much typing",0
_42	.db	"those few steps",0
_43	.db	"now at dusk",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_10
	.dd	4
	.dd	_11
	.dd	4
	.dd	_12
	.dd	4
	.dd	_13
	.dd	4
	.dd	_14
	.dd	4
	.dd	_15
	.dd	4
	.dd	_16
	.dd	4
	.dd	_17
	.dd	4
	.dd	_18
	.dd	4
	.dd	_19
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	4
	.dd	_24
	.dd	4
	.dd	_25
	.dd	4
	.dd	_26
	.dd	4
	.dd	_27
	.dd	4
	.dd	_28
	.dd	4
	.dd	_29
	.dd	4
	.dd	_30
	.dd	4
	.dd	_31
	.dd	4
	.dd	_32
	.dd	4
	.dd	_33
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	4
	.dd	_36
	.dd	4
	.dd	_37
	.dd	4
	.dd	_38
	.dd	4
	.dd	_39
	.dd	4
	.dd	_40
	.dd	4
	.dd	_41
	.dd	4
	.dd	_42
	.dd	4
	.dd	_43
	.dd	0

