
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vsx],10
	mov	[_vsy],10
	mov	[_vsd],0
	mov	[_vmvt],0
	mov	[_vspeed],3
	mov	[_vtlife],200
	mov	[_vax],16
	mov	[_vay],20
	mov	[_vscore],0
_7
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	mov	[ebp-12],eax
	cmp	[_vsd],2
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_8
	mov	[_vsd],3
	jmp	_9
_8
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	mov	[ebp-12],eax
	cmp	[_vsd],3
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_10
	mov	[_vsd],2
_10
_9
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	mov	[ebp-12],eax
	cmp	[_vsd],1
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_11
	mov	[_vsd],0
	jmp	_12
_11
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	mov	[ebp-12],eax
	cmp	[_vsd],0
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_13
	mov	[_vsd],1
_13
_12
	mov	eax,[_vax]
	cmp	[_vsx],eax
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[_vay]
	cmp	[_vsy],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_14
	sub	esp,8
	mov	[esp],80
	mov	[esp+4],1
	call	_frand
	sub	eax,1
	mov	[_vax],eax
	sub	esp,8
	mov	[esp],60
	mov	[esp+4],1
	call	_frand
	sub	eax,1
	mov	[_vay],eax
	add	[_vscore],10
	add	[_vtlife],10
_14
	add	[_vmvt],1
	mov	ebx,[_vspeed]
	cmp	[_vmvt],ebx
	jle	_15
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_ttail
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbObjStore
	mov	ebx,[_vsx]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,4
	mov	[esi],ebx
	mov	ebx,[_vsy]
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,8
	mov	[esi],ebx
	mov	ebx,[_vsd]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jz	_17
	cmp	[ebp-8],1
	jz	_18
	cmp	[ebp-8],2
	jz	_19
	cmp	[ebp-8],3
	jz	_20
	jmp	_16
_17
	sub	[_vsy],1
	jmp	_16
_18
	add	[_vsy],1
	jmp	_16
_19
	sub	[_vsx],1
	jmp	_16
_20
	add	[_vsx],1
	jmp	_16
_16
	mov	[_vmvt],0
_15
	cmp	[_vsx],0
	setl	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vsx],80
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vsy],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	mov	[ebp-12],eax
	cmp	[_vsy],60
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	or	eax,ebx
	and	eax,eax
	jz	_21
	call	_fend
_21
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_ttail
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_22
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	mov	esi,[esi]
	add	esi,0
	mov	[esi],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	cmp	[_vsx],eax
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	cmp	[_vsy],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_23
	call	_fend
_23
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,0
	mov	ebx,[ebx]
	cmp	ebx,[_vtlife]
	jle	_24
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
_24
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_22
_5
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[_vsy]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[_vsx]
	imul	eax,10
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],150
	call	_fcolor
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_ttail
	call	__bbObjEachFirst
	and	eax,eax
	jz	_6
_25
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[ebp-4]
	mov	ebx,[ebx]
	add	ebx,8
	mov	ebx,[ebx]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,4
	mov	eax,[eax]
	imul	eax,10
	mov	[esp],eax
	call	_frect
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_25
_6
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	ebx,[_vay]
	imul	ebx,10
	mov	[esp+4],ebx
	mov	eax,[_vax]
	imul	eax,10
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[_vscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+4],50
	mov	[esp],400
	call	_ftext
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_7
_3
	call	_fend
	ret
_2_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	.align	4
_vsx	.dd	0
	.align	4
_vsy	.dd	0
	.align	4
_vsd	.dd	0
	.align	4
_vmvt	.dd	0
	.align	4
_vspeed	.dd	0
	.align	4
_vtlife	.dd	0
	.align	4
_vax	.dd	0
	.align	4
_vay	.dd	0
	.align	4
_vscore	.dd	0
_26	.db	"Score ",0
	.align	4
_ttail	.dd	5
_27	.dd	0
	.dd	_27
	.dd	_27
	.dd	0
	.dd	-1
_28	.dd	0
	.dd	_28
	.dd	_28
	.dd	0
	.dd	-1
	.dd	3
	.dd	__bbIntType
	.dd	__bbIntType
	.dd	__bbIntType
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

