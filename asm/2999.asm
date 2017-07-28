
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
	mov	[ebp-48],ebx
	sub	esp,4
	mov	[esp],4
	call	_fcreatebank
	mov	[_vg_int_bank],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_19
_20
	mov	[ebp-12],0
	jmp	_21
_22
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,24
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_21
	cmp	[ebp-12],63
	jle	_22
_4
	add	[ebp-8],1
_19
	cmp	[ebp-8],63
	jle	_20
_3
	mov	ebx,[ebp-4]
	mov	[ebp-16],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_23
_24
	mov	[ebp-12],0
	jmp	_25
_26
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],255
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,24
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_25
	cmp	[ebp-12],63
	jle	_26
_6
	add	[ebp-8],1
_23
	cmp	[ebp-8],63
	jle	_24
_5
	mov	ebx,[ebp-4]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_27
_28
	mov	[ebp-12],0
	jmp	_29
_30
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],2
	mov	[esp+8],255
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,24
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_29
	cmp	[ebp-12],63
	jle	_30
_8
	add	[ebp-8],1
_27
	cmp	[ebp-8],63
	jle	_28
_7
	mov	ebx,[ebp-4]
	mov	[ebp-24],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_31
_32
	mov	[ebp-12],0
	jmp	_33
_34
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	[esp+4],3
	mov	[esp+8],255
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	call	_fpokebyte
	sub	esp,24
	mov	eax,[_vg_int_bank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekint
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_33
	cmp	[ebp-12],63
	jle	_34
_10
	add	[ebp-8],1
_31
	cmp	[ebp-8],63
	jle	_32
_9
	mov	ebx,[ebp-4]
	mov	[ebp-28],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_35
_36
	mov	[ebp-12],0
	jmp	_37
_38
	sub	esp,16
	mov	[esp+8],255
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_37
	cmp	[ebp-12],63
	jle	_38
_12
	add	[ebp-8],1
_35
	cmp	[ebp-8],63
	jle	_36
_11
	mov	ebx,[ebp-4]
	mov	[ebp-32],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_39
_40
	mov	[ebp-12],0
	jmp	_41
_42
	sub	esp,16
	mov	[esp+8],65280
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_41
	cmp	[ebp-12],63
	jle	_42
_14
	add	[ebp-8],1
_39
	cmp	[ebp-8],63
	jle	_40
_13
	mov	ebx,[ebp-4]
	mov	[ebp-36],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_43
_44
	mov	[ebp-12],0
	jmp	_45
_46
	sub	esp,16
	mov	[esp+8],16711680
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_45
	cmp	[ebp-12],63
	jle	_46
_16
	add	[ebp-8],1
_43
	cmp	[ebp-8],63
	jle	_44
_15
	mov	ebx,[ebp-4]
	mov	[ebp-40],ebx
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],0
	jmp	_47
_48
	mov	[ebp-12],0
	jmp	_49
_50
	sub	esp,16
	mov	[esp+8],-2147483648
	mov	[esp+12],0
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fwritepixel
	add	[ebp-12],1
_49
	cmp	[ebp-12],63
	jle	_50
_18
	add	[ebp-8],1
_47
	cmp	[ebp-8],63
	jle	_48
_17
	mov	ebx,[ebp-4]
	mov	[ebp-44],ebx
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	ebx,[ebp-48]
	mov	[ebp-12],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_51
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-12],20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-12],20
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],64
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],128
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],192
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[ebp-12]
	add	ebx,64
	add	ebx,20
	mov	[ebp-12],ebx
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_53
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-12],20
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_ftext
	add	[ebp-12],20
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],64
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],128
	mov	eax,[ebp-40]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	[esp+4],192
	mov	eax,[ebp-44]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vg_int_bank	.dd	0
_51	.db	"This shows the arrangement of pixel bytes in a bank.",0
_52	.db	"Slot 0 = Blue. Slot 1 = Green. Slot 2 = Red. Slot 3 = Alpha",0
_53	.db	"This shows the arrangement of pixel data in an integer value.",0
_54	.db	"Left = Least significant byte (value: 255). Right = Most significant byte (value: 4278190080).",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

