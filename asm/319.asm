
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],600
	mov	[esp+8],1
	mov	[esp],800
	call	_fcreateimage
	mov	[_vbackgnd],eax
	sub	esp,4
	mov	eax,_azz
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_azz
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_azz
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_art
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_art
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_art
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_agt
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_agt
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agt
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_abt
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_abt
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_abt
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	[esp+4],32
	mov	[esp+8],1
	mov	[esp],32
	call	_fcreateimage
	mov	[_vcursor],eax
	sub	esp,12
	mov	eax,[_vcursor]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],170
	mov	[esp+8],170
	mov	[esp],170
	call	_fcolor
	sub	esp,20
	mov	[esp+12],32
	mov	[esp+16],0
	mov	[esp+8],32
	mov	[esp+4],0
	mov	[esp],0
	call	_foval
	sub	esp,4
	mov	eax,[_vcursor]
	mov	[esp],eax
	call	_fmidhandle
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fdrawgrid
	mov	[ebp-4],0
	jmp	_13
_14
	mov	[ebp-8],0
	jmp	_15
_16
	sub	esp,20
	mov	[esp],1132396544
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[ebp-20],eax
	sub	esp,8
	mov	[esp],1132396544
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-20]
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp],ebx
	mov	eax,ebx
	call	_fcolor
	mov	ebx,eax
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-8]
	shl	ebx,byte 4
	add	ebx,528
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 4
	add	eax,16
	mov	[esp],eax
	call	_frect
	add	[ebp-8],1
_15
	cmp	[ebp-8],3
	jle	_16
_4
	add	[ebp-4],1
_13
	cmp	[ebp-4],31
	jle	_14
_3
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],36
	mov	[esp+16],0
	mov	[esp+8],36
	mov	[esp+4],198
	mov	[esp],598
	call	_frect
	sub	esp,40
	mov	eax,[_vbackgnd]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+28],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],600
	mov	[esp+8],800
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	jmp	_18
_17
	sub	esp,40
	mov	eax,[_vbackgnd]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp+24],eax
	mov	[ebp-20],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+28],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],600
	mov	[esp+8],800
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	call	_fmousex
	mov	[_vmx],eax
	call	_fmousey
	mov	[_vmy],eax
	mov	ebx,[_vmx]
	sar	ebx,byte 4
	mov	[ebp-12],ebx
	mov	ebx,[_vmy]
	sar	ebx,byte 4
	mov	[ebp-16],ebx
	sub	esp,16
	mov	ebx,[_vmy]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vmx]
	mov	[esp+4],esi
	mov	eax,[_vcursor]
	mov	[esp],eax
	call	_fdrawimage
	cmp	[_vmx],512
	setl	al
	movzx	eax,al
	mov	[ebp-20],eax
	cmp	[_vmy],512
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-20]
	and	eax,ebx
	and	eax,eax
	jz	_19
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_20
	sub	esp,12
	mov	eax,[_vbackgnd]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-16]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	eax,[ebp-12]
	add	eax,600
	mov	[esp],eax
	mov	ebx,[ebp-16]
	add	ebx,200
	mov	[esp+4],ebx
	call	_fplot
_20
	sub	esp,4
	mov	[esp],2
	call	_fmousedown
	and	eax,eax
	jz	_21
	sub	esp,12
	mov	eax,[_vbackgnd]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	add	eax,1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	sub	eax,1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	sub	eax,1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	sub	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	add	eax,1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	sub	eax,1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,6
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	add	ebx,200
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-12]
	add	eax,600
	add	eax,1
	mov	[esp],eax
	call	_freadpixel
	mov	ebx,7
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	[ebx],eax
	call	_fantialias
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],1
	mov	[esp+8],16
	mov	ebx,[ebp-16]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
	sub	esp,8
	mov	eax,[ebp-12]
	add	eax,600
	mov	[esp],eax
	mov	ebx,[ebp-16]
	add	ebx,200
	mov	[esp+4],ebx
	call	_fplot
_21
	jmp	_22
_19
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_23
	sub	esp,8
	mov	eax,[_vmx]
	mov	[esp],eax
	mov	ebx,[_vmy]
	mov	[esp+4],ebx
	call	_fgetcolor
_23
_22
	call	_fdrawgrid
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],1
	call	_fflip
_18
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_17
_5
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
_fantialias
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
	jmp	_24
_25
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	ebx,[ebx]
	mov	esi,16777215
	and	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_azz]
	mov	[esi],ebx
	add	[ebp-4],1
_24
	cmp	[ebp-4],7
	jle	_25
_7
	mov	[ebp-4],0
	jmp	_26
_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	ebx,[ebx]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_art]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	ebx,[ebx]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_agt]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_azz]
	mov	ebx,[ebx]
	mov	esi,255
	and	ebx,esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_abt]
	mov	[esi],ebx
	add	[ebp-4],1
_26
	cmp	[ebp-4],7
	jle	_27
_8
	mov	[ebp-4],0
	jmp	_28
_29
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_art]
	mov	ebx,[ebx]
	add	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agt]
	mov	ebx,[ebx]
	add	[ebp-12],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_abt]
	mov	ebx,[ebx]
	add	[ebp-16],ebx
	add	[ebp-4],1
_28
	cmp	[ebp-4],7
	jle	_29
_9
	mov	ebx,[ebp-8]
	shr	ebx,byte 3
	mov	[ebp-8],ebx
	mov	ebx,[ebp-12]
	shr	ebx,byte 3
	mov	[ebp-12],ebx
	mov	ebx,[ebp-16]
	shr	ebx,byte 3
	mov	[ebp-16],ebx
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcolor
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
_fdrawgrid
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
	call	_fcolorred
	mov	[ebp-4],eax
	call	_fcolorgreen
	mov	[ebp-8],eax
	call	_fcolorblue
	mov	[ebp-12],eax
	sub	esp,12
	mov	[esp+4],128
	mov	[esp+8],128
	mov	[esp],128
	call	_fcolor
	mov	[ebp-16],0
	jmp	_30
_31
	mov	[ebp-20],0
	jmp	_32
_33
	sub	esp,20
	mov	[esp+12],16
	mov	[esp+16],0
	mov	[esp+8],16
	mov	ebx,[ebp-20]
	shl	ebx,byte 4
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	shl	eax,byte 4
	mov	[esp],eax
	call	_frect
	add	[ebp-20],1
_32
	cmp	[ebp-20],31
	jle	_33
_12
	add	[ebp-16],1
_30
	cmp	[ebp-16],31
	jle	_31
_11
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vbackgnd	.dd	0
	.align	4
_vmx	.dd	0
	.align	4
_vmy	.dd	0
	.align	4
_azz	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_art	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_agt	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_abt	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vcursor	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

