
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
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fsprite2d
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,[ebp+20]
	mov	[ebp-4],ebx
	cmp	[ebp-4],1
	jz	_6
	cmp	[ebp-4],10
	jz	_7
	cmp	[ebp-4],20
	jz	_8
	cmp	[ebp-4],30
	jz	_9
	cmp	[ebp-4],40
	jz	_10
	cmp	[ebp-4],50
	jz	_11
	cmp	[ebp-4],60
	jz	_12
	cmp	[ebp-4],70
	jz	_13
	cmp	[ebp-4],80
	jz	_14
	cmp	[ebp-4],90
	jz	_15
	cmp	[ebp-4],100
	jz	_16
	jmp	_5
_6
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_7
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_18
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_8
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_19
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_9
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_10
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_11
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_22
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_12
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_13
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_24
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_14
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_15
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_16
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_ffreeentity
	sub	esp,12
	mov	[esp+4],1
	mov	[esp+8],0
	sub	esp,4
	mov	eax,_27
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadsprite
	mov	[ebp-8],eax
	jmp	_5
_5
	sub	esp,12
	mov	[esp+4],1086324736
	mov	[esp+8],1051260355
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fscalesprite
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],-1061158912
	mov	[esp+4],0
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fpositionentity
	mov	eax,0
	jmp	_3_leave
_3_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
_17	.db	"01%.jpg",0
_18	.db	"10%.jpg",0
_19	.db	"20%.jpg",0
_20	.db	"30%.jpg",0
_21	.db	"40%.jpg",0
_22	.db	"50%.jpg",0
_23	.db	"60%.jpg",0
_24	.db	"70%.jpg",0
_25	.db	"80%.jpg",0
_26	.db	"90%.jpg",0
_27	.db	"100%.jpg",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

