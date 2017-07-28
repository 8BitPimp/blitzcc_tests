
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
	mov	[_vfps_samplerate],5
	mov	[_vfps_samples],10
	mov	[_vfps_bufferindex],1
	sub	esp,4
	mov	eax,_afps_buffer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_afps_buffer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_afps_buffer
	mov	[esp],eax
	call	__bbDimArray
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fget_fps
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[_vfps_font],0
	jnz	_5
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],12
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[_vfps_font],eax
_5
	call	_fmillisecs
	mov	[_vfps_newtime],eax
	add	[_vfps_ticks],1
	mov	ebx,[_vfps_samplerate]
	cmp	[_vfps_ticks],ebx
	jle	_7
	mov	ebx,[_vfps_newtime]
	sub	ebx,[_vfps_oldtime]
	mov	[_vfps_current],ebx
	cmp	[_vfps_current],0
	jnz	_8
	mov	[_vfps_current],1000
	jmp	_9
_8
	mov	eax,1000
	mov	ecx,[_vfps_current]
	cdq
	idiv	ecx
	mov	[_vfps_current],eax
_9
	mov	ebx,[_vfps_current]
	mov	esi,[_vfps_bufferindex]
	shl	esi,byte 2
	add	esi,[_afps_buffer]
	mov	[esi],ebx
	add	[_vfps_bufferindex],1
	mov	ebx,[_vfps_samples]
	cmp	[_vfps_bufferindex],ebx
	jle	_10
	mov	[ebp-4],1
	jmp	_11
_12
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_afps_buffer]
	mov	ebx,[ebx]
	add	[ebp-8],ebx
	add	[ebp-4],1
_11
	mov	ebx,[_vfps_samples]
	cmp	[ebp-4],ebx
	jle	_12
_4
	mov	eax,[ebp-8]
	mov	ecx,[_vfps_samples]
	cdq
	idiv	ecx
	mov	[_vfps_final],eax
	mov	[_vfps_bufferindex],1
_10
	mov	[_vfps_ticks],0
_7
	call	_fmillisecs
	mov	[_vfps_oldtime],eax
	sub	esp,4
	mov	eax,[_vfps_font]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,32
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_vfps_final]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vfps_oldtime	.dd	0
	.align	4
_vfps_newtime	.dd	0
	.align	4
_vfps_ticks	.dd	0
	.align	4
_vfps_current	.dd	0
	.align	4
_vfps_final	.dd	0
	.align	4
_vfps_samplerate	.dd	0
	.align	4
_vfps_samples	.dd	0
	.align	4
_vfps_bufferindex	.dd	0
	.align	4
_vfps_font	.dd	0
	.align	4
_afps_buffer	.dd	0
	.dd	1
	.dd	1
	.dd	0
_6	.db	"New Times Roman",0
_13	.db	"FPS:",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

