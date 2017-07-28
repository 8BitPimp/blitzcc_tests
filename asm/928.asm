
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vevent_status],0
	mov	[_vevent_lastclock],0
	mov	[_vevent2_status],0
	mov	[_vevent2_lastclock],0
	mov	[_vevent3_status],0
	mov	[_vevent3_lastclock],0
	jmp	_6
_5
	call	_fframetimer
	cmp	[_vevent_status],1
	jnz	_7
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-4],10
_7
	cmp	[_vevent2_status],1
	jnz	_9
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp],200
	call	_ftext
	add	[ebp-8],10
_9
	cmp	[_vevent3_status],1
	jnz	_11
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp],400
	call	_ftext
	add	[ebp-12],10
_11
	sub	esp,4
	mov	[esp],1
	call	_fflip
_6
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_5
_3
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
_fframetimer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[_vevent_status],0
	mov	[_vevent2_status],0
	mov	[_vevent3_status],0
	call	_fmillisecs
	mov	[ebp-4],eax
	mov	ebx,[_vevent_lastclock]
	add	ebx,1000
	cmp	[ebp-4],ebx
	jle	_13
	mov	ebx,[ebp-4]
	mov	[_vevent_lastclock],ebx
	mov	[_vevent_status],1
_13
	mov	ebx,[_vevent2_lastclock]
	add	ebx,500
	cmp	[ebp-4],ebx
	jle	_14
	mov	ebx,[ebp-4]
	mov	[_vevent2_lastclock],ebx
	mov	[_vevent2_status],1
_14
	mov	ebx,[_vevent3_lastclock]
	add	ebx,300
	cmp	[ebp-4],ebx
	jle	_15
	mov	ebx,[ebp-4]
	mov	[_vevent3_lastclock],ebx
	mov	[_vevent3_status],1
_15
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vevent_status	.dd	0
	.align	4
_vevent_lastclock	.dd	0
	.align	4
_vevent2_status	.dd	0
	.align	4
_vevent2_lastclock	.dd	0
	.align	4
_vevent3_status	.dd	0
	.align	4
_vevent3_lastclock	.dd	0
_8	.db	"Event 1 fired",0
_10	.db	"Event 2 fired",0
_12	.db	"Event 3 fired",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

