
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
	mov	[_vss_bpsample],16
	mov	[_vss_maxchans],50
	mov	[_vss_buffersize],8192
	mov	[_vss_maxenvs],30
	mov	[_vss_sndtype],8
	mov	[_vss_lfocount],2
	sub	esp,4
	mov	eax,_ass_sounds
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_sounds
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_sounds
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_volume
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_volume
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_volume
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_schan
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_schan
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_schan
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_slength
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_slength
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_slength
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_started
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_started
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_started
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_actualvol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_actualvol
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_actualvol
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_attackdone
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_attackdone
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_attackdone
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_decaydone
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_decaydone
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_decaydone
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_attack
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_attack
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_attack
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_decay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_decay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_decay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_sustain
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_sustain
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_sustain
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_release
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_release
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_release
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_currentpitch
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_currentpitch
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_currentpitch
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_envelope
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_envelope
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_envelope
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_defattack
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_defattack
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_defattack
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_defdecay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_defdecay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_defdecay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_defsustain
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_defsustain
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_defsustain
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_defrelease
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_defrelease
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_defrelease
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_attackchange
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_attackchange
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_attackchange
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_decaychange
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_decaychange
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_decaychange
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_sustainchange
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_sustainchange
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_sustainchange
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_releasechange
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_releasechange
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_releasechange
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lfoattack
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_lfocount]
	mov	esi,_ass_lfoattack
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_lfoattack
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lfoattack
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lfodecay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_lfocount]
	mov	esi,_ass_lfodecay
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_lfodecay
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lfodecay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lfosustain
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_lfocount]
	mov	esi,_ass_lfosustain
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_lfosustain
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lfosustain
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lforelease
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_lfocount]
	mov	esi,_ass_lforelease
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_lforelease
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lforelease
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lfo
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_lfocount]
	mov	esi,_ass_lfo
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_lfo
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lfo
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lfofreq
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_lfocount]
	mov	esi,_ass_lfofreq
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_maxenvs]
	mov	esi,_ass_lfofreq
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lfofreq
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_lfocounter
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_lfocounter
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_lfocounter
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_bufferchan
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_bufferchan
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_buffersize]
	mov	esi,_ass_bufferchan
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_bufferchan
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_buffervol
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_buffervol
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_buffersize]
	mov	esi,_ass_buffervol
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_buffervol
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_bufferenv
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_bufferenv
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_buffersize]
	mov	esi,_ass_bufferenv
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_bufferenv
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_bufferpitch
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_bufferpitch
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_buffersize]
	mov	esi,_ass_bufferpitch
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_bufferpitch
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_bufferlength
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_bufferlength
	add	esi,12
	mov	[esi],ebx
	mov	ebx,[_vss_buffersize]
	mov	esi,_ass_bufferlength
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_bufferlength
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_bufferpointer
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_bufferpointer
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_bufferpointer
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_buffercount
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_buffercount
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_buffercount
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_chancheck
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_chancheck
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_chancheck
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_channelloop
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_channelloop
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_channelloop
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_samplecnt
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_maxchans]
	mov	esi,_ass_samplecnt
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_samplecnt
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_soundbank
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_sndtype]
	mov	esi,_ass_soundbank
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_soundbank
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ass_samplecntbank
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vss_sndtype]
	mov	esi,_ass_samplecntbank
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ass_samplecntbank
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vforcesoundupdate],0
	mov	[_vss_stimer],1120403456
	call	_fmillisecs
	mov	[_vaudiotimer],eax
	mov	[_vupdateperiod],1065353216
	sub	esp,4
	mov	eax,_awavdata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,0
	mov	esi,_awavdata
	add	esi,12
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,_awavdata
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awavdata
	mov	[esp],eax
	call	__bbDimArray
	call	_finitsoundsystem
	mov	[ebp-4],1
	jmp	_51
_52
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],2
	call	_fsoundshape
	add	[ebp-4],1
_51
	mov	ebx,[_vss_maxchans]
	cmp	[ebp-4],ebx
	jle	_52
_3
	sub	esp,8
	mov	[esp],5
	mov	[esp+4],1
	call	_fsoundshape
	mov	[ebp-4],0
	jmp	_53
