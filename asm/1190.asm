
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],320
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	mov	[_vitotal],3
	mov	[_vainbox],0
	mov	[_vinb],0
	sub	esp,4
	mov	eax,_ainputbox
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vitotal]
	mov	esi,_ainputbox
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ainputbox
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],208
	mov	[esp+8],200
	mov	[esp],212
	call	_fclscolor
	jmp	_11
_10
	sub	esp,8
	mov	[esp],50
	mov	[esp+4],50
	call	_fdrawinputboxes
	sub	esp,4
	mov	[esp],5
	call	_fdelay
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
_11
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_10
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[ebp-20],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdrawinputboxes
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
	call	_fmousex
	mov	[ebp-4],eax
	call	_fmousey
	mov	[ebp-8],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[ebp-12],eax
	call	_fgetkey
	mov	[ebp-16],eax
	cmp	[ebp-16],31
	setg	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-16],128
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_12
	sub	esp,8
	mov	eax,[_vainbox]
	shl	eax,byte 2
	add	eax,[_ainputbox]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,9
	jge	_13
	sub	esp,20
	mov	eax,[_vainbox]
	shl	eax,byte 2
	add	eax,[_ainputbox]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vainbox]
	shl	ebx,byte 2
	add	ebx,[_ainputbox]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_13
_12
	cmp	[ebp-16],8
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-16],4
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_14
	sub	esp,8
	mov	eax,[_vainbox]
	shl	eax,byte 2
	add	eax,[_ainputbox]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_15
	sub	esp,20
	mov	eax,[_vainbox]
	shl	eax,byte 2
	add	eax,[_ainputbox]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vainbox]
	shl	ebx,byte 2
	add	ebx,[_ainputbox]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-32]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	mov	ebx,[_vainbox]
	shl	ebx,byte 2
	add	ebx,[_ainputbox]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_15
_14
	mov	[ebp-20],0
	mov	ebx,[ebp+24]
	mov	[ebp-24],ebx
	jmp	_16
_17
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	sub	esp,20
	mov	[esp+12],28
	mov	[esp+16],0
	mov	[esp+8],100
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],64
	mov	[esp],64
	call	_fcolor
	sub	esp,20
	mov	[esp+12],26
	mov	[esp+16],0
	mov	[esp+8],98
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],208
	mov	[esp+8],200
	mov	[esp],212
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],98
	mov	ebx,[ebp-24]
	add	ebx,26
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,1
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	[esp+12],26
	mov	[esp+16],1
	mov	[esp+8],1
	mov	ebx,[ebp-24]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,98
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+8],100
	mov	ebx,[ebp-24]
	add	ebx,27
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	[esp+12],27
	mov	[esp+16],1
	mov	[esp+8],1
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,99
	mov	[esp],eax
	call	_frect
	sub	esp,20
	mov	[esp+12],24
	mov	[esp+16],1
	mov	[esp+8],96
	mov	ebx,[ebp-24]
	add	ebx,2
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,2
	mov	[esp],eax
	call	_frect
	cmp	[ebp-20],0
	jnz	_18
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_19
_18
	cmp	[ebp-20],1
	jnz	_20
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],128
	mov	[esp],0
	call	_fcolor
	jmp	_21
_20
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_21
_19
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_ainputbox]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	add	ebx,8
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	add	eax,4
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	ebx,[ebp-20]
	cmp	[_vainbox],ebx
	jnz	_22
	cmp	[_vinb],1
	jnz	_23
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	eax,[ebp+20]
	add	eax,4
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[_vainbox]
	shl	ebx,byte 2
	add	ebx,[_ainputbox]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-32]
	imul	ebx,10
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],2
	mov	ebx,[ebp-24]
	add	ebx,4
	mov	[esp+4],ebx
	call	_frect
_23
	call	_fmillisecs
	mov	ebx,[_vintime]
	add	ebx,500
	cmp	eax,ebx
	jl	_24
	cmp	[_vinb],0
	jnz	_25
	mov	[_vinb],1
	jmp	_26
_25
	mov	[_vinb],0
_26
	call	_fmillisecs
	mov	[_vintime],eax
_24
_22
	sub	esp,32
	mov	[esp+24],100
	mov	[esp+28],28
	mov	esi,[ebp-24]
	mov	[esp+20],esi
	mov	ebx,[ebp+20]
	mov	[esp+16],ebx
	mov	[esp+12],1
	mov	[esp+8],1
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_frectsoverlap
	mov	[ebp-32],eax
	cmp	[ebp-12],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	ebx,eax
	and	ebx,ebx
	jz	_27
	mov	ebx,[ebp-20]
	mov	[_vainbox],ebx
_27
	mov	ebx,[ebp-20]
	mov	[ebp-28],ebx
	cmp	[ebp-28],0
	jz	_29
	cmp	[ebp-28],1
	jz	_30
	cmp	[ebp-28],2
	jz	_31
	jmp	_28
_29
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_32
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	sub	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftext
	jmp	_28
_30
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	sub	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftext
	jmp	_28
_31
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_34
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	sub	ebx,20
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ftext
	jmp	_28
_28
	add	[ebp-20],1
	add	[ebp-24],64
_16
	mov	ebx,[_vitotal]
	sub	ebx,1
	shl	ebx,byte 6
	add	ebx,[ebp+24]
	cmp	[ebp-24],ebx
	jle	_17
_5
	sub	esp,4
	mov	[esp],15
	call	_fkeyhit
	and	eax,eax
	jz	_35
	add	[_vainbox],1
_35
	cmp	[_vainbox],3
	jl	_36
	mov	[_vainbox],0
_36
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
_7	.db	"Rpg Input Example by Eikon",0
_8	.db	"",0
_9	.db	"Lucida Console",0
	.align	4
_vitotal	.dd	0
	.align	4
_vainbox	.dd	0
	.align	4
_vintime	.dd	0
	.align	4
_vinb	.dd	0
	.align	4
_ainputbox	.dd	0
	.dd	3
	.dd	1
	.dd	0
_32	.db	"Name:",0
_33	.db	"Class:",0
_34	.db	"Gender:",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
