
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],276
	mov	[esp],360
	call	_fgraphics
	sub	esp,12
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,24
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],20
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	mov	[esp],0
	call	_flockbuffer
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	[ebp-8],0
	jmp	_11
_12
	mov	[ebp-12],0
	jmp	_13
_14
	sub	esp,12
	mov	ebx,255
	sub	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],128
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhsl_to_rgb
	sub	esp,16
	mov	ebx,[_vret_r]
	shl	ebx,byte 16
	mov	esi,[_vret_g]
	shl	esi,byte 8
	or	ebx,esi
	mov	esi,[_vret_b]
	or	ebx,esi
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_13
	cmp	[ebp-12],359
	jle	_14
_4
	add	[ebp-8],1
_11
	cmp	[ebp-8],255
	jle	_12
_3
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_funlockbuffer
	sub	esp,32
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],256
	mov	[esp],2
	call	_ftext
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frgb_to_hsl
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
	mov	[ebp-20],ebx
	mov	ebx,[ebp+24]
	cmp	[ebp+20],ebx
	jle	_16
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-12],ebx
	jmp	_17
_16
	mov	[ebp-4],1
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-12],ebx
_17
	mov	ebx,[ebp-8]
	cmp	[ebp+28],ebx
	jle	_18
	mov	[ebp-4],2
	mov	ebx,[ebp+28]
	mov	[ebp-8],ebx
	jmp	_19
_18
	mov	ebx,[ebp-12]
	cmp	[ebp+28],ebx
	jge	_20
	mov	ebx,[ebp+28]
	mov	[ebp-12],ebx
_20
_19
	mov	ebx,[ebp-8]
	add	ebx,[ebp-12]
	shr	ebx,byte 1
	mov	[_vret_l],ebx
	mov	ebx,[ebp-12]
	cmp	[ebp-8],ebx
	jnz	_21
	mov	[_vret_s],0
	jmp	_22
_21
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-12]
	mov	[ebp-16],ebx
	cmp	[_vret_l],128
	jge	_23
	mov	eax,255
	imul	eax,[ebp-16]
	mov	ecx,[ebp-8]
	add	ecx,[ebp-12]
	cdq
	idiv	ecx
	mov	[_vret_s],eax
	jmp	_24
_23
	mov	eax,255
	imul	eax,[ebp-16]
	mov	ecx,512
	sub	ecx,[ebp-8]
	sub	ecx,[ebp-12]
	cdq
	idiv	ecx
	mov	[_vret_s],eax
_24
	mov	ebx,[ebp-4]
	mov	[ebp-20],ebx
	cmp	[ebp-20],0
	jz	_26
	cmp	[ebp-20],1
	jz	_27
	cmp	[ebp-20],2
	jz	_28
	jmp	_25
_26
	mov	eax,[ebp+24]
	sub	eax,[ebp+28]
	imul	eax,60
	mov	ecx,[ebp-16]
	cdq
	idiv	ecx
	mov	[_vret_h],eax
	jmp	_25
_27
	mov	eax,[ebp+28]
	sub	eax,[ebp+20]
	imul	eax,60
	mov	ecx,[ebp-16]
	cdq
	idiv	ecx
	add	eax,120
	mov	[_vret_h],eax
	jmp	_25
_28
	mov	eax,[ebp+20]
	sub	eax,[ebp+24]
	imul	eax,60
	mov	ecx,[ebp-16]
	cdq
	idiv	ecx
	add	eax,240
	mov	[_vret_h],eax
	jmp	_25
_25
	cmp	[_vret_h],0
	jge	_29
	add	[_vret_h],360
_29
_22
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fhsl_to_rgb
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
	mov	[ebp-20],ebx
	cmp	[ebp+24],0
	jnz	_30
	mov	ebx,[ebp+28]
	mov	[_vret_r],ebx
	mov	ebx,[ebp+28]
	mov	[_vret_g],ebx
	mov	ebx,[ebp+28]
	mov	[_vret_b],ebx
	jmp	_31