_54
	sub	esp,20
	mov	[esp+12],1036831949
	mov	[esp+16],-1110651699
	mov	[esp+8],-1110651699
	mov	[esp+4],1065353216
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fadsr
	add	[ebp-4],1
_53
	mov	ebx,[_vss_maxenvs]
	cmp	[ebp-4],ebx
	jle	_54
_4
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
_55
	call	__bbReadInt
	mov	[ebp-8],eax
	cmp	[ebp-8],-1
	jz	_56
	cmp	[ebp-8],0
	jz	_57
	add	[ebp-8],5
_57
	call	__bbReadFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-12],eax
	call	__bbReadInt
	mov	[ebp-16],eax
	call	__bbReadFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	cmp	[ebp-8],6
	setz	al
	movzx	eax,al
	mov	[ebp-24],eax
	cmp	[ebp-8],7
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	mov	[ebp-24],eax
	cmp	[ebp-8],8
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-24]
	or	eax,ebx
	and	eax,eax
	jz	_58
	sub	[ebp-16],48
_58
	add	[ebp-16],48
	cmp	[ebp-8],9
	jnz	_59
	sub	[ebp-16],96
_59
	sub	esp,20
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1106247680
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-8]
	mov	[esp+16],esi
	mov	esi,[ebp-16]
	add	esi,48
	mov	[esp+8],esi
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fsound
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_floopchannel
_56
	cmp	[ebp-8],-1
	jnz	_55
_5
_60
	call	_fupdatesound
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_60
_6
	call	_fend
_l_2music1
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitsoundsystem
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,32
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	sub	esp,4
	mov	eax,_awavdata
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,1
	mov	esi,_awavdata
	add	esi,12
	mov	[esi],ebx
	mov	ebx,4096
	mov	esi,_awavdata
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awavdata
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-4],1
	mov	[_vss_channelcount],1
	mov	[ebp-8],0
	jmp	_61
_62
	mov	ebx,-31202
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	add	[ebp-8],1
_61
	cmp	[ebp-8],10
	jle	_62
_8
	mov	ebx,-21841
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	mov	ebx,21841
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	mov	[ebp-20],1
	mov	[ebp-24],16
	mov	ebx,-21841
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	mov	ebx,-21841
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 1
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	mov	ebx,21841
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	imul	esi,3
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	mov	ebx,21841
	mov	esi,_awavdata
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,0
	shl	esi,byte 2
	add	esi,[_awavdata]
	mov	[esi],ebx
	mov	[ebp-16],1
	jmp	_63
_64
	cmp	[ebp-16],3
	jnz	_65
	mov	[ebp-8],0
	jmp	_66
_67
	sub	esp,4
	mov	eax,[ebp-8]
	imul	eax,57
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1199568128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,_awavdata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_awavdata]
	mov	[ebx],eax
	add	[ebp-8],1
_66
	cmp	[ebp-8],10
	jle	_67
_10
_65
	cmp	[ebp-16],4
	jnz	_68
	mov	[ebp-8],0
	jmp	_69
_70
	sub	esp,4
	mov	eax,[ebp-8]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	push	ebx
	fild	[esp]
	pop	ebx
	fdivp	st(1)
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1199568128
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1077936128
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,_awavdata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_awavdata]
	mov	[ebx],eax
	add	[ebp-8],1
_69
	mov	ebx,[ebp-16]
	shl	ebx,byte 1
	cmp	[ebp-8],ebx
	jle	_70
_11
_68
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	mov	[ebp-4],ebx
	sub	esp,36
	mov	eax,_71
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_72
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[esp+12],44100
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritewav
	mov	ebx,eax
	add	[ebp-16],1
_63
	mov	ebx,[_vss_sndtype]
	cmp	[ebp-16],ebx
	jle	_64
_9
	mov	[ebp-8],0
	jmp	_73
_74
	sub	esp,8
	mov	[esp],-956304384
	mov	[esp+4],1191179264
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,_awavdata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,0
	shl	ebx,byte 2
	add	ebx,[_awavdata]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],-956304384
	mov	[esp+4],1191179264
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,_awavdata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_awavdata]
	mov	[ebx],eax
	add	[ebp-8],1
