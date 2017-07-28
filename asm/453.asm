
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
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
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-8],eax
	sub	esp,8
	mov	[esp],8
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1070386381
	mov	[esp+16],0
	mov	[esp+8],1070386381
	mov	[esp+4],1070386381
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,8
	mov	[esp],2
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-16],eax
	sub	esp,16
	mov	[esp+8],1148846080
	mov	[esp+12],-998637568
	mov	[esp+4],1148846080
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],-1054867456
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,16
	mov	[esp+8],626
	mov	[esp+12],1
	mov	[esp+4],64
	mov	[esp],64
	call	_fcreatetexture
	mov	[ebp-20],eax
	sub	esp,12
	mov	eax,[ebp-20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-24],1
	jmp	_5
_6
	sub	esp,12
	mov	ebx,[ebp-24]
	imul	ebx,3
	mov	[esp+4],ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	mov	[esp+8],esi
	mov	eax,[ebp-24]
	imul	eax,3
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	ebx,64
	sub	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,64
	sub	esi,[ebp-24]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-24]
	sar	eax,byte 1
	mov	[esp],eax
	call	_foval
	add	[ebp-24],1
_5
	cmp	[ebp-24],64
	jle	_6
_3
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],3
	call	_fentityblend
	jmp	_8
_7
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_7
_4
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

