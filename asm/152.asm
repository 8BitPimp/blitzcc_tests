
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,48
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
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-4],4000
	mov	[ebp-8],4001
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	mov	[ebp-12],1
	jmp	_8
_9
	sub	esp,12
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhostip
	mov	[esp],eax
	call	_fdottedip
	mov	[esp],eax
	call	_fprint
	add	[ebp-12],1
_8
	sub	esp,12
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fgetenv
	mov	[esp],eax
	call	_fcounthostips
	cmp	[ebp-12],eax
	jle	_9
_3
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	mov	[ebp-44],eax
	sub	esp,4
	mov	[ebp-48],eax
	sub	esp,4
	mov	ebx,_12
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-48]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finput
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fint_ip
	mov	[ebp-20],eax
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_14
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fcreateudpstream
	mov	[ebp-24],eax
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcreateudpstream
	mov	[ebp-28],eax
_l_2loop
	call	_fgetkey
	mov	[ebp-32],eax
	cmp	[ebp-32],0
	jle	_15
	cmp	[ebp-32],13
	jnz	_16
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fsendudpmsg
	jmp	_18
_16
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	call	_fwrite
	sub	esp,8
	mov	eax,[ebp-28]
	mov	[esp],eax
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	call	_fwritebyte
	sub	esp,12
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fsendudpmsg
_18
_15
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_frecvudpmsg
	mov	[ebp-36],eax
	cmp	[ebp-36],0
	jz	_19
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadavail
	mov	[ebp-40],eax
	cmp	[ebp-40],0
	jle	_20
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadbyte
	mov	[ebp-32],eax
	cmp	[ebp-32],13
	jnz	_21
	sub	esp,8
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	jmp	_23
_21
	sub	esp,8
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fchr
	mov	[esp],eax
	call	_fwrite
_23
_20
_19
	sub	esp,4
	mov	[esp],1
	call	_fkeydown
	and	eax,eax
	jz	_24
	jmp	_l_2quit
_24
	jmp	_l_2loop
_l_2quit
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fcloseudpstream
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fcloseudpstream
	ret
_2_leave
	mov	[ebp-44],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-44]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fint_ip
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
	sub	esp,28
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fleft
	mov	[esp],eax
	call	_fval
	mov	[ebp-4],eax
	sub	esp,32
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,ebx
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,28
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fleft
	mov	[esp],eax
	call	_fval
	mov	[ebp-8],eax
	sub	esp,32
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,ebx
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,28
	mov	eax,_29
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	ebx,1
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fleft
	mov	[esp],eax
	call	_fval
	mov	[ebp-12],eax
	sub	esp,32
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],1
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_finstr
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	sub	eax,ebx
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fright
	mov	ebx,eax
	mov	[esp+4],ebx
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fval
	mov	[ebp-16],eax
	mov	eax,[ebp-4]
	shl	eax,byte 24
	mov	ebx,[ebp-8]
	shl	ebx,byte 16
	add	eax,ebx
	mov	ebx,[ebp-12]
	shl	ebx,byte 8
	add	eax,ebx
	add	eax,[ebp-16]
	jmp	_4_leave
	mov	eax,0
	jmp	_4_leave
_4_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-20]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fval
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	jmp	_5_leave
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
_6	.db	"Sample UDP Communications",0
_7	.db	"Local IPs:",0
_10	.db	"localhost",0
_11	.db	"Enter Destination IP#: xxx.xxx.xxx.xxx",0
_12	.db	">",0
_13	.db	"",0
_14	.db	"Starting Chat <esc> to quit",0
_17	.db	"",0
_22	.db	"",0
_25	.db	".",0
_26	.db	".",0
_27	.db	".",0
_28	.db	".",0
_29	.db	".",0
_30	.db	".",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

