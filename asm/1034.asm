
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	sub	esp,4
	mov	eax,_ashipsize
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,91
	mov	esi,_ashipsize
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ashipsize
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_agfx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_agfx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_agfx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ax
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ax
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_af
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_af
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_af
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aa
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aa
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_as
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_as
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_as
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_at
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_at
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_at
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ah
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ah
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ah
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aw
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aw
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_aw
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aw
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_awammo
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_awammo
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_awammo
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awammo
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_awdelay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_awdelay
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_awdelay
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awdelay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_awmaxdelay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_awmaxdelay
	add	esi,12
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,_awmaxdelay
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_awmaxdelay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_amhp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_amhp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_amhp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_ahp
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_ahp
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_ahp
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aarmour
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aarmour
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aarmour
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_asize
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_asize
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_asize
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aai
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aai
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aai
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aaistate
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aaistate
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aaistate
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_atarg
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_atarg
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_atarg
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adamagepuff
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_adamagepuff
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adamagepuff
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aaggression
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aaggression
	add	esi,12
	mov	[esi],ebx
	mov	ebx,100
	mov	esi,_aaggression
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aaggression
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aside
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aside
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aside
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aradarimage
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,100
	mov	esi,_aradarimage
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aradarimage
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apiex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,360
	mov	esi,_apiex
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apiex
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apiez
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,360
	mov	esi,_apiez
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apiez
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapgfx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapgfx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapgfx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweaplife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweaplife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweaplife
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapy
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapy
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapy
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapf
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapf
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapf
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapid
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapid
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweappay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweappay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweappay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapemmitter
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapemmitter
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapemmitter
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapemmittime
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapemmittime
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapemmittime
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapspd
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapspd
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapspd
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweapacc
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweapacc
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweapacc
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweaptrack
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweaptrack
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweaptrack
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aweaphoming
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,800
	mov	esi,_aweaphoming
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aweaphoming
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aexpbrush
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,25
	mov	esi,_aexpbrush
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aexpbrush
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aexpgfx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_aexpgfx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aexpgfx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aexpframe
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_aexpframe
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aexpframe
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aexpframedelay
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5000
	mov	esi,_aexpframedelay
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aexpframedelay
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aringgfx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_aringgfx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aringgfx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aringlife
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_aringlife
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aringlife
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_aimpactsnd
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,5
	mov	esi,_aimpactsnd
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_aimpactsnd
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_alogog
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,25
	mov	esi,_alogog
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_alogog
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apowerx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_apowerx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apowerx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apowery
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_apowery
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apowery
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apowert
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_apowert
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apowert
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apowergfx
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10
	mov	esi,_apowergfx
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apowergfx
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apowerbrush
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,3
	mov	esi,_apowerbrush
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apowerbrush
	mov	[esp],eax
	call	__bbDimArray
	call	_finit
	call	_finithud
	call	_freadshipsizefile
	call	_finitfacing
	mov	[_vmenuactive],10000
	call	_fgametimer
_76
	call	_fgametimer
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_77
	call	_fend
_77
	call	_frespawn
	mov	[ebp-4],100
	jmp	_78
_79
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_80
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_81
	add	[_vblueqty],1
	jmp	_82
_81
	add	[_vredqty],1
_82
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faicombat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmove
_80
	add	[ebp-4],-1
_78
	cmp	[ebp-4],2
	jge	_79
_4
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_83
	mov	[ebp-8],1
	add	[_vblueqty],1
	sub	esp,4
	mov	[esp],1
	call	_fcontrol
	sub	esp,4
	mov	[esp],1
	call	_fmove
	call	_fpickups
	mov	[_vplayerspawn],10000
	jmp	_84
_83
	mov	ebx,[_vplayerspawn]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vplayerspawn],ebx
	cmp	[_vplayerspawn],0
	jge	_85
	mov	[_vbluetime],99999999
_85
_84
	call	_fbullets
	call	_fexplosions
	call	_frings
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcamera
	jmp	_76
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
_frespawn
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[_vredships],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vredqty],50
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_86
	mov	ebx,[_vredtime]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vredtime],ebx
	mov	ebx,[_vredspawnspeed]
	cmp	[_vredtime],ebx
	jle	_87
	mov	[_vredtime],0
	sub	esp,4
	mov	[esp],2
	call	_ffindfreeship
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jle	_88
	sub	[_vredships],1
	sub	esp,20
	mov	[esp],1065353216
	mov	[esp+4],1119223808
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finitship
	mov	ebx,eax
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],eax
	mov	ebx,1112014848
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1119092736
	mov	[esp+4],1132920832
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],eax
_88
_87
_86
	cmp	[_vblueships],0
	setg	al
	movzx	eax,al
	mov	[ebp-12],eax
	cmp	[_vblueqty],50
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_89
	mov	ebx,[_vbluetime]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vbluetime],ebx
	mov	ebx,[_vbluespawnspeed]
	cmp	[_vbluetime],ebx
	jle	_90
	mov	[_vbluetime],0
	cmp	[_vplayerspawn],0
	jge	_91
	sub	esp,4
	mov	[esp],1
	call	_ffindfreeship
	mov	[ebp-4],eax
	jmp	_92
_91
	sub	esp,4
	mov	[esp],2
	call	_ffindfreeship
	mov	[ebp-4],eax
_92
	cmp	[ebp-4],1
	jle	_93
	sub	esp,20
	mov	[esp],1065353216
	mov	[esp+4],1119223808
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finitship
	mov	ebx,eax
	mov	ebx,-1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aai]
	mov	[esi],ebx
	jmp	_94
_93
	cmp	[ebp-4],0
	jle	_95
	sub	[_vplayershiphull],1
	cmp	[_vplayershiphull],1
	jge	_96
	mov	[_vplayershiphull],1
_96
	sub	esp,12
	mov	ebx,[_vplayershiphull]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_finitship
_95
_94
	cmp	[ebp-4],0
	jle	_97
	sub	[_vblueships],1
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],eax
	mov	ebx,-1035468800
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1119092736
	mov	[esp+4],1132920832
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],eax
_97
_90
_89
	mov	ebx,[_vpowertimer]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vpowertimer],ebx
	cmp	[_vpowertimer],30000
	jle	_98
	mov	[_vpowertimer],0
	sub	esp,8
	mov	[esp],1073741824
	mov	[esp+4],1120403456
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_99
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fplacepowerup
_99
_98
	mov	[_vredqty],0
	mov	[_vblueqty],0
	mov	eax,0
	jmp	_5_leave
_5_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffindfreeship
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	mov	[ebp-8],ebx
	jmp	_100
_101
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,1
	jge	_102
	mov	ebx,[ebp-8]
	mov	[ebp-4],ebx
	mov	[ebp-8],101
_102
	add	[ebp-8],1
_100
	cmp	[ebp-8],100
	jle	_101
_7
	mov	eax,[ebp-4]
	jmp	_6_leave
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcamera
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[_vcamx],ebx
	mov	eax,[_vcamx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1040187392
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_103
	mov	[_vcamx],-1040187392
	jmp	_104
_103
	mov	eax,[_vcamx]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_105
	mov	[_vcamx],1107296256
_105
_104
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	[_vcamz],ebx
	mov	eax,[_vcamz]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1038090240
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
	mov	[_vcamz],-1038090240
	jmp	_107
_106
	mov	eax,[_vcamz]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_108
	mov	[_vcamz],1109393408
_108
_107
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	esi,[_vcamz]
	mov	[esp+8],esi
	mov	ebx,[_vcamx]
	mov	[esp+4],ebx
	mov	eax,[_vcamera]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	cmp	[_vmenuactive],10000
	jl	_109
	cmp	[_vredqty],0
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vblueqty],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_110
	mov	[_vmenuactive],0
