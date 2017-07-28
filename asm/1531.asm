
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
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
	mov	[_vthread_branch],0
	mov	[_vthread_count],0
	mov	[_vthread_percent],0
	sub	esp,8
	mov	[esp],_vfile_in
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_10
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	[esp],_vfile_out
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_11
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[_vx],0
	mov	[_vy],0
	sub	esp,8
	mov	eax,_vfile_out
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fsavefile
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	[esp+4],480
	mov	[esp+8],1
	mov	[esp],640
	call	_fcreateimage
	mov	[_vimg],eax
	sub	esp,12
	mov	[esp+4],10
	mov	[esp+8],1
	mov	[esp],10
	call	_fcreateimage
	mov	[_vmouseimg],eax
	sub	esp,12
	mov	eax,[_vmouseimg]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	[esp+4],250
	mov	[esp+8],250
	mov	[esp],250
	call	_fcolor
	mov	[ebp-4],0
	jmp	_12
_13
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-4],1
_12
	cmp	[ebp-4],9
	jle	_13
_3
	sub	esp,12
	mov	[esp+4],5
	mov	[esp+8],5
	mov	[esp],5
	call	_fcolor
	mov	[ebp-4],1
	jmp	_14
_15
	sub	esp,8
	mov	eax,[ebp-4]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,8
	mov	[esp],1
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fplot
	add	[ebp-4],1
_14
	cmp	[ebp-4],9
	jle	_15
_4
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vthread_branch],1
	jmp	_17
_16
	cmp	[_vthread_branch],1
	jnz	_18
	sub	esp,8
	mov	eax,_vfile_in
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadfile
_18
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	call	_fcls
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],230
	mov	[esp],360
	call	_ftext
	cmp	[_vthread_branch],1
	jnz	_20
	mov	eax,[_vfilecount]
	imul	eax,100
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_vfile_in
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffilesize
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	ecx,ebx
	cdq
	idiv	ecx
	mov	[_vthread_percent],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],25
	mov	[esp+16],0
	mov	[esp+8],500
	mov	[esp+4],250
	mov	[esp],150
	call	_frect
	sub	esp,20
	mov	[esp+12],25
	mov	[esp+16],1
	mov	esi,[_vthread_percent]
	imul	esi,5
	mov	[esp+8],esi
	mov	[esp+4],250
	mov	[esp],150
	call	_frect
_20
	cmp	[_vthread_branch],2
	jnz	_21
	sub	esp,16
	mov	[esp+8],200
	mov	[esp+12],0
	mov	[esp+4],250
	mov	eax,[_vimg]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],450
	mov	[esp],360
	call	_ftext
_21
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[ebp-8],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[_vmouseimg]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],0
	call	_fflip
_17
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_16
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
_fsavefile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[_vfileout],eax
	mov	[_vx],0
	jmp	_23
_24
	mov	[_vy],0
	jmp	_25
_26
	sub	esp,16
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vfileout]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	sub	esp,16
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vfileout]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	sub	esp,16
	mov	[esp],0
	mov	[esp+4],1132396544
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[_vfileout]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	add	[_vy],1
_25
	cmp	[_vy],199
	jle	_26
_8
	add	[_vx],1
_23
	cmp	[_vx],319
	jle	_24
_7
	sub	esp,4
	mov	eax,[_vfileout]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_floadfile
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
	cmp	[_vthread_count],0
	jnz	_27
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[_vfilein],eax
	mov	[_vthread_count],1
	mov	[_vfilecount],0
	mov	[_vx],0
	mov	[_vy],0
_27
	cmp	[_vthread_count],1
	jnz	_28
	add	[_vy],1
	cmp	[_vy],200
	jnz	_29
	add	[_vx],1
	mov	[_vy],0
_29
	sub	esp,4
	mov	eax,[_vfilein]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[_vfilein]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[_vfilein]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-12],eax
	add	[_vfilecount],3
	sub	esp,12
	mov	eax,[_vimg]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fimagebuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcolor
	sub	esp,8
	mov	eax,[_vx]
	mov	[esp],eax
	mov	ebx,[_vy]
	mov	[esp+4],ebx
	call	_fplot
	sub	esp,4
	mov	eax,[_vfilein]
	mov	[esp],eax
	call	_feof
	and	eax,eax
	jz	_30
	mov	[_vthread_count],2
_30
_28
	cmp	[_vthread_count],2
	jnz	_31
	sub	esp,4
	mov	eax,[_vfilein]
	mov	[esp],eax
	call	_fclosefile
	mov	[_vthread_branch],2
_31
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_vthread_branch	.dd	0
	.align	4
_vthread_count	.dd	0
	.align	4
_vthread_percent	.dd	0
	.align	4
_vfilecount	.dd	0
	.align	4
_vfile_in	.dd	0
_10	.db	"image.img",0
	.align	4
_vfile_out	.dd	0
_11	.db	"image.img",0
	.align	4
_vfilein	.dd	0
	.align	4
_vfileout	.dd	0
	.align	4
_vx	.dd	0
	.align	4
_vy	.dd	0
	.align	4
_vimg	.dd	0
	.align	4
_vmouseimg	.dd	0
_19	.db	"Loading...",0
_22	.db	"Esc to quit",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

