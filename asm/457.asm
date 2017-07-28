
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
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vcurrenttexture],1
	mov	[_vnexttexture],0
	mov	[_vtempvalue],0
	mov	[_vdepth],-800
	mov	[_vviscosity],128
	sub	esp,4
	mov	eax,_awavemap
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,4
	mov	esi,_awavemap
	add	esi,12
	mov	[esi],ebx
	mov	ebx,175
	mov	esi,_awavemap
	add	esi,16
	mov	[esi],ebx
	mov	ebx,125
	mov	esi,_awavemap
	add	esi,20
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awavemap
	mov	[esp],eax
	call	__bbDimArray
	jmp	_8
_7
	call	_fcls
	call	_fupdatewavemap
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	call	_fmousex
	mov	[esp],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_9
	call	_fmousex
	mov	ebx,_awavemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	eax,ebx
	add	eax,[_vcurrenttexture]
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	ebx,esi
	add	eax,ebx
	shl	eax,byte 2
	add	eax,[_awavemap]
	mov	ebx,[_vdepth]
	mov	[eax],ebx
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdatewavemap
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
	mov	[ebp-4],1
	jmp	_10
_11
	mov	[ebp-8],1
	jmp	_12
_13
	mov	ebx,[ebp-8]
	sub	ebx,1
	mov	esi,_awavemap
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[_vcurrenttexture]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	add	esi,1
	mov	edi,_awavemap
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[_vcurrenttexture]
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_awavemap]
	mov	esi,[esi]
	add	ebx,esi
	mov	esi,[ebp-4]
	sub	esi,1
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,_awavemap
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-8]
	add	edi,[_vcurrenttexture]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_awavemap]
	mov	edi,[edi]
	add	ebx,edi
	mov	esi,[ebp-4]
	add	esi,1
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	esi,edi
	mov	edi,_awavemap
	add	edi,12
	mov	edi,[edi]
	imul	edi,[ebp-8]
	add	edi,[_vcurrenttexture]
	add	edi,esi
	shl	edi,byte 2
	add	edi,[_awavemap]
	mov	edi,[edi]
	add	ebx,edi
	sar	ebx,byte 1
	mov	esi,_awavemap
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[_vnexttexture]
	mov	edi,_awavemap
	add	edi,16
	mov	edi,[edi]
	imul	edi,[ebp-4]
	add	esi,edi
	shl	esi,byte 2
	add	esi,[_awavemap]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-12],ebx
	mov	eax,[ebp-12]
	mov	ecx,[_vviscosity]
	cdq
	idiv	ecx
	sub	[ebp-12],eax
	mov	ebx,_awavemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vnexttexture]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	esi,[ebp-12]
	mov	[ebx],esi
	mov	ebx,_awavemap
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[_vcurrenttexture]
	mov	esi,_awavemap
	add	esi,16
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_awavemap]
	mov	ebx,[ebx]
	mov	esi,100
	sub	esi,ebx
	mov	ebx,255
	and	esi,ebx
	mov	[ebp-16],esi
	sub	esp,12
	mov	[esp+4],0
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	[esp],0
	call	_fcolor
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-8],1
_12
	cmp	[ebp-8],174
	jle	_13
_6
	add	[ebp-4],1
_10
	cmp	[ebp-4],124
	jle	_11
_5
	mov	ebx,[_vcurrenttexture]
	mov	[_vtempvalue],ebx
	mov	ebx,[_vnexttexture]
	mov	[_vcurrenttexture],ebx
	mov	ebx,[_vtempvalue]
	mov	[_vnexttexture],ebx
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
_vcurrenttexture	.dd	0
	.align	4
_vnexttexture	.dd	0
	.align	4
_vtempvalue	.dd	0
	.align	4
_vdepth	.dd	0
	.align	4
_vviscosity	.dd	0
	.align	4
_awavemap	.dd	0
	.dd	1
	.dd	3
	.dd	0
	.dd	0
	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

