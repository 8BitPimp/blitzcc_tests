
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
	mov	[ebp-4],0
_4
	sub	esp,8
	mov	eax,_5
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_6
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_8
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-4],eax
	mov	ebx,[ebp-4]
	mov	esi,1
	and	ebx,esi
	and	ebx,ebx
	jz	_10
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_10
	mov	ebx,[ebp-4]
	mov	esi,2
	and	ebx,esi
	and	ebx,ebx
	jz	_12
	sub	esp,8
	mov	eax,_13
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_12
	mov	ebx,[ebp-4]
	mov	esi,4
	and	ebx,esi
	and	ebx,ebx
	jz	_14
	sub	esp,8
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_14
	mov	ebx,[ebp-4]
	mov	esi,8
	and	ebx,esi
	and	ebx,ebx
	jz	_16
	sub	esp,8
	mov	eax,_17
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_16
	jmp	_4
_3
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_5	.db	"flag 1 - man",0
_6	.db	"flag 2 - mouse",0
_7	.db	"flag 4 - blue",0
_8	.db	"flag 8 - red",0
_9	.db	"number: ",0
_11	.db	"man!",0
_13	.db	"mouse!",0
_15	.db	"blue!",0
_17	.db	"red!",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

