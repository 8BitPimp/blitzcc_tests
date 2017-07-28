
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
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwaveload
	mov	[_vwavsound],eax
	sub	esp,4
	mov	eax,[_vwavsound]
	mov	[esp],eax
	call	_fplaysound
	call	_fmillisecs
	mov	[ebp-4],eax
	jmp	_12
_11
	call	_fcls
	call	_fmillisecs
	sub	eax,[ebp-4]
	mov	[ebp-8],eax
	mov	[ebp-12],0
	jmp	_13
_14
	mov	[ebp-16],0
	jmp	_15
_16
	sub	esp,16
	mov	eax,[ebp-8]
	add	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwavesample
	mov	ecx,500
	cdq
	idiv	ecx
	mov	ebx,[ebp-12]
	imul	ebx,150
	add	ebx,75
	add	ebx,eax
	mov	[esp+4],ebx
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fplot
	add	[ebp-16],1
_15
	cmp	[ebp-16],800
	jle	_16
_5
	add	[ebp-12],1
_13
	mov	ebx,[_vwavchannels]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_14
_4
	sub	esp,4
	mov	[esp],0
	call	_fflip
_12
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_11
_3
	sub	esp,4
	mov	eax,[_vwavsound]
	mov	[esp],eax
	call	_ffreesound
	sub	esp,4
	mov	eax,[_vwavbank]
	mov	[esp],eax
	call	_ffreebank
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
_fwaveload
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffiletype
	cmp	eax,1
	jnz	_17
	sub	esp,12
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[esp],eax
	call	_fcreatebank
	mov	[_vwavbank],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fopenfile
	mov	[ebp-4],eax
	sub	esp,16
	mov	[esp+8],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_ffilesize
	mov	[esp+12],eax
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_vwavbank]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	jmp	_18
_17
	mov	eax,0
	jmp	_6_leave
_18
	sub	esp,44
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fpeekbyte
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],1
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],2
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],3
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_20
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_19
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fpeekint
	add	eax,8
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
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
	cmp	eax,ebx
	jnz	_21
	sub	esp,44
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],8
	call	_fpeekbyte
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],9
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],10
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],11
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_23
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_22
	sub	esp,44
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],12
	call	_fpeekbyte
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],13
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],14
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],15
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_25
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_24
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fpeekint
	cmp	eax,16
	jnz	_26
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],20
	call	_fpeekshort
	cmp	eax,1
	jnz	_27
	sub	esp,44
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],36
	call	_fpeekbyte
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],37
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],38
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	[ebp-12],eax
	sub	esp,8
	mov	ebx,[_vwavbank]
	mov	[esp],ebx
	mov	[esp+4],39
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_29
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_28
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],22
	call	_fpeekshort
	mov	[_vwavchannels],eax
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],24
	call	_fpeekint
	mov	[_vwavfrequency],eax
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],28
	call	_fpeekint
	mov	[_vwavbytepersec],eax
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],32
	call	_fpeekshort
	mov	[_vwavbyteperbloc],eax
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],34
	call	_fpeekshort
	mov	[_vwavbits],eax
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	[esp+4],40
	call	_fpeekint
	mov	[_vwavdatasize],eax
	cmp	[_vwavbits],16
	setle	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[_vwavchannels],2
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_30
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_floadsound
	mov	[_vwavsound],eax
	mov	eax,[_vwavsound]
	jmp	_6_leave
	jmp	_31
_30
	mov	eax,0
	jmp	_6_leave
_31
_28
_27
_26
_24
_22
_21
_19
	mov	eax,0
	jmp	_6_leave
_6_leave
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
_fwavesample
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
	mov	ebx,[ebp+20]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vwavbytepersec]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1148846080
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vwavchannels]
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vwavbits]
	sar	esi,byte 3
	push	esi
	fild	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	eax,[_vwavdatasize]
	mov	ecx,[_vwavchannels]
	cdq
	idiv	ecx
	mov	ecx,[_vwavbits]
	sar	ecx,byte 3
	cdq
	idiv	ecx
	cmp	[ebp-4],eax
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[ebp-4],0
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_32
	mov	eax,0
	jmp	_7_leave
_32
	mov	ebx,[_vwavbits]
	mov	[ebp-8],ebx
	cmp	[ebp-8],8
	jz	_34
	cmp	[ebp-8],16
	jz	_35
	jmp	_33
_34
	sub	esp,8
	mov	eax,[_vwavbank]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	imul	ebx,[_vwavchannels]
	add	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fpeekbyte
	sub	eax,128
	shl	eax,byte 7
	mov	[ebp-12],eax
	jmp	_33
_35
	sub	esp,8
	mov	ebx,[ebp-4]
	imul	ebx,[_vwavchannels]
	shl	ebx,byte 1
	mov	esi,[ebp+24]
	shl	esi,byte 1
	add	ebx,esi
	mov	[esp+4],ebx
	mov	eax,[_vwavbank]
	mov	[esp],eax
	call	_fpeekshort
	mov	[ebp-12],eax
	cmp	[ebp-12],32768
	jle	_36
	sub	[ebp-12],65535
_36
	jmp	_33
_33
	mov	eax,[ebp-12]
	jmp	_7_leave
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vwavbank	.dd	0
	.align	4
_vwavchannels	.dd	0
	.align	4
_vwavfrequency	.dd	0
	.align	4
_vwavbytepersec	.dd	0
	.align	4
_vwavbyteperbloc	.dd	0
	.align	4
_vwavbits	.dd	0
	.align	4
_vwavdatasize	.dd	0
_9	.db	"Loading .wav...",0
	.align	4
_vwavsound	.dd	0
_10	.db	"test16bits.wav",0
_20	.db	"RIFF",0
_23	.db	"WAVE",0
_25	.db	"fmt ",0
_29	.db	"data",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0
