
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,40
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
	sub	esp,16
	mov	[esp+8],16
	mov	[esp+12],0
	mov	[esp+4],600
	mov	[esp],800
	call	_fgraphics3d
	sub	esp,12
	mov	eax,_4
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-40],eax
	sub	esp,4
	mov	ebx,_5
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-40]
	mov	[esp+4],ebx
	call	_fapptitle
_l_2next_file
	sub	esp,8
	mov	[esp],1
	mov	[esp+4],0
	call	_fcreatelight
	mov	[ebp-4],eax
	sub	esp,4
	mov	[esp],0
	call	_fcreatecamera
	mov	[ebp-8],eax
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
	sub	esp,16
	mov	eax,_15
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_finput
	mov	[esp],eax
	mov	[esp+4],0
	call	_floadmesh
	mov	[ebp-12],eax
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],0
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fpointentity
	jmp	_17
_16
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fshowentity
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_18
	jmp	_l_2finished
_18
	mov	[ebp-16],0
	mov	[ebp-20],0
	mov	[ebp-24],0
	sub	esp,4
	mov	[esp],211
	call	_fkeyhit
	and	eax,eax
	jz	_19
	mov	[ebp-20],-1082130432
_19
	sub	esp,4
	mov	[esp],209
	call	_fkeydown
	and	eax,eax
	jz	_20
	mov	[ebp-20],1065353216
_20
	sub	esp,4
	mov	[esp],207
	call	_fkeydown
	and	eax,eax
	jz	_21
	mov	[ebp-24],-1082130432
_21
	sub	esp,4
	mov	[esp],199
	call	_fkeydown
	and	eax,eax
	jz	_22
	mov	[ebp-24],1065353216
_22
	mov	[ebp-28],0
	mov	[ebp-32],0
	mov	[ebp-36],0
	sub	esp,4
	mov	[esp],208
	call	_fkeydown
	and	eax,eax
	jz	_23
	mov	[ebp-36],1065353216
_23
	sub	esp,4
	mov	[esp],200
	call	_fkeydown
	and	eax,eax
	jz	_24
	mov	[ebp-36],-1082130432
_24
	sub	esp,4
	mov	[esp],203
	call	_fkeydown
	and	eax,eax
	jz	_25
	mov	[ebp-28],1065353216
_25
	sub	esp,4
	mov	[esp],205
	call	_fkeydown
	and	eax,eax
	jz	_26
	mov	[ebp-28],-1082130432
_26
	sub	esp,4
	mov	[esp],44
	call	_fkeydown
	and	eax,eax
	jz	_27
	mov	[ebp-16],1056964608
_27
	sub	esp,4
	mov	[esp],30
	call	_fkeydown
	and	eax,eax
	jz	_28
	mov	[ebp-16],-1090519040
_28
	sub	esp,4
	mov	[esp],34
	call	_fkeydown
	and	eax,eax
	jz	_29
	mov	[ebp-32],-1082130432
_29
	sub	esp,4
	mov	[esp],35
	call	_fkeydown
	and	eax,eax
	jz	_30
	mov	[ebp-32],1065353216
_30
	sub	esp,20
	mov	ebx,[ebp-28]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-32]
	mov	[esp+8],esi
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fturnentity
	sub	esp,16
	mov	ebx,[ebp-24]
	mov	[esp+8],ebx
	mov	esi,[ebp-16]
	mov	[esp+12],esi
	mov	esi,[ebp-20]
	mov	[esp+4],esi
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fmoveentity
	sub	esp,4
	mov	[esp],1065353216
	call	_frenderworld
	sub	esp,4
	mov	[esp],1
	call	_fflip
_17
	sub	esp,4
	mov	[esp],2
	call	_fkeydown
	cmp	eax,0
	jz	_16
_3
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fhideentity
	jmp	_l_2next_file
_l_2finished
	sub	esp,8
	mov	eax,_31
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
_4	.db	"Jelly 3D model viewer",0
_5	.db	"",0
_6	.db	"Please type the file path of the 3D object you would like to view, ",0
_7	.db	"Only .b3d, .x or .3ds files supported ",0
_8	.db	"When finished viewing press 1 To view a New Object, or press escape to exit ",0
_9	.db	"Use up and down arrows To change the pitch of the object ",0
_10	.db	"Use left and right keys to rotate the object clockwise and counterclockwise ",0
_11	.db	"Use the keys G And H to rotate in place, use the A and Z keys to zoom ",0
_12	.db	"Use Delete and Page Down to pan left and right,",0
_13	.db	"Use Home and end to pan up and down",0
_14	.db	"This is a product of Kamikaze! programming.",0
_15	.db	"",0
_31	.db	"Thank You for using Jelly. Jelly is a product of Kamikaze! programming",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

