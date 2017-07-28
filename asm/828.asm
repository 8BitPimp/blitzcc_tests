
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],300
	mov	[esp],400
	call	_fgraphics
	mov	[_vt_clock],0
	mov	[_vt_offset],0
	mov	[_vt_total_offset],0
	mov	[_vt_clock_mode],0
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_freset_clock
_7
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fget_clock
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],200
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],200
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_9
	call	_fstart_stop_clock
_9
	sub	esp,4
	mov	[esp],19
	call	_fkeyhit
	and	eax,eax
	jz	_10
	call	_freset_clock
_10
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_7
_3
	ret
_2_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 0
	.align	16
_fget_clock
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	cmp	[_vt_clock_mode],1
	jnz	_11
	call	_fmillisecs
	sub	eax,[_vt_clock]
	sub	eax,[_vt_total_offset]
	mov	[ebp-4],eax
_11
	cmp	[_vt_clock_mode],0
	jnz	_12
	mov	ebx,[_vt_offset]
	sub	ebx,[_vt_clock]
	sub	ebx,[_vt_total_offset]
	mov	[ebp-4],ebx
_12
	mov	eax,[ebp-4]
	mov	ecx,10
	cdq
	idiv	ecx
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	mov	ecx,100
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	imul	ebx,100
	sub	[ebp-8],ebx
	mov	eax,[ebp-12]
	mov	ecx,60
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	mov	ebx,[ebp-16]
	imul	ebx,60
	sub	[ebp-12],ebx
	sub	esp,52
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],2
	call	_fright
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_14
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrFromInt
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],2
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_16
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[ebp-24],eax
	sub	esp,8
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_17
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrFromInt
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp],ebx
	mov	[esp+4],2
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	jmp	_4_leave
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_freset_clock
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmillisecs
	mov	[_vt_clock],eax
	call	_fmillisecs
	mov	[_vt_offset],eax
	mov	[_vt_total_offset],0
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
_fstart_stop_clock
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[_vt_clock_mode],0
	jnz	_19
	mov	[_vt_clock_mode],1
	call	_fmillisecs
	add	eax,[_vt_total_offset]
	sub	eax,[_vt_offset]
	mov	[_vt_total_offset],eax
	jmp	_20
_19
	mov	[_vt_clock_mode],0
	call	_fmillisecs
	mov	[_vt_offset],eax
_20
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vt_clock	.dd	0
	.align	4
_vt_offset	.dd	0
	.align	4
_vt_total_offset	.dd	0
	.align	4
_vt_clock_mode	.dd	0
_8	.db	"Space to Stop/Start, R to reset clock",0
_13	.db	"00",0
_14	.db	":",0
_15	.db	"00",0
_16	.db	":",0
_17	.db	"00",0
_18	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

