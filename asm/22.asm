
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
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,12
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_7
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_fapptitle
	call	_fhidepointer
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecube
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[_vlight],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],1132396544
	mov	eax,[_vlight]
	mov	[esp],eax
	call	_flightcolor
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
	sub	esp,16
	mov	[esp+8],1061158912
	mov	[esp+12],-1063256064
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
_8
	call	_fmousex
	mov	ebx,[_vwirewidth]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[_vwirex],eax
	call	_fmousey
	mov	ebx,[_vwireheight]
	sar	ebx,byte 1
	sub	eax,ebx
	mov	[_vwirey],eax
	sub	esp,8
	mov	[esp],64
	mov	[esp+4],64
	call	_fgetwirebox
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],1056964608
	mov	[esp+4],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,4
	mov	[esp],1065353216
	call	_fupdateworld
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	call	_fdrawwirebox
	sub	esp,20
	mov	ebx,[_vwireheight]
	add	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[_vwirewidth]
	add	esi,2
	mov	[esp+8],esi
	mov	ebx,[_vwirey]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[_vwirex]
	sub	eax,1
	mov	[esp],eax
	call	_frect
	sub	esp,16
	mov	ebx,[_vwirewidth]
	sar	ebx,byte 1
	add	ebx,[_vwirex]
	add	ebx,4
	mov	[esp+8],ebx
	mov	esi,[_vwireheight]
	sar	esi,byte 1
	add	esi,[_vwirey]
	mov	[esp+12],esi
	mov	esi,[_vwireheight]
	sar	esi,byte 1
	add	esi,[_vwirey]
	mov	[esp+4],esi
	mov	eax,[_vwirewidth]
	sar	eax,byte 1
	add	eax,[_vwirex]
	sub	eax,4
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[_vwirewidth]
	sar	ebx,byte 1
	add	ebx,[_vwirex]
	mov	[esp+8],ebx
	mov	esi,[_vwireheight]
	sar	esi,byte 1
	add	esi,[_vwirey]
	add	esi,4
	mov	[esp+12],esi
	mov	esi,[_vwireheight]
	sar	esi,byte 1
	add	esi,[_vwirey]
	sub	esi,4
	mov	[esp+4],esi
	mov	eax,[_vwirewidth]
	sar	eax,byte 1
	add	eax,[_vwirex]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_8
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
_fgetwirebox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],1
	call	_fwireframe
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	mov	ebx,[ebp+20]
	mov	[_vwirewidth],ebx
	mov	ebx,[ebp+24]
	mov	[_vwireheight],ebx
	sub	esp,12
	mov	ebx,[_vwireheight]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[_vwirewidth]
	mov	[esp],eax
	call	_fcreateimage
	mov	[_vwirebox],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[_vwirebox]
	mov	[esp],eax
	call	_fmaskimage
	sub	esp,16
	mov	ebx,[_vwirey]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vwirex]
	mov	[esp+4],esi
	mov	eax,[_vwirebox]
	mov	[esp],eax
	call	_fgrabimage
	sub	esp,4
	mov	[esp],0
	call	_fwireframe
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdrawwirebox
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vwirebox]
	and	ebx,ebx
	jz	_9
	sub	esp,16
	mov	ebx,[_vwirey]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vwirex]
	mov	[esp+4],esi
	mov	eax,[_vwirebox]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	eax,[_vwirebox]
	mov	[esp],eax
	call	_ffreeimage
_9
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
_vwirex	.dd	0
	.align	4
_vwirey	.dd	0
	.align	4
_vwirewidth	.dd	0
	.align	4
_vwireheight	.dd	0
	.align	4
_vwirebox	.dd	0
_6	.db	"Move mouse over cube...",0
_7	.db	"",0
	.align	4
_vlight	.dd	0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

