
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	sub	esp,8
	mov	[esp],_vroot
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_telement
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,8
	mov	eax,[_vroot]
	mov	[esp],eax
	mov	[esp+4],9
	call	_fbranchcreate
	sub	esp,8
	mov	[esp],_vsel
	mov	ebx,[_vroot]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
_15
	call	_fcls
	mov	[_vex],0
	mov	[_vey],0
	sub	esp,4
	mov	eax,[_vroot]
	mov	[esp],eax
	call	_fbranchview
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitkey
	mov	[ebp-4],eax
	cmp	[ebp-4],3
	jz	_17
	cmp	[ebp-4],4
	jz	_18
	cmp	[ebp-4],5
	jz	_19
	cmp	[ebp-4],6
	jz	_20
	cmp	[ebp-4],27
	jz	_21
	cmp	[ebp-4],28
	jz	_22
	cmp	[ebp-4],29
	jz	_23
	cmp	[ebp-4],30
	jz	_24
	cmp	[ebp-4],31
	jz	_25
	jmp	_16
_17
	sub	esp,16
	mov	[esp],0
	mov	ebx,[_vsel]
	mov	[esp+4],ebx
	call	_feinsertin
	mov	[esp+4],eax
	mov	[esp],_vsel
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_16
_18
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_26
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_27
_26
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_28
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_29
_28
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vroot]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jz	_30
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_30
_29
_27
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_31
	sub	esp,8
	mov	eax,[_vsel]
	mov	[esp],eax
	mov	[esp+4],1
	call	_feremove
	sub	esp,8
	mov	[esp],_vsel
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbObjStore
_31
	jmp	_16
_19
	sub	esp,16
	mov	[esp],0
	mov	ebx,[_vsel]
	mov	[esp+4],ebx
	call	_feinsertbefore
	mov	[esp+4],eax
	mov	[esp],_vsel
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_16
_20
	sub	esp,16
	mov	[esp],0
	mov	ebx,[_vsel]
	mov	[esp+4],ebx
	call	_feinsertafter
	mov	[esp+4],eax
	mov	[esp],_vsel
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	jmp	_16
_21
	jmp	_3
	jmp	_16
_22
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_32
	sub	esp,8
	mov	[esp],_vsel
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_32
	jmp	_16
_23
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_33
	sub	esp,8
	mov	[esp],_vsel
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_33
	jmp	_16
_24
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_34
	sub	esp,8
	mov	[esp],_vsel
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_34
	jmp	_16
_25
	sub	esp,8
	mov	eax,[_vsel]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vroot]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jz	_35
	sub	esp,8
	mov	[esp],_vsel
	mov	ebx,[_vsel]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_35
	jmp	_16
_16
	jmp	_15
_3
	ret
_2_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbranchcreate
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
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_frand
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_38
_39
	sub	esp,16
	mov	[esp],0
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_feinsertin
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjStore
	mov	ebx,eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],3
	call	_frand
	cmp	eax,1
	jnz	_40
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	sub	ebx,2
	mov	[esp+4],ebx
	call	_fbranchcreate
_40
	add	[ebp-8],1
_38
	mov	ebx,[ebp-4]
	cmp	[ebp-8],ebx
	jle	_39
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbranchview
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
	add	[_vex],35
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[ebp+20],ebx
	mov	ebx,[_vey]
	sub	ebx,6
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	jmp	_42
_41
	sub	esp,16
	mov	ebx,[_vex]
	add	ebx,15
	mov	[esp+8],ebx
	mov	esi,[_vey]
	add	esi,10
	mov	[esp+12],esi
	mov	esi,[_vey]
	add	esi,10
	mov	[esp+4],esi
	mov	eax,[_vex]
	sub	eax,20
	mov	[esp],eax
	call	_fline
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[_vsel]
	mov	[esp+4],ebx
	call	__bbObjCompare
	cmp	eax,0
	jnz	_43
	mov	[ebp-12],127
	jmp	_44
_43
	mov	[ebp-12],0
_44
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_45
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],128
	call	_frand
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,0
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],128
	call	_frand
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],128
	call	_frand
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,8
	mov	[ebx],eax
_45
	sub	esp,12
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,4
	mov	ebx,[ebx]
	add	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	mov	esi,[esi]
	add	esi,8
	mov	esi,[esi]
	add	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,0
	mov	eax,[eax]
	add	eax,[ebp-12]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],30
	mov	ebx,[_vey]
	mov	[esp+4],ebx
	mov	eax,[_vex]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],0
	mov	[esp+8],30
	mov	ebx,[_vey]
	mov	[esp+4],ebx
	mov	eax,[_vex]
	mov	[esp],eax
	call	_frect
	mov	ebx,[_vey]
	add	ebx,10
	mov	[ebp-8],ebx
	add	[_vey],25
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fbranchview
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[ebp+20],ebx
_42
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_41
_8
	sub	esp,16
	mov	ebx,[_vex]
	sub	ebx,20
	mov	[esp+8],ebx
	mov	esi,[ebp-8]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vex]
	sub	eax,20
	mov	[esp],eax
	call	_fline
	sub	[_vex],35
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_feinsertafter
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_46
	sub	esp,4
	mov	eax,_telement
	mov	[esp],eax
	call	__bbObjNew
	mov	[ebp+20],eax
	jmp	_47
_46
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fepush
_47
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_48
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
_48
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,[ebp+20]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_feinsertbefore
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_49
	sub	esp,4
	mov	eax,_telement
	mov	[esp],eax
	call	__bbObjNew
	mov	[ebp+20],eax
	jmp	_50
_49
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fepush
_50
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_51
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
_51
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,12
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_52
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,24
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
_52
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,[ebp+20]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_feinsertin
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_53
	sub	esp,4
	mov	eax,_telement
	mov	[esp],eax
	call	__bbObjNew
	mov	[ebp+20],eax
	jmp	_54
_53
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fepush
_54
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_55
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjStore
	jmp	_56
_55
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,24
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
_56
	sub	esp,8
	mov	eax,[ebp+24]
	mov	eax,[eax]
	add	eax,24
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,12
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	eax,[ebp+20]
	jmp	_11_leave
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_feremove
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+24]
	and	ebx,ebx
	jz	_57
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fepush
_57
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,24
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_59
_58
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],0
	call	_feremove
_59
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jnz	_58
_13
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	__bbObjDelete
	mov	eax,0
	jmp	_12_leave
_12_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fepush
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_60
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,16
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,20
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
	jmp	_61
_60
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,12
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,24
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,20
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_61
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	__bbObjCompare
	cmp	eax,0
	jz	_62
	sub	esp,8
	mov	eax,[ebp+20]
	mov	eax,[eax]
	add	eax,20
	mov	eax,[eax]
	mov	eax,[eax]
	add	eax,16
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	ebx,[ebx]
	add	ebx,16
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	__bbObjStore
_62
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vroot	.dd	0
	.align	4
_vex	.dd	0
	.align	4
_vey	.dd	0
	.align	4
_vsel	.dd	0
	.align	4
_telement	.dd	5
_36	.dd	0
	.dd	_36
	.dd	_36
	.dd	0
	.dd	-1
_37	.dd	0
	.dd	_37
	.dd	_37
	.dd	0
	.dd	-1
	.dd	7
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	_telement
	.dd	_telement
	.dd	_telement
	.dd	_telement
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

