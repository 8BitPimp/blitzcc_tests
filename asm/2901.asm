
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
	sub	esp,4
	mov	eax,_abinaryheap_sort
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_abinaryheap_sort
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abinaryheap_sort
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abinaryheap_elements
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_abinaryheap_elements
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abinaryheap_elements
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abinaryheap_value
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1000
	mov	esi,_abinaryheap_value
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abinaryheap_value
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abinaryheap_data
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_abinaryheap_data
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1000
	mov	esi,_abinaryheap_data
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abinaryheap_data
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
_fbinaryheap_new
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_20
_21
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_22
	mov	ebx,[ebp+20]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abinaryheap_sort]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	jmp	_3_leave
	jmp	_23
_22
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
_23
	add	[ebp-4],1
_20
	cmp	[ebp-4],5
	jle	_21
_4
	mov	eax,0
	jmp	_3_leave
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbinaryheap_delete
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp+20],5
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_24
	mov	eax,0
	jmp	_5_leave
_24
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_25
	mov	eax,0
	jmp	_5_leave
_25
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_sort]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_elements]
	mov	[esi],ebx
	mov	[ebp-4],1
	jmp	_26
_27
	mov	ebx,0
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_value]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_abinaryheap_data
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_data]
	mov	[esi],ebx
	add	[ebp-4],1
_26
	cmp	[ebp-4],1000
	jle	_27
_6
	mov	eax,1
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
_fbinaryheap_add
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp+20],5
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	and	eax,eax
	jz	_28
	mov	eax,0
	jmp	_7_leave
_28
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_29
	mov	eax,0
	jmp	_7_leave
_29
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	cmp	ebx,1000
	jl	_30
	mov	eax,0
	jmp	_7_leave
_30
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_elements]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,[ebp+24]
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_value]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,_abinaryheap_data
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_data]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
_31
	sub	esp,4
	mov	eax,[ebp-4]
	sar	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-20],eax
	cmp	[ebp-20],0
	jg	_32
	jmp	_8
_32
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	mov	eax,[ebp-16]
	cmp	[ebp-12],eax
	setge	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	and	eax,ebx
	mov	[ebp-24],eax
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	cmp	[ebp-8],2
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-24]
	and	ebx,esi
	or	eax,ebx
	and	eax,eax
	jz	_33
	jmp	_8
	jmp	_34
_33
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbinaryheap_private_swap
	mov	ebx,[ebp-20]
	mov	[ebp-4],ebx
_34
	jmp	_31
_8
	mov	eax,1
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbinaryheap_remove
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp+20],5
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	or	eax,ebx
	and	eax,eax
	jz	_35
	mov	eax,0
	jmp	_9_leave
_35
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_36
	mov	eax,0
	jmp	_9_leave
_36
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	cmp	ebx,0
	jg	_37
	mov	eax,0
	jmp	_9_leave
_37
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_elements]
	mov	[esi],ebx
	mov	ebx,_abinaryheap_data
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_data]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,0
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_value]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_abinaryheap_data
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_data]
	mov	[esi],ebx
	sub	esp,12
	mov	[esp+4],1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_elements]
	mov	esi,[esi]
	add	esi,1
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbinaryheap_private_swap
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	[ebp-40],1
_38
	sub	esp,4
	mov	eax,[ebp-40]
	shl	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	eax,[ebp-40]
	shl	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-36],eax
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-40]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	cmp	[ebp-32],1000
	jg	_39
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-32]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
	jmp	_40
_39
	mov	[ebp-16],0
_40
	cmp	[ebp-36],1000
	jg	_41
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-36]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	jmp	_42
_41
	mov	[ebp-20],0
_42
	cmp	[ebp-32],1000
	jg	_43
	mov	eax,_abinaryheap_data
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-32]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_abinaryheap_data]
	mov	eax,[eax]
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-24],eax
	jmp	_44
_43
	mov	[ebp-24],0
_44
	cmp	[ebp-36],1000
	jg	_45
	mov	eax,_abinaryheap_data
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-36]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_abinaryheap_data]
	mov	eax,[eax]
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-28],eax
	jmp	_46
_45
	mov	[ebp-28],0
_46
	mov	eax,[ebp-16]
	cmp	[ebp-12],eax
	setge	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	cmp	[ebp-8],2
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-44]
	and	ebx,esi
	or	eax,ebx
	mov	ebx,[ebp-24]
	and	ebx,eax
	mov	eax,[ebp-20]
	cmp	[ebp-12],eax
	setge	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-8],1
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-44]
	and	eax,esi
	mov	[ebp-44],eax
	mov	esi,[ebp-20]
	cmp	[ebp-12],esi
	mov	eax,esi
	setle	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	cmp	[ebp-8],2
	mov	eax,edi
	setz	al
	movzx	eax,al
	mov	edi,eax
	mov	eax,[ebp-44]
	and	esi,edi
	or	eax,esi
	mov	esi,[ebp-28]
	and	esi,eax
	or	ebx,esi
	and	ebx,ebx
	jz	_47
	mov	eax,[ebp-20]
	cmp	[ebp-16],eax
	setle	al
	movzx	eax,al
	mov	[ebp-44],eax
	cmp	[ebp-8],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	and	eax,ebx
	mov	[ebp-44],eax
	mov	ebx,[ebp-20]
	cmp	[ebp-16],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[ebp-44],eax
	cmp	[ebp-8],2
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-44]
	and	ebx,esi
	or	eax,ebx
	mov	ebx,[ebp-24]
	and	ebx,eax
	and	ebx,ebx
	jz	_48
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbinaryheap_private_swap
	mov	ebx,[ebp-32]
	mov	[ebp-40],ebx
	jmp	_49
