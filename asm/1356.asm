
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fappmesh
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,128
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-40],eax
	cmp	[ebp+32],0
	jz	_10
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fgetsurfaceindex
	sub	eax,1
	mov	[ebp-52],eax
_10
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-8],eax
	mov	[ebp-4],1
	jmp	_11
_12
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-28],eax
	add	[ebp-52],1
	cmp	[ebp+32],0
	jnz	_13
	mov	ebx,[ebp+36]
	mov	eax,[ebp-40]
	cmp	[ebp-52],eax
	setle	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_14
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-32],eax
	jmp	_15
_14
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-32],eax
_15
	jmp	_16
_13
	mov	ebx,[ebp+36]
	and	ebx,ebx
	jz	_17
	mov	ebx,[ebp-40]
	cmp	[ebp-52],ebx
	jg	_18
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-32],eax
	jmp	_19
_18
	sub	esp,8
	mov	eax,[ebp+24]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fcreatesurface
	mov	[ebp-32],eax
_19
	jmp	_20
_17
	mov	ebx,[ebp+32]
	mov	[ebp-32],ebx
_20
_16
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcountvertices
	mov	[ebp-44],eax
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fcounttriangles
	mov	[ebp-48],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcountvertices
	sub	eax,1
	mov	[ebp-16],eax
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcounttriangles
	sub	eax,1
	mov	[ebp-24],eax
	mov	[ebp-12],0
	jmp	_21
_22
	mov	ebx,[ebp-12]
	add	ebx,[ebp-44]
	mov	[ebp-56],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_23
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+16],esi
	mov	esi,[ebp-68]
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	mov	eax,[ebp-60]
	mov	[esp],eax
	call	_ftformpoint
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-60],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-64],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-68],eax
_23
	sub	esp,28
	mov	[esp+20],0
	mov	[esp+24],1065353216
	mov	[esp+16],0
	mov	ebx,[ebp-68]
	mov	[esp+12],ebx
	mov	esi,[ebp-64]
	mov	[esp+8],esi
	mov	ebx,[ebp-60]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_faddvertex
	mov	[ebp-124],0
	jmp	_24
_25
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-124]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvertexu
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-84],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-124]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvertexv
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-88],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-124]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fvertexw
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-92],eax
	sub	esp,24
	mov	ebx,[ebp-92]
	mov	[esp+16],ebx
	mov	esi,[ebp-124]
	mov	[esp+20],esi
	mov	esi,[ebp-88]
	mov	[esp+12],esi
	mov	ebx,[ebp-84]
	mov	[esp+8],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fvertextexcoords
	add	[ebp-124],1
_24
	cmp	[ebp-124],1
	jle	_25
_6
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexny
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-76],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexnz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-80],eax
	mov	ebx,[ebp+28]
	and	ebx,ebx
	jz	_26
	sub	esp,20
	mov	ebx,[ebp+20]
	mov	[esp+12],ebx
	mov	esi,[ebp+24]
	mov	[esp+16],esi
	mov	esi,[ebp-80]
	mov	[esp+8],esi
	mov	ebx,[ebp-76]
	mov	[esp+4],ebx
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_ftformvector
	call	_ftformedx
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-72],eax
	call	_ftformedy
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-76],eax
	call	_ftformedz
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-80],eax
_26
	sub	esp,20
	mov	ebx,[ebp-76]
	mov	[esp+12],ebx
	mov	esi,[ebp-80]
	mov	[esp+16],esi
	mov	esi,[ebp-72]
	mov	[esp+8],esi
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fvertexnormal
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexred
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-96],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexgreen
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-100],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexblue
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-104],eax
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fvertexalpha
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-108],eax
	sub	esp,24
	mov	ebx,[ebp-104]
	mov	[esp+16],ebx
	mov	esi,[ebp-108]
	mov	[esp+20],esi
	mov	esi,[ebp-100]
	mov	[esp+12],esi
	mov	ebx,[ebp-96]
	mov	[esp+8],ebx
	mov	esi,[ebp-56]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fvertexcolor
	add	[ebp-12],1
_21
	mov	ebx,[ebp-16]
	cmp	[ebp-12],ebx
	jle	_22
_5
	mov	[ebp-20],0
	jmp	_27
_28
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftrianglevertex
	add	eax,[ebp-44]
	mov	[ebp-112],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftrianglevertex
	add	eax,[ebp-44]
	mov	[ebp-116],eax
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ftrianglevertex
	add	eax,[ebp-44]
	mov	[ebp-120],eax
	sub	esp,16
	mov	ebx,[ebp-116]
	mov	[esp+8],ebx
	mov	esi,[ebp-120]
	mov	[esp+12],esi
	mov	esi,[ebp-112]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_faddtriangle
	add	[ebp-20],1
_27
	mov	ebx,[ebp-24]
	cmp	[ebp-20],ebx
	jle	_28
_7
	cmp	[ebp+32],0
	setz	al
	movzx	eax,al
	mov	[ebp-128],eax
	mov	ebx,[ebp-40]
	cmp	[ebp-52],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-128]
	and	eax,ebx
	and	eax,eax
	jz	_29
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fgetsurfacebrush
	mov	[ebp-36],eax
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fpaintsurface
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_ffreebrush
_29
	add	[ebp-4],1
_11
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_12
_4
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fgetsurfaceindex
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
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcountsurfaces
	mov	[ebp-8],eax
	mov	[ebp-12],1
	jmp	_30
_31
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fgetsurface
	mov	[ebp-4],eax
	mov	ebx,[ebp+24]
	cmp	[ebp-4],ebx
	jnz	_32
	mov	eax,[ebp-12]
	jmp	_8_leave
_32
	add	[ebp-12],1
_30
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_31
_9
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