_110
	cmp	[_vmenuactive],30000
	jge	_111
	mov	[ebp-4],2
	jmp	_112
_113
	sub	esp,20
	mov	[esp],1065353216
	mov	[esp+4],1119223808
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+8],2
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finitship
	mov	ebx,eax
	sub	esp,20
	mov	[esp],1065353216
	mov	[esp+4],1119223808
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	ebx,[ebp-4]
	add	ebx,5
	mov	[esp],ebx
	mov	eax,ebx
	call	_finitship
	mov	ebx,eax
	add	[ebp-4],1
_112
	cmp	[ebp-4],6
	jle	_113
_9
	mov	[_vmenuactive],30000
_111
	sub	esp,16
	mov	[esp+8],282
	mov	[esp+12],0
	mov	[esp+4],432
	mov	eax,[_vmenu]
	mov	[esp],eax
	call	_fdrawimage
	call	_fgetkey
	cmp	eax,0
	jle	_114
	mov	[_vmenuactive],0
	call	_fbegin
_114
	jmp	_115
_109
	mov	ebx,[_vredqty]
	add	ebx,[_vredships]
	cmp	ebx,1
	jge	_116
	cmp	[_vmenuactive],0
	jnz	_117
	sub	esp,4
	mov	eax,[_vmusic]
	mov	[esp],eax
	call	_fplaysound
	mov	[_vmusicchannel],eax
_117
	mov	ebx,[_vmenuactive]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vmenuactive],ebx
	call	_fflushkeys
	mov	ebx,[_vblueqty]
	add	ebx,[_vblueships]
	cmp	ebx,10
	jge	_118
	sub	esp,16
	mov	[esp+8],299
	mov	[esp+12],0
	mov	[esp+4],361
	mov	eax,[_vbronze]
	mov	[esp],eax
	call	_fdrawimage
	jmp	_119
_118
	mov	ebx,[_vblueqty]
	add	ebx,[_vblueships]
	cmp	ebx,20
	jge	_120
	sub	esp,16
	mov	[esp+8],299
	mov	[esp+12],0
	mov	[esp+4],361
	mov	eax,[_vsilver]
	mov	[esp],eax
	call	_fdrawimage
	jmp	_121
_120
	sub	esp,16
	mov	[esp+8],299
	mov	[esp+12],0
	mov	[esp+4],361
	mov	eax,[_vgold]
	mov	[esp],eax
	call	_fdrawimage
_121
_119
	sub	esp,32
	mov	eax,_122
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],447
	mov	[esp],506
	call	_ftext
	jmp	_123
_116
	mov	ebx,[_vblueqty]
	add	ebx,[_vblueships]
	cmp	ebx,1
	jge	_124
	cmp	[_vmenuactive],0
	jnz	_125
	sub	esp,4
	mov	eax,[_vmusic]
	mov	[esp],eax
	call	_fplaysound
	mov	[_vmusicchannel],eax
_125
	call	_fflushkeys
	mov	ebx,[_vmenuactive]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[_vmenuactive],ebx
	sub	esp,16
	mov	[esp+8],299
	mov	[esp+12],0
	mov	[esp+4],361
	mov	eax,[_vdefeat]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,32
	mov	eax,_126
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],447
	mov	[esp],506
	call	_ftext
	jmp	_127
_124
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_ahp]
	mov	eax,[eax]
	cmp	eax,0
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vblueships],1
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_128
	sub	esp,16
	mov	[esp+8],10
	mov	[esp+12],0
	mov	[esp+4],10
	mov	eax,[_vhud]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,32
	mov	eax,_129
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[esp+4],76
	mov	[esp],23
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_130
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],55
	mov	[esp],158
	call	_ftext
	sub	esp,40
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ahp]
	mov	eax,[eax]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_131
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amhp]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],75
	mov	[esp],158
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],255
	mov	[esp],0
	call	_fcolor
	sub	esp,32
	mov	eax,_132
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vblueqty]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],88
	mov	[esp],76
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[_vblueships]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],124
	mov	[esp],128
	call	_ftext
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	eax,_133
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vredqty]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,241
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringwidth
	mov	ebx,eax
	mov	eax,[ebp-16]
	sub	eax,ebx
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,4
	lea	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[esp+8],esi
	mov	[esp+4],88
	call	_ftext
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,[_vredships]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+8],eax
	mov	[esp+4],124
	mov	[esp],190
	call	_ftext
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	eax,_134
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vscore]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,293
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringwidth
	mov	ebx,eax
	mov	eax,[ebp-16]
	sub	eax,ebx
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],1
	mov	[ebp-16],eax
	sub	esp,4
	lea	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[esp+8],esi
	mov	[esp+4],76
	call	_ftext
	jmp	_135
_128
	sub	esp,16
	mov	[esp+8],256
	mov	[esp+12],0
	mov	[esp+4],352
	mov	eax,[_vtitlescreen]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,40
	mov	eax,[_vplayerspawn]
	mov	ecx,1000
	cdq
	idiv	ecx
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_136
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_137
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	[esp+16],0
	mov	[esp+4],482
	mov	[esp],512
	call	_ftext
_135
_127
_123
_115
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_138
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],748
	mov	[esp],10
	call	_ftext
	sub	esp,20
	mov	eax,1148846080
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[_vgamespeed]
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_139
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	eax,1014
	mov	[ebp-16],eax
	sub	esp,4
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fstringwidth
	mov	ebx,eax
	mov	eax,[ebp-16]
	sub	eax,ebx
	mov	[esp],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[ebp-16],eax
	sub	esp,4
	lea	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	[esp+8],esi
	mov	[esp+4],748
	call	_ftext
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fradar
	sub	esp,4
	mov	[esp],0
	call	_fflip
	mov	eax,0
	jmp	_8_leave
_8_leave
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-16]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fradar
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,16
	mov	[esp+8],5
	mov	[esp+12],0
	mov	[esp+4],820
	mov	eax,[_vradar]
	mov	[esp],eax
	call	_fdrawimage
	mov	[ebp-4],1
	jmp	_140
_141
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_142
	mov	ebx,[ebp+20]
	cmp	[ebp-4],ebx
	jz	_143
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1110441984
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_144
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	jmp	_146
_145
	add	[ebp-12],360
_146
	cmp	[ebp-12],0
	jl	_145
_12
	jmp	_148
_147
	sub	[ebp-12],360
_148
	cmp	[ebp-12],360
	jg	_147
_13
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-20],ebx
	sub	esp,16
	mov	ebx,97
	add	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,917
	add	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aradarimage]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fdrawimage
_144
_143
_142
	add	[ebp-4],1
_140
	cmp	[ebp-4],100
	jle	_141
_11
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fcontrol
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_149
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_150
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_150
	jmp	_151
_149
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_152
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
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
	jz	_153
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_153
_152
_151
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_154
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ah]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_af]
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
	jz	_155
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	[esi],ebx
_155
	jmp	_156
