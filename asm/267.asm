
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
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],1024
	mov	[esp],1280
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],180
	mov	[esp+8],34
	mov	[esp+4],34
	sub	esp,4
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_vtest],eax
	jmp	_10
_9
	add	[ebp-4],1
	cmp	[ebp-4],359
	jle	_11
	mov	[ebp-4],0
_11
	call	_fmousex
	add	eax,1
	mov	[ebp-8],eax
	call	_fmousey
	add	eax,1
	mov	[_vspace],eax
	call	_fcls
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-16],eax
	mov	eax,ebx
	call	_fgraphicsheight
	mov	ebx,eax
	mov	eax,[ebp-16]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	call	_fgraphicswidth
	sar	eax,byte 1
	sub	eax,64
	mov	[esp],eax
	call	_ftext
	mov	[ebp-12],1
	jmp	_13
_14
	sub	esp,20
	mov	eax,[ebp-12]
	imul	eax,5
	add	eax,[ebp-4]
	mov	[esp],eax
	call	_fy_pos
	add	eax,128
	add	eax,[ebp-12]
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	sar	ebx,byte 3
	mov	[esp+12],ebx
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	imul	ebx,5
	add	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fx_pos
	mov	ebx,eax
	mov	eax,[ebp-16]
	add	ebx,128
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[_vtest]
	mov	[esp],eax
	call	_fdrawimage
	add	[ebp-12],1
_13
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_14
_4
	call	_ffps
	sub	esp,32
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],25
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vspace]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_9
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
_fx_pos
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+20],359
	jle	_17
	sub	[ebp+20],359
_17
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	mov	ebx,[_vspace]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_5_leave
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fy_pos
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	cmp	[ebp+20],359
	jle	_18
	sub	[ebp+20],359
_18
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,[_vspace]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	neg	ebx
	mov	[ebp-4],ebx
	mov	eax,[ebp-4]
	jmp	_6_leave
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
_ffps
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	add	[_vframecounter_counter],1
	cmp	[_vframecounter_time],0
	jnz	_19
	call	_fmillisecs
	mov	[_vframecounter_time],eax
_19
	mov	ebx,[_vframecounter_time]
	add	ebx,1001
	call	_fmillisecs
	cmp	ebx,eax
	jge	_20
	mov	ebx,[_vframecounter_counter]
	mov	[_vframecounter_framerate],ebx
	mov	[_vframecounter_counter],0
	call	_fmillisecs
	mov	[_vframecounter_time],eax
_20
	sub	esp,32
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vframecounter_framerate]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],10
	mov	[esp],10
	call	_ftext
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vtest	.dd	0
	.align	4
_vspace	.dd	0
	.align	4
_vframecounter_counter	.dd	0
	.align	4
_vframecounter_time	.dd	0
	.align	4
_vframecounter_framerate	.dd	0
_8	.db	"e:\Xtras\graphics\action1.bmp",0
_12	.db	"Drag the mouse!!",0
_15	.db	"Bobs   : ",0
_16	.db	"Spacing: ",0
_21	.db	"fps: ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

