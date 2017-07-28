
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
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
	sub	esp,12
	mov	eax,_498
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_499
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,44
	mov	eax,_500
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_501
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_502
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vkeyword
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	mov	eax,_503
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_504
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_505
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vcomment
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,44
	mov	eax,_506
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_507
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_508
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vtextstring
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	mov	eax,_vkeyword
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[_vkeywordlen],eax
	sub	esp,8
	mov	eax,_vcomment
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[_vcommentlen],eax
	sub	esp,8
	mov	eax,_vtextstring
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[_vtextstringlen],eax
	sub	esp,8
	mov	eax,_509
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_ffilesize
	mov	[_vtextbanksize],eax
	cmp	[_vtextbanksize],0
	jnz	_510
	sub	esp,32
	mov	eax,_511
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_512
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_510
	sub	esp,4
	mov	eax,[_vtextbanksize]
	mov	[esp],eax
	call	_fcreatebank
	mov	[_vtextbank],eax
	sub	esp,4
	mov	[esp],102400
	call	_fcreatebank
	mov	[_vhtmlbank],eax
	sub	esp,8
	mov	eax,_513
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fopenfile
	mov	[_vfile],eax
	mov	ebx,[_vfile]
	and	ebx,ebx
	jz	_514
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[_vtextbanksize]
	mov	[esp+12],esi
	mov	esi,[_vfile]
	mov	[esp+4],esi
	mov	eax,[_vtextbank]
	mov	[esp],eax
	call	_freadbytes
	sub	esp,4
	mov	eax,[_vfile]
	mov	[esp],eax
	call	_fclosefile
	jmp	_515
_514
	sub	esp,32
	mov	eax,_516
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_517
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_515
	mov	[_vrownumber],0
	mov	[_vtextpointer],0
	mov	[_vhtmlpointer],0
	mov	[_vmidword],0
_518
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[_vbyte],eax
	cmp	[_vbyte],64
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vbyte],91
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vmidword],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jz	_519
	cmp	[_vbyte],77
	jge	_520
	mov	ebx,[_vbyte]
	mov	[ebp-4],ebx
	cmp	[ebp-4],65
	jz	_522
	cmp	[ebp-4],66
	jz	_523
	cmp	[ebp-4],67
	jz	_524
	cmp	[ebp-4],68
	jz	_525
	cmp	[ebp-4],69
	jz	_526
	cmp	[ebp-4],70
	jz	_527
	cmp	[ebp-4],71
	jz	_528
	cmp	[ebp-4],72
	jz	_529
	cmp	[ebp-4],73
	jz	_530
	cmp	[ebp-4],74
	jz	_531
	cmp	[ebp-4],75
	jz	_532
	cmp	[ebp-4],76
	jz	_533
	sub	esp,4
	mov	eax,__DATA
	add	eax,4016
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_522
	sub	esp,4
	mov	eax,__DATA
	add	eax,0
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_523
	sub	esp,4
	mov	eax,__DATA
	add	eax,152
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_524
	sub	esp,4
	mov	eax,__DATA
	add	eax,200
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_525
	sub	esp,4
	mov	eax,__DATA
	add	eax,760
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_526
	sub	esp,4
	mov	eax,__DATA
	add	eax,928
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_527
	sub	esp,4
	mov	eax,__DATA
	add	eax,1128
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_528
	sub	esp,4
	mov	eax,__DATA
	add	eax,1392
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_529
	sub	esp,4
	mov	eax,__DATA
	add	eax,1624
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_530
	sub	esp,4
	mov	eax,__DATA
	add	eax,1744
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_531
	sub	esp,4
	mov	eax,__DATA
	add	eax,1888
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_532
	sub	esp,4
	mov	eax,__DATA
	add	eax,2040
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_533
	sub	esp,4
	mov	eax,__DATA
	add	eax,2064
	mov	[esp],eax
	call	__bbRestore
	jmp	_521
_521
	jmp	_534
_520
	mov	ebx,[_vbyte]
	mov	[ebp-8],ebx
	cmp	[ebp-8],77
	jz	_536
	cmp	[ebp-8],78
	jz	_537
	cmp	[ebp-8],79
	jz	_538
	cmp	[ebp-8],80
	jz	_539
	cmp	[ebp-8],82
	jz	_540
	cmp	[ebp-8],83
	jz	_541
	cmp	[ebp-8],84
	jz	_542
	cmp	[ebp-8],85
	jz	_543
	cmp	[ebp-8],86
	jz	_544
	cmp	[ebp-8],87
	jz	_545
	cmp	[ebp-8],88
	jz	_546
	sub	esp,4
	mov	eax,__DATA
	add	eax,4016
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_536
	sub	esp,4
	mov	eax,__DATA
	add	eax,2232
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_537
	sub	esp,4
	mov	eax,__DATA
	add	eax,2424
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_538
	sub	esp,4
	mov	eax,__DATA
	add	eax,2528
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_539
	sub	esp,4
	mov	eax,__DATA
	add	eax,2584
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_540
	sub	esp,4
	mov	eax,__DATA
	add	eax,2744
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_541
	sub	esp,4
	mov	eax,__DATA
	add	eax,3064
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_542
	sub	esp,4
	mov	eax,__DATA
	add	eax,3536
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_543
	sub	esp,4
	mov	eax,__DATA
	add	eax,3696
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_544
	sub	esp,4
	mov	eax,__DATA
	add	eax,3800
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_545
	sub	esp,4
	mov	eax,__DATA
	add	eax,3824
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_546
	sub	esp,4
	mov	eax,__DATA
	add	eax,4000
	mov	[esp],eax
	call	__bbRestore
	jmp	_535
_535
_534
	sub	esp,8
	mov	[esp],_vbbkey
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_547
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[_vtextpointer]
	add	ebx,1
	mov	[_vtemptextpointer],ebx
	mov	ebx,[_vtextbanksize]
	cmp	[_vtemptextpointer],ebx
	jge	_548
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtemptextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[_vbyte],eax
	jmp	_550
_549
	sub	esp,20
	mov	eax,_vbbkey
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[_vbyte]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	[esp],_vbbkey
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[_vtemptextpointer],1
	mov	ebx,[_vtextbanksize]
	cmp	[_vtemptextpointer],ebx
	jge	_551
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtemptextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[_vbyte],eax
_551
_550
	cmp	[_vbyte],64
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vbyte],91
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],96
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	cmp	[_vbyte],123
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-16]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],95
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],47
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	cmp	[_vbyte],58
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-16]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-16],eax
	mov	ebx,[_vtextbanksize]
	cmp	[_vtemptextpointer],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	and	eax,eax
	jnz	_549
_6
	mov	[_vkeyfound],0
	call	__bbReadInt
	mov	[_vnumkeys],eax
	mov	ebx,[_vnumkeys]
	and	ebx,ebx
	jz	_552
	mov	[_vcurrentkey],0
