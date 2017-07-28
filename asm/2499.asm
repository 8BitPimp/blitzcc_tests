
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
	mov	[_vmouse_1_mode],0
	mov	[_vmouse_1_hold_time],150
	mov	[_vmouse_2_mode],0
	mov	[_vmouse_2_hold_time],150
	mov	[_vmouse_3_mode],0
	mov	[_vmouse_3_hold_time],5
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fprocess_mouse_hits
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[_vmouse_1_mode],5
	jnz	_4
	mov	[_vmouse_1_mode],2
_4
	cmp	[_vmouse_2_mode],5
	jnz	_5
	mov	[_vmouse_2_mode],2
_5
	cmp	[_vmouse_3_mode],5
	jnz	_6
	mov	[_vmouse_3_mode],2
_6
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_7
	cmp	[_vmouse_1_mode],0
	jnz	_8
	mov	[_vmouse_1_mode],1
	call	_fmillisecs
	mov	[_vmouse_1_hold_timer],eax
	jmp	_9
_8
	cmp	[_vmouse_1_mode],1
	jnz	_10
	call	_fmillisecs
	mov	ebx,[_vmouse_1_hold_timer]
	add	ebx,[_vmouse_1_hold_time]
	cmp	eax,ebx
	jle	_11
	mov	[_vmouse_1_mode],5
_11
_10
_9
	jmp	_12
_7
	cmp	[_vmouse_1_mode],4
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmouse_1_mode],3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_13
	mov	[_vmouse_1_mode],0
	jmp	_14
_13
	cmp	[_vmouse_1_mode],1
	jnz	_15
	mov	[_vmouse_1_mode],4
	jmp	_16
_15
	cmp	[_vmouse_1_mode],2
	jnz	_17
	mov	[_vmouse_1_mode],3
_17
_16
_14
_12
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_18
	cmp	[_vmouse_2_mode],0
	jnz	_19
	mov	[_vmouse_2_mode],1
	call	_fmillisecs
	mov	[_vmouse_2_hold_timer],eax
	jmp	_20
_19
	cmp	[_vmouse_2_mode],1
	jnz	_21
	call	_fmillisecs
	mov	ebx,[_vmouse_2_hold_timer]
	add	ebx,[_vmouse_2_hold_time]
	cmp	eax,ebx
	jle	_22
	mov	[_vmouse_2_mode],5
_22
_21
_20
	jmp	_23
_18
	cmp	[_vmouse_2_mode],4
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmouse_2_mode],3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_24
	mov	[_vmouse_2_mode],0
	jmp	_25
_24
	cmp	[_vmouse_2_mode],1
	jnz	_26
	mov	[_vmouse_2_mode],4
	jmp	_27
_26
	cmp	[_vmouse_2_mode],2
	jnz	_28
	mov	[_vmouse_2_mode],3
_28
_27
_25
_23
	sub	esp,4
	mov	[esp],3
	call	_fmousedown
	and	eax,eax
	jz	_29
	cmp	[_vmouse_3_mode],0
	jnz	_30
	mov	[_vmouse_3_mode],1
	call	_fmillisecs
	mov	[_vmouse_3_hold_timer],eax
	jmp	_31
_30
	cmp	[_vmouse_3_mode],1
	jnz	_32
	call	_fmillisecs
	mov	ebx,[_vmouse_3_hold_timer]
	add	ebx,[_vmouse_3_hold_time]
	cmp	eax,ebx
	jle	_33
	mov	[_vmouse_3_mode],5
_33
_32
_31
	jmp	_34
_29
	cmp	[_vmouse_3_mode],4
	setz	al
	movzx	eax,al
	mov	[ebp-4],eax
	cmp	[_vmouse_3_mode],3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_35
	mov	[_vmouse_3_mode],0
	jmp	_36
_35
	cmp	[_vmouse_3_mode],1
	jnz	_37
	mov	[_vmouse_3_mode],4
	jmp	_38
_37
	cmp	[_vmouse_3_mode],2
	jnz	_39
	mov	[_vmouse_3_mode],3
_39
_38
_36
_34
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmouse_1_mode	.dd	0
	.align	4
_vmouse_1_hold_time	.dd	0
	.align	4
_vmouse_1_hold_timer	.dd	0
	.align	4
_vmouse_2_mode	.dd	0
	.align	4
_vmouse_2_hold_time	.dd	0
	.align	4
_vmouse_2_hold_timer	.dd	0
	.align	4
_vmouse_3_mode	.dd	0
	.align	4
_vmouse_3_hold_time	.dd	0
	.align	4
_vmouse_3_hold_timer	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