_154
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_157
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ah]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_af]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_158
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	[esi],ebx
_158
_157
_156
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_159
	sub	esp,4
	mov	[esp],57
	call	_fkeydown
	and	eax,eax
	jz	_160
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_161
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	mov	ebx,_awmaxdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awmaxdelay]
	mov	ebx,[ebx]
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ffireweapon
_161
_160
	jmp	_162
_159
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
_162
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_163
	sub	esp,4
	mov	[esp],29
	call	_fkeydown
	and	eax,eax
	jz	_164
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_165
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	mov	ebx,_awmaxdelay
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awmaxdelay]
	mov	ebx,[ebx]
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_ffireweapon
_165
_164
	jmp	_166
_163
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
_166
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_faicombat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_atarg]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,1
	jge	_167
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fselecttarget
_167
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_atarg]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_168
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fselecttarget
	jmp	_169
_168
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aaistate]
	mov	ebx,[ebx]
	cmp	ebx,2
	jge	_170
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_atarg]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1140457472
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1140457472
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	jmp	_171
_170
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aaistate]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_172
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_atarg]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],360
	jle	_173
	sub	[ebp-4],360
_173
	jmp	_174
_172
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aaistate]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_175
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_atarg]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1119092736
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	cmp	[ebp-4],0
	jge	_176
	add	[ebp-4],360
_176
_175
_174
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1153138688
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1153138688
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
_171
	sub	esp,8
	mov	eax,[ebp-8]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-12]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-16],eax
	jmp	_178
_177
	sub	[ebp-16],360
_178
	cmp	[ebp-16],360
	jg	_177
_16
	jmp	_180
_179
	add	[ebp-16],360
_180
	cmp	[ebp-16],0
	jl	_179
_17
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-20],eax
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1092616192
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_181
	mov	ebx,[ebp-20]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_at]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,985963430
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-24],esi
	jmp	_182
_181
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,985963430
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
_182
	mov	eax,[ebp-24]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_183
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1065353216
	call	_frnd
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aaistate]
	mov	[esi],ebx
	mov	[ebp-24],0
_183
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_184
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
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
	jz	_185
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_185
	jmp	_186
_184
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aaistate]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_187
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
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
	jz	_188
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_188
	jmp	_189
_187
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_aaistate]
	mov	eax,[eax]
	cmp	eax,2
	setz	al
	movzx	eax,al
	mov	[ebp-28],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aaistate]
	mov	ebx,[ebx]
	cmp	ebx,3
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_190
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_191
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_191
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_192
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aaistate]
	mov	[esi],ebx
_192
	jmp	_193
_190
	cmp	[ebp-16],250
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp-16],120
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_194
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_195
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_195
	jmp	_196
_194
	cmp	[ebp-16],135
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp-16],225
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	and	eax,ebx
	and	eax,eax
	jz	_197
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_as]
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
	jz	_198
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	[esi],ebx
_198
_197
_196
_193
_189
_186
	cmp	[ebp-16],180
	jle	_199
	cmp	[ebp-16],355
	jge	_200
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ah]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_af]
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
	jz	_201
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	[esi],ebx
_201
_200
	jmp	_202
_199
	cmp	[ebp-16],5
	jle	_203
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ah]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_af]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_204
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_af]
	mov	[esi],ebx
_204
_203
_202
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_205
	cmp	[ebp-16],340
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp-16],20
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_206
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aaistate]
	mov	[esi],ebx
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1090519040
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_207
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_208
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	mov	ebx,_awmaxdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awmaxdelay]
	mov	ebx,[ebx]
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],0
	call	_ffireweapon
_208
_207
_206
_205
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	cmp	ebx,-5000
	jge	_209
	mov	ebx,0
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
	mov	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aaistate]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	[esi],ebx
_209
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_210
	mov	eax,[ebp-20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1084227584
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_211
	cmp	[ebp-16],355
	setg	al
	movzx	eax,al
	mov	[ebp-28],eax
	cmp	[ebp-16],5
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-28]
	or	eax,ebx
	and	eax,eax
	jz	_212
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	cmp	ebx,0
	jz	_213
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	mov	ebx,_awmaxdelay
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awmaxdelay]
	mov	ebx,[ebx]
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[esp+4],1
	call	_ffireweapon
_213
_212
_211
	jmp	_214
_210
	mov	ebx,_awdelay
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awdelay]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awdelay]
	mov	[esi],ebx
_214
_169
	mov	eax,0
	jmp	_15_leave
_15_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fselecttarget
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	[ebp-16],1176255488
	mov	[ebp-20],1
	jmp	_215
_216
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_217
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aside]
	mov	esi,[esi]
	cmp	ebx,esi
	jz	_218
	mov	ebx,[ebp+20]
	cmp	[ebp-20],ebx
	jz	_219
	sub	esp,16
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,_aaggression
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-20]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aaggression]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_220
	mov	ebx,[ebp-24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	[esi],ebx
_220
_219
_218
_217
	add	[ebp-20],1
_215
	cmp	[ebp-20],100
	jle	_216
_19
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fmove
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
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adamagepuff]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_221
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adamagepuff]
	mov	ebx,[ebx]
	add	ebx,50
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adamagepuff]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],0
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_amhp]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_222
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ahp]
	mov	eax,[eax]
	imul	eax,90
	mov	ecx,[ebp+20]
	shl	ecx,byte 2
	add	ecx,[_amhp]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	[esp+12],1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmakeexplosion
_222
	jmp	_223
_221
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adamagepuff]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adamagepuff]
	mov	[esi],ebx
_223
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],esi
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_as]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	[ebx],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1038090240
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_224
	mov	ebx,-1038090240
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
	jmp	_225
_224
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1109393408
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_226
	mov	ebx,1109393408
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	[esi],ebx
_226
_225
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ay]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,-1036517376
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_227
	mov	ebx,-1036517376
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	jmp	_228
_227
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ay]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1110966272
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_229
	mov	ebx,1110966272
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
_229
_228
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fplacepowerup
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	add	[_vpowercntr],1
	cmp	[_vpowercntr],11
	jnz	_230
	mov	[_vpowercntr],1
_230
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1077936128
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	cmp	[ebp-4],1
	setge	al
	movzx	eax,al
	mov	[ebp-8],eax
	cmp	[ebp-4],3
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-8]
	and	eax,ebx
	and	eax,eax
	jz	_231
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[_vpowercntr]
	shl	esi,byte 2
	add	esi,[_apowerx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[_vpowercntr]
	shl	esi,byte 2
	add	esi,[_apowery]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,[_vpowercntr]
	shl	esi,byte 2
	add	esi,[_apowert]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vpowercntr]
	shl	eax,byte 2
	add	eax,[_apowergfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apowerbrush]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,20
	mov	[esp+12],1092983194
	mov	[esp+16],0
	mov	esi,[_vpowercntr]
	shl	esi,byte 2
	add	esi,[_apowery]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	ebx,[_vpowercntr]
	shl	ebx,byte 2
	add	ebx,[_apowerx]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vpowercntr]
	shl	eax,byte 2
	add	eax,[_apowergfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,4
	mov	eax,[_vpowercntr]
	shl	eax,byte 2
	add	eax,[_apowergfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
_231
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fpickups
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_232
_233
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apowert]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_234
	sub	esp,16
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apowerx]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apowery]
	mov	esi,[esi]
	push	esi
	fild	[esp]
	pop	esi
	push	esi
	fstp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,1
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_asize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_235
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apowert]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	cmp	[ebp-8],1
	jz	_237
	cmp	[ebp-8],2
	jz	_238
	cmp	[ebp-8],3
	jz	_239
	jmp	_236
