
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	call	_ftest
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ftest
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
	mov	[ebp-4],250
	mov	[ebp-8],200
	mov	[ebp-12],300
	mov	[ebp-16],20
	mov	[ebp-28],120
	mov	[ebp-32],40
_7
	call	_fcls
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-32]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-16]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,80
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,80
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_13
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],12
	mov	[esp],0
	call	_ftext
	sub	esp,64
	mov	ebx,[ebp-28]
	mov	[esp+24],ebx
	mov	esi,[ebp-32]
	mov	[esp+28],esi
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	ebx,[ebp-20]
	mov	[esp+16],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdist
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],36
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	cmp	eax,1
	jnz	_17
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	jmp	_18
_17
	call	_fmousexspeed
	add	[ebp-20],eax
	call	_fmouseyspeed
	add	[ebp-24],eax
_18
	sub	esp,4
	mov	[esp],200
	call	_fkeyhit
	cmp	eax,1
	jnz	_19
	sub	[ebp-24],1
_19
	sub	esp,4
	mov	[esp],208
	call	_fkeyhit
	cmp	eax,1
	jnz	_20
	add	[ebp-24],1
_20
	sub	esp,4
	mov	[esp],203
	call	_fkeyhit
	cmp	eax,1
	jnz	_21
	sub	[ebp-20],1
_21
	sub	esp,4
	mov	[esp],205
	call	_fkeyhit
	cmp	eax,1
	jnz	_22
	add	[ebp-20],1
_22
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	cmp	eax,1
	jnz	_7
_4
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
_fdist
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	cmp	ebx,[ebp+36]
	jg	_23
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	ebx,[ebp+40]
	jg	_24
	mov	[ebp-4],0
	jmp	_25
_24
	mov	ebx,[ebp+40]
	add	ebx,[ebp+48]
	cmp	[ebp+24],ebx
	jl	_26
	mov	[ebp-4],6
	jmp	_27
_26
	mov	[ebp-4],7
_27
_25
	jmp	_28
_23
	mov	ebx,[ebp+36]
	add	ebx,[ebp+44]
	cmp	[ebp+20],ebx
	jl	_29
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	ebx,[ebp+40]
	jg	_30
	mov	[ebp-4],2
	jmp	_31
_30
	mov	ebx,[ebp+40]
	add	ebx,[ebp+48]
	cmp	[ebp+24],ebx
	jl	_32
	mov	[ebp-4],4
	jmp	_33
_32
	mov	[ebp-4],3
_33
_31
	jmp	_34
_29
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	cmp	ebx,[ebp+40]
	jg	_35
	mov	[ebp-4],1
	jmp	_36
_35
	mov	ebx,[ebp+40]
	add	ebx,[ebp+48]
	cmp	[ebp+24],ebx
	jl	_37
	mov	[ebp-4],5
	jmp	_38
_37
	mov	eax,0
	jmp	_5_leave
_38
_36
_34
_28
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_40
	cmp	[ebp-8],1
	jz	_41
	cmp	[ebp-8],2
	jz	_42
	cmp	[ebp-8],3
	jz	_43
	cmp	[ebp-8],4
	jz	_44
	cmp	[ebp-8],5
	jz	_45
	cmp	[ebp-8],6
	jz	_46
	cmp	[ebp-8],7
	jz	_47
	jmp	_39
_40
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,[ebp+36]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+40]
	mov	[ebp+24],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	neg	eax
	jmp	_5_leave
	jmp	_39
_41
	mov	eax,[ebp+24]
	add	eax,[ebp+32]
	sub	eax,[ebp+40]
	neg	eax
	jmp	_5_leave
	jmp	_39
_42
	mov	ebx,[ebp+36]
	add	ebx,[ebp+44]
	sub	ebx,[ebp+20]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+24]
	add	ebx,[ebp+32]
	sub	ebx,[ebp+40]
	mov	[ebp+24],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	neg	eax
	jmp	_5_leave
	jmp	_39
_43
	mov	eax,[ebp+36]
	add	eax,[ebp+44]
	sub	eax,[ebp+20]
	neg	eax
	jmp	_5_leave
	jmp	_39
_44
	mov	ebx,[ebp+36]
	add	ebx,[ebp+44]
	sub	ebx,[ebp+20]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+40]
	add	ebx,[ebp+48]
	sub	ebx,[ebp+24]
	mov	[ebp+24],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	neg	eax
	jmp	_5_leave
	jmp	_39
_45
	mov	eax,[ebp+40]
	add	eax,[ebp+48]
	sub	eax,[ebp+24]
	neg	eax
	jmp	_5_leave
	jmp	_39
_46
	mov	ebx,[ebp+20]
	add	ebx,[ebp+28]
	sub	ebx,[ebp+36]
	mov	[ebp+20],ebx
	mov	ebx,[ebp+40]
	add	ebx,[ebp+48]
	sub	ebx,[ebp+24]
	mov	[ebp+24],ebx
	mov	eax,[ebp+20]
	add	eax,[ebp+24]
	neg	eax
	jmp	_5_leave
	jmp	_39
_47
	mov	eax,[ebp+20]
	add	eax,[ebp+28]
	sub	eax,[ebp+36]
	neg	eax
	jmp	_5_leave
	jmp	_39
_39
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 32
_8	.db	"mx:",0
_9	.db	"  my:",0
_10	.db	"  mw:",0
_11	.db	"  mh:",0
_12	.db	"cx:",0
_13	.db	"  cy:",0
_14	.db	"  cw:",0
_15	.db	"  ch:",0
_16	.db	"Dist:",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

