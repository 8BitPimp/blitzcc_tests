
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	mov	[ebp-36],ebx
	mov	[ebp-40],ebx
	sub	esp,4
	mov	eax,_achannel
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,127
	mov	esi,_achannel
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achannel
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ainstrument
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,127
	mov	esi,_ainstrument
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ainstrument
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],2
	mov	ebx,0
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_achannel]
	mov	[esi],ebx
	mov	ebx,8
	mov	esi,0
	shl	esi,byte 2
	add	esi,[_ainstrument]
	mov	[esi],ebx
	mov	ebx,9
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_achannel]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ainstrument]
	mov	[esi],ebx
	mov	[ebp-8],120
	mov	eax,60000000
	mov	ecx,[ebp-8]
	cdq
	idiv	ecx
	mov	[ebp-12],eax
	mov	ebx,[ebp-12]
	shr	ebx,byte 16
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	shr	eax,byte 8
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-24],eax
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[_vmidi_file],eax
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,32
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],6
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,16
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,16
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],3
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,16
	mov	[esp],1
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],128
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,32
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,64
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],255
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],81
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],3
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,24
	mov	[esp],255
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],47
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	mov	[ebp-28],0
	jmp	_11
_12
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,32
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],7
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	sub	esp,32
	mov	[esp],0
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_achannel]
	mov	ebx,[ebx]
	add	ebx,192
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-28]
	shl	ebx,byte 2
	add	ebx,[_ainstrument]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	mov	[ebp-32],0
	jmp	_14
_15
	sub	esp,8
	mov	[esp],128
	mov	[esp+4],1
	call	_frand
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],128
	mov	[esp+4],1
	call	_frand
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_achannel]
	mov	eax,[eax]
	add	eax,144
	mov	[esp],eax
	call	_fsend
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsend
	sub	esp,4
	mov	[esp],100
	call	_fsend
	sub	esp,4
	mov	[esp],92
	call	_fsend
	sub	esp,4
	mov	eax,[ebp-28]
	shl	eax,byte 2
	add	eax,[_achannel]
	mov	eax,[eax]
	add	eax,128
	mov	[esp],eax
	call	_fsend
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsend
	sub	esp,4
	mov	[esp],0
	call	_fsend
	sub	esp,4
	cmp	[ebp-32],63
	setl	al
	movzx	eax,al
	shl	eax,byte 2
	mov	[esp],eax
	call	_fsend
	add	[ebp-32],1
_14
	cmp	[ebp-32],63
	jle	_15
_4
	sub	esp,24
	mov	[esp],255
	call	_fchr
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],47
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[esp],0
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fmidi_writeline
	add	[ebp-28],1
_11
	mov	ebx,[ebp-4]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_12
_3
	sub	esp,4
	mov	eax,[_vmidi_file]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_16
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fplaymusic
	call	_fwaitkey
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
_fmidi_writeline
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_17
_18
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+4],eax
	mov	ebx,[_vmidi_file]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	add	[ebp-4],1
_17
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_18
_6
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fsend
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[_vmidi_file]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fwritebyte
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	4
_achannel	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ainstrument	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vmidi_file	.dd	0
_8	.db	"midifile.mid",0
_9	.db	"MThd",0
_10	.db	"MTrk",0
_13	.db	"MTrk",0
_16	.db	"midifile.mid",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

