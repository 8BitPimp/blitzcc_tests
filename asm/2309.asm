
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,52
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
	mov	[ebp-44],ebx
	mov	[ebp-48],ebx
	sub	esp,12
	mov	eax,_79
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_80
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[ebp-4],1
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	cmp	[ebp-8],1
	jz	_82
	cmp	[ebp-8],2
	jz	_83
	cmp	[ebp-8],3
	jz	_84
	cmp	[ebp-8],4
	jz	_85
	jmp	_81
_82
	mov	[_vsw],800
	mov	[_vsh],600
	jmp	_81
_83
	mov	[_vsw],1024
	mov	[_vsh],768
	jmp	_81
_84
	mov	[_vsw],1280
	mov	[_vsh],1024
	jmp	_81
_85
	mov	[_vsw],1600
	mov	[_vsh],1200
	jmp	_81
_81
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	esi,[_vsh]
	mov	[esp+4],esi
	mov	eax,[_vsw]
	mov	[esp],eax
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,4
	mov	eax,_achar
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,255
	mov	esi,_achar
	add	esi,12
	mov	[esi],ebx
	mov	ebx,11
	mov	esi,_achar
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_achar
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_apow2
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,7
	mov	esi,_apow2
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_apow2
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_acolr
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,12
	mov	esi,_acolr
	add	esi,12
	mov	[esi],ebx
	mov	ebx,3
	mov	esi,_acolr
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_acolr
	mov	[esp],eax
	call	__bbDimArray
	mov	[ebp-12],0
	jmp	_86
_87
	sub	esp,8
	mov	[esp],1073741824
	mov	ebx,[ebp-12]
	push	ebx
	fild	[esp]
	pop	ebx
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[esp+4],ebx
	call	__bbFPow
	push	eax
	fistp	[esp]
	pop	eax
	mov	ebx,[ebp-12]
	shl	ebx,byte 2
	add	ebx,[_apow2]
	mov	[ebx],eax
	add	[ebp-12],1
_86
	cmp	[ebp-12],7
	jle	_87
_4
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	mov	[ebp-12],0
	jmp	_88
_89
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-52],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-20],1
	mov	[ebp-24],0
	jmp	_90
_91
	mov	[ebp-28],0
	jmp	_92
_93
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	[esp+8],2
	sub	esp,4
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fhex2dec
	mov	ebx,[ebp-12]
	add	ebx,[ebp-24]
	mov	esi,_achar
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	ebx,esi
	shl	ebx,byte 2
	add	ebx,[_achar]
	mov	[ebx],eax
	add	[ebp-20],2
	add	[ebp-28],1
_92
	cmp	[ebp-28],11
	jle	_93
_7
	add	[ebp-24],1
_90
	cmp	[ebp-24],3
	jle	_91
_6
	add	[ebp-12],4
_88
	cmp	[ebp-12],252
	jle	_89
_5
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	call	_fmillisecs
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],6
	mov	[esp+16],5
	sub	esp,4
	mov	eax,_94
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],30
	mov	[esp],50
	call	_fdotmatrix
	sub	esp,20
	mov	[esp+12],2
	mov	[esp+16],2
	sub	esp,4
	mov	eax,_95
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],100
	mov	[esp],10
	call	_fdotmatrix
	mov	[ebp-36],10
	mov	[ebp-40],220
	mov	[ebp-12],0
	jmp	_96
_97
	sub	esp,8
	lea	eax,[ebp-44]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_98
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-24],0
	jmp	_99
_100
	sub	esp,20
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	add	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-44]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-24],1
_99
	cmp	[ebp-24],31
	jle	_100
_9
	sub	esp,20
	mov	[esp+12],3
	mov	[esp+16],3
	sub	esp,4
	lea	eax,[ebp-44]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fdotmatrix
	add	[ebp-40],42
	add	[ebp-12],32
_96
	cmp	[ebp-12],224
	jle	_97
_8
	call	_fmillisecs
	sub	eax,[ebp-32]
	mov	[ebp-48],eax
	sub	esp,40
	mov	eax,_101
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_102
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],1
	mov	[esp+4],570
	mov	[esp],10
	call	_fdotmatrix
	sub	esp,4
	mov	[esp],1
	call	_fflip
	call	_fwaitmouse
	call	_fend
_l_2dotmatrixdata
	ret
_2_leave
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[ebp-52],eax
	sub	esp,4
	mov	esi,[ebp-44]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-52]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fhex2dec
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
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	cmp	[ebp-4],2
	jle	_103
	sub	esp,8
	mov	eax,_104
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_103
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,_105
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-28],eax
	sub	esp,4
	mov	[ebp-32],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fupper
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+4],1
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,20
	mov	[esp+4],2
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	[ebp-20],ebx
	sub	esp,16
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-28],eax
	sub	esp,4
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	[ebp-24],ebx
	mov	eax,[ebp-20]
	shl	eax,byte 4
	add	eax,[ebp-24]
	jmp	_10_leave
	mov	eax,0
	jmp	_10_leave