_48
	sub	esp,12
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	esi,[ebp-36]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbinaryheap_private_swap
	mov	ebx,[ebp-36]
	mov	[ebp-40],ebx
_49
	jmp	_50
_47
	jmp	_10
_50
	jmp	_38
_10
	mov	eax,[ebp-4]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbinaryheap_modify
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp+20],5
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	or	eax,ebx
	and	eax,eax
	jz	_51
	mov	eax,0
	jmp	_11_leave
_51
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_52
	mov	eax,0
	jmp	_11_leave
_52
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	[ebp-8],1
	jmp	_53
_54
	mov	eax,_abinaryheap_value
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_abinaryheap_value]
	mov	eax,[eax]
	cmp	eax,[ebp+24]
	setz	al
	movzx	eax,al
	mov	[ebp-32],eax
	mov	ebx,_abinaryheap_data
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_data]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+28]
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	and	eax,eax
	jz	_55
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	jmp	_12
_55
	add	[ebp-8],1
_53
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_54
_12
	mov	ebx,[ebp+32]
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_value]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	mov	[ebp-16],ebx
_56
	sub	esp,4
	mov	eax,[ebp-12]
	sar	eax,byte 1
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ffloor
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-28],eax
	cmp	[ebp-28],0
	jg	_57
	jmp	_13
_57
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-12]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-28]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	eax,[ebp-24]
	cmp	[ebp-20],eax
	setge	al
	movzx	eax,al
	mov	[ebp-32],eax
	cmp	[ebp-16],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	and	eax,ebx
	mov	[ebp-32],eax
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[ebp-32],eax
	cmp	[ebp-16],2
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-32]
	and	ebx,esi
	or	eax,ebx
	and	eax,eax
	jz	_58
	jmp	_13
	jmp	_59
_58
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbinaryheap_private_swap
	mov	ebx,[ebp-28]
	mov	[ebp-12],ebx
_59
	jmp	_56
_13
	mov	eax,1
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fbinaryheap_draw
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-68],eax
	cmp	[ebp+20],5
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	or	eax,ebx
	and	eax,eax
	jz	_60
	mov	eax,0
	jmp	_14_leave
_60
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_61
	mov	eax,0
	jmp	_14_leave
_61
	call	_fgraphicswidth
	mov	[ebp-4],eax
	call	_fgraphicsheight
	mov	[ebp-8],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],200
	mov	[esp+8],200
	mov	[esp],200
	call	_fclscolor
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_elements]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	[ebp-16],0
_62
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	mov	[ebp-16],ebx
	add	[ebp-16],1
	add	[ebp-20],1
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jl	_63
	jmp	_15
_63
	jmp	_62
_15
	cmp	[ebp+28],0
	jnz	_64
	mov	ebx,[ebp-20]
	mov	[ebp+28],ebx
_64
	cmp	[ebp-12],1
	jg	_65
	mov	[ebp+28],2
_65
_66
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_67
	add	[ebp-48],10
_67
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_68
	sub	[ebp-48],10
_68
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_69
	sub	[ebp-44],10
_69
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_70
	add	[ebp-44],10
_70
	sub	esp,4
	mov	[esp],201
	call	_fkeyhit
	mov	[ebp-68],eax
	mov	ebx,[ebp-20]
	cmp	[ebp+28],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	and	eax,eax
	jz	_71
	add	[ebp+28],1
_71
	sub	esp,4
	mov	[esp],209
	call	_fkeyhit
	mov	[ebp-68],eax
	cmp	[ebp+28],1
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	and	eax,ebx
	and	eax,eax
	jz	_72
	sub	[ebp+28],1
_72
	call	_fcls
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,48
	mov	eax,_73
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,_74
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-68],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-68]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	ebx,[ebp-48]
	add	ebx,5
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sar	eax,byte 1
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_75
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	ebx,[ebp-48]
	add	ebx,25
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sar	eax,byte 1
	add	eax,[ebp-44]
	mov	[esp],eax
	call	_ftext
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	mov	[ebp-68],eax
	sub	esp,4
	mov	[ebp-72],eax
	sub	esp,4
	mov	ebx,_76
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringwidth
	mov	ebx,eax
	mov	eax,[ebp-68]
	push	ebx
	fild	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-60],1
	jmp	_77
_78
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-60]
	sub	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-24],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-60]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	sub	ebx,1
	neg	ebx
	mov	[ebp-36],ebx
	mov	[ebp-64],0
	jmp	_79
_80
	mov	ebx,[ebp-24]
	add	ebx,[ebp-64]
	cmp	ebx,1000
	jle	_81
	jmp	_18
