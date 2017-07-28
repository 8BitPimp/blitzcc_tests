
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],1
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vprimestofind],100000000
	cmp	[_vprimestofind],2000000000
	jle	_8
	mov	[_vprimestofind],2000000000
_8
	mov	[ebp-4],2
	mov	[ebp-8],4
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],384
	mov	[esp],512
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jz	_11
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-4],eax
_11
	sub	esp,4
	mov	eax,_aprimes
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vprimestofind]
	add	ebx,[ebp-4]
	mov	esi,_aprimes
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aprimes
	mov	[esp],eax
	call	__bbDimArray
	cmp	[ebp-8],0
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	mov	[ebp-40],eax
	cmp	[ebp-12],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	and	eax,eax
	jz	_12
	mov	[ebp-4],2
	mov	[ebp-8],4
	mov	ebx,2
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_aprimes]
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aprimes]
	mov	[esi],ebx
	jmp	_13
_12
	mov	[ebp-16],0
	jmp	_14
_15
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	[ebx],eax
	add	[ebp-16],1
_14
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_15
_3
_13
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	mov	ebx,[ebp-4]
	cmp	[_vprimestofind],ebx
	jle	_16
	mov	[ebp-20],0
	mov	[ebp-24],-1
	mov	[ebp-28],0
_17
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],1000
	call	__bbMod
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-24],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_18
	call	_fcls
	sub	esp,56
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_21
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+4],384
	mov	[esp],512
	call	_ftext
	call	_fmillisecs
	sub	eax,[ebp-28]
	cmp	eax,30
	jl	_22
	sub	esp,4
	mov	[esp],1
	call	_fflip
_22
	call	_fmillisecs
	mov	[ebp-28],eax
	mov	ebx,[ebp-4]
	mov	[ebp-24],ebx
_18
	sub	esp,8
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	[ebp-36],1
	mov	[ebp-16],0
	jmp	_23
_24
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-32]
	jle	_25
	jmp	_5
	jmp	_26
_25
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbMod
	cmp	eax,0
	jnz	_27
	mov	[ebp-36],0
	jmp	_5
_27
_26
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_28
	mov	[ebp-20],1
_28
	cmp	[ebp-20],1
	jnz	_29
	jmp	_5
_29
	add	[ebp-16],1
_23
	mov	ebx,[ebp-32]
	cmp	[ebp-16],ebx
	jle	_24
_5
	cmp	[ebp-20],1
	jnz	_30
	mov	[ebp-36],0
	sub	[ebp-8],1
	jmp	_4
_30
	cmp	[ebp-36],1
	jnz	_31
	mov	ebx,[ebp-8]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aprimes]
	mov	[esi],ebx
	add	[ebp-4],1
_31
	add	[ebp-8],1
	cmp	[ebp-8],2147483647
	jnz	_32
	call	_fcls
	sub	esp,56
	mov	eax,_33
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_34
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_35
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],384
	mov	[esp],512
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
_36
	sub	esp,4
	mov	[esp],28
	call	_fkeyhit
	mov	[ebp-40],eax
	sub	esp,4
	mov	[esp],156
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	and	eax,eax
	jz	_36
_6
	jmp	_4
_32
	mov	eax,[_vprimestofind]
	cmp	[ebp-4],eax
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-20],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	and	eax,eax
	jz	_17
_4
	call	_fcls
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_37
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],384
	mov	[esp],512
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,8
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-12],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	[ebp-16],0
	jmp	_39
_40
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	add	[ebp-16],1
_39
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-16],ebx
	jle	_40
_7
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
_16
	call	_fcls
	cmp	[ebp-4],10
	jl	_41
	sub	esp,32
	mov	eax,_42
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,9
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
_41
	cmp	[ebp-4],100
	jl	_43
	sub	esp,32
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,99
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
_43
	cmp	[ebp-4],1000
	jl	_45
	sub	esp,32
	mov	eax,_46
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
_45
	cmp	[ebp-4],10000
	jl	_47
	sub	esp,32
	mov	eax,_48
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,9999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],60
	mov	[esp],0
	call	_ftext
_47
	cmp	[ebp-4],100000
	jl	_49
	sub	esp,32
	mov	eax,_50
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,99999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],80
	mov	[esp],0
	call	_ftext
_49
	cmp	[ebp-4],1000000
	jl	_51
	sub	esp,32
	mov	eax,_52
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,999999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],100
	mov	[esp],0
	call	_ftext
_51
	cmp	[ebp-4],10000000
	jl	_53
	sub	esp,32
	mov	eax,_54
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,9999999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],120
	mov	[esp],0
	call	_ftext
_53
	cmp	[ebp-4],100000000
	jl	_55
	sub	esp,32
	mov	eax,_56
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,99999999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],140
	mov	[esp],0
	call	_ftext
_55
	cmp	[ebp-4],1000000000
	jl	_57
	sub	esp,32
	mov	eax,_58
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,999999999
	shl	ebx,byte 2
	add	ebx,[_aprimes]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],160
	mov	[esp],0
	call	_ftext
_57
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
_vprimestofind	.dd	0
_9	.db	"Loading...",0
_10	.db	"Primes.dat",0
	.align	4
_aprimes	.dd	0
	.dd	1
	.dd	1
	.dd	0
_19	.db	"I have found ",0
_20	.db	" primes so far and checked through ",0
_21	.db	".",0
_33	.db	"The ",0
_34	.db	"th prime number (",0
_35	.db	") is at the maximum for the int variable type.  Hit Enter to save and exit.",0
_37	.db	"Saving...",0
_38	.db	"Primes.dat",0
_42	.db	"The tenth prime number is:              ",0
_44	.db	"The hundredth prime number is:          ",0
_46	.db	"The thousandth prime number is:         ",0
_48	.db	"The ten-thousandth prime number is:     ",0
_50	.db	"The hundred-thousandth prime number is: ",0
_52	.db	"The millionth prime number is:          ",0
_54	.db	"The ten-millionth prime number is:      ",0
_56	.db	"The hundred-millionth prime number is:  ",0
_58	.db	"The billionth prime number is:          ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