_237
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_amhp]
	mov	ebx,[ebx]
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ahp]
	mov	[esi],ebx
	jmp	_236
_238
	add	[_vplayershiphull],5
	cmp	[_vplayershiphull],91
	jle	_240
	mov	[_vplayershiphull],91
_240
	sub	esp,12
	mov	ebx,[_vplayershiphull]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	[esp],1
	call	_finitship
	jmp	_236
_239
	mov	ebx,_awammo
	add	ebx,12
	mov	ebx,[ebx]
	shl	ebx,byte 0
	add	ebx,1
	shl	ebx,byte 2
	add	ebx,[_awammo]
	mov	ebx,[ebx]
	add	ebx,10
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,1
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	jmp	_236
_236
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_apowergfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_apowert]
	mov	[esi],ebx
_235
_234
	add	[ebp-4],1
_232
	cmp	[ebp-4],10
	jle	_233
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
_ffireweapon
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fbulletcounter
	mov	ebx,_aw
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aw]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_242
	cmp	[ebp-4],2
	jz	_243
	cmp	[ebp-4],3
	jz	_244
	cmp	[ebp-4],4
	jz	_245
	cmp	[ebp-4],5
	jz	_246
	cmp	[ebp-4],6
	jz	_247
	cmp	[ebp-4],7
	jz	_248
	cmp	[ebp-4],8
	jz	_249
	jmp	_241
_242
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffireredlaser
	jmp	_241
_243
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffiregreenlaser
	jmp	_241
_244
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffirebluelaser
	jmp	_241
_245
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffiremissile
	jmp	_241
_246
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffiretorpedo
	jmp	_241
_247
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffirebomb
	jmp	_241
_248
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffiremassdriver
	jmp	_241
_249
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_ffirexeonlaser
	jmp	_241
_241
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fbulletcounter
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
_250
	add	[_vweaponcntr],1
	cmp	[_vweaponcntr],800
	jle	_251
	mov	[_vweaponcntr],1
_251
	add	[ebp-4],1
	cmp	[ebp-4],800
	jle	_252
	mov	ebx,-1082130432
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
_252
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweaplife]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_250
_28
	mov	eax,0
	jmp	_27_leave
_27_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffireredlaser
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1157234688
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1082130432
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,1000593162
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vredlaser]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_253
	sub	esp,4
	mov	eax,[_vlasersnd]
	mov	[esp],eax
	call	_fplaysound
_253
	mov	eax,0
	jmp	_29_leave
_29_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffiregreenlaser
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1165623296
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1086324736
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,1000593162
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vgreenlaser]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_254
	sub	esp,4
	mov	eax,[_vlasersnd]
	mov	[esp],eax
	call	_fplaysound
_254
	mov	eax,0
	jmp	_30_leave
_30_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffirebluelaser
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1169915904
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1090519040
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,1000593162
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vbluelaser]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_255
	sub	esp,4
	mov	eax,[_vlasersnd]
	mov	[esp],eax
	call	_fplaysound
_255
	mov	eax,0
	jmp	_31_leave
_31_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffiremissile
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1169915904
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1077936128
	mov	[esp+4],1090519040
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,1097859072
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,939239554
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vmissile]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_256
	sub	esp,4
	mov	eax,[_vmissilesnd]
	mov	[esp],eax
	call	_fplaysound
_256
	mov	eax,0
	jmp	_32_leave
_32_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffiretorpedo
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1184645120
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1084227584
	mov	[esp+4],1094713344
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,1092616192
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1051260355
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,925353388
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,1025758986
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaphoming]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vmissile]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	[ebp-16],1176255488
	mov	[ebp-20],1
	jmp	_257
_258
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_259
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aside]
	mov	esi,[esi]
	cmp	ebx,esi
	jz	_260
	mov	ebx,[ebp+20]
	cmp	[ebp-20],ebx
	jz	_261
	sub	esp,16
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_262
	mov	ebx,[ebp-24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
_262
_261
_260
_259
	add	[ebp-20],1
_257
	cmp	[ebp-20],100
	jle	_258
_34
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_263
	sub	esp,4
	mov	eax,[_vmissilesnd]
	mov	[esp],eax
	call	_fplaysound
_263
	mov	eax,0
	jmp	_33_leave
_33_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffirebomb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1189765120
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1091567616
	mov	[esp+4],1098907648
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,1084227584
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_as]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1048576000
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,916964780
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,1031127695
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaphoming]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vbomb]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-12],esi
	mov	[ebp-16],1176255488
	mov	[ebp-20],1
	jmp	_264
_265
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_266
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aside]
	mov	esi,[esi]
	cmp	ebx,esi
	jz	_267
	mov	ebx,[ebp+20]
	cmp	[ebp-20],ebx
	jz	_268
	sub	esp,16
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-12]
	mov	[esp+4],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	eax,[ebp-24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_269
	mov	ebx,[ebp-24]
	mov	[ebp-16],ebx
	mov	ebx,[ebp-20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
_269
_268
_267
_266
	add	[ebp-20],1
_264
	cmp	[ebp-20],100
	jle	_265
_36
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_270
	sub	esp,4
	mov	eax,[_vmissilesnd]
	mov	[esp],eax
	call	_fplaysound
_270
	mov	eax,0
	jmp	_35_leave
_35_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffiremassdriver
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1084227584
	mov	[esp+4],0
	call	_frnd
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	sub	esp,8
	mov	[esp],1084227584
	mov	[esp+4],0
	call	_frnd
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapf]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_271
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
_271
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapf]
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
	jz	_272
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
_272
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1148846080
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1090519040
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,1006834287
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,-1210992873
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vmassdriver]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_273
	sub	esp,4
	mov	eax,[_vmasssnd]
	mov	[esp],eax
	call	_fplaysound
_273
	mov	eax,0
	jmp	_37_leave
_37_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffirexeonlaser
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	[esi],ebx
	mov	ebx,1169915904
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1101004800
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[_vweaponcntr]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	[ebx],eax
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapemmitter]
	mov	[esi],ebx
	mov	ebx,1000593162
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweapacc]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[_vweaponcntr]
	shl	esi,byte 2
	add	esi,[_aweaptrack]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[_vxeonlaser]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,8
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
	sub	esp,4
	mov	eax,[_vweaponcntr]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,5
	jge	_274
	sub	esp,4
	mov	eax,[_vxeonsnd]
	mov	[esp],eax
	call	_fplaysound
_274
	mov	eax,0
	jmp	_38_leave
_38_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbullets
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	mov	[ebp-4],1
	jmp	_275
_276
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweaplife]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_277
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweaplife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweaptrack]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_278
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweaptrack]
	mov	eax,[eax]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapx]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweaptrack]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_ay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	jmp	_280
_279
	sub	[ebp-8],360
_280
	cmp	[ebp-8],360
	jg	_279
_41
	jmp	_282
_281
	add	[ebp-8],360
_282
	cmp	[ebp-8],0
	jl	_281
_42
	cmp	[ebp-8],180
	jle	_283
	cmp	[ebp-8],355
	jge	_284
	mov	ebx,[_vgamespeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweaphoming]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	[ebx],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapf]
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
	jz	_285
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
_285
_284
	jmp	_286
