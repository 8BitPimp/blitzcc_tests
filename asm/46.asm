
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	mov	[ebp-4],0
	sub	esp,4
	mov	eax,_amouse
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_amouse
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amouse
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],1
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,8
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fchangedir
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	ebx,0
	shl	ebx,byte 2
	add	ebx,[_amouse]
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],1
	call	_fautomidhandle
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_amouse]
	mov	[ebx],eax
	sub	esp,4
	mov	[esp],0
	call	_fautomidhandle
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],600
	mov	[esp+8],1
	mov	[esp],800
	call	_fcreateimage
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgrabimage
	jmp	_9
_8
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetup
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetup
_9
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_8
_3
	call	_fendgraphics
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
_fsetup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,0
	shl	eax,byte 2
	add	eax,[_amouse]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	call	_fdebuglog
	sub	esp,4
	mov	[esp],59
	call	_fkeydown
	mov	[ebp-4],eax
	cmp	[ebp-4],1
	jnz	_10
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fgrabimage
	sub	esp,16
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],0
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fsaveimage
	mov	ebx,eax
_10
	cmp	[ebp+24],0
	jnz	_12
	call	_fcls
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdrawblock
	cmp	[ebp+28],-2
	jle	_13
	call	_fmousexspeed
	mov	[_vmmx],eax
	call	_fmouseyspeed
	mov	[_vmmy],eax
	call	_fgetmouse
	mov	[_vmbut],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[_vhmbut],eax
	cmp	[_vhmbut],1
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vmstop],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_14
	mov	[_vhmbut],0
	mov	[_vmbut],0
	jmp	_15
_14
	cmp	[_vhmbut],0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vmstop],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_16
	mov	[_vmstop],0
_16
_15
_13
	jmp	_17
_12
	cmp	[ebp+28],-1
	jz	_18
	cmp	[ebp+28],-2
	jle	_19
	call	_fmousex
	mov	[_vmx],eax
	call	_fmousey
	mov	[_vmy],eax
	sub	esp,8
	mov	eax,[_vmx]
	add	eax,[_vmmx]
	mov	[esp],eax
	mov	ebx,[_vmy]
	add	ebx,[_vmmy]
	mov	[esp+4],ebx
	call	_fmovemouse
	jmp	_20
_19
	sub	esp,4
	mov	eax,[ebp+28]
	mov	[esp],eax
	call	__bbAbs
	sub	eax,2
	mov	[ebp+28],eax
_20
	sub	esp,16
	mov	ebx,[_vmy]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vmx]
	mov	[esp+4],esi
	mov	eax,[ebp+28]
	shl	eax,byte 2
	add	eax,[_amouse]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawimage
	jmp	_21
_18
	mov	[ebp+28],0
_21
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fvwait
_17
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	4
_vmx	.dd	0
	.align	4
_vmy	.dd	0
	.align	4
_vhmbut	.dd	0
	.align	4
_vmbut	.dd	0
	.align	4
_vmstop	.dd	0
	.align	4
_vmmx	.dd	0
	.align	4
_vmmy	.dd	0
	.align	4
_amouse	.dd	0
	.dd	1
	.dd	1
	.dd	0
_5	.db	"C:\My Documents\My Projects\Sprite Editor",0
_6	.db	"Interface GFX\mouse.bmp",0
_7	.db	"Interface GFX\mouseplot.bmp",0
_11	.db	"Screengrab.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

