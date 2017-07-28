
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],-1049624576
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-8],eax
	sub	esp,20
	mov	[esp+12],1109393408
	mov	[esp+16],0
	mov	[esp+8],1101004800
	mov	[esp+4],1101004800
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-12],33
	call	_fmillisecs
	sub	eax,[ebp-12]
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatepivot
	mov	[ebp-20],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fpositionentity
	mov	[ebp-24],1
	jmp	_11
_12
	sub	esp,8
	mov	[esp],16
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fcreatesphere
	mov	[ebp-28],eax
	sub	esp,28
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],-1063256064
	mov	[esp+4],1084227584
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,24
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1132396544
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[ebp-48],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1132396544
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-48]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fentitycolor
	add	[ebp-24],1
_11
	cmp	[ebp-24],1000
	jle	_12
_3
	jmp	_14
_13
_15
	call	_fmillisecs
	sub	eax,[ebp-16]
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	and	ebx,ebx
	jz	_15
_5
	mov	eax,[ebp-32]
	mov	ecx,[ebp-12]
	cdq
	idiv	ecx
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	__bbMod
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_16
_17
	mov	ebx,[ebp-12]
	add	[ebp-16],ebx
	mov	ebx,[ebp-36]
	cmp	[ebp-44],ebx
	jnz	_18
	call	_fcaptureworld
_18
	sub	esp,20
	mov	[esp+12],1077936128
	mov	[esp+16],0
	mov	[esp+8],1073741824
	mov	[esp+4],1065353216
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	call	_fupdateworldcounter
	add	[ebp-44],1
_16
	mov	ebx,[ebp-36]
	cmp	[ebp-44],ebx
	jle	_17
_6
	sub	esp,4
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_frenderworld
	call	_frenderworldcounter1
	call	_frenderworldcounter2
	call	_fcounterdisplay
	sub	esp,4
	mov	[esp],1
	call	_fflip
_14
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_13
_4
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
_fupdateworldcounter
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmillisecs
	mov	[_vuwcurtime],eax
	mov	ebx,[_vuwchecktime]
	cmp	[_vuwcurtime],ebx
	jl	_19
	mov	ebx,[_vuwcurtime]
	add	ebx,1000
	mov	[_vuwchecktime],ebx
	mov	ebx,[_vuwcounter]
	mov	[_vuwcurfps],ebx
	mov	[_vuwcounter],0
	jmp	_20
_19
	add	[_vuwcounter],1
_20
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
_frenderworldcounter1
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmillisecs
	mov	[_vrw1curtime],eax
	mov	ebx,[_vrw1checktime]
	cmp	[_vrw1curtime],ebx
	jle	_21
	mov	ebx,[_vrw1curtime]
	add	ebx,1000
	mov	[_vrw1checktime],ebx
	mov	ebx,[_vrw1fpscounter]
	mov	[_vrw1curfps],ebx
	mov	[_vrw1fpscounter],0
	jmp	_22
_21
	add	[_vrw1fpscounter],1
_22
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
_frenderworldcounter2
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	add	[_vrw2counter],1
	cmp	[_vrw2time],0
	jnz	_23
	call	_fmillisecs
	mov	[_vrw2time],eax
_23
	mov	ebx,[_vrw2time]
	add	ebx,1001
	call	_fmillisecs
	cmp	ebx,eax
	jge	_24
	mov	ebx,[_vrw2counter]
	mov	[_vrw2framerate],ebx
	mov	[_vrw2counter],0
	call	_fmillisecs
	mov	[_vrw2time],eax
_24
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcounterdisplay
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],100
	mov	[esp+16],1
	mov	[esp+8],300
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,40
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vuwcurfps]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_27
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	sub	esp,40
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vrw1curfps]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	sub	esp,32
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[_vrw2framerate]
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
	mov	[esp+4],60
	mov	[esp],0
	call	_ftext
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vuwcurtime	.dd	0
	.align	4
_vuwchecktime	.dd	0
	.align	4
_vuwcurfps	.dd	0
	.align	4
_vuwcounter	.dd	0
	.align	4
_vrw1curtime	.dd	0
	.align	4
_vrw1checktime	.dd	0
	.align	4
_vrw1curfps	.dd	0
	.align	4
_vrw1fpscounter	.dd	0
	.align	4
_vrw2counter	.dd	0
	.align	4
_vrw2time	.dd	0
	.align	4
_vrw2framerate	.dd	0
_25	.db	"Const FPS 30 ",0
_26	.db	"UpdateWorld() / sec ",0
_27	.db	" ",0
_28	.db	"RenderWorld() / sec 1st method ",0
_29	.db	" ",0
_30	.db	"RenderWorld() / sec 2nd method ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