_283
	cmp	[ebp-8],5
	jle	_287
	mov	ebx,[_vgamespeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweaphoming]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	[ebx],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapf]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1135869952
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_288
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1135869952
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapf]
	mov	[esi],ebx
_288
_287
_286
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fchs
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_frotatesprite
_278
	mov	[ebp-12],1
	jmp	_289
_290
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapspd]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapacc]
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
	add	esi,[_aweapspd]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapf]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapx]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapx]
	mov	[ebx],esi
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapspd]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapy]
	mov	[ebx],esi
	mov	[ebp-20],1
	jmp	_291
_292
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_293
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapid]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-20]
	jz	_294
	sub	esp,16
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+8],ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_asize]
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
	jz	_295
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapid]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aside]
	mov	esi,[esi]
	cmp	ebx,esi
	jnz	_296
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_atarg]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	call	_frnd
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	esi,[esi]
	shl	esi,byte 2
	add	esi,[_aaistate]
	mov	[esi],ebx
	jmp	_297
_296
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapx]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapy]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	_fatan2
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	jmp	_299
_298
	sub	[ebp-8],360
_299
	cmp	[ebp-8],360
	jg	_298
_45
	jmp	_301
_300
	add	[ebp-8],360
_301
	cmp	[ebp-8],0
	jl	_300
_46
	cmp	[ebp-8],315
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],45
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	eax,ebx
	and	eax,eax
	jz	_302
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	esi,[esi]
	add	esi,2
	sub	ebx,esi
	mov	[ebp-24],ebx
	jmp	_303
_302
	cmp	[ebp-8],225
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],315
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_304
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-24],ebx
	jmp	_305
_304
	cmp	[ebp-8],45
	setge	al
	movzx	eax,al
	mov	[ebp-40],eax
	cmp	[ebp-8],135
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_306
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	ebx,[ebx]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-24],ebx
	jmp	_307
_306
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweappay]
	mov	ebx,[ebx]
	add	ebx,3
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	esi,[esi]
	sub	ebx,esi
	mov	[ebp-24],ebx
_307
_305
_303
	cmp	[ebp-24],0
	jge	_308
	mov	[ebp-24],0
_308
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	sub	ebx,[ebp-24]
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ahp]
	mov	[esi],ebx
	cmp	[ebp-24],2
	jle	_309
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],1065353216
	call	_frnd
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aaistate]
	mov	[esi],ebx
_309
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapid]
	mov	ebx,[ebx]
	mov	esi,_aaggression
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aaggression]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-24]
	push	esi
	fild	[esp]
	pop	esi
	mov	edi,1036831949
	push	edi
	fld	[esp]
	pop	edi
	fmulp	st(1)
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapid]
	mov	esi,[esi]
	mov	edi,_aaggression
	add	edi,12
	mov	edi,[edi]
	imul	esi,edi
	add	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_aaggression]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fselecttarget
	mov	ebx,[ebp-24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1065353216
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-28],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_asize]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ax]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-32],esi
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_asize]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-36],esi
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	cmp	ebx,1
	jge	_310
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fmakering
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fmakeexplosion
	sub	esp,16
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_asize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1084227584
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmakeexplosion
	sub	esp,4
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_agfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_ax]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,15
	jge	_311
	sub	esp,4
	mov	eax,[_vbangsnd]
	mov	[esp],eax
	call	_fplaysound
_311
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_312
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amhp]
	mov	ebx,[ebx]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1050253722
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	eax,_aaggression
	add	eax,12
	mov	eax,[eax]
	shl	eax,byte 0
	add	eax,[ebp-20]
	shl	eax,byte 2
	add	eax,[_aaggression]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapid]
	mov	ebx,[ebx]
	cmp	ebx,1
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	or	ebx,eax
	and	ebx,ebx
	jz	_313
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_amhp]
	mov	ebx,[ebx]
	add	[_vscore],ebx
	sub	esp,4
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fplacepowerup
	add	[_vplayershiphull],1
_313
	sub	[_vredspawnspeed],500
	cmp	[_vredspawnspeed],1000
	jge	_314
	mov	[_vredspawnspeed],1000
_314
	add	[_vbluespawnspeed],400
	cmp	[_vbluespawnspeed],10000
	jle	_315
	mov	[_vbluespawnspeed],10000
_315
	jmp	_316
_312
	sub	[_vbluespawnspeed],500
	cmp	[_vbluespawnspeed],1000
	jge	_317
	mov	[_vbluespawnspeed],1000
_317
	add	[_vredspawnspeed],400
	cmp	[_vredspawnspeed],10000
	jle	_318
	mov	[_vredspawnspeed],10000
_318
_316
	jmp	_319
_310
	cmp	[ebp-24],0
	jle	_320
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapid]
	mov	eax,[eax]
	cmp	eax,1
	setz	al
	movzx	eax,al
	mov	[ebp-40],eax
	mov	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_aside]
	mov	ebx,[ebx]
	cmp	ebx,2
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-40]
	and	eax,ebx
	and	eax,eax
	jz	_321
	mov	ebx,[ebp-24]
	add	[_vscore],ebx
_321
	sub	esp,16
	mov	ebx,[ebp-28]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fmakeexplosion
	sub	esp,16
	mov	ebx,[_vcamx]
	mov	[esp+8],ebx
	mov	esi,[_vcamz]
	mov	[esp+12],esi
	mov	esi,[ebp-36]
	mov	[esp+4],esi
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_frange2d
	cmp	eax,7
	jge	_322
	sub	esp,12
	mov	[esp],1065353216
	mov	[esp+4],1084227584
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	shl	eax,byte 2
	add	eax,[_aimpactsnd]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fplaysound
_322
_320
_319
	mov	[ebp-12],3
	mov	[ebp-20],101
_297
_295
_294
_293
	add	[ebp-20],1
_291
	cmp	[ebp-20],100
	jle	_292
_44
	add	[ebp-12],1
_289
	cmp	[ebp-12],2
	jle	_290
_43
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweaplife]
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
	setae	al
	movzx	eax,al
	and	eax,eax
	jz	_323
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	jmp	_324
_323
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapx]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapemmitter]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_325
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapemmittime]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapemmittime]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapemmittime]
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
	jz	_326
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapemmitter]
	mov	ebx,[ebx]
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapemmittime]
	mov	[esi],ebx
	sub	esp,16
	mov	[esp+8],1050253722
	mov	[esp+12],1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweapy]
	mov	esi,[esi]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fmakeexplosion
_326
_325
_324
_277
	add	[ebp-4],1
_275
	cmp	[ebp-4],800
	jle	_276
_40
	mov	eax,0
	jmp	_39_leave
_39_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakeexplosion
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	add	[_vexpcntr],1
	cmp	[_vexpcntr],5000
	jle	_327
	mov	[_vexpcntr],1
_327
	mov	ebx,1
	mov	esi,[_vexpcntr]
	shl	esi,byte 2
	add	esi,[_aexpframe]
	mov	[esi],ebx
	mov	ebx,1112014848
	mov	esi,[_vexpcntr]
	shl	esi,byte 2
	add	esi,[_aexpframedelay]
	mov	[esi],ebx
	cmp	[ebp+32],0
	jnz	_328
	sub	esp,20
	mov	[esp+12],1092458906
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[_vexpcntr]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	jmp	_329
_328
	sub	esp,20
	mov	[esp+12],1092773478
	mov	[esp+16],0
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	mov	eax,[_vexpcntr]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
_329
	sub	esp,12
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[_vexpcntr]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,8
	mov	eax,[_vexpcntr]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aexpbrush]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpaintentity
	sub	esp,4
	mov	eax,[_vexpcntr]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	eax,0
	jmp	_47_leave