_73
	cmp	[ebp-8],4096
	jle	_74
_12
	mov	[ebp-4],4096
	sub	esp,16
	mov	[esp+8],1
	mov	[esp+12],44100
	sub	esp,4
	mov	eax,_75
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritewav
	mov	ebx,eax
	mov	[ebp-8],0
	jmp	_76
_77
	sub	esp,24
	mov	eax,_78
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_79
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_floadsound
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ass_soundbank]
	mov	[ebx],eax
	mov	ebx,[ebp-8]
	mov	[ebp-28],ebx
	cmp	[ebp-8],0
	jnz	_80
	mov	[ebp-28],5
_80
	mov	ebx,[ebp-28]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_samplecntbank]
	mov	[esi],ebx
	sub	esp,24
	mov	eax,_81
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,_82
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fdeletefile
	sub	esp,4
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_ass_soundbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_floopsound
	add	[ebp-8],1
_76
	mov	ebx,[_vss_sndtype]
	cmp	[ebp-8],ebx
	jle	_77
_13
	mov	[ebp-8],0
	jmp	_83
_84
	mov	ebx,[_vss_maxchans]
	sub	ebx,[ebp-8]
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp-28]
	sub	eax,1
	mov	ecx,3
	cdq
	idiv	ecx
	mov	[esp],eax
	mov	ebx,[_vss_sndtype]
	mov	[esp+4],ebx
	call	__bbMod
	add	eax,1
	mov	[ebp-12],eax
	cmp	[ebp-8],0
	jnz	_85
	mov	[ebp-12],0
_85
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ass_soundbank]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_sounds]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ass_samplecntbank]
	mov	ebx,[ebx]
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_samplecnt]
	mov	[esi],ebx
	add	[ebp-8],1
_83
	mov	ebx,[_vss_maxchans]
	cmp	[ebp-8],ebx
	jle	_84
_14
	mov	[ebp-8],0
	jmp	_86
_87
	mov	ebx,1036831949
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_defattack]
	mov	[esi],ebx
	mov	ebx,-1090519040
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_defdecay]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_defsustain]
	mov	[esi],ebx
	mov	ebx,-1110651699
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ass_defrelease]
	mov	[esi],ebx
	add	[ebp-8],1
_86
	mov	ebx,[_vss_maxenvs]
	cmp	[ebp-8],ebx
	jle	_87
_15
	mov	[ebp-8],0
	jmp	_88
_89
	add	[ebp-8],1
_88
	mov	ebx,[_vss_maxenvs]
	cmp	[ebp-8],ebx
	jle	_89
_16
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsound
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	cmp	[ebp+36],-1
	jnz	_90
	mov	ebx,[ebp+20]
	mov	[ebp+36],ebx
_90
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jge	_91
	mov	[ebp-4],0
_91
	mov	ebx,[ebp-4]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_buffercount]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,_ass_buffervol
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_buffervol]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,_ass_bufferpitch
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_bufferpitch]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,_ass_bufferlength
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_bufferlength]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_ass_bufferenv
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_bufferenv]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_buffercount]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	mov	esi,[_vss_buffersize]
	sub	esi,1
	cmp	ebx,esi
	jle	_92
_93
	call	_fupdatesound
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_buffercount]
	mov	eax,[eax]
	mov	ebx,[_vss_buffersize]
	sub	ebx,1
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	or	eax,ebx
	and	eax,eax
	jz	_93
_18
_92
	mov	eax,0
	jmp	_17_leave
_17_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fupdatesound
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
	call	_fmillisecs
	sub	eax,[_vaudiotimer]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vupdateperiod]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_94
	call	_fmillisecs
	mov	[_vaudiotimer],eax
	call	_fmillisecs
	sub	eax,[_vaudiotimer]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[_vupdateperiod]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	cmp	[ebp-8],2
	jle	_95
	mov	[ebp-8],0
_95
	mov	[ebp-4],0
	jmp	_96
_97
	mov	[ebp-12],1
	jmp	_98
_99
	call	_fdoupdatesound
	call	_fupdatesoundtimer
	add	[ebp-12],1
_98
	cmp	[ebp-12],1
	jle	_99
_21
	add	[ebp-4],1