_553
	sub	esp,8
	mov	[esp],_vdatakey
	mov	[ebp-16],eax
	mov	eax,ebx
	call	__bbReadStr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	eax,_vbbkey
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_vdatakey
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_554
	mov	[_vkeyfound],1
	jmp	_555
_554
	sub	esp,12
	mov	eax,_vbbkey
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_vdatakey
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jge	_556
	jmp	_7
_556
_555
	add	[_vcurrentkey],1
	mov	ebx,[_vkeyfound]
	mov	eax,[_vnumkeys]
	add	eax,1
	cmp	[_vcurrentkey],eax
	setz	al
	movzx	eax,al
	or	ebx,eax
	and	ebx,ebx
	jz	_553
_7
_552
	mov	ebx,[_vkeyfound]
	and	ebx,ebx
	jz	_557
	cmp	[_vkeycolouron],0
	jnz	_558
	mov	[_vkeycolouron],1
	mov	[_voffset],0
	jmp	_559
_560
	sub	esp,28
	mov	ebx,[_voffset]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_vkeyword
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	ebx,[_vhtmlpointer]
	add	ebx,[_voffset]
	mov	[esp+4],ebx
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_voffset],1
_559
	mov	ebx,[_vkeywordlen]
	sub	ebx,1
	cmp	[_voffset],ebx
	jle	_560
_8
	mov	ebx,[_vkeywordlen]
	add	[_vhtmlpointer],ebx
_558
	jmp	_561
_557
	mov	ebx,[_vkeycolouron]
	and	ebx,ebx
	jz	_562
	call	_faddendspan
_562
_561
	sub	esp,20
	mov	ebx,[_vhtmlpointer]
	mov	[esp+12],ebx
	mov	esi,[_vtemptextpointer]
	sub	esi,[_vtextpointer]
	mov	[esp+16],esi
	mov	esi,[_vhtmlbank]
	mov	[esp+8],esi
	mov	ebx,[_vtextpointer]
	mov	[esp+4],ebx
	mov	eax,[_vtextbank]
	mov	[esp],eax
	call	_fcopybank
	mov	ebx,[_vtemptextpointer]
	sub	ebx,[_vtextpointer]
	add	[_vhtmlpointer],ebx
	mov	ebx,[_vtemptextpointer]
	mov	[_vtextpointer],ebx
	jmp	_563
_548
	mov	ebx,[_vkeycolouron]
	and	ebx,ebx
	jz	_564
	call	_faddendspan
_564
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	esi,[_vbyte]
	mov	[esp+8],esi
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
	add	[_vtextpointer],1
_563
	jmp	_565
_519
	mov	ebx,[_vbyte]
	mov	[ebp-12],ebx
	cmp	[ebp-12],34
	jz	_567
	cmp	[ebp-12],59
	jz	_568
	cmp	[ebp-12],9
	jz	_569
	cmp	[ebp-12],13
	jz	_570
	cmp	[ebp-12],60
	jz	_571
	cmp	[ebp-12],62
	jz	_572
	mov	ebx,[_vkeycolouron]
	and	ebx,ebx
	jz	_573
	cmp	[_vbyte],32
	jz	_574
	call	_faddendspan
_574
_573
	cmp	[_vbyte],96
	setg	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vbyte],123
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	and	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],95
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],64
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	cmp	[_vbyte],91
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-16]
	and	ebx,esi
	or	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],47
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[ebp-16],eax
	cmp	[_vbyte],58
	mov	eax,esi
	setl	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-16]
	and	ebx,esi
	or	eax,ebx
	and	eax,eax
	jz	_575
	mov	[_vmidword],1
	jmp	_576
_575
	mov	[_vmidword],0
_576
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	esi,[_vbyte]
	mov	[esp+8],esi
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
	add	[_vtextpointer],1
	jmp	_566
_567
	mov	ebx,[_vkeycolouron]
	and	ebx,ebx
	jz	_577
	call	_faddendspan
_577
	mov	[_voffset],0
	jmp	_578
_579
	sub	esp,28
	mov	ebx,[_voffset]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_vtextstring
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	ebx,[_vhtmlpointer]
	add	ebx,[_voffset]
	mov	[esp+4],ebx
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_voffset],1
_578
	mov	ebx,[_vtextstringlen]
	sub	ebx,1
	cmp	[_voffset],ebx
	jle	_579
_10
	mov	ebx,[_vtextstringlen]
	add	[_vhtmlpointer],ebx
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],34
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
	add	[_vtextpointer],1
	mov	ebx,[_vtextbanksize]
	cmp	[_vtextpointer],ebx
	jge	_580
_581
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[_vbyte],eax
	add	[_vtextpointer],1
	cmp	[_vbyte],34
	jz	_582
	cmp	[_vbyte],60
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vbyte],62
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_583
	cmp	[_vbyte],60
	jnz	_584
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],997485606
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	jmp	_585
_584
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],997484326
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
_585
	add	[_vhtmlpointer],4
	jmp	_586
_583
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	esi,[_vbyte]
	mov	[esp+8],esi
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
_586
_582
	cmp	[_vbyte],34
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[_vtextbanksize]
	cmp	[_vtextpointer],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	mov	[ebp-16],eax
	cmp	[_vbyte],13
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_581
_11
	cmp	[_vbyte],34
	jz	_587
	sub	esp,40
	mov	eax,_588
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],13
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],10
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_589
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
	mov	ebx,[_vrownumber]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
	jmp	_590
_587
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],34
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
_590
	call	_faddendspan
	jmp	_591
_580
	sub	esp,8
	mov	eax,_592
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_591
	mov	[_vmidword],0
	jmp	_566
_568
	mov	ebx,[_vkeycolouron]
	and	ebx,ebx
	jz	_593
	call	_faddendspan
_593
	mov	[_voffset],0
	jmp	_594
_595
	sub	esp,28
	mov	ebx,[_voffset]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	mov	eax,_vcomment
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp],eax
	call	_fasc
	mov	[esp+8],eax
	mov	ebx,[_vhtmlpointer]
	add	ebx,[_voffset]
	mov	[esp+4],ebx
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_voffset],1
_594
	mov	ebx,[_vcommentlen]
	sub	ebx,1
	cmp	[_voffset],ebx
	jle	_595
_12
	mov	ebx,[_vcommentlen]
	add	[_vhtmlpointer],ebx
_596
	mov	[_vnextcomment],0
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],59
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
	add	[_vtextpointer],1
	mov	ebx,[_vtextbanksize]
	cmp	[_vtextpointer],ebx
	jge	_597
_598
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[_vbyte],eax
	add	[_vtextpointer],1
	cmp	[_vbyte],13
	jz	_599
	cmp	[_vbyte],60
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vbyte],62
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_600
	cmp	[_vbyte],60
	jnz	_601
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],997485606
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	jmp	_602
_601
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],997484326
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
_602
	add	[_vhtmlpointer],4
	jmp	_603