_10_leave
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	esi,[ebp-8]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[ebp-28],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-28]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fdotmatrix
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
	mov	ebx,[ebp+36]
	shr	ebx,byte 1
	mov	[ebp-4],ebx
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	mov	[ebp-12],7
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_107
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_106
	mov	[ebp-16],1
	jmp	_108
_109
	sub	esp,16
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[ebp-20],eax
	mov	[ebp-24],0
	jmp	_110
_111
	mov	[ebp-28],0
	jmp	_112
_113
	mov	ebx,_achar
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp-20]
	shl	ebx,byte 2
	add	ebx,[_achar]
	mov	ebx,[ebx]
	mov	esi,[ebp-12]
	sub	esi,[ebp-28]
	shl	esi,byte 2
	add	esi,[_apow2]
	mov	esi,[esi]
	and	ebx,esi
	mov	[ebp-32],ebx
	cmp	[ebp-32],0
	jle	_114
	sub	esp,20
	mov	ebx,[ebp+36]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp+36]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	imul	ebx,[ebp+32]
	add	ebx,[ebp+24]
	sub	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-28]
	imul	eax,[ebp+32]
	add	eax,[ebp+20]
	sub	eax,[ebp-4]
	mov	[esp],eax
	call	_foval
_114
	add	[ebp-28],1
_112
	mov	ebx,[ebp-12]
	cmp	[ebp-28],ebx
	jle	_113
_14
	add	[ebp-24],1
_110
	cmp	[ebp-24],11
	jle	_111
_13
	mov	ebx,[ebp+32]
	shl	ebx,byte 3
	add	[ebp+20],ebx
	add	[ebp-16],1
_108
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-16],eax
	jle	_109
_12
_106
	mov	eax,0
	jmp	_11_leave
_11_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
_79	.db	"Dot Matrix Font",0
_80	.db	"",0
	.align	4
_vsw	.dd	0
	.align	4
_vsh	.dd	0
	.align	4
