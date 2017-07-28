
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],16
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	mov	eax,_asortarray
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3000
	mov	esi,_asortarray
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asortarray
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-8],0
	jmp	_24
_25
	sub	esp,8
	mov	[esp],65536
	mov	[esp+4],1
	call	_frand
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	[ebx],eax
	add	[ebp-8],1
_24
	cmp	[ebp-8],3000
	jle	_25
_3
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
	sub	esp,8
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	cmp	[ebp-16],1
	jz	_33
	cmp	[ebp-16],2
	jz	_34
	cmp	[ebp-16],3
	jz	_35
	cmp	[ebp-16],4
	jz	_36
	cmp	[ebp-16],5
	jz	_37
	jmp	_32
_33
	sub	esp,4
	mov	[esp],250
	call	_fdelay
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],3000
	call	_fshellsort
	jmp	_32
_34
	sub	esp,12
	mov	eax,_38
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-24],eax
	sub	esp,4
	mov	[esp],250
	call	_fdelay
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,12
	mov	[esp+4],3000
	mov	esi,[ebp-24]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fquicksort
	jmp	_32
_35
	sub	esp,4
	mov	[esp],250
	call	_fdelay
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],3000
	call	_fbubblesort
	jmp	_32
_36
	sub	esp,4
	mov	[esp],250
	call	_fdelay
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],3000
	call	_fselectionsort
	jmp	_32
_37
	sub	esp,4
	mov	[esp],250
	call	_fdelay
	call	_fmillisecs
	mov	[ebp-20],eax
	sub	esp,4
	mov	[esp],3000
	call	_finsertionsort
	jmp	_32
_32
	call	_fmillisecs
	sub	eax,[ebp-20]
	mov	[ebp-20],eax
	mov	[ebp-8],64
	jmp	_39
_40
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fprint
	add	[ebp-8],1
_39
	cmp	[ebp-8],128
	jle	_40
_5
	sub	esp,16
	mov	eax,_41
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fshellsort
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
	mov	[ebp-12],3
	jmp	_43
_42
	mov	[ebp-4],0
	jmp	_44
_45
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	jmp	_47
_46
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	sub	[ebp-8],ebx
_47
	mov	eax,[ebp-12]
	cmp	[ebp-8],eax
	setge	al
	movzx	eax,al
	mov	[ebp-20],eax
	mov	ebx,[ebp-8]
	sub	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-16]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jnz	_46
_9
	mov	ebx,[ebp-16]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	add	[ebp-4],1
_44
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_45
_8
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	cmp	ebx,0
	jz	_48
	mov	ebx,[ebp-12]
	sar	ebx,byte 1
	mov	[ebp-12],ebx
	jmp	_49
_48
	cmp	[ebp-12],1
	jnz	_50
	mov	[ebp-12],0
	jmp	_51
_50
	mov	[ebp-12],1
_51
_49
_43
	cmp	[ebp-12],0
	jg	_42
_7
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
_fselectionsort
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-4],0
	jmp	_52
_53
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	add	ebx,1
	mov	[ebp-8],ebx
	jmp	_54
_55
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	esi,[esi]
	cmp	ebx,esi
	jge	_56
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
_56
	add	[ebp-8],1
_54
	mov	ebx,[ebp+20]
	cmp	[ebp-8],ebx
	jle	_55
_12
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	mov	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	add	[ebp-4],1
_52
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jle	_53
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbubblesort
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	jmp	_57
_58
	mov	[ebp-8],1
	jmp	_59
_60
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	esi,[esi]
	cmp	ebx,esi
	jle	_61
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	sub	esi,1
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
_61
	add	[ebp-8],1
_59
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_60
_15
	add	[ebp-4],-1
_57
	cmp	[ebp-4],0
	jge	_58
_14
	mov	eax,0
	jmp	_13_leave
_13_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fquicksort
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
	mov	[ebp-20],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	[ebp-8],ebx
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_62
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_frand
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	jmp	_63
_62
	mov	ebx,[ebp+20]
	add	ebx,[ebp+24]
	sar	ebx,byte 1
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
_63
_64
	jmp	_66
_65
	add	[ebp-4],1
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jle	_67
	jmp	_18
_67
_66
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_asortarray]
	mov	eax,[eax]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_65
_18
	jmp	_69
_68
	sub	[ebp-8],1
	cmp	[ebp-8],0
	jge	_70
	jmp	_19
_70
_69
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jnz	_68
_19
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_71
	jmp	_17
_71
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	add	[ebp-4],1
	sub	[ebp-8],1
	cmp	[ebp-8],0
	jge	_72
	jmp	_17
_72
	jmp	_64
_17
	mov	ebx,[ebp-8]
	cmp	[ebp+20],ebx
	jge	_73
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fquicksort
_73
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jge	_74
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fquicksort
_74
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_finsertionsort
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-4],1
	jmp	_75
_76
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	jmp	_78
_77
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	sub	[ebp-8],1
_78
	cmp	[ebp-8],0
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[ebp-8]
	sub	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asortarray]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-12]
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jnz	_77
_22
	mov	ebx,[ebp-12]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_asortarray]
	mov	[esi],ebx
	add	[ebp-4],1
_75
	mov	ebx,[ebp+20]
	sub	ebx,1
	cmp	[ebp-4],ebx
	jle	_76
_21
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_23	.db	"Arial",0
	.align	4
_asortarray	.dd	0
	.dd	1
	.dd	1
	.dd	0
_26	.db	"1.  Shell Sort",0
_27	.db	"2.  Quick Sort",0
_28	.db	"3.  Bubble Sort (Warning: Can be very slow)",0
_29	.db	"4.  Selection Sort",0
_30	.db	"5.  Insertion Sort",0
_31	.db	"Pick a method: ",0
_38	.db	"Use a random pivot position with the quick sort function? (0 or 1)    ",0
_41	.db	"Time Taken ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