_96
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_97
_20
_94
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fdoupdatesound
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,60
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
	mov	[ebp-16],0
	mov	[ebp-28],1065353216
	mov	[ebp-4],0
	jmp	_100
_101
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_lfocounter]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_lfocounter]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_envelope]
	mov	ebx,[ebx]
	mov	[ebp-24],ebx
	mov	[ebp-16],1
	mov	[ebp-32],0
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_attackdone]
	mov	ebx,[ebx]
	mov	[ebp-36],ebx
	call	_fsoundtimer
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_started]
	mov	ebx,[ebx]
	sub	eax,ebx
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_slength]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_102
	mov	[ebp-32],1
_102
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_schan]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_103
	cmp	[ebp-16],1
	jnz	_104
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fvolumemultiplier
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpitchlfo
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-44],eax
	cmp	[ebp-32],0
	setz	al
	movzx	eax,al
	mov	[ebp-60],eax
	cmp	[ebp-36],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_105
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_volume]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_106
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_attack]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
_106
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_volume]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_107
	mov	ebx,1065353216
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
_107
	mov	[ebp-48],1
	jmp	_108
_109
	mov	eax,_ass_lfo
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-48]
	shl	eax,byte 2
	add	eax,[_ass_lfo]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_110
	mov	ebx,_ass_lfo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_ass_lfo]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_ass_lfoattack
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfoattack]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
	jmp	_111
_110
	mov	ebx,1065353216
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
_111
	add	[ebp-48],1
_108
	mov	ebx,[_vss_lfocount]
	cmp	[ebp-48],ebx
	jle	_109
_24
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
	sub	esp,8
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_actualvol]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelvolume
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_currentpitch]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ass_attackchange]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_currentpitch]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_currentpitch]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_ffreq
	mov	[ebp-56],eax
	cmp	[ebp-56],10
	jle	_112
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fchannelpitch
_112
_105
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_volume]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	and	eax,eax
	jz	_113
	mov	[ebp-36],1
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_attackdone]
	mov	[esi],ebx
_113
	cmp	[ebp-32],0
	setz	al
	movzx	eax,al
	mov	[ebp-60],eax
	cmp	[ebp-36],1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_114
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_decay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_volume]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_sustain]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_115
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_sustain]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_decaydone]
	mov	[esi],ebx
_115
	mov	[ebp-48],1
	jmp	_116
_117
	mov	ebx,_ass_lfo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_ass_lfo]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_ass_lfodecay
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfodecay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
	mov	eax,_ass_lfo
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-48]
	shl	eax,byte 2
	add	eax,[_ass_lfo]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,_ass_lfosustain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_ass_lfosustain]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_118
	mov	ebx,_ass_lfosustain
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_ass_lfosustain]
	mov	ebx,[ebx]
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
_118
	add	[ebp-48],1
_116
	mov	ebx,[_vss_lfocount]
	cmp	[ebp-48],ebx
	jle	_117
_25
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
	sub	esp,8
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_actualvol]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelvolume
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_currentpitch]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ass_decaychange]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_currentpitch]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_currentpitch]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_ffreq
	mov	[ebp-56],eax
	cmp	[ebp-56],10
	jle	_119
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fchannelpitch
_119
_114
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_decaydone]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-60],eax
	cmp	[ebp-32],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_120
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_currentpitch]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ass_sustainchange]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_currentpitch]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
	sub	esp,8
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_actualvol]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelvolume
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_currentpitch]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_ffreq
	mov	[ebp-56],eax
	cmp	[ebp-56],10
	jle	_121
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fchannelpitch
_121
_120
	cmp	[ebp-32],1
	jnz	_122
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_release]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_volume]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_123
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
_123
	mov	[ebp-48],1
	jmp	_124
_125
	mov	ebx,_ass_lfo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp-48]
	shl	ebx,byte 2
	add	ebx,[_ass_lfo]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,_ass_lforelease
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lforelease]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
	mov	eax,_ass_lfo
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp-48]
	shl	eax,byte 2
	add	eax,[_ass_lfo]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_126
	mov	ebx,0
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp-48]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
_126
	add	[ebp-48],1
_124
	mov	ebx,[_vss_lfocount]
	cmp	[ebp-48],ebx
	jle	_125