_30
	cmp	[ebp+28],128
	jge	_32
	mov	eax,255
	add	eax,[ebp+24]
	imul	eax,[ebp+28]
	mov	ecx,255
	cdq
	idiv	ecx
	mov	[ebp-4],eax
	jmp	_33
_32
	mov	eax,[ebp+28]
	imul	eax,[ebp+24]
	mov	ecx,255
	cdq
	idiv	ecx
	mov	ebx,[ebp+28]
	add	ebx,[ebp+24]
	sub	ebx,eax
	mov	[ebp-4],ebx
_33
	mov	ebx,[ebp+28]
	shl	ebx,byte 1
	sub	ebx,[ebp-4]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	add	ebx,120
	mov	[ebp-12],ebx
	cmp	[ebp-12],360
	jle	_34
	sub	[ebp-12],360
_34
	mov	ebx,[ebp+20]
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	add	ebx,240
	mov	[ebp-20],ebx
	cmp	[ebp-20],360
	jle	_35
	sub	[ebp-20],360
_35
	cmp	[ebp-12],60
	jge	_36
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	imul	eax,[ebp-12]
	mov	ecx,60
	cdq
	idiv	ecx
	add	eax,[ebp-8]
	mov	[_vret_r],eax
	jmp	_37
_36
	cmp	[ebp-12],180
	jge	_38
	mov	ebx,[ebp-4]
	mov	[_vret_r],ebx
	jmp	_39
_38
	cmp	[ebp-12],240
	jge	_40
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	mov	ebx,240
	sub	ebx,[ebp-12]
	imul	eax,ebx
	mov	ecx,60
	cdq
	idiv	ecx
	add	eax,[ebp-8]
	mov	[_vret_r],eax
	jmp	_41
_40
	mov	ebx,[ebp-8]
	mov	[_vret_r],ebx
_41
_39
_37
	cmp	[ebp-16],60
	jge	_42
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	imul	eax,[ebp-16]
	mov	ecx,60
	cdq
	idiv	ecx
	add	eax,[ebp-8]
	mov	[_vret_g],eax
	jmp	_43
_42
	cmp	[ebp-16],180
	jge	_44
	mov	ebx,[ebp-4]
	mov	[_vret_g],ebx
	jmp	_45
_44
	cmp	[ebp-16],240
	jge	_46
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	mov	ebx,240
	sub	ebx,[ebp-16]
	imul	eax,ebx
	mov	ecx,60
	cdq
	idiv	ecx
	add	eax,[ebp-8]
	mov	[_vret_g],eax
	jmp	_47
_46
	mov	ebx,[ebp-8]
	mov	[_vret_g],ebx
_47
_45
_43
	cmp	[ebp-20],60
	jge	_48
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	imul	eax,[ebp-20]
	mov	ecx,60
	cdq
	idiv	ecx
	add	eax,[ebp-8]
	mov	[_vret_b],eax
	jmp	_49
_48
	cmp	[ebp-20],180
	jge	_50
	mov	ebx,[ebp-4]
	mov	[_vret_b],ebx
	jmp	_51
_50
	cmp	[ebp-20],240
	jge	_52
	mov	eax,[ebp-4]
	sub	eax,[ebp-8]
	mov	ebx,240
	sub	ebx,[ebp-20]
	imul	eax,ebx
	mov	ecx,60
	cdq
	idiv	ecx
	add	eax,[ebp-8]
	mov	[_vret_b],eax
	jmp	_53
_52
	mov	ebx,[ebp-8]
	mov	[_vret_b],ebx
_53
_51
_49
_31
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_vret_h	.dd	0
	.align	4
_vret_s	.dd	0
	.align	4
_vret_l	.dd	0
	.align	4
_vret_r	.dd	0
	.align	4
_vret_g	.dd	0
	.align	4
_vret_b	.dd	0
_8	.db	"HSL Demo",0
_9	.db	"",0
_10	.db	"Arial",0
_15	.db	" millisecs taken. Press any key to end.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

