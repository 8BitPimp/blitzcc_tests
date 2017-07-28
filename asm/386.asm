
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
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],480
	mov	[esp],640
	call	_fgraphics
	sub	esp,12
	mov	eax,_43
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadresource
	mov	[esp],eax
	call	_floadimage
	mov	[ebp-4],eax
	sub	esp,12
	mov	eax,_44
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadresource
	mov	[esp],eax
	call	_floadsound
	mov	[ebp-8],eax
	call	_ffreeresources
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],255
	mov	[esp+4],255
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fmaskimage
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	jmp	_46
_45
	call	_fcls
	sub	esp,16
	call	_fmousey
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[ebp-12],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fdrawimage
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	and	eax,eax
	jz	_47
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fplaysound
_47
	sub	esp,4
	mov	[esp],1
	call	_fflip
_46
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	cmp	eax,0
	jz	_45
_3
_l_2beep_wav
_l_2mouse_png
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_ffreeresources
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],_ttempresourcefile
	call	__bbObjEachFirst
	and	eax,eax
	jz	_5
_50
	sub	esp,8
	mov	eax,[ebp-4]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fdeletefile
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjDelete
	sub	esp,4
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbObjEachNext
	and	eax,eax
	jnz	_50
_5
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_floadresource
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-56]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_53
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_52
	sub	esp,12
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_55
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_54
	jmp	_51
_52
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	jmp	_51
_54
	sub	esp,4
	mov	eax,__DATA
	add	eax,88
	mov	[esp],eax
	call	__bbRestore
	jmp	_51
_51
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_56
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp],1177394176
	mov	[esp+4],1203982208
	call	_frnd
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,40
	mov	eax,_57
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fsystemproperty
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_58
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_59
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-16],eax
_60
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_62
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_61
	jmp	_8
_61
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-24],eax
	mov	[ebp-28],1
	jmp	_63
_64
	sub	esp,24
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	esi,63
	and	ebx,esi
	shl	ebx,byte 18
	mov	[ebp-32],ebx
	sub	esp,24
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	esi,63
	and	ebx,esi
	shl	ebx,byte 12
	add	[ebp-32],ebx
	sub	esp,24
	mov	ebx,[ebp-28]
	add	ebx,2
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	esi,63
	and	ebx,esi
	shl	ebx,byte 6
	add	[ebp-32],ebx
	sub	esp,24
	mov	ebx,[ebp-28]
	add	ebx,3
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	esi,63
	and	ebx,esi
	add	[ebp-32],ebx
	mov	ebx,[ebp-32]
	shr	ebx,byte 16
	mov	esi,255
	and	ebx,esi
	mov	[ebp-36],ebx
	mov	ebx,[ebp-32]
	shr	ebx,byte 8
	mov	esi,255
	and	ebx,esi
	mov	[ebp-40],ebx
	mov	ebx,[ebp-32]
	mov	esi,255
	and	ebx,esi
	mov	[ebp-44],ebx
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,8
	mov	eax,[ebp-16]
	mov	[esp],eax
	mov	ebx,[ebp-44]
	mov	[esp+4],ebx
	call	_fwritebyte
	add	[ebp-28],4
_63
	mov	ebx,[ebp-24]
	cmp	[ebp-28],ebx
	jle	_64
_9
	jmp	_60
_8
	sub	esp,4
	mov	eax,[ebp-16]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	lea	eax,[ebp-48]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_ttempresourcefile
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbObjNew
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbObjStore
	sub	esp,8
	mov	eax,[ebp-48]
	mov	eax,[eax]
	add	eax,0
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_6_leave
	sub	esp,4
	mov	eax,_65
	mov	[esp],eax
	call	__bbStrConst
	jmp	_6_leave
_6_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-48]
	mov	[esp],esi
	mov	eax,esi
	call	__bbObjRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-12]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_43	.db	"mouse.png",0
_44	.db	"beep.wav",0
	.align	4
_ttempresourcefile	.dd	5
_48	.dd	0
	.dd	_48
	.dd	_48
	.dd	0
	.dd	-1
_49	.dd	0
	.dd	_49
	.dd	_49
	.dd	0
	.dd	-1
	.dd	1
	.dd	__bbStrType