_26
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_volume]
	mov	ebx,[ebx]
	mov	[ebp-52],ebx
	sub	esp,8
	mov	ebx,[ebp-52]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_actualvol]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelvolume
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_currentpitch]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	shl	esi,byte 2
	add	esi,[_ass_releasechange]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_currentpitch]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_currentpitch]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_ffreq
	mov	[ebp-56],eax
	cmp	[ebp-56],10
	jle	_127
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-56]
	mov	[esp+4],ebx
	call	_fchannelpitch
_127
_122
_104
_103
	cmp	[ebp-32],1
	setz	al
	movzx	eax,al
	mov	[ebp-60],eax
	cmp	[_vforcesoundupdate],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	eax,ebx
	and	eax,eax
	jz	_128
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_buffercount]
	mov	eax,[eax]
	mov	ebx,[_vss_buffersize]
	add	ebx,1
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	mov	[ebp-60],eax
	cmp	[ebp-8],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-60]
	and	ebx,eax
	and	ebx,ebx
	jz	_129
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_channelloop]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_130
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferpointer]
	mov	ebx,[ebx]
	mov	esi,_ass_bufferlength
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferlength]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpointer]
	mov	esi,[esi]
	mov	edi,_ass_bufferenv
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferenv]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpointer]
	mov	esi,[esi]
	mov	edi,_ass_bufferpitch
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpitch]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferpointer]
	mov	ebx,[ebx]
	mov	edi,_ass_buffervol
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffervol]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddsound
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_ass_bufferpointer]
	mov	eax,[eax]
	add	eax,1
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	__bbMod
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferpointer]
	mov	[ebx],eax
_130
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_channelloop]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_131
	sub	esp,20
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferpointer]
	mov	ebx,[ebx]
	mov	esi,_ass_bufferlength
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferlength]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpointer]
	mov	esi,[esi]
	mov	edi,_ass_bufferenv
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferenv]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+16],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpointer]
	mov	esi,[esi]
	mov	edi,_ass_bufferpitch
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpitch]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferpointer]
	mov	ebx,[ebx]
	mov	edi,_ass_buffervol
	add	edi,12
	mov	edi,[edi]
	imul	ebx,edi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffervol]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddsound
	mov	[ebp-12],1
	jmp	_132
_133
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_ass_buffervol
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffervol]
	mov	esi,_ass_buffervol
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_buffervol]
	mov	esi,[esi]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_ass_bufferpitch
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferpitch]
	mov	esi,_ass_bufferpitch
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferpitch]
	mov	esi,[esi]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_ass_bufferlength
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferlength]
	mov	esi,_ass_bufferlength
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferlength]
	mov	esi,[esi]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	sub	ebx,1
	mov	esi,_ass_bufferenv
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_bufferenv]
	mov	esi,_ass_bufferenv
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_bufferenv]
	mov	esi,[esi]
	mov	[ebx],esi
	add	[ebp-12],1
_132
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_133
_27
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_buffercount]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ass_buffercount]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_134
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ass_buffercount]
	mov	[esi],ebx
_134
_131
_129
_128
	add	[ebp-4],1
_100
	mov	ebx,[_vss_maxchans]
	cmp	[ebp-4],ebx
	jle	_101
_23
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffreq
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+20],-512
	jge	_135
	add	[ebp+20],1024
_135
	cmp	[ebp+20],512
	jle	_136
	sub	[ebp+20],1024
_136
	mov	ebx,[ebp+20]
	add	ebx,200
	push	ebx
	fild	[esp]
	pop	ebx
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fpitchlfo
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,8
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1082130432
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,1114112000
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	esi,1094713344
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	[esp],1073741824
	call	__bbFPow
	mov	ebx,1138491392
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	cmp	[ebp-8],10
	jge	_137
	mov	[ebp-8],10
	jmp	_138
_137
	cmp	[ebp-8],48000
	jle	_139
	mov	[ebp-8],48000
