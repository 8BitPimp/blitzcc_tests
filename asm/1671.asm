
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
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	mov	[_vcctextinputmode],0
	sub	esp,4
	mov	eax,_acctextarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_acctextarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acctextarray
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vcctextinputlength],20
	sub	esp,8
	mov	[esp],_vcctextinputcaption
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1
	mov	[esp+4],30
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fccloadfont
	mov	[_vfntcouriernew],eax
	call	_fcctextinputinit
	mov	[_vcctextinputmode],1
_15
	call	_fcls
	cmp	[_vcctextinputmode],1
	jnz	_16
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],20
	mov	eax,[_vfntcouriernew]
	mov	[esp],eax
	call	_fcctextinput
_16
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_15
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
_fcctextinputinit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_17
_18
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_17
	cmp	[ebp-4],255
	jle	_18
_5
	sub	esp,8
	mov	[esp],_vcctext
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vcctextcurrentchar],1
	sub	esp,8
	mov	[esp],_vcctextinputcaption
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vcctextinputmode],0
	call	_fflushkeys
	call	_fflushmouse
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
_fcctextinputfill
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_22
_23
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_acctextarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-4],1
_22
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_23
_7
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
	ret	word 4
	.align	16
_fcctextinput
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-4],15
	mov	ebx,800
	mov	esi,[ebp-4]
	imul	esi,[ebp+28]
	sub	ebx,esi
	sar	ebx,byte 1
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetfont
	mov	[ebp-12],0
	sub	esp,12
	mov	[esp+4],240
	mov	[esp+8],0
	mov	[esp],240
	call	_fcolor
	sub	esp,20
	mov	eax,_vcctextinputcaption
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	ebx,[ebp+24]
	sub	ebx,50
	mov	[esp+4],ebx
	mov	[esp],400
	call	_fccshadowtext
	sub	esp,12
	mov	[esp+4],240
	mov	[esp+8],240
	mov	[esp],240
	call	_fcolor
	mov	[ebp-12],1
	jmp	_24
_25
	sub	esp,12
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_26
	mov	ebx,[_vcctextcurrentchar]
	cmp	[ebp-12],ebx
	jnz	_28
	sub	esp,20
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fccshadowtext
	jmp	_29
_28
	sub	esp,20
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fccshadowtext
_29
	jmp	_30
_26
	mov	ebx,[_vcctextcurrentchar]
	cmp	[ebp-12],ebx
	jnz	_31
	sub	esp,20
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fccshadowtext
	jmp	_33
_31
	sub	esp,20
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	sub	eax,1
	imul	eax,[ebp-4]
	add	eax,[ebp-8]
	mov	[esp],eax
	call	_fccshadowtext
_33
_30
	add	[ebp-12],1
_24
	mov	ebx,[ebp+28]
	cmp	[ebp-12],ebx
	jle	_25
_9
	call	_fgetkey
	mov	[ebp-16],eax
	cmp	[ebp-16],8
	jnz	_35
	sub	[_vcctextcurrentchar],1
	cmp	[_vcctextcurrentchar],1
	jge	_36
	mov	[_vcctextcurrentchar],1
_36
	sub	esp,8
	mov	eax,[_vcctextcurrentchar]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_37
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
_35
	cmp	[ebp-16],32
	setge	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp-16],126
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	and	eax,eax
	jz	_38
	mov	ebx,[ebp+28]
	cmp	[_vcctextcurrentchar],ebx
	jg	_39
	sub	esp,8
	mov	eax,[_vcctextcurrentchar]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[_vcctextcurrentchar],1
_39
_38
	mov	[ebp-20],0
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	and	eax,eax
	jz	_40
	sub	esp,8
	mov	[esp],_vcctext
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_41
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],1
	jmp	_42
_43
	sub	esp,12
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_acctextarray]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_45
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_44
	jmp	_46
_44
	sub	esp,20
	mov	eax,_vcctext
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_acctextarray]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vcctext
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_46
	add	[ebp-20],1
_42
	mov	ebx,[ebp+28]
	cmp	[ebp-20],ebx
	jle	_43
_10
	call	_fflushkeys
	call	_fflushmouse
	mov	[_vcctextinputmode],0
	mov	eax,1
	jmp	_8_leave
	jmp	_47
_40
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_48
	sub	esp,8
	mov	[esp],_vcctext
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_49
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	call	_fflushkeys
	call	_fflushmouse
	mov	[_vcctextinputmode],0
	mov	eax,-1
	jmp	_8_leave
_48
	mov	eax,0
	jmp	_8_leave
_47
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fccshadowtext
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
	call	_fcolorred
	mov	[ebp-4],eax
	call	_fcolorgreen
	mov	[ebp-8],eax
	call	_fcolorblue
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	add	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp-16]
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp+32]
	mov	[esp+12],ebx
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fccloadfont
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
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
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_50
	sub	esp,16
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
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
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
	call	_fend
	jmp	_52
_50
	mov	eax,[ebp-4]
	jmp	_12_leave
_52
	mov	eax,0
	jmp	_12_leave
_12_leave
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
	ret	word 20
	.align	4
_vcctextinputmode	.dd	0
	.align	4
_acctextarray	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_vcctext	.dd	0
	.align	4
_vcctextcurrentchar	.dd	0
	.align	4
_vcctextinputlength	.dd	0
	.align	4
_vcctextinputcaption	.dd	0
_13	.db	"",0
	.align	4
_vfntcouriernew	.dd	0
_14	.db	"Courier New",0
_19	.db	"",0
_20	.db	"",0
_21	.db	"",0
_27	.db	"",0
_32	.db	"_",0
_34	.db	".",0
_37	.db	"",0
_41	.db	"",0
_45	.db	"",0
_49	.db	"",0
_51	.db	"Error loading font ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

