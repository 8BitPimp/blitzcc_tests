
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
	sub	esp,24
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vin
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	mov	[_vposition],1
	call	_fparse
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
_fparse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fgettoken
	call	_fcommand
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ferror
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	call	_fend
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
_fgettoken
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,_vin
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[_vposition],eax
	jle	_18
	call	_ferror
_18
	sub	esp,16
	mov	ebx,[_vposition]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_vin
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[_vtoken],eax
	add	[_vposition],1
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmatch
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	cmp	[_vtoken],ebx
	jnz	_19
	call	_fgettoken
	jmp	_20
_19
	call	_ferror
_20
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcommand
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	call	_fexpression
	mov	[ebp-4],eax
	cmp	[_vtoken],13
	jnz	_21
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_25
_21
	call	_ferror
_25
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
_fexpression
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[ebp-4],0
	call	_fterm
	mov	[ebp-4],eax
	jmp	_27
_26
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	jnz	_28
	call	_fgettoken
	call	_fterm
	add	[ebp-4],eax
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
	jmp	_34
_28
	call	_fgettoken
	call	_fterm
	sub	[ebp-4],eax
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
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_34
_27
	sub	esp,8
	mov	eax,_39
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_40
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	[_vtoken],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jnz	_26
_9
	mov	eax,[ebp-4]
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
_fterm
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[ebp-4],0
	call	_ffactor
	mov	[ebp-4],eax
	jmp	_42
_41
	sub	esp,8
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	jnz	_43
	call	_fgettoken
	call	_ffactor
	imul	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_45
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_47
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_49
_43
	call	_fgettoken
	mov	eax,[ebp-4]
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_ffactor
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,ebx
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	sub	esp,8
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_49
_42
	sub	esp,8
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	setz	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	[_vtoken],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jnz	_41
_11
	mov	eax,[ebp-4]
	jmp	_10_leave
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
_ffactor
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	jnz	_56
	sub	esp,12
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp],eax
	call	_fmatch
	call	_fexpression
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,_59
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	mov	[esp],eax
	call	_fmatch
	jmp	_60
_56
	call	_fnumber
	mov	[ebp-4],eax
_60
	mov	eax,[ebp-4]
	jmp	_12_leave
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fnumber
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[ebp-4],0
	jmp	_62
_61
	mov	ebx,[ebp-4]
	imul	ebx,10
	call	_fdigit
	add	ebx,eax
	mov	[ebp-4],ebx
_62
	sub	esp,8
	mov	eax,_63
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	setge	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_64
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	[_vtoken],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jnz	_61
_14
	sub	esp,16
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
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
	.align	16
_fdigit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,_67
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	cmp	[_vtoken],eax
	setge	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_68
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fasc
	mov	ebx,eax
	mov	eax,[ebp-12]
	cmp	[_vtoken],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_66
	mov	ebx,[_vtoken]
	sub	esp,8
	mov	eax,_69
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fasc
	sub	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[_vtoken]
	mov	[esp],eax
	call	_fmatch
	jmp	_70
_66
	call	_ferror
_70
	mov	eax,[ebp-4]
	jmp	_15_leave
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vin	.dd	0
	.align	4
_vposition	.dd	0
	.align	4
_vtoken	.dd	0
_16	.db	">",0
_17	.db	"Parse error",0
_22	.db	"pop  eax",0
_23	.db	"; Result: ",0
_24	.db	"",0
_29	.db	"+",0
_30	.db	"pop  ebx",0
_31	.db	"pop  eax",0
_32	.db	"add  eax, ebx",0
_33	.db	"push eax",0
_35	.db	"pop  ebx",0
_36	.db	"pop  eax",0
_37	.db	"sub  eax, ebx",0
_38	.db	"push eax",0
_39	.db	"+",0
_40	.db	"-",0
_44	.db	"*",0
_45	.db	"pop  ebx",0
_46	.db	"pop  eax",0
_47	.db	"mul  eax, ebx",0
_48	.db	"push eax",0
_50	.db	"pop  ebx",0
_51	.db	"pop  eax",0
_52	.db	"div  eax, ebx",0
_53	.db	"push eax",0
_54	.db	"*",0
_55	.db	"/",0
_57	.db	"(",0
_58	.db	"(",0
_59	.db	")",0
_63	.db	"0",0
_64	.db	"9",0
_65	.db	"push ",0
_67	.db	"0",0
_68	.db	"9",0
_69	.db	"0",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