_139
_138
	mov	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_ass_samplecnt]
	mov	eax,[eax]
	imul	eax,[ebp-8]
	jmp	_28_leave
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_flfovalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	jmp	_29_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fvolumemultiplier
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_envelope]
	mov	ebx,[ebx]
	mov	esi,_ass_lfofreq
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ass_lfofreq]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_lfocounter]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flfovalue
	mov	ebx,_ass_lfo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ass_lfo]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	jmp	_30_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpitchlfo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_envelope]
	mov	ebx,[ebx]
	mov	esi,_ass_lfofreq
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ass_lfofreq]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_lfocounter]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_flfovalue
	mov	ebx,_ass_lfo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ass_lfo]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	jmp	_31_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_faddsound
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
	mov	ebx,[_vss_maxchans]
	sub	ebx,[ebp+20]
	mov	[ebp-8],ebx
	cmp	[ebp+36],-1
	jnz	_140
	sub	esp,8
	mov	eax,_141
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_140
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_chancheck]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_sounds]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_142
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_lfocounter]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+28]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_ffreq
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1120403456
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_143
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_sounds]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],0
	call	_fsoundvolume
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelplaying
	cmp	eax,0
	jnz	_144
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_schan]
	mov	[esi],ebx
	jmp	_145
_144
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fstopchannel
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_schan]
	mov	[esi],ebx
_145
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_schan]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_146
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_sounds]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_147
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_sounds]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fplaysound
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_schan]
	mov	[ebx],eax
_147
_146
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fchannelpitch
	sub	esp,8
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_ass_defattack]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fvolumemultiplier
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelvolume
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_sounds]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1065353216
	call	_fsoundvolume
	mov	[ebp-12],1
	jmp	_148
_149
	mov	ebx,_ass_lfoattack
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+20]
	add	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_ass_lfoattack]
	mov	ebx,[ebx]
	mov	esi,_ass_lfo
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp-12]
	shl	esi,byte 2
	add	esi,[_ass_lfo]
	mov	[esi],ebx
	add	[ebp-12],1
_148
	mov	ebx,[_vss_lfocount]
	cmp	[ebp-12],ebx
	jle	_149
_33
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_currentpitch]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_ass_defattack]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_volume]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_actualvol]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_slength]
	mov	[esi],ebx
	call	_fsoundtimer
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_started]
	mov	[ebx],eax
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_ass_defattack]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1097859072
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vupdateperiod]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_attack]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_ass_defrelease]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1097859072
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vupdateperiod]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_release]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_ass_defsustain]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_sustain]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	shl	ebx,byte 2
	add	ebx,[_ass_defdecay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1097859072
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[_vupdateperiod]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_decay]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_attackdone]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_decaydone]
	mov	[esi],ebx
	call	_fsoundtimer
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_chancheck]
	mov	[ebx],eax
	mov	ebx,[ebp+36]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_envelope]
	mov	[esi],ebx
_143
_142
	mov	[_vforcesoundupdate],1
	call	_fupdatesound
	mov	[_vforcesoundupdate],0
_l_32endbit
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fupdatesoundtimer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[_vss_stimer]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vss_stimer],ebx
	mov	eax,[_vss_stimer]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_34_leave
	mov	eax,0
	jmp	_34_leave
_34_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsoundtimer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[_vss_stimer]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_35_leave
	mov	eax,0
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floopchannel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_channelloop]
	mov	[esi],ebx
	mov	eax,0
	jmp	_36_leave
_36_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_flfoadsr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+28]
	mov	esi,_ass_lfoattack
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_ass_lfoattack]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,_ass_lfodecay
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_ass_lfodecay]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,_ass_lfosustain
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_ass_lfosustain]
	mov	[esi],ebx
	mov	ebx,[ebp+40]
	mov	esi,_ass_lforelease
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_ass_lforelease]
	mov	[esi],ebx
	mov	eax,0
	jmp	_37_leave
_37_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 24
	.align	16
_flfo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+28]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,_ass_lfofreq
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp+20]
	add	esi,[ebp+24]
	shl	esi,byte 2
	add	esi,[_ass_lfofreq]
	mov	[esi],ebx
	mov	eax,0
	jmp	_38_leave
_38_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fadsr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_defattack]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_defdecay]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_defsustain]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_defrelease]
	mov	[esi],ebx
	mov	eax,0
	jmp	_39_leave
