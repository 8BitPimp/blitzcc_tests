
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],2
	mov	[esp+4],130
	mov	[esp],300
	call	_fgraphics
	sub	esp,12
	mov	eax,_7
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_8
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,8
	mov	eax,_9
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_10
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_11
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_12
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
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
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_15
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fwriteint
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	call	_fwaitkey
	mov	[ebp-12],1
	jmp	_17
_16
	add	[ebp-12],1
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	add	[ebp-16],1
	call	_fmillisecs
	mov	[ebp-20],eax
	jmp	_19
_18
_19
	call	_fmillisecs
	mov	ebx,[ebp-20]
	add	ebx,90
	cmp	eax,ebx
	jl	_18
_4
	sub	esp,16
	mov	eax,_20
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
_17
	cmp	[ebp-16],100
	jle	_16
_3
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-8],eax
	sub	esp,8
	mov	eax,[ebp-8]
	mov	[esp],eax
	mov	[esp+4],1
	call	_fwriteint
	sub	esp,4
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fclosefile
	call	_fend
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],200
	mov	[esp],800
	call	_fgraphics
	sub	esp,12
	mov	eax,_21
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_22
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	_fapptitle
	mov	[ebp-12],10
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_23
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],200
	mov	[esp],100
	call	_ftext
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_24
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_25
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],200
	call	_ftext
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_26
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],80
	mov	[esp],500
	call	_ftext
_l_2keep_reading_file
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-24],eax
	cmp	[ebp-24],0
	jz	_27
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-12],eax
	sub	esp,32
	mov	eax,_28
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+4],600
	mov	[esp],100
	call	_ftext
	sub	esp,4
	mov	eax,[ebp-24]
	mov	[esp],eax
	call	_fclosefile
	jmp	_29
_27
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_30
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],300
	mov	[esp],100
	call	_ftext
_29
	call	_fmillisecs
	mov	[ebp-20],eax
	jmp	_32
_31
_32
	call	_fmillisecs
	mov	ebx,[ebp-20]
	add	ebx,10
	cmp	eax,ebx
	jl	_31
_5
	sub	esp,4
	mov	[esp],50
	call	_fvwait
	mov	[ebp-28],20
	mov	[ebp-32],1
	jmp	_33
_34
	sub	esp,16
	mov	ebx,[ebp-12]
	imul	ebx,3
	add	ebx,200
	mov	[esp+8],ebx
	mov	esi,100
	add	esi,[ebp-32]
	mov	[esp+12],esi
	mov	esi,100
	add	esi,[ebp-32]
	mov	[esp+4],esi
	mov	[esp],200
	call	_fline
	add	[ebp-32],1
_33
	mov	ebx,[ebp-28]
	cmp	[ebp-32],ebx
	jle	_34
_6
	cmp	[ebp-12],100
	jge	_35
	jmp	_l_2keep_reading_file
_35
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_36
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+4],140
	mov	[esp],200
	call	_ftext
	call	_fwaitkey
	call	_fend
	ret
_2_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp-4]
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
	ret	word 0
_7	.db	"Write progress data",0
_8	.db	"",0
_9	.db	"Press Any Key once you have compiled",0
_10	.db	"and ran the LoadProgress_Main.bb file.....",0
_11	.db	" ",0
_12	.db	"Left click in this window to:",0
_13	.db	"  ",0
_14	.db	"... Press Any Key.....",0
_15	.db	"./progress_file_Int.dat",0
_20	.db	"Progress Counter: ",0
_21	.db	"Loading Progress Monitor",0
_22	.db	"",0
_23	.db	"This is the file load progress executable....",0
_24	.db	"./progress_file_Int.dat",0
_25	.db	"0",0
_26	.db	"100",0
_28	.db	"Progress Counter at: ",0
_30	.db	"DEBUG: Progress_File_Locked, trying again soon....",0
_36	.db	"Finished Loading.... Press Any Key to Continue ",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