_600
	cmp	[_vbyte],9
	jnz	_604
	call	_fadd_tab
	sub	[_vtextpointer],1
	jmp	_605
_604
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	esi,[_vbyte]
	mov	[esp+8],esi
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokebyte
	add	[_vhtmlpointer],1
_605
_603
_599
	cmp	[_vbyte],13
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	mov	ebx,[_vtextbanksize]
	cmp	[_vtextpointer],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_598
_14
	cmp	[_vbyte],13
	jnz	_606
	call	_fadd_enter
	jmp	_608
_607
	call	_fadd_tab
_608
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	cmp	eax,9
	jz	_607
_15
	mov	ebx,[_vtextbanksize]
	cmp	[_vtextpointer],ebx
	jz	_609
	sub	esp,8
	mov	eax,[_vtextbank]
	mov	[esp],eax
	mov	ebx,[_vtextpointer]
	mov	[esp+4],ebx
	call	_fpeekbyte
	cmp	eax,59
	jnz	_610
	mov	[_vnextcomment],1
_610
_609
_606
_597
	mov	eax,[_vtextbanksize]
	cmp	[_vtextpointer],eax
	setz	al
	movzx	eax,al
	mov	[ebp-16],eax
	cmp	[_vnextcomment],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-16]
	or	eax,ebx
	and	eax,eax
	jz	_596
_13
	call	_faddendspan
	mov	[_vmidword],0
	jmp	_566
_569
	call	_fadd_tab
	mov	[_vmidword],0
	jmp	_566
_570
	call	_fadd_enter
	add	[_vtextpointer],1
	mov	[_vmidword],0
	jmp	_566
_571
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],997485606
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	add	[_vhtmlpointer],4
	add	[_vtextpointer],1
	mov	[_vmidword],0
	jmp	_566
_572
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],997484326
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	add	[_vhtmlpointer],4
	add	[_vtextpointer],1
	mov	[_vmidword],0
	jmp	_566
_566
_565
	mov	ebx,[_vtextbanksize]
	cmp	[_vtextpointer],ebx
	jnz	_518
_3
	mov	ebx,[_vkeycolouron]
	and	ebx,ebx
	jz	_611
	call	_faddendspan
_611
	sub	esp,8
	mov	eax,_612
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fwritefile
	mov	[_vfile],eax
	mov	ebx,[_vfile]
	and	ebx,ebx
	jz	_613
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_614
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_615
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_616
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,108
	mov	eax,_617
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_618
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_619
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_620
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_621
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_622
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_623
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_624
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_625
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_626
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,44
	mov	eax,_627
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_628
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
	mov	[esp],34
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_629
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	mov	ebx,[_vfile]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fwriteline
	mov	ebx,eax
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[_vhtmlpointer]
	mov	[esp+12],esi
	mov	esi,[_vfile]
	mov	[esp+4],esi
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fwritebytes
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_630
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_631
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_632
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_633
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,8
	mov	eax,[_vfile]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,_634
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	_fwriteline
	sub	esp,4
	mov	eax,[_vfile]
	mov	[esp],eax
	call	_fclosefile
	sub	esp,8
	mov	eax,_635
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fexecfile
	jmp	_636
_613
	sub	esp,8
	mov	eax,_637
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_636
	call	_fend
_l_2a
_l_2b
_l_2c
_l_2d
_l_2e
_l_2f
_l_2g
_l_2h
_l_2i
_l_2j
_l_2k
_l_2l
_l_2m
_l_2n
_l_2o
_l_2p
_l_2q
_l_2r
_l_2s
_l_2t
_l_2u
_l_2v
_l_2w
_l_2x
_l_2none
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fadd_tab
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	[ebp-4],0
	mov	[ebp-4],1
	jmp	_638
_639
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],1935830566
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	add	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],15216
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeshort
	add	[_vhtmlpointer],6
	add	[ebp-4],1
_638
	cmp	[ebp-4],4
	jle	_639
_17
	add	[_vtextpointer],1
	mov	eax,0
	jmp	_16_leave
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_fadd_enter
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	add	[_vrownumber],1
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],1047683644
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	add	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],2573
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeshort
	add	[_vhtmlpointer],6
	add	[_vtextpointer],1
	mov	eax,0
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_faddendspan
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	mov	[esp+4],ebx
	mov	[esp+8],1886596924
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	sub	esp,12
	mov	ebx,[_vhtmlpointer]
	add	ebx,4
	mov	[esp+4],ebx
	mov	[esp+8],4091489
	mov	eax,[_vhtmlbank]
	mov	[esp],eax
	call	_fpokeint
	add	[_vhtmlpointer],7
	mov	[_vkeycolouron],0
	mov	eax,0
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_498	.db	"Blitz2HTML",0
_499	.db	"",0
	.align	4
_voffset	.dd	0
	.align	4
_vbyte	.dd	0
	.align	4
_vmidword	.dd	0
	.align	4
_vkeyword	.dd	0
	.align	4
_vcomment	.dd	0
	.align	4
_vtextstring	.dd	0
	.align	4
_vbbkey	.dd	0
	.align	4
_vtemptextpointer	.dd	0
	.align	4
_vdatakey	.dd	0
	.align	4
_vnumkeys	.dd	0
	.align	4
_vcurrentkey	.dd	0
	.align	4
_vkeycolouron	.dd	0
	.align	4
_vkeyfound	.dd	0
	.align	4
_vtextbanksize	.dd	0
	.align	4
_vfile	.dd	0
	.align	4
_vtextpointer	.dd	0
	.align	4
_vhtmlpointer	.dd	0
	.align	4
_vkeywordlen	.dd	0
	.align	4
_vcommentlen	.dd	0
	.align	4
_vtextstringlen	.dd	0
	.align	4
_vrownumber	.dd	0
	.align	4
_vnextcomment	.dd	0
_500	.db	"<span class=",0
_501	.db	"keyword",0
_502	.db	">",0
_503	.db	"<span class=",0
_504	.db	"comment",0
_505	.db	">",0
_506	.db	"<span class=",0
_507	.db	"textstring",0
_508	.db	">",0
_509	.db	"code.bb",0
_511	.db	"code.bb",0
_512	.db	"Does it exist?",0
	.align	4
_vtextbank	.dd	0
	.align	4
