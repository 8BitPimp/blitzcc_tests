
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
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	mov	[ebp-4],255
	mov	[ebp-8],255
	mov	[ebp-12],255
_9
	mov	[ebp-16],0
	jmp	_10
_11
	sub	esp,20
	mov	[esp],0
	mov	[esp+4],255
	call	_frand
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],255
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],480
	mov	[esp+16],1
	mov	[esp+8],20
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_frect
	add	[ebp-16],20
_10
	cmp	[ebp-16],620
	jle	_11
_5
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],90
	mov	[esp+16],1
	mov	[esp+8],250
	mov	[esp+4],10
	mov	[esp],10
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
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],11
	mov	[esp],11
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],23
	mov	[esp],11
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],36
	mov	[esp],11
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],48
	mov	[esp],11
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],60
	mov	[esp],11
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],72
	mov	[esp],11
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_19
	sub	[ebp-4],1
	cmp	[ebp-4],0
	jge	_20
	mov	[ebp-4],0
_20
_19
	sub	esp,4
	mov	[esp],16
	call	_fkeydown
	and	eax,eax
	jz	_21
	add	[ebp-4],1
	cmp	[ebp-4],255
	jle	_22
	mov	[ebp-4],255
_22
_21
	sub	esp,4
	mov	[esp],31
	call	_fkeydown
	and	eax,eax
	jz	_23
	sub	[ebp-8],1
	cmp	[ebp-8],0
	jge	_24
	mov	[ebp-8],0
_24
_23
	sub	esp,4
	mov	[esp],17
	call	_fkeydown
	and	eax,eax
	jz	_25
	add	[ebp-8],1
	cmp	[ebp-8],255
	jle	_26
	mov	[ebp-8],255
_26
_25
	sub	esp,4
	mov	[esp],32
	call	_fkeydown
	and	eax,eax
	jz	_27
	sub	[ebp-12],1
	cmp	[ebp-12],0
	jge	_28
	mov	[ebp-12],0
_28
_27
	sub	esp,4
	mov	[esp],18
	call	_fkeydown
	and	eax,eax
	jz	_29
	add	[ebp-12],1
	cmp	[ebp-12],255
	jle	_30
	mov	[ebp-12],255
_30
_29
	sub	esp,12
	mov	ebx,[ebp-8]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fgammafader
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_31
	mov	eax,0
	jmp	_3_leave
_31
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	and	eax,eax
	jz	_32
	mov	[ebp-4],255
	mov	[ebp-8],255
	mov	[ebp-12],255
_32
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_18
_6
	jmp	_9
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
_fgammafader
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
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp+20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1132396544
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],0
	jmp	_33
_34
	sub	esp,24
	mov	ebx,[ebp-8]
	mov	[esp+16],ebx
	mov	esi,[ebp-12]
	mov	[esp+20],esi
	mov	esi,[ebp-4]
	mov	[esp+12],esi
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fsetgamma
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	add	[ebp-28],1
_33
	cmp	[ebp-28],255
	jle	_34
_8
	sub	esp,4
	mov	[esp],0
	call	_fupdategamma
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
_12	.db	"Keys",0
_13	.db	"Q: r+   W: g+    E: b+",0
_14	.db	"A: r-   S: g-    D: b-",0
_15	.db	"Esc: Quit",0
_16	.db	"LMB: Regenerate background",0
_17	.db	"RMB: Reset r, g, b intensity",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

