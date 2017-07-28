
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,16
	mov	[esp+8],9
	mov	[esp+12],1
	mov	[esp+4],1024
	mov	[esp],1024
	call	_fcreatetexture
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ftexturebuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[ebp-8],1
	jmp	_4
_5
	sub	esp,16
	mov	[esp],0
	mov	[esp+4],1023
	call	_frand
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1023
	mov	eax,ebx
	call	_frand
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-8],1
_4
	cmp	[ebp-8],200
	jle	_5
_3
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],5
	call	_ftextureblend
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],0
	call	_fcreatesphere
	mov	[ebp-12],eax
	sub	esp,20
	mov	[esp+12],1176256512
	mov	[esp+16],0
	mov	[esp+8],1176256512
	mov	[esp+4],1176256512
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fscaleentity
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fentitytexture
	sub	esp,12
	mov	[esp+4],1048576000
	mov	[esp+8],1056964608
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fscaletexture
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fentityfx
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fflipmesh
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],99999
	call	_fentityorder
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