_achar	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_apow2	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_acolr	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_94	.db	"Dot Matrix Font",0
_95	.db	"A scalable dot matrix font for Blitz+ and Blitz3D",0
_98	.db	"",0
_101	.db	"Elapsed Rendering Time: ",0
_102	.db	" milliseconds",0
_104	.db	"Hex number is too big!",0
_105	.db	"0123456789ABCDEF",0
_107	.db	"",0
_15	.db	"FFFFFFFFFFFFFFFFFFFFFFFF007EC381A581BD99C37E0000007EFFFFDBFFC3E7FF7E0000000044EEFEFEFE7C38100000",0
_16	.db	"0010387CFEFE7C381000000000183C3CFFE7E718187E000000183C7EFFFF7E18187E0000000000003C7E7E3C00000000",0
_17	.db	"FFFFFFFFC38181C3FFFFFFFF00003C7E664242667E3C0000FFFFC38199BDBD9981C3FFFF003E0E3A72F8CCCCCC780000",0
_18	.db	"003C6666663C187E18180000001F19191F181878F8700000007F637F63636367E7E6C000000018DB7EE7E77EDB180000",0
_19	.db	"0080C0E0F8FEF8E0C08000000002060E3EFE3E0E0602000000183C7E1818187E3C180000006666666666000066660000",0
_20	.db	"007FDBDBDB7B1B1B1B1B0000007E63303C66663C0CC67E0000000000000000FEFEFE000000183C7E1818187E3C187E00",0
_21	.db	"00183C7E1818181818180000001818181818187E3C180000000000180CFE0C18000000000000003060FE603000000000",0
_22	.db	"00000000C0C0C0FE000000000000002466FF6624000000000000101038387C7CFEFE00000000FEFE7C7C383810100000",0
_23	.db	"000000000000000000000000003078787830300030300000006666662400000000000000006C6CFE6C6C6CFE6C6C0000",0
_24	.db	"30307CC0C0780C0CF8303000000000C4CC183060CC8C00000070D8D870FADECCDC760000003030306000000000000000",0
_25	.db	"000C183060606030180C0000006030180C0C0C1830600000000000663CFF3C660000000000000018187E181800000000",0
_26	.db	"0000000000000000383860000000000000FE000000000000000000000000000038380000000002060C183060C0800000",0
_27	.db	"007CC6CEDED6F6E6C67C0000001030F03030303030FC00000078CCCC0C183060CCFC00000078CC0C0C380C0CCC780000",0
_28	.db	"000C1C3C6CCCFE0C0C1E000000FCC0C0C0F80C0CCC780000003860C0C0F8CCCCCC78000000FEC6C6060C183030300000",0
_29	.db	"0078CCCCEC78DCCCCC7800000078CCCCCC7C181830700000000000383800003838000000000000383800003838183000",0
_30	.db	"000C183060C06030180C0000000000007E007E0000000000006030180C060C18306000000078CC0C1830300030300000",0
_31	.db	"007CC6C6DEDEDEC0C07C0000003078CCCCCCFCCCCCCC000000FC6666667C666666FC0000003C66C6C0C0C0C6663C0000",0
_32	.db	"00F86C66666666666CF8000000FE6260647C646062FE000000FE6662647C646060F00000003C66C6C0C0CEC6663E0000",0
_33	.db	"00CCCCCCCCFCCCCCCCCC0000007830303030303030780000001E0C0C0C0CCCCCCC78000000E6666C6C786C6C66E60000",0
_34	.db	"00F060606060626666FE000000C6EEFEFED6C6C6C6C6000000C6C6E6F6FEDECEC6C6000000386CC6C6C6C6C66C380000",0
_35	.db	"00FC6666667C606060F0000000386CC6C6C6CEDE7C0C1E0000FC6666667C6C6666E600000078CCCCC07018CCCC780000",0
_36	.db	"00FCB430303030303078000000CCCCCCCCCCCCCCCC78000000CCCCCCCCCCCCCC7830000000C6C6C6C6D6D66C6C6C0000",0
_37	.db	"00CCCCCC783078CCCCCC000000CCCCCCCC7830303078000000FECE9818306062C6FE0000003C303030303030303C0000",0
_38	.db	"000080C06030180C06020000003C0C0C0C0C0C0C0C3C000010386CC6000000000000000000000000000000000000FF00",0
_39	.db	"30301800000000000000000000000000780C7CCCCC76000000E060607C66666666DC00000000000078CCC0C0CC780000",0
_40	.db	"001C0C0C7CCCCCCCCC7600000000000078CCFCC0CC78000000386C6060F8606060F000000000000076CCCCCC7C0CCC78",0
_41	.db	"00E060606C76666666E600000018180078181818187E0000000C0C003C0C0C0C0CCCCC7800E06060666C786C66E60000",0
_42	.db	"0078181818181818187E000000000000FCD6D6D6D6C6000000000000F8CCCCCCCCCC00000000000078CCCCCCCC780000",0
_43	.db	"00000000DC666666667C60F00000000076CCCCCCCC7C0C1E00000000EC6E766060F000000000000078CC6018CC780000",0
_44	.db	"00002060FC6060606C38000000000000CCCCCCCCCC76000000000000CCCCCCCC7830000000000000C6C6D6D66C6C0000",0
_45	.db	"00000000C66C38386CC6000000000000666666663C0C18F000000000FC8C1860C4FC0000001C303060C06030301C0000",0
_46	.db	"00181818180018181818000000E03030180C183030E000000073DACE000000000000000000000010386CC6C6FE000000",0
_47	.db	"0078CCCCC0C0C0CCCC7830F000CCCC00CCCCCCCCCC7600000C18300078CCFCC0CC7800003078CC00780C7CCCCC760000",0
_48	.db	"00CCCC00780C7CCCCC760000C0603000780C7CCCCC760000386C6C38F80C7CCCCC7600000000000078CCC0C0CC7830F0",0
_49	.db	"3078CC0078CCFCC0C07C000000CCCC0078CCFCC0C07C0000C060300078CCFCC0C07C0000006C6C0078181818187E0000",0
_50	.db	"10386C0078181818187E00006030180078181818187E000000CC003078CCCCFCCCCC000078CCCC7878CCCCFCCCCC0000",0
_51	.db	"0C1830FCC4C0F8C0C4FC000000000000FE1B7FD8D8EF0000003E78D8D8FED8D8D8DE00003078CC0078CCCCCCCC780000",0
_52	.db	"00CCCC0078CCCCCCCC780000C060300078CCCCCCCC7800003078CC00CCCCCCCCCC760000C0603000CCCCCCCCCC760000",0
_53	.db	"00666600666666663C0C18F0CC0078CCCCCCCCCCCC780000CC00CCCCCCCCCCCCCC78000000303078CCC0C0CC78303000",0
_54	.db	"3C66606060FC6060C0FE0000CCCCCCCC78FC30FC30300000F0888888F0889E8C8D8600000E1B18187E181818D8700000",0
_55	.db	"0C183000780C7CCCCC7600000C18300078181818187E00000C18300078CCCCCCCC7800000C183000CCCCCCCCCC760000",0
_56	.db	"0076DC00F8CCCCCCCCCC000076DC00C6E6F6DECEC6C600000078CCCC7E00FE00000000000078CCCC7800FE0000000000",0
_57	.db	"003030003060C0C0CC7800000000000000FCC0C0C00000000000000000FC0C0C0C0000000042C6CCD8306EC3860C1F00",0
_58	.db	"0063E66C78376FDBB33F0300003030003030787878300000000000003366CCCC6633000000000000CC66333366CC0000",0
_59	.db	"24924924924924924924924955AA55AA55AA55AA55AA55AA6DDBB66DDBB66DDBB66DDBB6181818181818181818181818",0
_60	.db	"1818181818F818181818181818181818F81818F8181818186666666666E66666666666660000000000FE666666666666",0
_61	.db	"00000000F81818F81818181866666666E60606E66666666666666666666666666666666600000000FE0606E666666666",0
_62	.db	"66666666E60606FE000000006666666666FE00000000000018181818F81818F8000000000000000000F8181818181818",0
_63	.db	"18181818181F0000000000001818181818FF0000000000000000000000FF18181818181818181818181F181818181818",0
_64	.db	"0000000000FF0000000000001818181818FF181818181818181818181F18181F18181818666666666667666666666666",0
_65	.db	"666666666760607F00000000000000007F6060676666666666666666E70000FF0000000000000000FF0000E766666666",0
_66	.db	"66666666676060676666666600000000FF0000FF0000000066666666E70000E76666666618181818FF0000FF00000000",0
_67	.db	"6666666666FF00000000000000000000FF0000FF181818180000000000FF66666666666666666666667F000000000000",0
_68	.db	"181818181F18181F00000000000000001F18181F1818181800000000007F6666666666666666666666E7666666666666",0
_69	.db	"18181818FF0000FF181818181818181818F800000000000000000000001F181818181818FFFFFFFFFFFFFFFFFFFFFFFF",0
_70	.db	"000000000000FFFFFFFFFFFFF0F0F0F0F0F0F0F0F0F0F0F00F0F0F0F0F0F0F0F0F0F0F0FFFFFFFFFFFFF000000000000",0
_71	.db	"0000000076DECCCCDE7600000078CCCCD8CCCCCCF8C0600000FCCCCCC0C0C0C0C0C0000000FE6C6C6C6C6C6C6C660000",0
_72	.db	"00FCC46460306064C4FC0000000000007EC8CCCCCC7800000000000066666666667B60C000000076DC181818180E0000",0
_73	.db	"00FC3078CCCCCC7830FC00000078CCCCCCFCCCCCCC780000007CC6C6C6C66C6C6CEE0000003C603078CCCCCCCC780000",0
_74	.db	"00000076DBDBDB6E000000000000067CDED6F67CC0000000003C60C0C0FCC0C0603C0000000078CCCCCCCCCCCCCC0000",0
_75	.db	"0000FC0000FC0000FC00000000003030FC303000FC0000000060301818306000FC0000000018306060301800FC000000",0
_76	.db	"00000E1B1B1818181818181818181818181818D8D87000000000303000FC003030000000000073DBCE0073DBCE000000",0
_77	.db	"003C6666663C000000000000000000001C1C00000000000000000000001800000000000000070404044464341C0C0000",0
_78	.db	"00D86C6C6C6C00000000000000780C18307C00000000000000003C3C3C3C3C3C3C3C0000000000000000000000000000",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
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
	.dd	4
	.dd	_43
	.dd	4
	.dd	_44
	.dd	4
	.dd	_45
	.dd	4
	.dd	_46
	.dd	4
	.dd	_47
	.dd	4
	.dd	_48
	.dd	4
	.dd	_49
	.dd	4
	.dd	_50
	.dd	4
	.dd	_51
	.dd	4
	.dd	_52
	.dd	4
	.dd	_53
	.dd	4
	.dd	_54
	.dd	4
	.dd	_55
	.dd	4
	.dd	_56
	.dd	4
	.dd	_57
	.dd	4
	.dd	_58
	.dd	4
	.dd	_59
	.dd	4
	.dd	_60
	.dd	4
	.dd	_61
	.dd	4
	.dd	_62
	.dd	4
	.dd	_63
	.dd	4
	.dd	_64
	.dd	4
	.dd	_65
	.dd	4
	.dd	_66
	.dd	4
	.dd	_67
	.dd	4
	.dd	_68
	.dd	4
	.dd	_69
	.dd	4
	.dd	_70
	.dd	4
	.dd	_71
	.dd	4
	.dd	_72
	.dd	4
	.dd	_73
	.dd	4
	.dd	_74
	.dd	4
	.dd	_75
	.dd	4
	.dd	_76
	.dd	4
	.dd	_77
	.dd	4
	.dd	_78
	.dd	0