_47_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fexplosions
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_330
_331
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aexpframe]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_332
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aexpframedelay]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aexpframedelay]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aexpframedelay]
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
	jz	_333
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aexpframe]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aexpframe]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aexpframe]
	mov	ebx,[ebx]
	cmp	ebx,25
	jg	_334
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aexpframe]
	mov	ebx,[ebx]
	shl	ebx,byte 2
	add	ebx,[_aexpbrush]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fpaintentity
	mov	ebx,1112014848
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aexpframedelay]
	mov	[esi],ebx
	jmp	_335
_334
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aexpframe]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
_335
_333
_332
	add	[ebp-4],1
_330
	cmp	[ebp-4],5000
	jle	_331
_49
	mov	eax,0
	jmp	_48_leave
_48_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fmakering
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	add	[_vringcntr],1
	cmp	[_vringcntr],5
	jle	_336
	mov	[_vringcntr],1
_336
	sub	esp,20
	mov	[esp+12],1092616192
	mov	[esp+16],0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ay]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	eax,[_vringcntr]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,28
	mov	[esp],-1031405568
	mov	[esp+4],1116078080
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+8],eax
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],-1031405568
	mov	[esp+4],1116078080
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	[ebp-4],eax
	sub	esp,8
	mov	[esp],-1031405568
	mov	[esp+4],1116078080
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-4]
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	eax,[_vringcntr]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_frotateentity
	sub	esp,4
	mov	eax,[_vringcntr]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fshowentity
	mov	ebx,1065353216
	mov	esi,[_vringcntr]
	shl	esi,byte 2
	add	esi,[_aringlife]
	mov	[esi],ebx
	mov	eax,0
	jmp	_50_leave
_50_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_frings
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_337
_338
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aringlife]
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
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_339
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aringlife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aringlife]
	mov	[esi],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aringlife]
	mov	eax,[eax]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_340
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aringlife]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1028443341
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-8]
	mov	[esp+8],esi
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscaleentity
	jmp	_341
_340
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aringlife]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
_341
_339
	add	[ebp-4],1
_337
	cmp	[ebp-4],5
	jle	_338
_52
	mov	eax,0
	jmp	_51_leave
_51_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fgametimer
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vlasttime]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vgamespeed],ebx
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vlasttime],ebx
	mov	eax,0
	jmp	_53_leave
_53_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_frange2d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+28]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	eax,[ebp+24]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp+32]
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbFAbs
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,[ebp-8]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsqr
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_54_leave
	mov	eax,0
	jmp	_54_leave
_54_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_finit
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics3d
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[_vcamera],eax
	call	_fintro
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_342
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[_vbackdrop],eax
	sub	esp,20
	mov	[esp+12],1108082688
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],0
	mov	eax,[_vbackdrop]
	mov	[esp],eax
	call	_fpositionentity
	sub	esp,12
	mov	[esp+4],1116078080
	mov	[esp+8],1116078080
	mov	eax,[_vbackdrop]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_343
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vredlaser],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_344
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vgreenlaser],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_345
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vbluelaser],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_346
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vmissile],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_347
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vtorpedo],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_348
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vbomb],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_349
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vmassdriver],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_350
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[_vxeonlaser],eax
	mov	[ebp-4],1
	jmp	_351
_352
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_aweapgfx]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhandlesprite
	sub	esp,12
	mov	[esp+4],1051595899
	mov	[esp+8],1051595899
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalesprite
	add	[ebp-4],1
_351
	cmp	[ebp-4],800
	jle	_352
_56
	mov	[ebp-8],1
	jmp	_353
_354
	sub	esp,36
	mov	eax,_355
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,_356
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	call	_floadbrush
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aexpbrush]
	mov	[ebx],eax
	add	[ebp-8],1
_353
	cmp	[ebp-8],25
	jle	_354
_57
	mov	[ebp-8],1
	jmp	_357
_358
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aexpgfx]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp],1065353216
	mov	[esp+4],1135869952
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_aexpgfx]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_frotatesprite
	mov	ebx,eax
	sub	esp,4
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1051931443
	call	_fentityalpha
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_aexpgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhandlesprite
	add	[ebp-8],1
_357
	cmp	[ebp-8],5000
	jle	_358
_58
	mov	[ebp-12],1
	jmp	_359
_360
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_361
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_aringgfx]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],4
	call	_fspriteviewmode
	sub	esp,4
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	sub	esp,8
	mov	eax,[ebp-12]
	shl	eax,byte 2
	add	eax,[_aringgfx]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],1053609165
	call	_fentityalpha
	add	[ebp-12],1
_359
	cmp	[ebp-12],5
	jle	_360
_59
	mov	[ebp-16],1
	jmp	_362
_363
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	ebx,[ebp-16]
	shl	ebx,byte 2
	add	ebx,[_apowergfx]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-16]
	shl	eax,byte 2
	add	eax,[_apowergfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	add	[ebp-16],1
_362
	cmp	[ebp-16],10
	jle	_363
_60
	sub	esp,8
	mov	eax,_364
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vlasersnd],eax
	sub	esp,8
	mov	eax,_365
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vmissilesnd],eax
	sub	esp,8
	mov	eax,_366
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vmasssnd],eax
	sub	esp,8
	mov	eax,_367
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vxeonsnd],eax
	sub	esp,8
	mov	eax,_368
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vbangsnd],eax
	sub	esp,8
	mov	eax,_369
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_aimpactsnd]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_370
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_aimpactsnd]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_371
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_aimpactsnd]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_372
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	ebx,4
	shl	ebx,byte 2
	add	ebx,[_aimpactsnd]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_373
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	ebx,5
	shl	ebx,byte 2
	add	ebx,[_aimpactsnd]
	mov	[ebx],eax
	mov	eax,0
	jmp	_55_leave
_55_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitfacing
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],0
	jmp	_374
_375
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fsin
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiex]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcos
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_apiez]
	mov	[ebx],eax
	add	[ebp-4],1
_374
	cmp	[ebp-4],360
	jle	_375
_62
	mov	eax,0
	jmp	_61_leave
_61_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finitship
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agfx]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_376
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_agfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
_376
	cmp	[ebp+28],1
	jnz	_377
	sub	esp,32
	mov	eax,_378
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_379
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],2
	mov	[esp+8],0
	call	_floadsprite
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agfx]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_380
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aradarimage]
	mov	[ebx],eax
	jmp	_381
_377
	sub	esp,32
	mov	eax,_382
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_383
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[esp+4],2
	mov	[esp+8],0
	call	_floadsprite
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_agfx]
	mov	[ebx],eax
	sub	esp,8
	mov	eax,_384
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aradarimage]
	mov	[ebx],eax
_381
	mov	[ebp-4],1
	jmp	_385
_386
	mov	ebx,0
	mov	esi,_aaggression
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aaggression]
	mov	[esi],ebx
	add	[ebp-4],1
_385
	cmp	[ebp-4],100
	jle	_386
