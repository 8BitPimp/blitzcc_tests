
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	mov	[_vg],0
	mov	[_vr],155
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],50
	sub	esp,4
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[_vbigfont],eax
	jmp	_8
_7
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],155
	call	_fclscolor
	call	_fcls
	call	_ftextfader
	sub	esp,4
	mov	eax,[_vbigfont]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,12
	mov	ebx,[_vg]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[_vr]
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],100
	mov	[esp],100
	call	_ftext
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_10
	call	_fresettext
_10
	sub	esp,4
	mov	[esp],1
	call	_fflip
_8
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
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
_ftextfader
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	add	[_vg],1
	sub	[_vr],1
	cmp	[_vr],0
	jge	_11
	mov	[_vr],0
_11
	cmp	[_vg],128
	jle	_12
	mov	[_vg],128
_12
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
_fresettext
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	[_vg],0
	mov	[_vr],155
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vg	.dd	0
	.align	4
_vr	.dd	0
	.align	4
_vbigfont	.dd	0
_6	.db	"Arial",0
_9	.db	"Press space to fade in again",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

