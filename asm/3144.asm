
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
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vx1],50
	mov	[_vy1],50
	mov	[_vw1],100
	mov	[_vh1],100
	mov	[_vw2],50
	mov	[_vh2],50
	sub	esp,12
	mov	[esp+4],64
	mov	[esp+8],1
	mov	[esp],64
	call	_fcreateimage
	mov	[_vslopeim],eax
	call	_fmakeslope
	jmp	_8
_7
	call	_fcls
	sub	esp,16
	mov	[esp+8],50
	mov	[esp+12],0
	mov	[esp+4],50
	mov	eax,[_vslopeim]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[_vh2]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[_vw2]
	mov	[esp+8],esi
	call	_fmousey
	mov	[esp+4],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frect
	mov	ebx,eax
	sub	esp,32
	mov	ebx,[_vw2]
	mov	[esp+24],ebx
	mov	esi,[_vh2]
	mov	[esp+28],esi
	call	_fmousey
	mov	[esp+20],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+16],ebx
	mov	[esp+12],0
	mov	[esp+8],50
	mov	[esp+4],50
	mov	eax,[_vslopeim]
	mov	[esp],eax
	call	_fimagerectcollide
	cmp	eax,1
	jnz	_9
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
_9
	sub	esp,4
	mov	[esp],1
	call	_fflip
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_7
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
_fmakeslope
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
	sub	esp,12
	mov	eax,[_vslopeim]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	[ebp-4],1
	mov	[ebp-8],0
	jmp	_11
_12
	mov	[ebp-12],0
	jmp	_13
_14
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-12],1
_13
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_14
_6
	add	[ebp-4],1
	add	[ebp-8],1
_11
	cmp	[ebp-8],63
	jle	_12
_5
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
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
_vx1	.dd	0
	.align	4
_vy1	.dd	0
	.align	4
_vw1	.dd	0
	.align	4
_vh1	.dd	0
	.align	4
_vw2	.dd	0
	.align	4
_vh2	.dd	0
	.align	4
_vslopeim	.dd	0
_10	.db	"Collision",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

