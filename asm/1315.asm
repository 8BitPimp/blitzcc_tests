
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	mov	[esp],1
	call	_fautomidhandle
	call	_fhidepointer
	sub	esp,12
	mov	[esp+4],10
	mov	[esp+8],1
	mov	[esp],10
	call	_fcreateimage
	mov	[_vmouse],eax
	sub	esp,12
	mov	[esp+4],20
	mov	[esp+8],1
	mov	[esp],100
	call	_fcreateimage
	mov	[_vimg],eax
	mov	[_vimgx],100
	mov	[_vimgy],100
	mov	[_vdistx],0
	mov	[_vdisty],0
	sub	esp,12
	mov	eax,[_vmouse]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],100
	mov	[esp+8],100
	mov	[esp],100
	call	_fcolor
	sub	esp,20
	mov	[esp+12],10
	mov	[esp+16],1
	mov	[esp+8],10
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	eax,[_vimg]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],100
	call	_fcolor
	sub	esp,20
	mov	[esp+12],20
	mov	[esp+16],1
	mov	[esp+8],100
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_7
_6
	call	_fcls
	sub	esp,16
	mov	ebx,[_vimgy]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vimgx]
	mov	[esp+4],esi
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vmouse]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,32
	mov	ebx,[_vimgy]
	mov	[esp+24],ebx
	mov	[esp+28],0
	mov	esi,[_vimgx]
	mov	[esp+20],esi
	mov	ebx,[_vimg]
	mov	[esp+16],ebx
	mov	[esp+12],0
	call	_fmousey
	mov	[esp+8],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vmouse]
	mov	[esp],eax
	call	_fimagescollide
	and	eax,eax
	jz	_8
	mov	ebx,[_vimgx]
	call	_fmousex
	sub	ebx,eax
	mov	[_vdistx],ebx
	mov	ebx,[_vimgy]
	call	_fmousey
	sub	ebx,eax
	mov	[_vdisty],ebx
	call	_fdragimage
_8
	sub	esp,4
	mov	[esp],1
	call	_fflip
_7
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_6
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdragimage
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	jmp	_10
_9
	call	_fcls
	sub	esp,16
	mov	ebx,[_vimgy]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vimgx]
	mov	[esp+4],esi
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[_vmouse]
	mov	[esp],eax
	call	_fdrawimage
	call	_fmousex
	add	eax,[_vdistx]
	mov	[_vimgx],eax
	call	_fmousey
	add	eax,[_vdisty]
	mov	[_vimgy],eax
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jnz	_9
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
	.align	4
_vmouse	.dd	0
	.align	4
_vimg	.dd	0
	.align	4
_vimgx	.dd	0
	.align	4
_vimgy	.dd	0
	.align	4
_vdistx	.dd	0
	.align	4
_vdisty	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