_81
	mov	ebx,[ebp-24]
	add	ebx,[ebp-64]
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
	mov	eax,[ebp-24]
	add	eax,[ebp-64]
	mov	ebx,_abinaryheap_data
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_abinaryheap_data]
	mov	eax,[eax]
	cmp	eax,0
	setnz	al
	movzx	eax,al
	mov	[ebp-56],eax
	mov	ebx,[ebp+28]
	cmp	[ebp-60],ebx
	jge	_82
	sub	esp,12
	mov	[esp+4],180
	mov	[esp+8],180
	mov	[esp],180
	call	_fcolor
	sub	esp,24
	mov	[esp],1073741824
	mov	ebx,[ebp-60]
	add	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,[ebp-60]
	add	esi,1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	call	__bbFPow
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	fchs
	mov	esi,[ebp-64]
	shl	esi,byte 1
	shl	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	fmulp	st(1)
	mov	esi,[ebp-4]
	sar	esi,byte 1
	add	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	add	ebx,1
	imul	ebx,20
	add	ebx,[ebp-48]
	add	ebx,40
	mov	[esp+12],ebx
	mov	ebx,[ebp-60]
	imul	ebx,20
	add	ebx,[ebp-48]
	add	ebx,40
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sar	eax,byte 1
	add	eax,[ebp-44]
	mov	esi,[ebp-64]
	shl	esi,byte 1
	add	esi,[ebp-36]
	imul	esi,[ebp-28]
	add	eax,esi
	mov	[esp],eax
	call	_fline
	sub	esp,24
	mov	[esp],1073741824
	mov	ebx,[ebp-60]
	add	ebx,1
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	fdivrp	st(1)
	sub	esp,8
	mov	[esp],1073741824
	mov	esi,[ebp-60]
	add	esi,1
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+4],esi
	call	__bbFPow
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	fchs
	mov	esi,[ebp-64]
	shl	esi,byte 1
	add	esi,1
	shl	esi,byte 1
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	fmulp	st(1)
	mov	esi,[ebp-4]
	sar	esi,byte 1
	add	esi,[ebp-44]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	add	ebx,1
	imul	ebx,20
	add	ebx,[ebp-48]
	add	ebx,40
	mov	[esp+12],ebx
	mov	ebx,[ebp-60]
	imul	ebx,20
	add	ebx,[ebp-48]
	add	ebx,40
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	sar	eax,byte 1
	add	eax,[ebp-44]
	mov	esi,[ebp-64]
	shl	esi,byte 1
	add	esi,[ebp-36]
	imul	esi,[ebp-28]
	add	eax,esi
	mov	[esp],eax
	call	_fline
_82
	cmp	[ebp-56],0
	jz	_83
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	jmp	_84
_83
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],100
	mov	[esp],230
	call	_fcolor
_84
	sub	esp,20
	mov	eax,[ebp-4]
	sar	eax,byte 1
	add	eax,[ebp-44]
	mov	ebx,[ebp-64]
	shl	ebx,byte 1
	add	ebx,[ebp-36]
	imul	ebx,[ebp-28]
	add	eax,ebx
	mov	[esp],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[ebp-68],eax
	sub	esp,4
	mov	esi,[ebp-52]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrFromInt
	mov	esi,eax
	mov	eax,[ebp-68]
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	imul	ebx,20
	add	ebx,[ebp-48]
	add	ebx,40
	mov	[esp+4],ebx
	call	_ftext
	add	[ebp-64],1
_79
	mov	ebx,[ebp-32]
	sub	ebx,1
	cmp	[ebp-64],ebx
	jle	_80
_18
	add	[ebp-60],1
_77
	mov	ebx,[ebp+28]
	cmp	[ebp-60],ebx
	jle	_78
_17
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fkeyhit
	mov	[ebp-68],eax
	cmp	[ebp+24],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-68]
	or	eax,ebx
	and	eax,eax
	jz	_66
_16
	mov	eax,[ebp+28]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fbinaryheap_private_swap
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],0
	setle	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[ebp+20],5
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_85
	mov	eax,0
	jmp	_19_leave
_85
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_sort]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_86
	mov	eax,0
	jmp	_19_leave
_86
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	mov	ebx,_abinaryheap_data
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_data]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,_abinaryheap_value
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+28]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_value]
	mov	ebx,[ebx]
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_value]
	mov	[esi],ebx
	mov	ebx,_abinaryheap_data
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+28]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_abinaryheap_data]
	mov	ebx,[ebx]
	mov	esi,_abinaryheap_data
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+24]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_data]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,_abinaryheap_value
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+28]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_value]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	mov	esi,_abinaryheap_data
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+28]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_abinaryheap_data]
	mov	[esi],ebx
	mov	eax,1
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_abinaryheap_sort	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_abinaryheap_elements	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_abinaryheap_value	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_abinaryheap_data	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_73	.db	"Exploring BinaryHeap: ",0
_74	.db	" | TotalElements: ",0
_75	.db	"Use PAGEUP/DOWN to change the number of levels and keyboard arrows to move",0
_76	.db	" 100 ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

