
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],600
	call	_fgraphics
	call	_fcountgfxdrivers
	mov	[ebp-4],eax
	call	_fcountgfxmodes
	mov	[ebp-8],eax
_6
	sub	esp,32
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcurrenttime
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],80
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	mov	eax,ebx
	call	_fcurrentdate
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],100
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],120
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],140
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmousez
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],160
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmousexspeed
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],180
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmouseyspeed
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],200
	mov	[esp],10
	call	_ftext
	sub	esp,32
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	mov	eax,ebx
	call	_fmousezspeed
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],220
	mov	[esp],10
	call	_ftext
	cmp	[ebp-12],0
	jnz	_15
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],10
	call	_ftext
_15
	cmp	[ebp-12],1
	jnz	_17
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],10
	call	_ftext
_17
	cmp	[ebp-12],2
	jnz	_19
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],240
	mov	[esp],10
	call	_ftext
_19
	cmp	[ebp-12],0
	jle	_21
	sub	esp,32
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyx
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],290
	mov	[esp],10
	call	_ftext
_21
	cmp	[ebp-12],0
	jle	_23
	sub	esp,32
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyy
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],310
	mov	[esp],10
	call	_ftext
_23
	cmp	[ebp-12],0
	jle	_25
	sub	esp,32
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	[ebp-36],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyz
	mov	ebx,eax
	mov	eax,[ebp-36]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],330
	mov	[esp],10
	call	_ftext
_25
	call	_ftotalvidmem
	mov	ecx,1000000
	cdq
	idiv	ecx
	mov	[ebp-16],eax
	call	_favailvidmem
	mov	ecx,1000000
	cdq
	idiv	ecx
	mov	[ebp-20],eax
	sub	esp,40
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_28
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],350
	mov	[esp],10
	call	_ftext
	sub	esp,40
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_30
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],370
	mov	[esp],10
	call	_ftext
	sub	esp,48
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_31
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_32
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],390
	mov	[esp],10
	call	_ftext
	call	_fgetkey
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jle	_33
	mov	[ebp-28],1
_33
	cmp	[ebp-28],1
	jnz	_34
	sub	esp,32
	mov	eax,_35
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],260
	mov	[esp],10
	call	_ftext
_34
	cmp	[ebp-28],1
	jnz	_36
	sub	esp,4
	mov	[esp],499
	call	_fdelay
_36
	cmp	[ebp-28],1
	jnz	_37
	mov	[ebp-28],0
_37
	sub	esp,4
	mov	[esp],101
	call	_fdelay
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_6
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
_4	.db	"deh - system status2.0",0
_5	.db	"",0
_7	.db	"time : ",0
_8	.db	"date : ",0
_9	.db	"mouseX : ",0
_10	.db	"mouseY : ",0
_11	.db	"mousez : ",0
_12	.db	"mousexspeed : ",0
_13	.db	"mouseyspeed : ",0
_14	.db	"mousezspeed : ",0
_16	.db	"no joystick",0
_18	.db	"digital joystick",0
_20	.db	"analog joystick",0
_22	.db	"joy x : ",0
_24	.db	"joy y : ",0
_26	.db	"joy z : ",0
_27	.db	"you have ",0
_28	.db	" graphics card(s) on your computer",0
_29	.db	"with a total of ",0
_30	.db	" modes and a total memory of ",0
_31	.db	" megabytes of which ",0
_32	.db	" megabytes are available",0
_35	.db	"keypress : ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
