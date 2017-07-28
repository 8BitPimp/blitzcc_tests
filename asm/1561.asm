
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
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreatesprite
	mov	[_vl_surface],eax
	sub	esp,8
	mov	eax,[_vl_surface]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fspriteviewmode
	sub	esp,20
	mov	[esp+12],1003556690
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vl_surface]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1003599639
	mov	[esp+8],1000163666
	mov	eax,[_vl_surface]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,8
	mov	eax,[_vl_surface]
	mov	[esp],eax
	mov	[esp+4],1056964608
	call	_fentityalpha
	sub	esp,16
	mov	[esp+8],257
	mov	[esp+12],1
	mov	[esp+4],480
	mov	[esp],640
	call	_fcreatetexture
	mov	[_vl_texture],eax
	sub	esp,12
	mov	[esp+4],1070369604
	mov	[esp+8],1065906864
	mov	eax,[_vl_texture]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,8
	mov	eax,[_vl_texture]
	mov	[esp],eax
	mov	[esp+4],2
	call	_ftextureblend
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[_vl_texture]
	mov	[esp+4],esi
	mov	eax,[_vl_surface]
	mov	[esp],eax
	call	_fentitytexture
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fl_update
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,40
	mov	eax,[_vl_texture]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp+28],eax
	mov	[ebp-4],eax
	mov	eax,ebx
	call	_fbackbuffer
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+24],ebx
	mov	[esp+20],0
	mov	[esp+16],0
	mov	[esp+12],480
	mov	[esp+8],640
	mov	[esp+4],0
	mov	[esp],0
	call	_fcopyrect
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fl_setalpha
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vl_surface]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fentityalpha
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vl_surface	.dd	0
	.align	4
_vl_texture	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