_53	.db	"BEEP.WAV",0
_55	.db	"MOUSE.PNG",0
_56	.db	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz{}",0
_57	.db	"tempdir",0
_58	.db	"~bb",0
_59	.db	".tmp",0
_62	.db	"!EOF",0
_65	.db	"",0
_10	.db	"Kab6Hdu2001NGLP5Pcrq810000010040T2S007Gd000100W0P65qOLe20024Yuc0TNU3Zv5wNc6MtRzi5Yk0wDHt",0
_11	.db	"7ZoHyhbM4r{zvOae8OVbhbaJNxpoZZ4na}2kIn5ioUY38J2MxwH74MtKu7KPGQBobpaLUThISHP9h}UMEnbyujTi",0
_12	.db	"5KkkzPGp6O7aoMSHKRhwaJCWXk}2PXLPlFgMCIEJzRLP4sdIyuCcDfxwgKSHSjNaUXayglkSGnDrtULt6KEf{vmy",0
_13	.db	"5dtWt7KLHhJxapSSWEZNR1DFj}UCAo2Bxybd3bV4yuGeAu}tmLeEOidmX2Cfb}UoLX5dp}A392wM{AzC3ctIwtyS",0
_14	.db	"DwRwd3uRUkJSPn5IklU9A2IEyhzS3L}CxNmWD9V}kbGDPipdW20ha}UvMWvUokTy83EP{gn747BOr6qJGw}xbpOP",0
_15	.db	"XksvL0jVnU{68IYPzQTB2MVLv7aODg7xf4CDTztKSH51jFgJDnQ6xxrV3bh4yeSiA9Vrh4uERzZTV1iqgVYSH1Lw",0
_16	.db	"vz1j4qQo{fSv6uVjn6eHJC7tZ34ea}YwLmvaqEL}7ZUg{fv35NpgpMOMMSVjXoWedlUgJnDovDnr6pwlzw515N}d",0
_17	.db	"oMeMJyNjYp0cbk{nKXPgrDXy93oqwvT18OFbmcGUNCNVXp4xfkIVIobzrRzcA5gws8uyDvJNgLemRyI}SZTMgi{M",0
_18	.db	"Ja6BoQndF6grmO16L9h5d5T3VRgkSJzQei6HLak3kQPfIM{fiNzCLvczbbf6UhorUKHPdyIPMJzykQzrH5oYkOjK",0
_19	.db	"Hd{tgNH9OPwraLzEVAodVLPYawcCPbnzefzzNcI7gfHqP7UHbe5jSOEFXtToVOc9VtbyWm00",0
_20	.db	"!EOF",0
_21	.db	"YL1EHmqA6We0000DIKX4KW0002a0000W20C0002uiQ4C0003051CL4K0003}}}}}0Fy410W20WG10G830mKA2X07",0
_22	.db	"1miC31820WCC314G41O820iB2myH4HSC31092Gm61WW30mGK51eA2WqO61yL5HiE3X871maP6I0I4XSF3nCR6o8N",0
_23	.db	"5nqS72CO61uC30y820e410KT7IGP6HyL5HeH4HKQ6Y0M5XiR6o4I4XO92GiS728N5nmE3X4O61qJ4nST7ICU7YGP",0
_24	.db	"6HuK51WF3n851GOQ6XyL5HaM5XeB2mqH4HGO61mI4XKC30uJ4nOD3GyM5XaF3n4nCJPPMLnrTNTSN5q61WK71mOA",0
_25	.db	"2WaM5XKR6nfXOM36niN{}lxz}Vtx{}lv{Vdu{FZpy}FoylBlx{}ewEZavEJZu{FUtjxTtTtNrzVMrjRLrTNKrDJJ",0
_26	.db	"qzFGqD3Fpy}DpStCpCpBoyl7nyV5nSN2miAvkRcukBYtjxUoihAmiB2lhw{khgwjhQsfgQcXeQ6WeA2QcfgMbfQL",0
_27	.db	"bPMGa92DZOsBYuk6XeQ1WO5zVNruU7XqT7HpStDnSN5hQsjdPsTaP6HXOM5WO61QMbfPMLbOM5XIKb99IKb8I4X7",0
_28	.db	"HqT5HKL3GqD2Ga8sDZOpCpCmC30lBoyjBIqiB2mgAYed9oSZ8oCX8I4S71mP6HaN5nSJ4nCH4H4G410D3GqC30mB",0
_29	.db	"2mi92Ga820W71mS30mC20W810G420W820W820W820W820W820W820W820Z820W820W8000820W820W820W820W82",0
_30	.db	"0W820W8o0W82CY020W820W8000820W820W820W820W820W820W8eCW8aE0K20W820W8000820W820W820W820W82",0
_31	.db	"0W820W8ZBJ8m2g820W820W8000820W820W820W820W820XO20W9A6J80esa20YG20W8000820W820W820W820W82",0
_32	.db	"A4G20W9n012aRG4292a20W8000820W820W820W8F0W8234Op0W81Tm1f0G4aAG020W8000820W820W820W8hAW82",0
_33	.db	"2tGK90810Nu10G4r09e20WBjOFTF00002N18MNC000iJ000B4m1tdQoE00023Kb4GLHud8NJLriJGHG6u6{E1YkY",0
_34	.db	"WaeKJJGJiqcC8RDgH5GG6s9NB14LkmR4Ni6ElHViqMWKuMSwkqj2TcSXvsBdvdrcptTc1Wt9{3oX2ofPC6f1GkCb",0
_35	.db	"BUBu}LxY{Qi4Bo5ZoVvp7Kz{0Tv4PDGcm5VW8sDjtHy0JxL}b8r1l1ut6MExpZxR19JNqKWTWqHau4UA6TL{{ojG",0
_36	.db	"MRF4tOA8Hz7BhDfx{SqWC6qXkNGi9Udb0wTOlixqPe5aAAXOGueWNkyeKBR}Xao7XZ3fFgSaNeDBhAXakdvW{chR",0
_37	.db	"UPYIV6LVzZ1R7UfvrupaChzJYiNePeuwdv4JNYaSalGPFzjihlF580BLGUNlv8lXGL6VdI{1G4YpvH{InEVyEr6G",0
_38	.db	"zsJsjTmUlI19BtkrlJ2dMrbKDiQukvH3lM2oL5f{3Z{LKweJRd{Ncqxvr6fcpdMPaTu2Ysfr9RkvA{uQv1go9urr",0
_39	.db	"vzNFG5pJtUIiNBiK3yUD}txGkYyz6NWQIIYIz35R6TlTLwMFxTjdHJjmlmNUi50aQVNRMAffjfYBvwr3OpZsg1bh",0
_40	.db	"L2acR6GT2NCEZ}CJEv91L2YI8j6ZLoR9bLVXZWMFVyDINTsJg6BzXibcoo5SDs1w2y9SJMIITPgrJiL5nhh{5g0Y",0
_41	.db	"8pFpFNjRJgV}34D53gUB1JRd9jQwdf6JQl0iBxea8qlv4FpkDyI5sXxoVrPxOkYwvHCJ000004b5JaIkGc22",0
_42	.db	"!EOF",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	4
	.dd	_10
	.dd	4
	.dd	_11
	.dd	4
	.dd	_12
	.dd	4
	.dd	_13
	.dd	4
	.dd	_14
	.dd	4
	.dd	_15
	.dd	4
	.dd	_16
	.dd	4
	.dd	_17
	.dd	4
	.dd	_18
	.dd	4
	.dd	_19
	.dd	4
	.dd	_20
	.dd	4
	.dd	_21
	.dd	4
	.dd	_22
	.dd	4
	.dd	_23
	.dd	4
	.dd	_24
	.dd	4
	.dd	_25
	.dd	4
	.dd	_26
	.dd	4
	.dd	_27
	.dd	4
	.dd	_28
	.dd	4
	.dd	_29
	.dd	4
	.dd	_30
	.dd	4
	.dd	_31
	.dd	4
	.dd	_32
	.dd	4
	.dd	_33
	.dd	4
	.dd	_34
	.dd	4
	.dd	_35
	.dd	4
	.dd	_36
	.dd	4
	.dd	_37
	.dd	4
	.dd	_38
	.dd	4
	.dd	_39
	.dd	4
	.dd	_40
	.dd	4
	.dd	_41
	.dd	4
	.dd	_42
	.dd	0

