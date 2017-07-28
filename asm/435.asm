
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
	sub	esp,4
	mov	[esp],0
	call	_fjoytype
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jz	_7
	cmp	[ebp-4],1
	jz	_8
	cmp	[ebp-4],2
	jz	_9
	jmp	_6
_7
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_6
_8
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_6
_9
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_6
_6
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],0
	call	_fjoytype
	cmp	eax,0
	jz	_14
	mov	[ebp-8],0
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],0
	call	_fwaitjoy
	jmp	_18
_17
_l_2label
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],40
	call	_flocate
	sub	esp,16
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyx
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyy
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyxdir
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyydir
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyz
	mov	ebx,eax
	mov	eax,[ebp-16]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromFloat
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fflushjoy
_l_2lab2
	sub	esp,4
	mov	[esp],0
	call	_fjoyxdir
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fjoyydir
	mov	ebx,eax
	mov	eax,[ebp-16]
	cmp	ebx,0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_28
	jmp	_l_2label
_28
	sub	esp,4
	mov	[esp],0
	call	_fgetjoy
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_29
	jmp	_l_2lab2
_29
_18
	sub	esp,8
	mov	[esp],10
	mov	[esp+4],0
	call	_fjoyhit
	mov	[ebp-12],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	cmp	eax,0
	jz	_17
_4
	jmp	_30
_14
	jmp	_32
_31
_32
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_31
_5
_30
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_10	.db	"Sorry, no joystick attached to system!",0
_11	.db	"Digital joystick is attached to system!",0
_12	.db	"Analog joystick is attched to system!",0
_13	.db	"",0
_15	.db	"press a joypad button(1-12) to start",0
_16	.db	"press 'select' button to quit",0
_19	.db	"Joystick button n°",0
_20	.db	"joyX: ",0
_21	.db	"joyY: ",0
_22	.db	"joyXDir: ",0
_23	.db	"joyYDir: ",0
_24	.db	"joyZ: not supported",0
_25	.db	"",0
_26	.db	"",0
_27	.db	"press Select Button to quit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

