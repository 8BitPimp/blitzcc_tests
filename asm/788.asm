
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
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
	sub	esp,8
	mov	[esp],_vinfo1
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	mov	[esp],_vinfo2
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_9
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	eax,_vinfo1
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_vinfo2
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],240
	mov	[esp],320
	call	_fgraphics
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadimage
	mov	[_vbackgnd],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],4
	mov	[esp+8],28
	mov	[esp+4],28
	sub	esp,4
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadanimimage
	mov	[_venemys],eax
	jmp	_13
_12
	call	_fcls
	sub	esp,16
	mov	ebx,[_viytim]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[_vixtim]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+4],esi
	mov	eax,[_vbackgnd]
	mov	[esp],eax
	call	_ftileimage
	call	_ftimers
	call	_fcirclemov
	call	_fstrightmov
	call	_fupdownmov
	sub	esp,4
	mov	[esp],1
	call	_fflip
_13
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	cmp	eax,0
	jz	_12
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
_ftimers
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	call	_fmillisecs
	mov	ebx,[_vfrmtim]
	add	ebx,128
	cmp	eax,ebx
	jle	_14
	call	_fmillisecs
	mov	[_vfrmtim],eax
	sub	esp,8
	mov	eax,[_vifrm]
	add	eax,1
	mov	[esp],eax
	mov	[esp+4],2
	call	__bbMod
	mov	[_vifrm],eax
_14
	mov	ebx,[_vyscrtim]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1073741824
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_15
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vyscrtim],eax
	sub	esp,8
	mov	eax,[_viytim]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1065353216
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1131413504
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_viytim],eax
_15
	mov	ebx,[_vxscrtim]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1106247680
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	and	eax,eax
	jz	_16
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vxscrtim],eax
	sub	esp,8
	mov	eax,[_vixtim]
	push	eax
	fld	[esp]
	pop	eax
	mov	ebx,1073741824
	push	ebx
	fld	[esp]
	pop	ebx
	fsubp	st(1)
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	mov	[esp+4],1134559232
	call	__bbFMod
	push	eax
	fstp	[esp]
	pop	eax
	mov	[_vixtim],eax
_16
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fcirclemov
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
	mov	eax,[_vr1]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1126170624
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[_vr1]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1115684864
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[_vifrm]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_venemys]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[_vr1]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1075838976
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vr1],ebx
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
_fstrightmov
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
	mov	eax,[_vr2]
	mov	[esp],eax
	call	_fsin
	mov	ebx,1125122048
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1125122048
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-4],ebx
	mov	[ebp-8],192
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,[_vifrm]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_venemys]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[_vr2]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1075838976
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vr2],ebx
	mov	eax,0
	jmp	_6_leave
_6_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fupdownmov
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],144
	sub	esp,4
	mov	eax,[_vr3]
	mov	[esp],eax
	call	_fcos
	mov	ebx,1107296256
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	mov	ebx,1123549184
	push	ebx
	fld	[esp]
	pop	ebx
	faddp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-8],ebx
	sub	esp,16
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	esi,2
	add	esi,[_vifrm]
	mov	[esp+12],esi
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[_venemys]
	mov	[esp],eax
	call	_fdrawimage
	mov	ebx,[_vr3]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,1075838976
	push	esi
	fld	[esp]
	pop	esi
	faddp	st(1)
	push	ebx
	fstp	[esp]
	pop	ebx
	mov	[_vr3],ebx
	mov	eax,0
	jmp	_7_leave
_7_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	4
_vinfo1	.dd	0
_8	.db	"Movement with Sin() & Cos()",0
	.align	4
_vinfo2	.dd	0
_9	.db	"86! The Program?",0
	.align	4
_vr1	.dd	0
	.align	4
_vr2	.dd	0
	.align	4
_vr3	.dd	0
	.align	4
_vfrmtim	.dd	0
	.align	4
_vifrm	.dd	0
	.align	4
_vyscrtim	.dd	0
	.align	4
_viytim	.dd	0
	.align	4
_vxscrtim	.dd	0
	.align	4
_vixtim	.dd	0
	.align	4
_vbackgnd	.dd	0
_10	.db	"crate1.jpg",0
	.align	4
_venemys	.dd	0
_11	.db	"enemy.bmp",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