_vhtmlbank	.dd	0
_513	.db	"code.bb",0
_516	.db	"Couldn't open",0
_517	.db	"code.bb",0
_547	.db	"",0
_588	.db	"String not terminated with",0
_589	.db	"quotes on row ",0
_592	.db	"Last row not terminated with quotes",0
_612	.db	"code.html",0
_614	.db	"<html>",0
_615	.db	"<head>",0
_616	.db	"<title>Converted Code</title>",0
_617	.db	"<link rel=",0
_618	.db	"stylesheet",0
_619	.db	" type=",0
_620	.db	"text/css",0
_621	.db	" href=",0
_622	.db	"blitz.css",0
_623	.db	" />",0
_624	.db	"</head>",0
_625	.db	"<body>",0
_626	.db	"",0
_627	.db	"<p class=",0
_628	.db	"blitz",0
_629	.db	">",0
_630	.db	"",0
_631	.db	"</p>",0
_632	.db	"",0
_633	.db	"</body>",0
_634	.db	"</html>",0
_635	.db	"code.html",0
_637	.db	"Couldn't write code.html",0
_20	.db	"bs",0
_21	.db	"cceptTCPStream",0
_22	.db	"Cos",0
_23	.db	"ctivateGadget",0
_24	.db	"ctivateWindow",0
_25	.db	"ctiveWindow",0
_26	.db	"ddGadgetItem",0
_27	.db	"ddTextAreaText",0
_28	.db	"ddTreeViewNode",0
_29	.db	"fter",0
_30	.db	"nd",0
_31	.db	"ppTitle",0
_32	.db	"sc",0
_33	.db	"Sin",0
_34	.db	"Tan",0
_35	.db	"Tan2",0
_36	.db	"utoMidHandle",0
_37	.db	"vailVidMem",0
_38	.db	"ackBuffer",0
_39	.db	"ankSize",0
_40	.db	"efore",0
_41	.db	"in",0
_42	.db	"uttonState",0
_43	.db	"allDLL",0
_44	.db	"anvasBuffer",0
_45	.db	"ase",0
_46	.db	"eil",0
_47	.db	"hangeDir",0
_48	.db	"hannelPan",0
_49	.db	"hannelPitch",0
_50	.db	"hannelPlaying",0
_51	.db	"hannelVolume",0
_52	.db	"heckMenu",0
_53	.db	"hr",0
_54	.db	"learGadgetItems",0
_55	.db	"lientHeight",0
_56	.db	"lientWidth",0
_57	.db	"loseDir",0
_58	.db	"loseFile",0
_59	.db	"loseMovie",0
_60	.db	"loseTCPServer",0
_61	.db	"loseTCPStream",0
_62	.db	"loseUDPStream",0
_63	.db	"ls",0
_64	.db	"lsColor",0
_65	.db	"ollapseTreeViewNode",0
_66	.db	"olor",0
_67	.db	"olorBlue",0
_68	.db	"olorGreen",0
_69	.db	"olorRed",0
_70	.db	"ommandLine",0
_71	.db	"onfirm",0
_72	.db	"onst",0
_73	.db	"opyBank",0
_74	.db	"opyFile",0
_75	.db	"opyImage",0
_76	.db	"opyPixel",0
_77	.db	"opyPixelFast",0
_78	.db	"opyRect",0
_79	.db	"opyStream",0
_80	.db	"os",0
_81	.db	"ountGadgetItems",0
_82	.db	"ountGfxDrivers",0
_83	.db	"ountGfxModes",0
_84	.db	"ountHostIPs",0
_85	.db	"ountTreeViewNodes",0
_86	.db	"reateBank",0
_87	.db	"reateButton",0
_88	.db	"reateCanvas",0
_89	.db	"reateComboBox",0
_90	.db	"reateDir",0
_91	.db	"reateHtmlView",0
_92	.db	"reateImage",0
_93	.db	"reateLabel",0
_94	.db	"reateListBox",0
_95	.db	"reateMenu",0
_96	.db	"reateNetPlayer",0
_97	.db	"reatePanel",0
_98	.db	"reateProgBar",0
_99	.db	"reateSlider",0
_100	.db	"reateTabber",0
_101	.db	"reateTCPServer",0
_102	.db	"reateTextArea",0
_103	.db	"reateTextField",0
_104	.db	"reateTimer",0
_105	.db	"reateToolBar",0
_106	.db	"reateTreeView",0
_107	.db	"reateUDPStream",0
_108	.db	"reateWindow",0
_109	.db	"urrentDate",0
_110	.db	"urrentDir",0
_111	.db	"urrentTime",0
_112	.db	"ata",0
_113	.db	"ebugLog",0
_114	.db	"efault",0
_115	.db	"elay",0
_116	.db	"elete",0
_117	.db	"eleteDir",0
_118	.db	"eleteFile",0
_119	.db	"eleteNetPlayer",0
_120	.db	"esktop",0
_121	.db	"esktopBuffer",0
_122	.db	"im",0
_123	.db	"isableGadget",0
_124	.db	"isableMenu",0
_125	.db	"isableToolBarItem",0
_126	.db	"ottedIP",0
_127	.db	"rawBlock",0
_128	.db	"rawBlockRect",0
_129	.db	"rawImage",0
_130	.db	"rawImageRect",0
_131	.db	"rawMovie",0
_132	.db	"ach",0
_133	.db	"lse",0
_134	.db	"lse If",0
_135	.db	"lseIf",0
_136	.db	"nableGadget",0
_137	.db	"nableMenu",0
_138	.db	"nableToolBarItem",0
_139	.db	"nd",0
_140	.db	"nd Function",0
_141	.db	"ndGraphics",0
_142	.db	"nd If",0
_143	.db	"nd Select",0
_144	.db	"nd Type",0
_145	.db	"ndIf",0
_146	.db	"of",0
_147	.db	"ventData",0
_148	.db	"ventID",0
_149	.db	"ventSource",0
_150	.db	"ventX",0
_151	.db	"ventY",0
_152	.db	"xecFile",0
_153	.db	"xit",0
_154	.db	"xp",0
_155	.db	"xpandTreeViewNode",0
_156	.db	"alse",0
_157	.db	"ield",0
_158	.db	"ilePos",0
_159	.db	"ileSize",0
_160	.db	"ileType",0
_161	.db	"irst",0
_162	.db	"lip",0
_163	.db	"lipCanvas",0
_164	.db	"loat",0
_165	.db	"loor",0
_166	.db	"lushEvents",0
_167	.db	"lushJoy",0
_168	.db	"lushKeys",0
_169	.db	"lushMouse",0
_170	.db	"ontAscend",0
_171	.db	"ontDescend",0
_172	.db	"ontHeight",0
_173	.db	"ontName",0
_174	.db	"ontSize",0
_175	.db	"ontStyle",0
_176	.db	"ontWidth",0
_177	.db	"or",0
_178	.db	"orever",0
_179	.db	"reeBank",0
_180	.db	"reeFont",0
_181	.db	"reeGadget",0
_182	.db	"reeImage",0
_183	.db	"reeSound",0
_184	.db	"reeTimer",0
_185	.db	"reeTreeViewNode",0
_186	.db	"rontBuffer",0
_187	.db	"unction",0
_188	.db	"adgetHeight",0
_189	.db	"adgetItemText",0
_190	.db	"adgetText",0
_191	.db	"adgetWidth",0
_192	.db	"adgetX",0
_193	.db	"adgetY",0
_194	.db	"ammaBlue",0
_195	.db	"ammaGreen",0
_196	.db	"ammaRed",0
_197	.db	"etColor",0
_198	.db	"etEnv",0
_199	.db	"etJoy",0
_200	.db	"etKey",0
_201	.db	"etMouse",0
_202	.db	"fxDriverName",0
_203	.db	"fxModeDepth",0
_204	.db	"fxModeExists",0
_205	.db	"fxModeHeight",0
_206	.db	"fxModeWidth",0
_207	.db	"lobal",0
_208	.db	"osub",0
_209	.db	"oto",0
_210	.db	"rabImage",0
_211	.db	"raphics",0
_212	.db	"raphicsBuffer",0
_213	.db	"raphicsDepth",0
_214	.db	"raphicsHeight",0
_215	.db	"raphicsWidth",0
_216	.db	"andleImage",0
_217	.db	"ex",0
_218	.db	"ideGadget",0
_219	.db	"idePointer",0
_220	.db	"ostIP",0
_221	.db	"ostNetGame",0
_222	.db	"otKeyEvent",0
_223	.db	"tmlViewBack",0
_224	.db	"tmlViewCurrentURL",0
_225	.db	"tmlViewEventURL",0
_226	.db	"tmlViewForward",0
_227	.db	"tmlViewGo",0
_228	.db	"tmlViewRun",0
_229	.db	"tmlViewStatus",0
_230	.db	"f",0
_231	.db	"mageBuffer",0
_232	.db	"mageHeight",0
_233	.db	"mageRectCollide",0
_234	.db	"mageRectOverlap",0
_235	.db	"magesCollide",0
_236	.db	"magesOverlap",0
_237	.db	"mageWidth",0
_238	.db	"mageXHandle",0
_239	.db	"mageYHandle",0
_240	.db	"nclude",0
_241	.db	"nput",0
_242	.db	"nsert",0
_243	.db	"nsertGadgetItem",0
_244	.db	"nsertTreeViewNode",0
_245	.db	"nstr",0
_246	.db	"nt",0
_247	.db	"oinNetGame",0
_248	.db	"oyDown",0
_249	.db	"oyHat",0
_250	.db	"oyHit",0
_251	.db	"oyPitch",0
_252	.db	"oyRoll",0
_253	.db	"oyType",0
_254	.db	"oyU",0
_255	.db	"oyUDir",0
_256	.db	"oyV",0
_257	.db	"oyVDir",0
_258	.db	"oyX",0
_259	.db	"oyXDir",0
_260	.db	"oyY",0
_261	.db	"oyYaw",0
_262	.db	"oyYDir",0
_263	.db	"oyZ",0
_264	.db	"oyZDir",0
_265	.db	"eyDown",0
_266	.db	"eyHit",0
_267	.db	"ast",0
_268	.db	"eft",0
_269	.db	"en",0
_270	.db	"ine",0
_271	.db	"oadAnimImage",0
_272	.db	"oadBuffer",0
_273	.db	"oadFont",0
_274	.db	"oadImage",0
_275	.db	"oadSound",0
_276	.db	"ocal",0
_277	.db	"ocate",0
_278	.db	"ockBuffer",0
_279	.db	"ockedFormat",0
_280	.db	"ockedPitch",0
_281	.db	"ockedPixels",0
_282	.db	"og",0
_283	.db	"og10",0
_284	.db	"oopSound",0
_285	.db	"ower",0
_286	.db	"Set",0
_287	.db	"askImage",0
_288	.db	"aximizeWindow",0
_289	.db	"enuChecked",0
_290	.db	"enuEnabled",0
_291	.db	"id",0
_292	.db	"idHandle",0
_293	.db	"illiSecs",0
_294	.db	"inimizeWindow",0
_295	.db	"od",0
_296	.db	"odifyGadgetItem",0
_297	.db	"ouseDown",0
_298	.db	"ouseHit",0
_299	.db	"ouseWait",0
_300	.db	"ouseX",0
_301	.db	"ouseXSpeed",0
_302	.db	"ouseY",0
_303	.db	"ouseYSpeed",0
_304	.db	"ouseZ",0
_305	.db	"ouseZSpeed",0
_306	.db	"oveMouse",0
_307	.db	"ovieHeight",0
_308	.db	"oviePlaying",0
_309	.db	"ovieWidth",0
_310	.db	"etMsgData",0
_311	.db	"etMsgFrom",0
_312	.db	"etMsgTo",0
_313	.db	"etMsgType",0
_314	.db	"etPlayerLocal",0
_315	.db	"etPlayerName",0
_316	.db	"ew",0
_317	.db	"ext",0
_318	.db	"extFile",0
_319	.db	"ot",0
_320	.db	"otify",0
_321	.db	"ull",0
_322	.db	"penFile",0
_323	.db	"penMovie",0
_324	.db	"penTCPStream",0
_325	.db	"r",0
_326	.db	"rigin",0
_327	.db	"val",0
_328	.db	"auseChannel",0
_329	.db	"eekByte",0
_330	.db	"eekEvent",0
_331	.db	"eekFloat",0
_332	.db	"eekInt",0
_333	.db	"eekShort",0
_334	.db	"i",0
_335	.db	"layCDTrack",0
_336	.db	"layMusic",0
_337	.db	"laySound",0
_338	.db	"lot",0
_339	.db	"okeByte",0
_340	.db	"okeFloat",0
_341	.db	"okeInt",0
_342	.db	"okeShort",0
_343	.db	"rint",0
_344	.db	"roceed",0
_345	.db	"ueryObject",0
_346	.db	"and",0
_347	.db	"ead",0
_348	.db	"eadAvail",0
_349	.db	"eadByte",0
_350	.db	"eadBytes",0
_351	.db	"eadDir",0
_352	.db	"eadFile",0
_353	.db	"eadFloat",0
_354	.db	"eadInt",0
_355	.db	"eadLine",0
_356	.db	"eadPixel",0
_357	.db	"eadPixelFast",0
_358	.db	"eadShort",0
_359	.db	"eadString",0
_360	.db	"ect",0
_361	.db	"ectsOverlap",0
_362	.db	"ecvNetMsg",0
_363	.db	"ecvUDPMsg",0
_364	.db	"emoveGadgetItem",0
_365	.db	"epeat",0
_366	.db	"eplace",0
_367	.db	"equestColor",0
_368	.db	"equestDir",0
_369	.db	"equestedBlue",0
_370	.db	"equestedGreen",0
_371	.db	"equestedRed",0
_372	.db	"equestFile",0
_373	.db	"equestFont",0
_374	.db	"esizeBank",0
_375	.db	"esizeImage",0
_376	.db	"estore",0
_377	.db	"esumeChannel",0
_378	.db	"eturn",0
_379	.db	"ight",0
_380	.db	"nd",0
_381	.db	"ndSeed",0
_382	.db	"otateImage",0
_383	.db	"Set",0
_384	.db	"untimeError",0
_385	.db	"ar",0
_386	.db	"aveBuffer",0
_387	.db	"aveImage",0
_388	.db	"caleImage",0
_389	.db	"canLine",0
_390	.db	"eedRnd",0
_391	.db	"eekFile",0
_392	.db	"elect",0
_393	.db	"electedGadgetItem",0
_394	.db	"electedTreeViewNode",0
_395	.db	"electGadgetItem",0
_396	.db	"electTreeViewNode",0
_397	.db	"endNetMsg",0
_398	.db	"endUDPMsg",0
_399	.db	"etBuffer",0
_400	.db	"etButtonState",0
_401	.db	"etEnv",0
_402	.db	"etFont",0
_403	.db	"etGadgetFont",0
_404	.db	"etGadgetIconStrip",0
_405	.db	"etGadgetLayout",0
_406	.db	"etGadgetShape",0
_407	.db	"etGadgetText",0
_408	.db	"etGamma",0
_409	.db	"etGfxDriver",0
_410	.db	"etMenuText",0
_411	.db	"etMinWindowSize",0
_412	.db	"etPanelColor",0
_413	.db	"etPanelImage",0
_414	.db	"etSliderRange",0
_415	.db	"etSliderValue",0
_416	.db	"etStatusText",0
_417	.db	"etTextAreaColor",0
_418	.db	"etTextAreaFont",0
_419	.db	"etTextAreaTabs",0
_420	.db	"etTextAreaText",0
_421	.db	"etToolBarTips",0
_422	.db	"gn",0
_423	.db	"hl",0
_424	.db	"howGadget",0
_425	.db	"howPointer",0
_426	.db	"hr",0
_427	.db	"in",0
_428	.db	"liderValue",0
_429	.db	"oundPan",0
_430	.db	"oundPitch",0
_431	.db	"oundVolume",0
_432	.db	"qr",0
_433	.db	"tartNetGame",0
_434	.db	"tep",0
_435	.db	"top",0
_436	.db	"topChannel",0
_437	.db	"topNetGame",0
_438	.db	"tr",0
_439	.db	"tring",0
_440	.db	"tringHeight",0
_441	.db	"tringWidth",0
_442	.db	"ystemProperty",0
_443	.db	"an",0
_444	.db	"CPStreamIP",0
_445	.db	"CPStreamPort",0
_446	.db	"CPTimeouts",0
_447	.db	"ext",0
_448	.db	"extAreaText",0
_449	.db	"extFieldText",0
_450	.db	"FormFilter",0
_451	.db	"FormImage",0
_452	.db	"hen",0
_453	.db	"ileBlock",0
_454	.db	"ileImage",0
_455	.db	"o",0
_456	.db	"otalVidMem",0
_457	.db	"reeViewRoot",0
_458	.db	"reeViewNodeText",0
_459	.db	"rim",0
_460	.db	"rue",0
_461	.db	"ype",0
_462	.db	"DPMsgIP",0
_463	.db	"DPMsgPort",0
_464	.db	"DPStreamIP",0
_465	.db	"DPStreamPort",0
_466	.db	"DPTimeouts",0
_467	.db	"ncheckMenu",0
_468	.db	"nlockBuffer",0
_469	.db	"ntil",0
_470	.db	"pdateGamma",0
_471	.db	"pdateProgBar",0
_472	.db	"pdateWindowMenu",0
_473	.db	"pper",0
_474	.db	"iewport",0
_475	.db	"Wait",0
_476	.db	"aitEvent",0
_477	.db	"aitJoy",0
_478	.db	"aitKey",0
_479	.db	"aitMouse",0
_480	.db	"aitTimer",0
_481	.db	"end",0
_482	.db	"hile",0
_483	.db	"indowMaximized",0
_484	.db	"indowMenu",0
_485	.db	"indowMinimized",0
_486	.db	"rite",0
_487	.db	"riteByte",0
_488	.db	"riteBytes",0
_489	.db	"riteFile",0
_490	.db	"riteFloat",0
_491	.db	"riteInt",0
_492	.db	"riteLine",0
_493	.db	"ritePixel",0
_494	.db	"ritePixelFast",0
_495	.db	"riteShort",0
_496	.db	"riteString",0
_497	.db	"or",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	1
	.dd	18
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
	.dd	1
	.dd	5
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
	.dd	1
	.dd	69
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
	.dd	4
	.dd	_79
	.dd	4
	.dd	_80
	.dd	4
	.dd	_81
	.dd	4
	.dd	_82
	.dd	4
	.dd	_83
	.dd	4
	.dd	_84
	.dd	4
	.dd	_85
	.dd	4
	.dd	_86
	.dd	4
	.dd	_87
	.dd	4
	.dd	_88
	.dd	4
	.dd	_89
	.dd	4
	.dd	_90
	.dd	4
	.dd	_91
	.dd	4
	.dd	_92
	.dd	4
	.dd	_93
	.dd	4
	.dd	_94
	.dd	4
	.dd	_95
	.dd	4
	.dd	_96
	.dd	4
	.dd	_97
	.dd	4
	.dd	_98
	.dd	4
	.dd	_99
	.dd	4
	.dd	_100
	.dd	4
	.dd	_101
	.dd	4
	.dd	_102
	.dd	4
	.dd	_103
	.dd	4
	.dd	_104
	.dd	4
	.dd	_105
	.dd	4
	.dd	_106
	.dd	4
	.dd	_107
	.dd	4
	.dd	_108
	.dd	4
	.dd	_109
	.dd	4
	.dd	_110
	.dd	4
	.dd	_111
	.dd	1
	.dd	20
	.dd	4
	.dd	_112
	.dd	4
	.dd	_113
	.dd	4
	.dd	_114
	.dd	4
	.dd	_115
	.dd	4
	.dd	_116
	.dd	4
	.dd	_117
	.dd	4
	.dd	_118
	.dd	4
	.dd	_119
	.dd	4
	.dd	_120
	.dd	4
	.dd	_121
	.dd	4
	.dd	_122
	.dd	4
	.dd	_123
	.dd	4
	.dd	_124
	.dd	4
	.dd	_125
	.dd	4
	.dd	_126
	.dd	4
	.dd	_127
	.dd	4
	.dd	_128
	.dd	4
	.dd	_129
	.dd	4
	.dd	_130
	.dd	4
	.dd	_131
	.dd	1
	.dd	24
	.dd	4
	.dd	_132
	.dd	4
	.dd	_133
	.dd	4
	.dd	_134
	.dd	4
	.dd	_135
	.dd	4
	.dd	_136
	.dd	4
	.dd	_137
	.dd	4
	.dd	_138
	.dd	4
	.dd	_139
	.dd	4
	.dd	_140
	.dd	4
	.dd	_141
	.dd	4
	.dd	_142
	.dd	4
	.dd	_143
	.dd	4
	.dd	_144
	.dd	4
	.dd	_145
	.dd	4
	.dd	_146
	.dd	4
	.dd	_147
	.dd	4
	.dd	_148
	.dd	4
	.dd	_149
	.dd	4
	.dd	_150
	.dd	4
	.dd	_151
	.dd	4
	.dd	_152
	.dd	4
	.dd	_153
	.dd	4
	.dd	_154
	.dd	4
	.dd	_155
	.dd	1
	.dd	32
	.dd	4
	.dd	_156
	.dd	4
	.dd	_157
	.dd	4
	.dd	_158
	.dd	4
	.dd	_159
	.dd	4
	.dd	_160
	.dd	4
	.dd	_161
	.dd	4
	.dd	_162
	.dd	4
	.dd	_163
	.dd	4
	.dd	_164
	.dd	4
	.dd	_165
	.dd	4
	.dd	_166
	.dd	4
	.dd	_167
	.dd	4
	.dd	_168
	.dd	4
	.dd	_169
	.dd	4
	.dd	_170
	.dd	4
	.dd	_171
	.dd	4
	.dd	_172
	.dd	4
	.dd	_173
	.dd	4
	.dd	_174
	.dd	4
	.dd	_175
	.dd	4
	.dd	_176
	.dd	4
	.dd	_177
	.dd	4
	.dd	_178
	.dd	4
	.dd	_179
	.dd	4
	.dd	_180
	.dd	4
	.dd	_181
	.dd	4
	.dd	_182
	.dd	4
	.dd	_183
	.dd	4
	.dd	_184
	.dd	4
	.dd	_185
	.dd	4
	.dd	_186
	.dd	4
	.dd	_187
	.dd	1
	.dd	28
	.dd	4
	.dd	_188
	.dd	4
	.dd	_189
	.dd	4
	.dd	_190
	.dd	4
	.dd	_191
	.dd	4
	.dd	_192
	.dd	4
	.dd	_193
	.dd	4
	.dd	_194
	.dd	4
	.dd	_195
	.dd	4
	.dd	_196
	.dd	4
	.dd	_197
	.dd	4
	.dd	_198
	.dd	4
	.dd	_199
	.dd	4
	.dd	_200
	.dd	4
	.dd	_201
	.dd	4
	.dd	_202
	.dd	4
	.dd	_203
	.dd	4
	.dd	_204
	.dd	4
	.dd	_205
	.dd	4
	.dd	_206
	.dd	4
	.dd	_207
	.dd	4
	.dd	_208
	.dd	4
	.dd	_209
	.dd	4
	.dd	_210
	.dd	4
	.dd	_211
	.dd	4
	.dd	_212
	.dd	4
	.dd	_213
	.dd	4
	.dd	_214
	.dd	4
	.dd	_215
	.dd	1
	.dd	14
	.dd	4
	.dd	_216
	.dd	4
	.dd	_217
	.dd	4
	.dd	_218
	.dd	4
	.dd	_219
	.dd	4
	.dd	_220
	.dd	4
	.dd	_221
	.dd	4
	.dd	_222
	.dd	4
	.dd	_223
	.dd	4
	.dd	_224
	.dd	4
	.dd	_225
	.dd	4
	.dd	_226
	.dd	4
	.dd	_227
	.dd	4
	.dd	_228
	.dd	4
	.dd	_229
	.dd	1
	.dd	17
	.dd	4
	.dd	_230
	.dd	4
	.dd	_231
	.dd	4
	.dd	_232
	.dd	4
	.dd	_233
	.dd	4
	.dd	_234
	.dd	4
	.dd	_235
	.dd	4
	.dd	_236
	.dd	4
	.dd	_237
	.dd	4
	.dd	_238
	.dd	4
	.dd	_239
	.dd	4
	.dd	_240
	.dd	4
	.dd	_241
	.dd	4
	.dd	_242
	.dd	4
	.dd	_243
	.dd	4
	.dd	_244
	.dd	4
	.dd	_245
	.dd	4
	.dd	_246
	.dd	1
	.dd	18
	.dd	4
	.dd	_247
	.dd	4
	.dd	_248
	.dd	4
	.dd	_249
	.dd	4
	.dd	_250
	.dd	4
	.dd	_251
	.dd	4
	.dd	_252
	.dd	4
	.dd	_253
	.dd	4
	.dd	_254
	.dd	4
	.dd	_255
	.dd	4
	.dd	_256
	.dd	4
	.dd	_257
	.dd	4
	.dd	_258
	.dd	4
	.dd	_259
	.dd	4
	.dd	_260
	.dd	4
	.dd	_261
	.dd	4
	.dd	_262
	.dd	4
	.dd	_263
	.dd	4
	.dd	_264
	.dd	1
	.dd	2
	.dd	4
	.dd	_265
	.dd	4
	.dd	_266
	.dd	1
	.dd	20
	.dd	4
	.dd	_267
	.dd	4
	.dd	_268
	.dd	4
	.dd	_269
	.dd	4
	.dd	_270
	.dd	4
	.dd	_271
	.dd	4
	.dd	_272
	.dd	4
	.dd	_273
	.dd	4
	.dd	_274
	.dd	4
	.dd	_275
	.dd	4
	.dd	_276
	.dd	4
	.dd	_277
	.dd	4
	.dd	_278
	.dd	4
	.dd	_279
	.dd	4
	.dd	_280
	.dd	4
	.dd	_281
	.dd	4
	.dd	_282
	.dd	4
	.dd	_283
	.dd	4
	.dd	_284
	.dd	4
	.dd	_285
	.dd	4
	.dd	_286
	.dd	1
	.dd	23
	.dd	4
	.dd	_287
	.dd	4
	.dd	_288
	.dd	4
	.dd	_289
	.dd	4
	.dd	_290
	.dd	4
	.dd	_291
	.dd	4
	.dd	_292
	.dd	4
	.dd	_293
	.dd	4
	.dd	_294
	.dd	4
	.dd	_295
	.dd	4
	.dd	_296
	.dd	4
	.dd	_297
	.dd	4
	.dd	_298
	.dd	4
	.dd	_299
	.dd	4
	.dd	_300
	.dd	4
	.dd	_301
	.dd	4
	.dd	_302
	.dd	4
	.dd	_303
	.dd	4
	.dd	_304
	.dd	4
	.dd	_305
	.dd	4
	.dd	_306
	.dd	4
	.dd	_307
	.dd	4
	.dd	_308
	.dd	4
	.dd	_309
	.dd	1
	.dd	12
	.dd	4
	.dd	_310
	.dd	4
	.dd	_311
	.dd	4
	.dd	_312
	.dd	4
	.dd	_313
	.dd	4
	.dd	_314
	.dd	4
	.dd	_315
	.dd	4
	.dd	_316
	.dd	4
	.dd	_317
	.dd	4
	.dd	_318
	.dd	4
	.dd	_319
	.dd	4
	.dd	_320
	.dd	4
	.dd	_321
	.dd	1
	.dd	6
	.dd	4
	.dd	_322
	.dd	4
	.dd	_323
	.dd	4
	.dd	_324
	.dd	4
	.dd	_325
	.dd	4
	.dd	_326
	.dd	4
	.dd	_327
	.dd	1
	.dd	17
	.dd	4
	.dd	_328
	.dd	4
	.dd	_329
	.dd	4
	.dd	_330
	.dd	4
	.dd	_331
	.dd	4
	.dd	_332
	.dd	4
	.dd	_333
	.dd	4
	.dd	_334
	.dd	4
	.dd	_335
	.dd	4
	.dd	_336
	.dd	4
	.dd	_337
	.dd	4
	.dd	_338
	.dd	4
	.dd	_339
	.dd	4
	.dd	_340
	.dd	4
	.dd	_341
	.dd	4
	.dd	_342
	.dd	4
	.dd	_343
	.dd	4
	.dd	_344
	.dd	1
	.dd	1
	.dd	4
	.dd	_345
	.dd	1
	.dd	39
	.dd	4
	.dd	_346
	.dd	4
	.dd	_347
	.dd	4
	.dd	_348
	.dd	4
	.dd	_349
	.dd	4
	.dd	_350
	.dd	4
	.dd	_351
	.dd	4
	.dd	_352
	.dd	4
	.dd	_353
	.dd	4
	.dd	_354
	.dd	4
	.dd	_355
	.dd	4
	.dd	_356
	.dd	4
	.dd	_357
	.dd	4
	.dd	_358
	.dd	4
	.dd	_359
	.dd	4
	.dd	_360
	.dd	4
	.dd	_361
	.dd	4
	.dd	_362
	.dd	4
	.dd	_363
	.dd	4
	.dd	_364
	.dd	4
	.dd	_365
	.dd	4
	.dd	_366
	.dd	4
	.dd	_367
	.dd	4
	.dd	_368
	.dd	4
	.dd	_369
	.dd	4
	.dd	_370
	.dd	4
	.dd	_371
	.dd	4
	.dd	_372
	.dd	4
	.dd	_373
	.dd	4
	.dd	_374
	.dd	4
	.dd	_375
	.dd	4
	.dd	_376
	.dd	4
	.dd	_377
	.dd	4
	.dd	_378
	.dd	4
	.dd	_379
	.dd	4
	.dd	_380
	.dd	4
	.dd	_381
	.dd	4
	.dd	_382
	.dd	4
	.dd	_383
	.dd	4
	.dd	_384
	.dd	1
	.dd	58
	.dd	4
	.dd	_385
	.dd	4
	.dd	_386
	.dd	4
	.dd	_387
	.dd	4
	.dd	_388
	.dd	4
	.dd	_389
	.dd	4
	.dd	_390
	.dd	4
	.dd	_391
	.dd	4
	.dd	_392
	.dd	4
	.dd	_393
	.dd	4
	.dd	_394
	.dd	4
	.dd	_395
	.dd	4
	.dd	_396
	.dd	4
	.dd	_397
	.dd	4
	.dd	_398
	.dd	4
	.dd	_399
	.dd	4
	.dd	_400
	.dd	4
	.dd	_401
	.dd	4
	.dd	_402
	.dd	4
	.dd	_403
	.dd	4
	.dd	_404
	.dd	4
	.dd	_405
	.dd	4
	.dd	_406
	.dd	4
	.dd	_407
	.dd	4
	.dd	_408
	.dd	4
	.dd	_409
	.dd	4
	.dd	_410
	.dd	4
	.dd	_411
	.dd	4
	.dd	_412
	.dd	4
	.dd	_413
	.dd	4
	.dd	_414
	.dd	4
	.dd	_415
	.dd	4
	.dd	_416
	.dd	4
	.dd	_417
	.dd	4
	.dd	_418
	.dd	4
	.dd	_419
	.dd	4
	.dd	_420
	.dd	4
	.dd	_421
	.dd	4
	.dd	_422
	.dd	4
	.dd	_423
	.dd	4
	.dd	_424
	.dd	4
	.dd	_425
	.dd	4
	.dd	_426
	.dd	4
	.dd	_427
	.dd	4
	.dd	_428
	.dd	4
	.dd	_429
	.dd	4
	.dd	_430
	.dd	4
	.dd	_431
	.dd	4
	.dd	_432
	.dd	4
	.dd	_433
	.dd	4
	.dd	_434
	.dd	4
	.dd	_435
	.dd	4
	.dd	_436
	.dd	4
	.dd	_437
	.dd	4
	.dd	_438
	.dd	4
	.dd	_439
	.dd	4
	.dd	_440
	.dd	4
	.dd	_441
	.dd	4
	.dd	_442
	.dd	1
	.dd	19
	.dd	4
	.dd	_443
	.dd	4
	.dd	_444
	.dd	4
	.dd	_445
	.dd	4
	.dd	_446
	.dd	4
	.dd	_447
	.dd	4
	.dd	_448
	.dd	4
	.dd	_449
	.dd	4
	.dd	_450
	.dd	4
	.dd	_451
	.dd	4
	.dd	_452
	.dd	4
	.dd	_453
	.dd	4
	.dd	_454
	.dd	4
	.dd	_455
	.dd	4
	.dd	_456
	.dd	4
	.dd	_457
	.dd	4
	.dd	_458
	.dd	4
	.dd	_459
	.dd	4
	.dd	_460
	.dd	4
	.dd	_461
	.dd	1
	.dd	12
	.dd	4
	.dd	_462
	.dd	4
	.dd	_463
	.dd	4
	.dd	_464
	.dd	4
	.dd	_465
	.dd	4
	.dd	_466
	.dd	4
	.dd	_467
	.dd	4
	.dd	_468
	.dd	4
	.dd	_469
	.dd	4
	.dd	_470
	.dd	4
	.dd	_471
	.dd	4
	.dd	_472
	.dd	4
	.dd	_473
	.dd	1
	.dd	2
	.dd	4
	.dd	_474
	.dd	4
	.dd	_475
	.dd	1
	.dd	21
	.dd	4
	.dd	_476
	.dd	4
	.dd	_477
	.dd	4
	.dd	_478
	.dd	4
	.dd	_479
	.dd	4
	.dd	_480
	.dd	4
	.dd	_481
	.dd	4
	.dd	_482
	.dd	4
	.dd	_483
	.dd	4
	.dd	_484
	.dd	4
	.dd	_485
	.dd	4
	.dd	_486
	.dd	4
	.dd	_487
	.dd	4
	.dd	_488
	.dd	4
	.dd	_489
	.dd	4
	.dd	_490
	.dd	4
	.dd	_491
	.dd	4
	.dd	_492
	.dd	4
	.dd	_493
	.dd	4
	.dd	_494
	.dd	4
	.dd	_495
	.dd	4
	.dd	_496
	.dd	1
	.dd	1
	.dd	4
	.dd	_497
	.dd	1
	.dd	0
	.dd	0