_64
	mov	ebx,[ebp+28]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aside]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,910775196
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,919163804
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aa]
	mov	[ebx],esi
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1002740646
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1011129254
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_at]
	mov	[ebx],esi
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1041865114
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	mov	ebx,1067869798
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ah]
	mov	[ebx],esi
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_asize]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1080033280
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1120403456
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp+24]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_ahp]
	mov	[esi],ebx
	cmp	[ebp+20],1
	jz	_387
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aarmour]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	[esi],ebx
_387
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_aarmour]
	mov	ebx,[ebx]
	cmp	ebx,0
	jge	_388
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aarmour]
	mov	[esi],ebx
_388
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],1135869952
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],eax
	mov	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aai]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_ahp]
	mov	ebx,[ebx]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_amhp]
	mov	[esi],ebx
	cmp	[ebp+24],30
	jge	_389
	mov	ebx,1
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,250
	sub	ebx,[ebp+24]
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
	mov	ebx,4
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,750
	mov	esi,[ebp+24]
	imul	esi,3
	sub	ebx,esi
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_asize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1101004800
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	jmp	_390
_389
	cmp	[ebp+24],60
	jge	_391
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_392
	mov	ebx,2
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,250
	sub	ebx,[ebp+24]
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
	jmp	_393
_392
	mov	ebx,8
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,1000
	mov	esi,[ebp+24]
	shl	esi,byte 2
	sub	ebx,esi
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
_393
	mov	ebx,5
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,750
	mov	esi,[ebp+24]
	imul	esi,3
	sub	ebx,esi
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_asize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1097859072
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	jmp	_394
_391
	sub	esp,8
	mov	[esp],1065353216
	mov	[esp+4],0
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_395
	mov	ebx,3
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,250
	sub	ebx,[ebp+24]
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
	jmp	_396
_395
	mov	ebx,7
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,[ebp+24]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1059816735
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,1125515264
	push	esi
	fld	[esp]
	pop	esi
	fsubrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	ebx,_awmaxdelay
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,0
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_awmaxdelay]
	mov	[ebx],esi
_396
	mov	ebx,6
	mov	esi,_aw
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_aw]
	mov	[esi],ebx
	mov	ebx,1050
	mov	esi,[ebp+24]
	shl	esi,byte 2
	sub	ebx,esi
	mov	esi,_awmaxdelay
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awmaxdelay]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_asize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1092616192
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	shl	esi,byte 0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
_394
_390
	mov	ebx,-1
	mov	esi,_awammo
	add	esi,12
	mov	esi,[esi]
	imul	esi,0
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_awammo]
	mov	[esi],ebx
	mov	eax,0
	jmp	_63_leave
_63_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadshipsizefile
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
	mov	[ebp-16],ebx
	sub	esp,8
	mov	eax,_397
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_398
_399
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-16],eax
	mov	ebx,[ebp-12]
	add	ebx,[ebp-16]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ashipsize]
	mov	[esi],ebx
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_ashipsize]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1013157423
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_ashipsize]
	mov	[esi],ebx
	add	[ebp-8],1
_398
	cmp	[ebp-8],91
	jle	_399
_66
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,0
	jmp	_65_leave
_65_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_finithud
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,_400
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vtitlescreen],eax
	sub	esp,8
	mov	eax,_401
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vradar],eax
	sub	esp,8
	mov	eax,_402
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vhud],eax
	sub	esp,8
	mov	eax,_403
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vbronze],eax
	sub	esp,8
	mov	eax,_404
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vsilver],eax
	sub	esp,8
	mov	eax,_405
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vgold],eax
	sub	esp,8
	mov	eax,_406
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vdefeat],eax
	sub	esp,8
	mov	eax,_407
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vmenu],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_408
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_apowerbrush]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_409
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_apowerbrush]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_410
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	ebx,3
	shl	ebx,byte 2
	add	ebx,[_apowerbrush]
	mov	[ebx],eax
	mov	eax,0
	jmp	_67_leave
_67_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fintro
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	mov	[ebp-24],ebx
	mov	[ebp-28],ebx
	mov	[ebp-32],ebx
	sub	esp,8
	mov	eax,_411
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vmusic],eax
	sub	esp,4
	mov	eax,[_vmusic]
	mov	[esp],eax
	call	_floopsound
	sub	esp,4
	mov	eax,[_vmusic]
	mov	[esp],eax
	call	_fplaysound
	mov	[_vmusicchannel],eax
	sub	esp,16
	mov	[esp+8],1065353216
	mov	[esp+12],1065353216
	mov	[esp+4],2
	sub	esp,4
	mov	eax,_412
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadbrush
	mov	[ebp-4],eax
	call	_fgametimer
	mov	[ebp-8],1
	jmp	_413
_414
	sub	esp,4
	mov	[esp],0
	call	_fcreatesprite
	mov	ebx,[ebp-8]
	shl	ebx,byte 2
	add	ebx,[_alogog]
	mov	[ebx],eax
	sub	esp,12
	mov	[esp+4],1115684864
	mov	[esp+8],1103626240
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_alogog]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_alogog]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[esp+4],970045207
	call	_fentityalpha
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_alogog]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fpaintentity
	add	[ebp-8],1
_413
	cmp	[ebp-8],25
	jle	_414
_69
	mov	[ebp-12],0
	mov	[ebp-16],0
	call	_fgametimer
_415
	call	_fgametimer
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,[_vgamespeed]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,[ebp-12]
	mov	[ebp-20],ebx
	cmp	[ebp-20],3000
	jle	_416
	mov	[ebp-20],3000
_416
	mov	ebx,3000
	sub	ebx,[ebp-20]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-24],ebx
	mov	[ebp-8],1
	jmp	_417
_418
	sub	esp,8
	mov	[esp],1106247680
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],1101004800
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,1161527296
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-28],eax
	sub	esp,8
	mov	[esp],1106247680
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-36],eax
	sub	esp,8
	mov	[esp],1101004800
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	esi,[ebp-24]
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	fsubp	st(1)
	mov	ebx,1161527296
	push	ebx
	fld	[esp]
	pop	ebx
	fdivp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],1120403456
	mov	[esp+16],0
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_alogog]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpositionentity
	add	[ebp-8],1
_417
	cmp	[ebp-8],25
	jle	_418
_71
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	cmp	[ebp-12],3000
	jle	_419
	mov	ebx,[_vgamespeed]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1036831949
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fstp	[esp]
	pop	esi
	mov	[ebp-16],esi
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1132396544
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_420
	mov	[ebp-16],1132396544
_420
	sub	esp,12
	mov	ebx,[ebp-16]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+8],esi
	mov	eax,[ebp-16]
	push	eax
	fld	[esp]
	pop	eax
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	mov	eax,_421
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],600
	mov	[esp],512
	call	_ftext
_419
	sub	esp,4
	mov	[esp],0
	call	_fflip
	cmp	[ebp-12],4500
	jle	_415
_70
	mov	[ebp-8],1
	jmp	_422
_423
	sub	esp,4
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_alogog]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	add	[ebp-8],1
_422
	cmp	[ebp-8],25
	jle	_423
_72
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_ffreebrush
	call	_fcls
	call	_fflushkeys
	mov	eax,0
	jmp	_68_leave
_68_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fbegin
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,4
	mov	eax,[_vmusicchannel]
	mov	[esp],eax
	call	_fstopchannel
	mov	[ebp-4],1
	jmp	_424
_425
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_agfx]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_426
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_agfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreeentity
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_agfx]
	mov	[esi],ebx
_426
	mov	ebx,-1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_ahp]
	mov	[esi],ebx
	add	[ebp-4],1
