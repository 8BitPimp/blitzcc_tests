
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
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],1
	mov	[esp],350
	call	_fcreateimage
	mov	[_vupdate],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],200
	mov	[esp+4],375
	mov	[esp],10
	call	_frect
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],500
	mov	[esp+4],375
	mov	[esp],250
	call	_frect
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],150
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],185
	mov	[esp],0
	call	_ftext
	jmp	_13
_12
	add	[_vr],9
	add	[_vg],7
	add	[_vb],3
	sub	esp,12
	mov	ebx,[_vg]
	mov	[esp+4],ebx
	mov	esi,[_vb]
	mov	[esp+8],esi
	mov	eax,[_vr]
	mov	[esp],eax
	call	_fcolor
	add	[_vline1],4
	add	[_vline2],4
	call	_fmouseyaccel
	call	_fmousexaccel
	call	_fchecky
	call	_fcheckx
	call	_fplotacceldata
	call	_fplotmouse
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],360
	mov	[esp],10
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_12
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmouseyaccel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmouseyspeed
	sub	esp,4
	mov	[esp],20
	call	_fdelay
	call	_fmouseyspeed
	mov	[_vchangey],eax
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmousexaccel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmousexspeed
	sub	esp,4
	mov	[esp],20
	call	_fdelay
	call	_fmousexspeed
	neg	eax
	mov	[_vchangex],eax
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
_fchecky
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fgraphicswidth
	cmp	[_vline1],eax
	jle	_15
	call	_fcls
	mov	[_vline1],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],200
	mov	[esp+4],375
	mov	[esp],10
	call	_frect
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],525
	mov	[esp+4],375
	mov	[esp],250
	call	_frect
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],150
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],185
	mov	[esp],0
	call	_ftext
_15
	cmp	[_vchangey],-50
	jge	_18
	mov	[_vchangey],0
	jmp	_19
_18
	cmp	[_vchangey],50
	jle	_20
	mov	[_vchangey],49
_20
_19
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcheckx
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fgraphicswidth
	cmp	[_vline2],eax
	jle	_21
	call	_fcls
	mov	[_vline2],0
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],150
	mov	[esp+16],1
	call	_fgraphicswidth
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],0
	call	_frect
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],200
	mov	[esp+4],375
	mov	[esp],10
	call	_frect
	sub	esp,20
	mov	[esp+12],200
	mov	[esp+16],1
	mov	[esp+8],525
	mov	[esp+4],375
	mov	[esp],250
	call	_frect
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],150
	mov	[esp],0
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],185
	mov	[esp],0
	call	_ftext
_21
	cmp	[_vchangex],-50
	jge	_24
	mov	[_vchangex],-50
	jmp	_25
_24
	cmp	[_vchangex],50
	jle	_26
	mov	[_vchangex],49
_26
_25
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
_fplotacceldata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vline1]
	mov	[esp],eax
	mov	ebx,[_vchangey]
	add	ebx,75
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline2]
	mov	[esp],eax
	mov	ebx,[_vchangex]
	add	ebx,275
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline1]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[_vchangey]
	add	ebx,75
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline2]
	sub	eax,1
	mov	[esp],eax
	mov	ebx,[_vchangex]
	add	ebx,275
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline1]
	sub	eax,2
	mov	[esp],eax
	mov	ebx,[_vchangey]
	add	ebx,75
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline2]
	sub	eax,2
	mov	[esp],eax
	mov	ebx,[_vchangex]
	add	ebx,275
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline1]
	sub	eax,3
	mov	[esp],eax
	mov	ebx,[_vchangey]
	add	ebx,75
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	eax,[_vline2]
	sub	eax,3
	mov	[esp],eax
	mov	ebx,[_vchangex]
	add	ebx,275
	mov	[esp+4],ebx
	call	_fplot
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
_fplotmouse
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,12
	mov	ebx,[_vg]
	mov	[esp+4],ebx
	mov	esi,[_vb]
	mov	[esp+8],esi
	mov	eax,[_vr]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	call	_fmousey
	mov	ecx,3
	cdq
	idiv	ecx
	add	eax,375
	mov	[esp+4],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	sar	ebx,byte 2
	add	ebx,10
	mov	[esp],ebx
	mov	eax,ebx
	call	_fplot
	mov	ebx,eax
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vline1	.dd	0
	.align	4
_vline2	.dd	0
	.align	4
_vchangex	.dd	0
	.align	4
_vchangey	.dd	0
	.align	4
_vmouse	.dd	0
	.align	4
_vupdate	.dd	0
	.align	4
_vr	.dd	0
	.align	4
_vg	.dd	0
	.align	4
_vb	.dd	0
	.align	4
_vtemp1	.dd	0
	.align	4
_vtemp2	.dd	0
	.align	4
_vact	.dd	0
_10	.db	"Mouse Y Acceleration",0
_11	.db	"Mouse X Acceleration",0
_14	.db	"Mouse Plot",0
_16	.db	"Mouse Y Acceleration",0
_17	.db	"Mouse X Acceleration",0
_22	.db	"Mouse Y Acceleration",0
_23	.db	"Mouse X Acceleration",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

