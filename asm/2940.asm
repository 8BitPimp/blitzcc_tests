
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
	mov	[_vplaying_volume],1065353216
	mov	[_vhidden_volume],0
	mov	[_vnb_fading],0
	mov	[_vfade_start_time],0
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
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vsound_a],eax
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsound
	mov	[_vsound_b],eax
	sub	esp,8
	mov	eax,[_vsound_a]
	mov	[esp],eax
	mov	ebx,[_vsound_b]
	mov	[esp+4],ebx
	call	_finitialisechannels
	jmp	_10
_9
	call	_fcls
	mov	ebx,[_vnb_fading]
	and	ebx,ebx
	jz	_11
	call	_fupdatefade
	jmp	_12
_11
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	[esp],0
	call	_ftext
	sub	esp,4
	mov	[esp],57
	call	_fkeyhit
	and	eax,eax
	jz	_14
	call	_fbeginfade
_14
_12
	sub	esp,4
	mov	[esp],1
	call	_fflip
_10
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_9
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
_finitialisechannels
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fplaysound
	mov	[_vchannel_playing],eax
	sub	esp,4
	mov	eax,[ebp+24]
	mov	[esp],eax
	call	_fplaysound
	mov	[_vchannel_hidden],eax
	sub	esp,8
	mov	eax,[_vchannel_playing]
	mov	[esp],eax
	mov	ebx,[_vplaying_volume]
	mov	[esp+4],ebx
	call	_fchannelvolume
	sub	esp,8
	mov	eax,[_vchannel_hidden]
	mov	[esp],eax
	mov	ebx,[_vhidden_volume]
	mov	[esp+4],ebx
	call	_fchannelvolume
	sub	esp,4
	mov	eax,[_vchannel_hidden]
	mov	[esp],eax
	call	_fpausechannel
	sub	esp,4
	mov	eax,[_vchannel_playing]
	mov	[esp],eax
	call	_fresumechannel
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
_fbeginfade
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmillisecs
	mov	[_vfade_start_time],eax
	mov	[_vnb_fading],1
	sub	esp,4
	mov	eax,[_vchannel_hidden]
	mov	[esp],eax
	call	_fresumechannel
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
_fupdatefade
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
	sub	eax,[_vfade_start_time]
	mov	[ebp-4],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],20
	mov	[esp],0
	call	_ftext
	mov	eax,[ebp-4]
	push	eax
	fild	[esp]
	pop	eax
	mov	ebx,1169608704
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	mov	ebx,[_vchannel_playing]
	mov	[ebp-8],ebx
	mov	ebx,[_vchannel_hidden]
	mov	[_vchannel_playing],ebx
	mov	ebx,[ebp-8]
	mov	[_vchannel_hidden],ebx
	mov	[_vplaying_volume],1065353216
	mov	[_vhidden_volume],0
	sub	esp,4
	mov	eax,[_vchannel_hidden]
	mov	[esp],eax
	call	_fpausechannel
	mov	[_vnb_fading],0
	jmp	_17
_16
	mov	ebx,[ebp-4]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1169608704
	push	esi
	fld	[esp]
	pop	esi
	fdivp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[ebp-12],ebx
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-12]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vplaying_volume],ebx
	mov	ebx,[ebp-12]
	mov	[_vhidden_volume],ebx
_17
	sub	esp,8
	mov	eax,[_vchannel_playing]
	mov	[esp],eax
	mov	ebx,[_vplaying_volume]
	mov	[esp+4],ebx
	call	_fchannelvolume
	sub	esp,8
	mov	eax,[_vchannel_hidden]
	mov	[esp],eax
	mov	ebx,[_vhidden_volume]
	mov	[esp+4],ebx
	call	_fchannelvolume
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,[_vplaying_volume]
	mov	[esp],eax
	call	__bbStrFromFloat
	mov	[esp+8],eax
	mov	[esp+4],40
	mov	[esp],0
	call	_ftext
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vchannel_playing	.dd	0
	.align	4
_vchannel_hidden	.dd	0
	.align	4
_vplaying_volume	.dd	0
	.align	4
_vhidden_volume	.dd	0
	.align	4
_vnb_fading	.dd	0
	.align	4
_vfade_start_time	.dd	0
	.align	4
_vsound_a	.dd	0
_7	.db	"[INSERT FILEPATH HERE]",0
	.align	4
_vsound_b	.dd	0
_8	.db	"[INSERT FILEPATH HERE]",0
_13	.db	"Press Space Bar to Begin Fade In/Out",0
_15	.db	"Fading...",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