_424
	cmp	[ebp-4],100
	jle	_425
_74
	mov	[ebp-4],1
	jmp	_427
_428
	mov	ebx,0
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_aweaplife]
	mov	[esi],ebx
	sub	esp,4
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_aweapgfx]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fhideentity
	add	[ebp-4],1
_427
	mov	ebx,[ebp-8]
	cmp	[ebp-4],ebx
	jle	_428
_75
	sub	esp,4
	call	_fmillisecs
	mov	[esp],eax
	call	_fseedrnd
	mov	[_vplayershiphull],25
	mov	[_vredspawnspeed],5000
	mov	[_vbluespawnspeed],5000
	mov	[_vredships],99
	mov	[_vblueships],99
	sub	esp,12
	mov	ebx,[_vplayershiphull]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	[esp],1
	call	_finitship
	sub	esp,12
	mov	ebx,[_vplayershiphull]
	sub	ebx,5
	mov	[esp+4],ebx
	mov	[esp+8],2
	mov	[esp],2
	call	_finitship
	mov	ebx,-1
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_aai]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],eax
	mov	ebx,-1031667712
	mov	esi,1
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	sub	esp,8
	mov	[esp],1119092736
	mov	[esp+4],1132920832
	call	_frnd
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,1
	shl	ebx,byte 2
	add	ebx,[_af]
	mov	[ebx],eax
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	call	_frnd
	mov	[ebp-12],eax
	sub	esp,8
	mov	[esp],1109393408
	mov	[esp+4],0
	mov	eax,ebx
	call	_frnd
	mov	ebx,eax
	mov	eax,[ebp-12]
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,2
	shl	ebx,byte 2
	add	ebx,[_ax]
	mov	[ebx],eax
	mov	ebx,1115815936
	mov	esi,2
	shl	esi,byte 2
	add	esi,[_ay]
	mov	[esi],ebx
	mov	eax,0
	jmp	_73_leave
_73_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vmusic	.dd	0
	.align	4
_vmusicchannel	.dd	0
	.align	4
_ashipsize	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_agfx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ax	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_af	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aa	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_as	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_at	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_ah	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aw	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_awammo	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_awdelay	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_awmaxdelay	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_amhp	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_ahp	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aarmour	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_asize	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aai	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aaistate	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_atarg	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adamagepuff	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aaggression	.dd	0
	.dd	2
	.dd	2
	.dd	0
	.dd	0
	.align	4
_aside	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aradarimage	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vcamera	.dd	0
	.align	4
_vcamx	.dd	0
	.align	4
_vcamz	.dd	0
	.align	4
_vbackdrop	.dd	0
	.align	4
_apiex	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_apiez	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_vlasttime	.dd	0
	.align	4
_vgamespeed	.dd	0
	.align	4
_vweaponcntr	.dd	0
	.align	4
_aweapgfx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aweaplife	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapx	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapy	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapf	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapid	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aweappay	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aweapemmitter	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapemmittime	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapspd	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweapacc	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_aweaptrack	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aweaphoming	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_vredlaser	.dd	0
	.align	4
_vgreenlaser	.dd	0
	.align	4
_vbluelaser	.dd	0
	.align	4
_vmissile	.dd	0
	.align	4
_vtorpedo	.dd	0
	.align	4
_vbomb	.dd	0
	.align	4
_vmassdriver	.dd	0
	.align	4
_vxeonlaser	.dd	0
	.align	4
_vexpcntr	.dd	0
	.align	4
_aexpbrush	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aexpgfx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aexpframe	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aexpframedelay	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_vringcntr	.dd	0
	.align	4
_aringgfx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_aringlife	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_vlasersnd	.dd	0
	.align	4
_vmissilesnd	.dd	0
	.align	4
_vmasssnd	.dd	0
	.align	4
_vxeonsnd	.dd	0
	.align	4
_vbangsnd	.dd	0
	.align	4
_aimpactsnd	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_alogog	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vmenuactive	.dd	0
	.align	4
_vmenu	.dd	0
	.align	4
_vtitlescreen	.dd	0
	.align	4
_vradar	.dd	0
	.align	4
_vhud	.dd	0
	.align	4
_vscore	.dd	0
	.align	4
_vdefeat	.dd	0
	.align	4
_vbronze	.dd	0
	.align	4
_vsilver	.dd	0
	.align	4
_vgold	.dd	0
	.align	4
_vplayerspawn	.dd	0
	.align	4
_vredtime	.dd	0
	.align	4
_vbluetime	.dd	0
	.align	4
_vblueqty	.dd	0
	.align	4
_vredqty	.dd	0
	.align	4
_vpowertimer	.dd	0
	.align	4
_vredships	.dd	0
	.align	4
_vblueships	.dd	0
	.align	4
_vredspawnspeed	.dd	0
	.align	4
_vbluespawnspeed	.dd	0
	.align	4
_apowerx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apowery	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apowert	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apowergfx	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_apowerbrush	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vpowercntr	.dd	0
	.align	4
_vplayershiphull	.dd	0
_122	.db	"Score ",0
_126	.db	"Score ",0
_129	.db	"Missiles ",0
_130	.db	"Hull",0
_131	.db	"/",0
_132	.db	"Blue ",0
_133	.db	"Red ",0
_134	.db	"Score ",0
_136	.db	"Respawn in ",0
_137	.db	"s",0
_138	.db	"http://www.bansheestudios.com",0
_139	.db	" fps",0
_342	.db	"Backdrop/backdrop1.jpg",0
_343	.db	"Weapons/redLaser.png",0
_344	.db	"Weapons/greenLaser.png",0
_345	.db	"Weapons/blueLaser.png",0
_346	.db	"Weapons/missile.png",0
_347	.db	"Weapons/bomb2.png",0
_348	.db	"Weapons/bomb1.png",0
_349	.db	"Weapons/massDriver.png",0
_350	.db	"Weapons/xeonLaser.png",0
_355	.db	"Explosion/dth",0
_356	.db	".bmp",0
_361	.db	"Explosion/ringBurst.png",0
_364	.db	"SFX\laser.wav",0
_365	.db	"SFX\missileLaunch.wav",0
_366	.db	"SFX\massDriver.wav",0
_367	.db	"SFX\xeonLaser.wav",0
_368	.db	"SFX\bang1.wav",0
_369	.db	"SFX\impact1.wav",0
_370	.db	"SFX\impact2.wav",0
_371	.db	"SFX\impact3.wav",0
_372	.db	"SFX\impact4.wav",0
_373	.db	"SFX\impact5.wav",0
_378	.db	"Ships\",0
_379	.db	".png",0
_380	.db	"UI\blue.png",0
_382	.db	"Ships\r",0
_383	.db	".png",0
_384	.db	"UI\red.png",0
_397	.db	"ShipSize.dat",0
_400	.db	"UI\SpaceCorpsTitle.png",0
_401	.db	"UI\Radar.png",0
_402	.db	"UI\hud.png",0
_403	.db	"UI\bronze.png",0
_404	.db	"UI\silver.png",0
_405	.db	"UI\gold.png",0
_406	.db	"UI\defeat.png",0
_407	.db	"UI\menu.png",0
_408	.db	"UI\repair.png",0
_409	.db	"UI\upgrade.png",0
_410	.db	"UI\missile.jpg",0
_411	.db	"SFX\theme.wav",0
_412	.db	"UI\logo.png",0
_421	.db	"Space Corps: Armageddon",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