_39_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fpitchadsr
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_attackchange]
	mov	[esi],ebx
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_decaychange]
	mov	[esi],ebx
	mov	ebx,[ebp+32]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_sustainchange]
	mov	[esi],ebx
	mov	ebx,[ebp+36]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_releasechange]
	mov	[esi],ebx
	mov	eax,0
	jmp	_40_leave
_40_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fsoundshape
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+24],-1
	setg	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vss_sndtype]
	add	ebx,1
	cmp	[ebp+24],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	and	eax,ebx
	and	eax,eax
	jz	_150
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ass_soundbank]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_sounds]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ass_samplecntbank]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_samplecnt]
	mov	[esi],ebx
_150
	mov	eax,0
	jmp	_41_leave
_41_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fflushchannel
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_bufferpointer]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_buffercount]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_schan]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_151
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fchannelplaying
	and	eax,eax
	jz	_152
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ass_schan]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fstopchannel
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_schan]
	mov	[esi],ebx
_152
_151
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ass_slength]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ass_started]
	mov	[esi],ebx
	mov	eax,0
	jmp	_42_leave
_42_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fstopsound
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_153
_154
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fflushchannel
	add	[ebp-4],1
_153
	mov	ebx,[_vss_maxchans]
	cmp	[ebp-4],ebx
	jle	_154
_44
	mov	eax,0
	jmp	_43_leave
_43_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fwritewav
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	mov	ebx,[_vss_bpsample]
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-12],eax
	cmp	[ebp-12],0
	jnz	_155
	mov	eax,0
	jmp	_45_leave
_155
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_156
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fwritebinstring
	mov	ebx,[ebp+20]
	shl	ebx,byte 1
	imul	ebx,[ebp+28]
	add	ebx,36
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_157
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fwritebinstring
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_158
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fwritebinstring
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],16
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+32]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	[ebp-8],16
	mov	ebx,[ebp+32]
	imul	ebx,[ebp+28]
	imul	ebx,[ebp-8]
	sar	ebx,byte 3
	mov	[ebp-20],ebx
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	imul	ebx,[ebp-8]
	sar	ebx,byte 3
	mov	[esp+4],ebx
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteshort
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_159
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	_fwritebinstring
	sub	esp,8
	mov	eax,[ebp-12]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	imul	ebx,[ebp+28]
	imul	ebx,[ebp-8]
	sar	ebx,byte 3
	mov	[esp+4],ebx
	call	_fwriteint
	mov	[ebp-24],1
	jmp	_160
_161
	cmp	[_vss_bpsample],8
	jnz	_162
	mov	[ebp-28],128
_162
	cmp	[_vss_bpsample],16
	jnz	_163
	mov	ebx,[ebp-32]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_163
	cmp	[_vss_bpsample],32
	jnz	_164
	mov	ebx,[ebp-32]
	imul	ebx,255
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
_164
	mov	[ebp-36],0
	jmp	_165
_166
	mov	ebx,_awavdata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_awavdata]
	mov	ebx,[ebx]
	mov	[ebp-40],ebx
	mov	ebx,[ebp-28]
	sub	[ebp-40],ebx
	cmp	[ebp-40],0
	jge	_167
	mov	ebx,[ebp-28]
	shl	ebx,byte 1
	add	[ebp-40],ebx
_167
	cmp	[ebp-40],0
	jge	_168
	mov	[ebp-40],0
	jmp	_169
_168
	mov	ebx,[ebp-28]
	shl	ebx,byte 1
	shl	ebx,byte 1
	cmp	[ebp-40],ebx
	jle	_170
	mov	ebx,[ebp-28]
	shl	ebx,byte 1
	mov	[ebp-40],ebx
_170
_169
	sub	esp,8
	mov	ebx,_awavdata
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-36]
	shl	ebx,byte 2
	add	ebx,[_awavdata]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fwriteshort
	add	[ebp-36],1
_165
	mov	ebx,[ebp+28]
	sub	ebx,1
	cmp	[ebp-36],ebx
	jle	_166
_47
	add	[ebp-24],1
_160
	mov	ebx,[ebp+20]
	cmp	[ebp-24],ebx
	jle	_161
