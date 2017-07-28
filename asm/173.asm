
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
	mov	eax,_astar_x
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_astar_x
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astar_x
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_astar_y
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_astar_y
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astar_y
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_astar_z
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_astar_z
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_astar_z
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fsetup_stars
	jmp	_9
_8
	call	_fcls
	call	_fupdatestar
	sub	esp,4
	mov	[esp],1
	call	_fflip
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_8
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
	.align	16
_fsetup_stars
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_10
_11
	sub	esp,8
	mov	[esp],-1012924416
	mov	[esp+4],1134559232
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_x]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-1016070144
	mov	[esp+4],1131413504
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 8
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_y]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_z]
	mov	[ebx],eax
	add	[ebp-4],1
_10
	cmp	[ebp-4],5000
	jle	_11
_5
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
_fupdatestar
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
	jmp	_12
_13
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_z]
	mov	ebx,[ebx]
	sub	ebx,2
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astar_z]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_astar_z]
	mov	ebx,[ebx]
	cmp	ebx,2
	jg	_14
	mov	ebx,255
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astar_z]
	mov	[esi],ebx
_14
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_astar_x]
	mov	eax,[eax]
	mov	ecx,[ebp-4]
	shl	ecx,byte 2
	add	ecx,[_astar_z]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	add	eax,320
	mov	[ebp-8],eax
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_astar_y]
	mov	eax,[eax]
	mov	ecx,[ebp-4]
	shl	ecx,byte 2
	add	ecx,[_astar_z]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	add	eax,240
	mov	[ebp-12],eax
	mov	ebx,255
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_astar_z]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-16],ebx
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-4],1
_12
	cmp	[ebp-4],5000
	jle	_13
_7
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_astar_x	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_astar_y	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_astar_z	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

