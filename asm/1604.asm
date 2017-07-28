
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
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],2
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	mov	[_vlastclickx],400
	mov	[_vlastclicky],240
	mov	[_vshipx],400
	mov	[_vshipy],240
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmaskimage
	jmp	_8
_7
	call	_fcls
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	and	eax,eax
	jz	_9
	call	_fmousex
	mov	[_vlastclickx],eax
	call	_fmousey
	mov	[_vlastclicky],eax
_9
	sub	esp,16
	mov	ebx,[_vshipy]
	sub	ebx,32
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vshipx]
	sub	esi,32
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[_vlastclickx]
	cmp	[_vshipx],ebx
	jge	_10
	add	[_vshipx],2
_10
	mov	ebx,[_vlastclickx]
	cmp	[_vshipx],ebx
	jle	_11
	sub	[_vshipx],2
_11
	mov	ebx,[_vlastclicky]
	cmp	[_vshipy],ebx
	jge	_12
	add	[_vshipy],2
_12
	mov	ebx,[_vlastclicky]
	cmp	[_vshipy],ebx
	jle	_13
	sub	[_vshipy],2
_13
	sub	esp,32
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vlastclickx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],15
	mov	[esp],20
	call	_ftext
	sub	esp,32
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[_vlastclicky]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],30
	mov	[esp],20
	call	_ftext
	sub	esp,32
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],45
	mov	[esp],20
	call	_ftext
	sub	esp,32
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],60
	mov	[esp],20
	call	_ftext
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
	call	_fend
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_4	.db	"2D Click 'n' Move Example",0
_5	.db	"",0
	.align	4
_vlastclickx	.dd	0
	.align	4
_vlastclicky	.dd	0
	.align	4
_vshipx	.dd	0
	.align	4
_vshipy	.dd	0
_6	.db	"soldier.PNG",0
_14	.db	"Last ClickX = ",0
_15	.db	"Last ClickY = ",0
_16	.db	"Mouse X = ",0
_17	.db	"Mouse Y = ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