_46
	cmp	[ebp+28],1
	jnz	_171
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_172
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_173
_171
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_174
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrStore
_173
	sub	esp,72
	mov	eax,_175
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_176
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[_vss_bpsample]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_177
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_178
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_179
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fss_debugprint
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_45_leave
_45_leave
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[ebp-48],eax
	sub	esp,4
	mov	esi,[ebp-44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-48]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritebinstring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_180
_181
	sub	esp,24
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwritebyte
	mov	ebx,eax
	add	[ebp-4],1
_180
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-4],eax
	jle	_181
_49
	mov	eax,0
	jmp	_48_leave
_48_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 8
	.align	16
_fss_debugprint
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
	call	_fprint
	mov	eax,0
	jmp	_50_leave
_50_leave
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
	.align	4
_vss_channelcount	.dd	0
	.align	4
_vss_bpsample	.dd	0
	.align	4
_vss_maxchans	.dd	0
	.align	4
_vss_buffersize	.dd	0
	.align	4
_vss_maxenvs	.dd	0
	.align	4
_vss_sndtype	.dd	0
	.align	4
_vss_lfocount	.dd	0
	.align	4
_ass_sounds	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_volume	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_schan	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_slength	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_started	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_actualvol	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_attackdone	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_decaydone	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_attack	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_decay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_sustain	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_release	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_currentpitch	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_envelope	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_defattack	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_defdecay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_defsustain	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_defrelease	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_attackchange	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_decaychange	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_sustainchange	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_releasechange	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_lfoattack	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_lfodecay	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_lfosustain	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_lforelease	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_lfo	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_lfofreq	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_lfocounter	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ass_bufferchan	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_buffervol	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_bufferenv	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_bufferpitch	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_bufferlength	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_ass_bufferpointer	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_buffercount	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_chancheck	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_channelloop	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_samplecnt	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_soundbank	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ass_samplecntbank	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vforcesoundupdate	.dd	0
	.align	4
_vss_stimer	.dd	0
	.align	4
_vaudiotimer	.dd	0
	.align	4
_vupdateperiod	.dd	0
	.align	4
_awavdata	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_71	.db	"S",0
_72	.db	".wav",0
_75	.db	"S0.wav",0
_78	.db	"s",0
_79	.db	".wav",0
_81	.db	"s",0
_82	.db	".wav",0
_141	.db	"sound not buffered correctly!",0
_156	.db	"RIFF",0
_157	.db	"WAVE",0
_158	.db	"fmt ",0
_159	.db	"data",0
_172	.db	"Mono",0
_174	.db	"Stereo",0
_175	.db	"Created ",0
_176	.db	" as ",0
_177	.db	" bit, ",0
_178	.db	"hz, ",0
_179	.db	" wave file.",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	1
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	52
	.dd	1
	.dd	10
	.dd	1
	.dd	2
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	68
	.dd	1
	.dd	10
	.dd	1
	.dd	3
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	1
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	52
	.dd	1
	.dd	10
	.dd	1
	.dd	2
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	68
	.dd	1
	.dd	10
	.dd	1
	.dd	3
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	1
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	52
	.dd	1
	.dd	10
	.dd	1
	.dd	2
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	72
	.dd	1
	.dd	10
	.dd	1
	.dd	3
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	1
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	52
	.dd	1
	.dd	10
	.dd	1
	.dd	2
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	72
	.dd	1
	.dd	10
	.dd	1
	.dd	3
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	100
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	100
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	92
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	88
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	72
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	88
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	80
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	100
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	100
	.dd	1
	.dd	10
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	92
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	88
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	80
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	1
	.dd	1
	.dd	80
	.dd	1
	.dd	45
	.dd	1
	.dd	4
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	52
	.dd	1
	.dd	5
	.dd	1
	.dd	4
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	80
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	50
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	150
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	20
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	150
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	50
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	50
	.dd	1
	.dd	15
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	150
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	10
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	1
	.dd	1
	.dd	5
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	20
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	150
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	1
	.dd	0
	.dd	1
	.dd	150
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	150
	.dd	1
	.dd	5
	.dd	1
	.dd	0
	.dd	2
	.dd	1056964608
	.dd	1
	.dd	150
	.dd	1
	.dd	5
	.dd	1
	.dd	-1
	.dd	0

