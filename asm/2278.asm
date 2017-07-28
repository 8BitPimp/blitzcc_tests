
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,8
	mov	esi,_aa
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-4],1
	jmp	_15
_16
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aa]
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	add	[ebp-4],1
_15
	cmp	[ebp-4],8
	jle	_16
_3
_l_2letters
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[ebp-4],1
	jmp	_17
_18
	sub	esp,24
	mov	[esp],2
	mov	[esp+4],8
	call	_frand
	mov	[esp],eax
	mov	[esp+4],0
	mov	[esp+8],0
	call	_fword_maker
	mov	[esp],eax
	call	_fprint
	add	[ebp-4],1
_17
	cmp	[ebp-4],20
	jle	_18
_4
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
_fword_maker
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_19
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	cmp	[ebp+28],0
	jz	_20
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	jmp	_21
_20
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],2
	call	_frand
	mov	[ebp-8],eax
_21
	mov	[ebp-12],1
	jmp	_22
_23
	cmp	[ebp-8],1
	jnz	_24
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],6
	call	_frand
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],2
	call	_frand
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_25
	sub	esp,28
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_aa]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrStore
	mov	[ebp-8],2
	jmp	_26
_25
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],25
	call	_frand
	mov	[ebp-20],eax
	sub	esp,28
	mov	ebx,[ebp-20]
	shl	ebx,byte 1
	mov	[esp+4],ebx
	mov	[esp+8],2
	sub	esp,4
	mov	eax,[ebp-16]
	add	eax,2
	shl	eax,byte 2
	add	eax,[_aa]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrStore
	add	[ebp-12],1
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],2
	call	_frand
	mov	[ebp-8],eax
_26
	jmp	_27
_24
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],20
	call	_frand
	mov	[ebp-24],eax
	sub	esp,28
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,2
	shl	eax,byte 2
	add	eax,[_aa]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrStore
	mov	[ebp-8],1
_27
	add	[ebp-12],1
_22
	mov	ebx,[ebp+20]
	cmp	[ebp-12],ebx
	jle	_23
_6
	cmp	[ebp+24],1
	jnz	_28
	sub	esp,32
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[esp+4],1
	call	_fleft
	mov	[esp],eax
	call	_fupper
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,12
	mov	[esp+4],2
	mov	esi,[ebp+20]
	sub	esi,1
	mov	[esp+8],esi
	mov	[ebp-32],eax
	sub	esp,4
	lea	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-32]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_28
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_5_leave
	sub	esp,4
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	jmp	_5_leave
_5_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_aa	.dd	0
	.dd	3
	.dd	1
	.dd	0
_19	.db	"",0
_29	.db	"",0
_7	.db	"aeiouy",0
_8	.db	"bcdfghjklmnpqrstvwxz",0
_9	.db	"abacadaeafagahaiajakalamanaoapaqarasatauavawaxayaz",0
_10	.db	"eaebecedefegeheiejekelemeneoepeqereseteuevewexeyez",0
_11	.db	"iaibicidieifigihijikiliminioipiqirisitiuiviwixiyiz",0
_12	.db	"oaobocodoeofogohoiojokolomonopoqorosotouovowoxoyoz",0
_13	.db	"uaubucudueufuguhuiujukulumunuoupuqurusutuvuwuxuyuz",0
_14	.db	"yaybycydyeyfygyhyiyjykylymynyoypyqyrysytyuyvywyxyz",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_7
	.dd	4
	.dd	_8
	.dd	4
	.dd	_9
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
	.dd	0

