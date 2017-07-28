
	.align	16
__MAIN
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,56
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
	sub	esp,4
	mov	eax,_adbidat
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbidat
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbidat
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbname
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbname
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbname
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbactive
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbactive
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbactive
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbbank
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbbank
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbbank
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfields
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfields
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfields
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbrecordsize
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbrecordsize
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbrecordsize
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbrecords
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbrecords
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbrecords
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbdels
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbdels
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbdels
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfield
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfield
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_adbfield
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfield
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfieldlist
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfieldlist
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_adbfieldlist
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfieldlist
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfieldlen
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfieldlen
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_adbfieldlen
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfieldlen
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfieldtype
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfieldtype
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_adbfieldtype
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfieldtype
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfieldsize
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfieldsize
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_adbfieldsize
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfieldsize
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbfieldoffset
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbfieldoffset
	add	esi,12
	mov	[esi],ebx
	mov	ebx,64
	mov	esi,_adbfieldoffset
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbfieldoffset
	mov	[esp],eax
	call	__bbDimArray
	mov	[_vbasicdbmemoryusage],41856
	mov	[_vdbmaxqueries],50
	sub	esp,4
	mov	eax,_adbqueryop
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vdbmaxqueries]
	mov	esi,_adbqueryop
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbqueryop
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbqueryfield
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vdbmaxqueries]
	mov	esi,_adbqueryfield
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbqueryfield
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbqueryvalstring
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vdbmaxqueries]
	mov	esi,_adbqueryvalstring
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbqueryvalstring
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbqueryvalfloat
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vdbmaxqueries]
	mov	esi,_adbqueryvalfloat
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbqueryvalfloat
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbqueryvalint
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,[_vdbmaxqueries]
	mov	esi,_adbqueryvalint
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbqueryvalint
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adblistedrecord
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,10000
	mov	esi,_adblistedrecord
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adblistedrecord
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbrecordsincache
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbrecordsincache
	add	esi,12
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbrecordsincache
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbrecordcacheid
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	[esi],ebx
	mov	ebx,200
	mov	esi,_adbrecordcacheid
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbrecordcacheid
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,4
	mov	eax,_adbrecordcacheindex
	mov	[esp],eax
	call	__bbUndimArray
	mov	ebx,32
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	[esi],ebx
	mov	ebx,200
	mov	esi,_adbrecordcacheindex
	add	esi,16
	mov	[esi],ebx
	sub	esp,4
	mov	eax,_adbrecordcacheindex
	mov	[esp],eax
	call	__bbDimArray
	sub	esp,12
	mov	eax,_119
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_120
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_fapptitle
	sub	esp,16
	mov	[esp+8],32
	mov	[esp+12],2
	mov	[esp+4],768
	mov	[esp],1024
	call	_fgraphics
	sub	esp,8
	mov	eax,_121
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdefinedb
	mov	[ebp-4],eax
	sub	esp,16
	mov	eax,_122
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[esp+8],25
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddstringfield
	mov	ebx,eax
	sub	esp,16
	mov	eax,_123
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_124
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+8],ebx
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddlistfield
	mov	ebx,eax
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_125
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_faddbytefield
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_126
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_faddintfield
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_127
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_faddfloatfield
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fbuilddb
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-8],eax
	sub	esp,20
	mov	eax,_128
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_129
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_130
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_131
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_132
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_133
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],8
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_134
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1056964608
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-12],eax
	sub	esp,20
	mov	eax,_135
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_136
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_137
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_138
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_139
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],2
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_140
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],11
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_141
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1063675494
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-16],eax
	sub	esp,20
	mov	eax,_142
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_143
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_144
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_145
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_146
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_147
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],4
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_148
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1042536202
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-20],eax
	sub	esp,20
	mov	eax,_149
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_150
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_151
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_152
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_153
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],2
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_154
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],17
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_155
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1008981770
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-24],eax
	sub	esp,20
	mov	eax,_156
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_157
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_158
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_159
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_160
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],4
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_161
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],25
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_162
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1070386381
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-28],eax
	sub	esp,20
	mov	eax,_163
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_164
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_165
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_166
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_167
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],3
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_168
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],19
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_169
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1045891645
	mov	ebx,[ebp-28]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_faddrecord
	mov	[ebp-32],eax
	sub	esp,20
	mov	eax,_170
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_171
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_172
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_173
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+12],ebx
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatastring
	sub	esp,20
	mov	eax,_174
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_175
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],2
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	sub	esp,20
	mov	eax,_176
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],1050253722
	mov	ebx,[ebp-32]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdatafloat
_l_2restart
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,8
	mov	eax,_177
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_178
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_179
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_180
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_181
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
_182
	sub	esp,4
	mov	[esp],2
	call	_fkeyhit
	and	eax,eax
	jz	_183
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_feditdb
	jmp	_l_2restart
_183
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	and	eax,eax
	jz	_184
	call	_fend
_184
	sub	esp,4
	mov	[esp],3
	call	_fkeyhit
	and	eax,eax
	jz	_182
_3
	call	_fflushkeys
	call	_fcls
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],0
	call	_flocate
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_185
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],155
	call	_fcolor
	sub	esp,8
	mov	eax,_186
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_187
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,24
	mov	eax,_188
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[_vbasicdbmemoryusage]
	sar	ebx,byte 10
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
	mov	ebx,_189
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_190
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_191
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],155
	call	_fcolor
	sub	esp,16
	mov	eax,_192
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,16
	mov	eax,_193
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_194
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_195
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,40
	mov	eax,_196
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-56]
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
	mov	ebx,_197
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
	mov	[ebp-56],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-56]
	sar	ebx,byte 10
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
	mov	ebx,_198
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	sub	esp,40
	mov	eax,_199
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
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
	mov	ebx,_200
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
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsize]
	mov	ebx,[ebx]
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
	mov	ebx,_201
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fprint
	mov	[ebp-36],1203982336
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	[esp],0
	mov	[esp+4],200
	call	_flocate
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],155
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_202
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],155
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_203
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_204
_205
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	sub	esp,4
	mov	eax,_206
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fgetdata
	add	[ebp-44],1
_204
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-44],ebx
	jle	_205
_4
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,24
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fdivrp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_207
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_208
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_209
_210
	sub	esp,20
	mov	eax,_211
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetdata
	add	[ebp-44],1
_209
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-44],ebx
	jle	_210
_5
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,24
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fdivrp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_212
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_213
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,8
	mov	eax,_214
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],155
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_215
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],155
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_216
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_217
_218
	sub	esp,16
	mov	eax,_219
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_220
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+8],ebx
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffindrecord
	mov	ebx,eax
	add	[ebp-44],1
_217
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-44],ebx
	jle	_218
_6
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,24
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fdivrp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_221
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_222
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_223
_224
	sub	esp,16
	mov	eax,_225
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_226
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+8],ebx
	mov	ebx,[ebp-4]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffindrecord
	mov	ebx,eax
	add	[ebp-44],1
_223
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-44],ebx
	jle	_224
_7
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,24
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fdivrp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_227
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_228
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,8
	mov	eax,_229
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],155
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_230
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],155
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_231
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-40],eax
	mov	[ebp-44],1
	jmp	_232
_233
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_234
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp+4],ebx
	call	_flistrecords
	add	[ebp-44],1
_232
	mov	ebx,[ebp-36]
	push	ebx
	fld	[esp]
	pop	ebx
	push	ebx
	fistp	[esp]
	pop	ebx
	cmp	[ebp-44],ebx
	jle	_233
_8
	call	_fmillisecs
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-48],eax
	sub	esp,56
	mov	ebx,[ebp-48]
	push	ebx
	fld	[esp]
	pop	ebx
	mov	esi,[ebp-40]
	push	esi
	fld	[esp]
	pop	esi
	fsubp	st(1)
	mov	eax,[ebp-36]
	push	eax
	fld	[esp]
	pop	eax
	fdivrp	st(1)
	mov	ebx,1148846080
	push	ebx
	fld	[esp]
	pop	ebx
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+4],eax
	mov	[ebp-52],eax
	sub	esp,4
	mov	ebx,_235
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-52]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_236
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	[esp],34
	call	_fchr
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_237
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	[esp],34
	call	_fchr
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	sub	esp,4
	mov	eax,_238
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+4],eax
	mov	eax,ebx
	call	__bbStrConcat
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fprint
	mov	ebx,eax
	sub	esp,8
	mov	eax,_239
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,8
	mov	eax,_240
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,8
	mov	eax,_241
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fprint
	call	_fwaitkey
	jmp	_l_2restart
	ret
_2_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_flistrecords
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,72
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[_vdbqueries],0
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_242
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-12],1
	jmp	_243
_244
	sub	esp,20
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
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
	sub	esp,12
	lea	eax,[ebp-16]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_246
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_245
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jnz	_247
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_247
	add	[_vdbqueries],1
	mov	[ebp-20],0
	sub	esp,8
	lea	eax,[ebp-24]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_248
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-28]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_249
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_250
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-36],1
	jmp	_251
_252
	sub	esp,20
	mov	ebx,[ebp-36]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fmid
	mov	[esp+4],eax
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	lea	eax,[ebp-40]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_253
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,_254
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-68]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	mov	[ebp-64],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,_255
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-68]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	mov	[ebp-44],eax
	cmp	[ebp-20],0
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_256
	sub	esp,20
	lea	eax,[ebp-24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_256
	cmp	[ebp-20],0
	setz	al
	movzx	eax,al
	mov	ebx,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_257
	mov	[ebp-20],1
_257
	cmp	[ebp-20],1
	setz	al
	movzx	eax,al
	mov	ebx,[ebp-44]
	and	eax,ebx
	and	eax,eax
	jz	_258
	sub	esp,20
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_258
	cmp	[ebp-20],1
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_259
	mov	[ebp-20],2
_259
	cmp	[ebp-20],2
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	cmp	[ebp-44],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	and	eax,ebx
	and	eax,eax
	jz	_260
	sub	esp,20
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-40]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_260
	add	[ebp-36],1
_251
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-36],eax
	jle	_252
_11
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_262
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_261
	mov	ebx,1
	mov	esi,[_vdbqueries]
	shl	esi,byte 2
	add	esi,[_adbqueryop]
	mov	[esi],ebx
_261
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_264
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_263
	mov	ebx,2
	mov	esi,[_vdbqueries]
	shl	esi,byte 2
	add	esi,[_adbqueryop]
	mov	[esi],ebx
_263
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_266
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_265
	mov	ebx,3
	mov	esi,[_vdbqueries]
	shl	esi,byte 2
	add	esi,[_adbqueryop]
	mov	[esi],ebx
_265
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_268
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,_269
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-68]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_267
	mov	ebx,4
	mov	esi,[_vdbqueries]
	shl	esi,byte 2
	add	esi,[_adbqueryop]
	mov	[esi],ebx
_267
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_271
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,_272
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-68]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_270
	mov	ebx,5
	mov	esi,[_vdbqueries]
	shl	esi,byte 2
	add	esi,[_adbqueryop]
	mov	[esi],ebx
_270
	sub	esp,12
	lea	eax,[ebp-28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_274
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-64],eax
	mov	[ebp-68],eax
	sub	esp,8
	mov	[ebp-72],eax
	sub	esp,4
	lea	ebx,[ebp-28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-72]
	mov	[esp],ebx
	mov	[ebp-72],eax
	sub	esp,4
	mov	esi,_275
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrConst
	mov	esi,eax
	mov	eax,[ebp-72]
	mov	[esp+4],esi
	mov	eax,ebx
	call	__bbStrCompare
	mov	ebx,eax
	mov	eax,[ebp-68]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-64]
	or	eax,ebx
	and	eax,eax
	jz	_273
	mov	ebx,6
	mov	esi,[_vdbqueries]
	shl	esi,byte 2
	add	esi,[_adbqueryop]
	mov	[esi],ebx
_273
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	[ebx],eax
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[ebp-48],ebx
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_276
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	[ebx],eax
_276
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_277
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	[ebx],eax
_277
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_278
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	[ebx],eax
_278
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_279
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	[ebx],eax
_279
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_280
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	[ebx],eax
_280
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_281
	sub	esp,8
	lea	eax,[ebp-32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	ebx,[_vdbqueries]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	[ebx],eax
_281
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_282
	sub	esp,8
	mov	eax,[_vdbqueries]
	shl	eax,byte 2
	add	eax,[_adbqueryvalstring]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
_282
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-48]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_283
	sub	esp,8
	mov	eax,[_vdbqueries]
	shl	eax,byte 2
	add	eax,[_adbqueryvalstring]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
_283
	sub	esp,8
	lea	eax,[ebp-8]
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,_284
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_285
_245
	sub	esp,20
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	lea	ebx,[ebp-16]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_285
	add	[ebp-12],1
_243
	mov	ebx,[ebp-4]
	cmp	[ebp-12],ebx
	jle	_244
_10
	mov	[_vdblistedrecords],0
	mov	[ebp-52],1
	jmp	_286
_287
	mov	[ebp-56],1
	mov	[ebp-60],1
	jmp	_288
_289
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_290
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_291
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_292
	mov	[ebp-56],0
	jmp	_13
_292
_291
_290
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_293
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_294
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_295
	mov	[ebp-56],0
	jmp	_13
_295
_294
_293
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_296
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_297
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_298
	mov	[ebp-56],0
	jmp	_13
_298
_297
_296
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_299
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_300
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_301
	mov	[ebp-56],0
	jmp	_13
_301
_300
_299
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_302
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_303
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_304
	mov	[ebp-56],0
	jmp	_13
_304
_303
_302
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_305
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_306
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_307
	mov	[ebp-56],0
	jmp	_13
_307
_306
_305
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_308
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_309
	sub	esp,20
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalstring]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_310
	mov	[ebp-56],0
	jmp	_13
_310
_309
_308
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_311
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_312
	sub	esp,20
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalstring]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_313
	mov	[ebp-56],0
	jmp	_13
_313
_312
_311
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_314
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_315
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	cmp	eax,0
	jnz	_316
	mov	[ebp-56],0
	jmp	_13
_316
_315
_314
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_317
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_318
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	cmp	eax,0
	jnz	_319
	mov	[ebp-56],0
	jmp	_13
_319
_318
_317
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_320
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_321
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	cmp	eax,0
	jnz	_322
	mov	[ebp-56],0
	jmp	_13
_322
_321
_320
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_323
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_324
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	cmp	eax,0
	jnz	_325
	mov	[ebp-56],0
	jmp	_13
_325
_324
_323
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_326
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_327
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setl	al
	movzx	eax,al
	cmp	eax,0
	jnz	_328
	mov	[ebp-56],0
	jmp	_13
_328
_327
_326
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_329
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_330
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jnz	_331
	mov	[ebp-56],0
	jmp	_13
_331
_330
_329
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_332
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_333
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	cmp	eax,0
	jnz	_334
	mov	[ebp-56],0
	jmp	_13
_334
_333
_332
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_335
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_336
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	cmp	eax,0
	jnz	_337
	mov	[ebp-56],0
	jmp	_13
_337
_336
_335
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_338
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_339
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	cmp	eax,0
	jnz	_340
	mov	[ebp-56],0
	jmp	_13
_340
_339
_338
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_341
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_342
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	cmp	eax,0
	jnz	_343
	mov	[ebp-56],0
	jmp	_13
_343
_342
_341
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_344
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_345
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	cmp	eax,0
	jnz	_346
	mov	[ebp-56],0
	jmp	_13
_346
_345
_344
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_347
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_348
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jnz	_349
	mov	[ebp-56],0
	jmp	_13
_349
_348
_347
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_350
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_351
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_352
	mov	[ebp-56],0
	jmp	_13
_352
_351
_350
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_353
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_354
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_355
	mov	[ebp-56],0
	jmp	_13
_355
_354
_353
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_356
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_357
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_358
	mov	[ebp-56],0
	jmp	_13
_358
_357
_356
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_359
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_360
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_361
	mov	[ebp-56],0
	jmp	_13
_361
_360
_359
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_362
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_363
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setle	al
	movzx	eax,al
	cmp	eax,0
	jnz	_364
	mov	[ebp-56],0
	jmp	_13
_364
_363
_362
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_365
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_366
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jnz	_367
	mov	[ebp-56],0
	jmp	_13
_367
_366
_365
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_368
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_369
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_370
	mov	[ebp-56],0
	jmp	_13
_370
_369
_368
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_371
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_372
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_373
	mov	[ebp-56],0
	jmp	_13
_373
_372
_371
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_374
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_375
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_376
	mov	[ebp-56],0
	jmp	_13
_376
_375
_374
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_377
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_378
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_379
	mov	[ebp-56],0
	jmp	_13
_379
_378
_377
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_380
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_381
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setge	al
	movzx	eax,al
	cmp	eax,0
	jnz	_382
	mov	[ebp-56],0
	jmp	_13
_382
_381
_380
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_383
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_384
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jnz	_385
	mov	[ebp-56],0
	jmp	_13
_385
_384
_383
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_386
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_387
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_388
	mov	[ebp-56],0
	jmp	_13
_388
_387
_386
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_389
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_390
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_391
	mov	[ebp-56],0
	jmp	_13
_391
_390
_389
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_392
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_393
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_394
	mov	[ebp-56],0
	jmp	_13
_394
_393
_392
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_395
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_396
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_397
	mov	[ebp-56],0
	jmp	_13
_397
_396
_395
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_398
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_399
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalint]
	mov	ebx,[ebx]
	cmp	eax,ebx
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_400
	mov	[ebp-56],0
	jmp	_13
_400
_399
_398
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_401
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_402
	sub	esp,12
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalfloat]
	mov	ebx,[ebx]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_403
	mov	[ebp-56],0
	jmp	_13
_403
_402
_401
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_404
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_405
	sub	esp,20
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalstring]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_406
	mov	[ebp-56],0
	jmp	_13
_406
_405
_404
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_407
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryop]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_408
	sub	esp,20
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryfield]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	mov	esi,[ebp-52]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp],eax
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-60]
	shl	ebx,byte 2
	add	ebx,[_adbqueryvalstring]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jnz	_409
	mov	[ebp-56],0
	jmp	_13
_409
_408
_407
	add	[ebp-60],1
_288
	mov	ebx,[_vdbqueries]
	cmp	[ebp-60],ebx
	jle	_289
_13
	mov	ebx,[ebp-56]
	and	ebx,ebx
	jz	_410
	add	[_vdblistedrecords],1
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-52]
	mov	[esp+4],ebx
	call	_fdbrecordid
	mov	ebx,[_vdblistedrecords]
	shl	ebx,byte 2
	add	ebx,[_adblistedrecord]
	mov	[ebx],eax
_410
	add	[ebp-52],1
_286
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-52],ebx
	jle	_287
_12
	mov	eax,[_vdblistedrecords]
	jmp	_9_leave
	mov	eax,0
	jmp	_9_leave
_9_leave
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-40]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp-16]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-64]
	mov	[ebp-64],eax
	sub	esp,4
	mov	esi,[ebp+24]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-64]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdefinedb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_411
_412
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_adbfields]
	mov	eax,[eax]
	cmp	eax,0
	setz	al
	movzx	eax,al
	mov	[ebp-12],eax
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbactive]
	mov	ebx,[ebx]
	cmp	ebx,0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-12]
	and	eax,ebx
	and	eax,eax
	jz	_413
	mov	ebx,[ebp-4]
	mov	[ebp-8],ebx
	jmp	_l_14gotit
_413
	add	[ebp-4],1
_411
	mov	ebx,[_vdbs]
	cmp	[ebp-4],ebx
	jle	_412
_15
	cmp	[_vdbs],32
	jle	_414
	sub	esp,8
	mov	eax,_415
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_414
	add	[_vdbs],1
	mov	ebx,[_vdbs]
	mov	[ebp-8],ebx
_l_14gotit
	sub	esp,8
	mov	eax,[ebp-8]
	shl	eax,byte 2
	add	eax,[_adbname]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,1
	mov	esi,[ebp-8]
	shl	esi,byte 2
	add	esi,[_adbactive]
	mov	[esi],ebx
	mov	eax,[ebp-8]
	jmp	_14_leave
	mov	eax,0
	jmp	_14_leave
_14_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fbuilddb
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
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_416
	sub	esp,8
	mov	eax,_417
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_416
	mov	[ebp-4],4
	mov	[ebp-8],1
	jmp	_418
_419
	mov	ebx,[ebp-4]
	mov	esi,_adbfieldoffset
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-8]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfieldoffset]
	mov	[esi],ebx
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_420
	add	[ebp-4],1
_420
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_421
	add	[ebp-4],1
_421
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_422
	add	[ebp-4],2
_422
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_423
	add	[ebp-4],2
_423
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_424
	add	[ebp-4],4
_424
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_425
	add	[ebp-4],4
_425
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_426
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	ebx,[ebx]
	add	[ebp-4],ebx
_426
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_427
	add	[ebp-4],1
_427
	add	[ebp-8],1
_418
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_419
_17
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordsincache]
	mov	[esi],ebx
	mov	ebx,[ebp-4]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordsize]
	mov	[esi],ebx
	sub	esp,4
	mov	[esp],0
	call	_fcreatebank
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	[ebx],eax
	mov	eax,0
	jmp	_16_leave
_16_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_faddbytefield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],25
	sub	esp,4
	mov	eax,_428
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],0
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_18_leave
	mov	eax,0
	jmp	_18_leave
_18_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_faddsbytefield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],25
	sub	esp,4
	mov	eax,_429
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_19_leave
	mov	eax,0
	jmp	_19_leave
_19_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_faddshortfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],25
	sub	esp,4
	mov	eax,_430
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],2
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_20_leave
	mov	eax,0
	jmp	_20_leave
_20_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_faddsshortfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],25
	sub	esp,4
	mov	eax,_431
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],3
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_21_leave
	mov	eax,0
	jmp	_21_leave
_21_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_faddintfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],25
	sub	esp,4
	mov	eax,_432
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],4
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_22_leave
	mov	eax,0
	jmp	_22_leave
_22_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_faddfloatfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],25
	sub	esp,4
	mov	eax,_433
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],5
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_23_leave
	mov	eax,0
	jmp	_23_leave
_23_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_faddstringfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	ebx,[ebp+28]
	mov	[esp+12],ebx
	sub	esp,4
	mov	eax,_434
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+16],eax
	mov	[esp+8],6
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_24_leave
	mov	eax,0
	jmp	_24_leave
_24_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_faddlistfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	sub	esp,20
	mov	[esp+12],0
	sub	esp,4
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+16],eax
	mov	[esp+8],7
	sub	esp,4
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_faddfield
	mov	ebx,eax
	jmp	_25_leave
	mov	eax,0
	jmp	_25_leave
_25_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[ebp-4],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_faddrecord
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecords]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	mov	[ebp-8],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbidat]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbidat]
	mov	ebx,[ebx]
	cmp	ebx,2147483647
	jnz	_435
	mov	ebx,-2147483648
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbidat]
	mov	[esi],ebx
	jmp	_436
_435
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbidat]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbidat]
	mov	[esi],ebx
_436
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsize]
	mov	ebx,[ebx]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fresizebank
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-12]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokeint
	mov	[ebp-16],1
	jmp	_437
_438
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_439
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
_439
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_440
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesbytetodb
_440
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_441
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteshorttodb
_441
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_442
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesshorttodb
_442
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_443
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteinttodb
_443
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_444
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritefloattodb
_444
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_445
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,_446
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp+12],eax
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritestringtodb
_445
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_447
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	[esp+12],0
	mov	esi,[ebp-16]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
_447
	add	[ebp-16],1
_437
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_438
_27
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_26_leave
	mov	eax,0
	jmp	_26_leave
_26_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffreerecord
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
	mov	[ebp-28],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_448
	sub	esp,8
	mov	eax,_449
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_448
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsize]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_fdbrecordlocation
	mov	[ebp-12],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jge	_450
	mov	ebx,[ebp-12]
	mov	[ebp-16],ebx
	jmp	_451
_452
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	ebx,[ebp-16]
	add	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fpeekbyte
	mov	[ebp-20],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fpokebyte
	add	[ebp-16],1
_451
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	sub	eax,[ebp-8]
	cmp	[ebp-16],eax
	jle	_452
_29
_450
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	mov	[ebp-32],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-32]
	sub	ebx,[ebp-8]
	mov	[esp+4],ebx
	call	_fresizebank
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecords]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbdels]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbdels]
	mov	[esi],ebx
_l_28redel
	mov	[ebp-24],1
	jmp	_453
_454
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jnz	_455
	mov	[ebp-28],1
	jmp	_456
_457
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheid]
	mov	[esi],ebx
	mov	ebx,[ebp-28]
	add	ebx,1
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-28]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheindex]
	mov	[esi],ebx
	add	[ebp-28],1
_456
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-28],ebx
	jle	_457
_31
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordsincache]
	mov	[esi],ebx
	jmp	_l_28redel
_455
	add	[ebp-24],1
_453
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-24],ebx
	jle	_454
_30
	mov	[ebp-24],1
	jmp	_458
_459
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jle	_460
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	sub	ebx,1
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-24]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheindex]
	mov	[esi],ebx
_460
	add	[ebp-24],1
_458
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-24],ebx
	jle	_459
_32
	mov	eax,0
	jmp	_28_leave
_28_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fsetdata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_461
	sub	esp,8
	mov	eax,_462
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_461
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_463
	sub	esp,24
	mov	eax,_464
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_465
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_463
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetdatasimple
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,0
	jmp	_33_leave
_33_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fsetdatafloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_466
	sub	esp,8
	mov	eax,_467
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_466
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_468
	sub	esp,24
	mov	eax,_469
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_470
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_468
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetdatafloatsimple
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,0
	jmp	_34_leave
_34_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fsetdatastring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_471
	sub	esp,8
	mov	eax,_472
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_471
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_473
	sub	esp,24
	mov	eax,_474
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_475
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_473
	sub	esp,16
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+12],eax
	mov	esi,[ebp-8]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetdatastringsimple
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,0
	jmp	_35_leave
_35_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[ebp-12],eax
	sub	esp,4
	mov	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fgetdata
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_476
	sub	esp,8
	mov	eax,_477
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_476
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_478
	sub	esp,24
	mov	eax,_479
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_480
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_478
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatasimple
	jmp	_36_leave
	mov	eax,0
	jmp	_36_leave
_36_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fgetdatafloat
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_481
	sub	esp,8
	mov	eax,_482
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_481
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_483
	sub	esp,24
	mov	eax,_484
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_485
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_483
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatafloatsimple
	jmp	_37_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_37_leave
_37_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fgetdatastring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_ffindrecordbyid
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_486
	sub	esp,8
	mov	eax,_487
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_486
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-8],eax
	cmp	[ebp-8],0
	jnz	_488
	sub	esp,24
	mov	eax,_489
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_490
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_488
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,12
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	esi,[ebp-4]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	jmp	_38_leave
	sub	esp,4
	mov	eax,_491
	mov	[esp],eax
	call	__bbStrConst
	jmp	_38_leave
_38_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ffindrecord
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
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	_ffindfield
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_492
	sub	esp,24
	mov	eax,_493
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,_494
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_492
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	cmp	[ebp-8],0
	jnz	_495
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_496
_497
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	cmp	eax,[ebp-12]
	jnz	_498
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_498
	add	[ebp-16],1
_496
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_497
_40
	mov	eax,-1
	jmp	_39_leave
_495
	cmp	[ebp-8],1
	jnz	_499
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_500
_501
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsbytefromdb
	cmp	eax,[ebp-12]
	jnz	_502
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_502
	add	[ebp-16],1
_500
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_501
_41
	mov	eax,-1
	jmp	_39_leave
_499
	cmp	[ebp-8],2
	jnz	_503
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_504
_505
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshortfromdb
	cmp	eax,[ebp-12]
	jnz	_506
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_506
	add	[ebp-16],1
_504
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_505
_42
	mov	eax,-1
	jmp	_39_leave
_503
	cmp	[ebp-8],3
	jnz	_507
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_508
_509
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsshortfromdb
	cmp	eax,[ebp-12]
	jnz	_510
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_510
	add	[ebp-16],1
_508
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_509
_43
	mov	eax,-1
	jmp	_39_leave
_507
	cmp	[ebp-8],4
	jnz	_511
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-16],1
	jmp	_512
_513
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadintfromdb
	cmp	eax,[ebp-12]
	jnz	_514
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_514
	add	[ebp-16],1
_512
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_513
_44
	mov	eax,-1
	jmp	_39_leave
_511
	cmp	[ebp-8],5
	jnz	_515
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	[ebp-16],1
	jmp	_516
_517
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadfloatfromdb
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_518
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_518
	add	[ebp-16],1
_516
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_517
_45
	mov	eax,-1
	jmp	_39_leave
_515
	cmp	[ebp-8],6
	jnz	_519
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-28],eax
	mov	[ebp-16],1
	jmp	_520
_521
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fstringlength
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	cmp	[ebp-28],ebx
	jnz	_522
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadstringfromdb
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_523
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_523
_522
	add	[ebp-16],1
_520
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_521
_46
	mov	eax,-1
	jmp	_39_leave
_519
	cmp	[ebp-8],7
	jnz	_524
	mov	[ebp-16],1
	jmp	_525
_526
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-16]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	[ebp-20],ebx
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetliststring
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_527
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	mov	eax,_adbrecordcacheid
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-16]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheid]
	mov	eax,[eax]
	jmp	_39_leave
_527
	add	[ebp-16],1
_525
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-16],ebx
	jle	_526
_47
	mov	eax,-1
	jmp	_39_leave
_524
	cmp	[ebp-8],0
	jnz	_528
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-20],1
	jmp	_529
_530
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	cmp	eax,[ebp-12]
	jnz	_531
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_531
	add	[ebp-20],1
_529
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_530
_48
	mov	eax,-1
	jmp	_39_leave
_528
	cmp	[ebp-8],1
	jnz	_532
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-20],1
	jmp	_533
_534
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsbytefromdb
	cmp	eax,[ebp-12]
	jnz	_535
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_535
	add	[ebp-20],1
_533
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_534
_49
	mov	eax,-1
	jmp	_39_leave
_532
	cmp	[ebp-8],2
	jnz	_536
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-20],1
	jmp	_537
_538
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshortfromdb
	cmp	eax,[ebp-12]
	jnz	_539
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_539
	add	[ebp-20],1
_537
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_538
_50
	mov	eax,-1
	jmp	_39_leave
_536
	cmp	[ebp-8],3
	jnz	_540
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-20],1
	jmp	_541
_542
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsshortfromdb
	cmp	eax,[ebp-12]
	jnz	_543
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_543
	add	[ebp-20],1
_541
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_542
_51
	mov	eax,-1
	jmp	_39_leave
_540
	cmp	[ebp-8],4
	jnz	_544
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[ebp-12],eax
	mov	[ebp-20],1
	jmp	_545
_546
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadintfromdb
	cmp	eax,[ebp-12]
	jnz	_547
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_547
	add	[ebp-20],1
_545
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_546
_52
	mov	eax,-1
	jmp	_39_leave
_544
	cmp	[ebp-8],5
	jnz	_548
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	push	eax
	fild	[esp]
	pop	eax
	push	eax
	fstp	[esp]
	pop	eax
	mov	[ebp-24],eax
	mov	[ebp-20],1
	jmp	_549
_550
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadfloatfromdb
	mov	ebx,[ebp-24]
	push	ebx
	fld	[esp]
	pop	ebx
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	and	eax,eax
	jz	_551
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_551
	add	[ebp-20],1
_549
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_550
_53
	mov	eax,-1
	jmp	_39_leave
_548
	cmp	[ebp-8],6
	jnz	_552
	sub	esp,8
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-28],eax
	mov	[ebp-20],1
	jmp	_553
_554
	sub	esp,12
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fstringlength
	mov	[ebp-32],eax
	mov	ebx,[ebp-32]
	cmp	[ebp-28],ebx
	jnz	_555
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadstringfromdb
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_556
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_556
_555
	add	[ebp-20],1
_553
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_554
_54
	mov	eax,-1
	jmp	_39_leave
_552
	cmp	[ebp-8],7
	jnz	_557
	mov	[ebp-20],1
	jmp	_558
_559
	sub	esp,32
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	mov	[esp+8],eax
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetliststring
	mov	[esp],eax
	mov	[ebp-36],eax
	sub	esp,4
	lea	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_560
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_faddrecordtocache
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-20]
	mov	[esp+4],ebx
	call	_fdbrecordid
	jmp	_39_leave
_560
	add	[ebp-20],1
_558
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-20],ebx
	jle	_559
_55
	mov	eax,-1
	jmp	_39_leave
_557
	mov	eax,0
	jmp	_39_leave
_39_leave
	mov	[ebp-36],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-36]
	mov	[ebp-36],eax
	sub	esp,4
	mov	esi,[ebp+28]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-36]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_ffreedb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	cmp	[ebp+20],1
	setl	al
	movzx	eax,al
	mov	[ebp-4],eax
	mov	ebx,[_vdbs]
	cmp	[ebp+20],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-4]
	or	eax,ebx
	and	eax,eax
	jz	_561
	sub	esp,8
	mov	eax,_562
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_561
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbactive]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_563
	sub	esp,8
	mov	eax,_564
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_563
	sub	esp,4
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_ffreebank
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfields]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecords]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbidat]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbname]
	mov	[esp],eax
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,_565
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbactive]
	mov	[esi],ebx
	mov	ebx,0
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordsincache]
	mov	[esi],ebx
	mov	eax,0
	jmp	_56_leave
_56_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_fsavedb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fwritefile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_566
	mov	eax,0
	jmp	_57_leave
_566
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	ebx,[ebp+20]
	mov	[esp+4],ebx
	call	_fwritedb
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,1
	jmp	_57_leave
	mov	eax,0
	jmp	_57_leave
_57_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
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
	ret	word 8
	.align	16
_fwritedb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwritestring
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbidat]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsize]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	[ebp-4],1
	jmp	_567
_568
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwritebyte
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_569
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
_569
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,_adbfieldoffset
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfieldoffset]
	mov	ebx,[ebx]
	mov	[esp+4],ebx
	call	_fwriteint
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_570
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_adbfieldlist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfieldlist]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwritestring
_570
	add	[ebp-4],1
_567
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_568
_59
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fbanksize
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	_fwriteint
	sub	esp,16
	mov	[esp+8],0
	sub	esp,4
	mov	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fbanksize
	mov	[esp+12],eax
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp+24]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_fwritebytes
	mov	eax,0
	jmp	_58_leave
_58_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_floaddb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_freadfile
	mov	[ebp-4],eax
	cmp	[ebp-4],0
	jnz	_571
	mov	eax,0
	jmp	_60_leave
_571
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_freaddb
	mov	[ebp-8],eax
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fclosefile
	mov	eax,[ebp-8]
	jmp	_60_leave
	mov	eax,0
	jmp	_60_leave
_60_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_freaddb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	sub	esp,8
	mov	eax,_572
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fdefinedb
	mov	[ebp-4],eax
	mov	ebx,1
	mov	esi,[ebp-4]
	shl	esi,byte 2
	add	esi,[_adbactive]
	mov	[esi],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_adbname]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadstring
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbidat]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsize]
	mov	[ebx],eax
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	[ebx],eax
	mov	[ebp-8],1
	jmp	_573
_574
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbyte
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	[ebx],eax
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_575
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	[ebx],eax
_575
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	ebx,_adbfieldoffset
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfieldoffset]
	mov	[ebx],eax
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_576
	sub	esp,8
	mov	eax,_adbfieldlist
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-8]
	add	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_adbfieldlist]
	mov	[esp],eax
	mov	[ebp-16],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_freadstring
	mov	ebx,eax
	mov	eax,[ebp-16]
	mov	[esp+4],ebx
	call	__bbStrStore
_576
	add	[ebp-8],1
_573
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_574
_62
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadint
	mov	[ebp-12],eax
	sub	esp,4
	mov	eax,[ebp-12]
	mov	[esp],eax
	call	_fcreatebank
	mov	ebx,[ebp-4]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	[ebx],eax
	sub	esp,16
	mov	[esp+8],0
	mov	esi,[ebp-12]
	mov	[esp+12],esi
	mov	esi,[ebp+20]
	mov	[esp+4],esi
	mov	eax,[ebp-4]
	shl	eax,byte 2
	add	eax,[_adbbank]
	mov	eax,[eax]
	mov	[esp],eax
	call	_freadbytes
	mov	eax,[ebp-4]
	jmp	_61_leave
	mov	eax,0
	jmp	_61_leave
_61_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_feditdbs
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,104
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	cmp	[_vdbs],0
	jnz	_577
	mov	eax,0
	jmp	_63_leave
_577
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	call	_fcolorred
	mov	[ebp-8],eax
	call	_fcolorgreen
	mov	[ebp-12],eax
	call	_fcolorblue
	mov	[ebp-16],eax
	call	_fgraphicswidth
	mov	[ebp-20],eax
	call	_fgraphicsheight
	mov	[ebp-24],eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	mov	[ebp-28],0
	jmp	_578
_579
	sub	esp,16
	mov	ebx,[ebp-20]
	mov	[esp+8],ebx
	mov	esi,[ebp-28]
	mov	[esp+12],esi
	mov	esi,[ebp-28]
	mov	[esp+4],esi
	mov	[esp],0
	call	_fline
	add	[ebp-28],2
_578
	mov	ebx,[ebp-24]
	cmp	[ebp-28],ebx
	jle	_579
_64
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-32],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fgrabimage
	call	_fgraphicswidth
	mov	[ebp-20],eax
	call	_fgraphicsheight
	mov	[ebp-24],eax
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],20
	sub	esp,4
	mov	eax,_580
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsetfont
	call	_ffontheight
	mov	[ebp-40],eax
	mov	[ebp-44],200
	call	_fflushkeys
	call	_fflushmouse
_581
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fdrawblock
	mov	ebx,[ebp-24]
	sub	ebx,100
	mov	[ebp-48],ebx
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-48]
	push	esi
	fild	[esp]
	pop	esi
	fdivrp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-52],esi
	mov	eax,[_vdbs]
	sub	eax,1
	mov	ecx,[ebp-52]
	cdq
	idiv	ecx
	mov	[ebp-56],eax
	mov	ebx,[ebp-56]
	add	ebx,1
	mov	esi,[ebp-44]
	add	esi,10
	imul	ebx,esi
	mov	[ebp-60],ebx
	cmp	[ebp-56],0
	jnz	_582
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[_vdbs]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-48],ebx
_582
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	mov	esi,[ebp-48]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-64],ebx
	mov	ebx,[ebp-20]
	sar	ebx,byte 1
	mov	esi,[ebp-60]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-68],ebx
	sub	esp,12
	mov	[esp+4],30
	mov	[esp+8],50
	mov	[esp],30
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-48]
	add	ebx,20
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-60]
	add	esi,20
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],230
	mov	[esp+8],250
	mov	[esp],230
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-48]
	add	ebx,20
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-60]
	add	esi,20
	mov	[esp+8],esi
	mov	ebx,[ebp-64]
	mov	[esp+4],ebx
	mov	eax,[ebp-68]
	mov	[esp],eax
	call	_frect
	call	_fmousex
	mov	[ebp-72],eax
	call	_fmousey
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[ebp-80],eax
	add	[ebp-68],10
	add	[ebp-64],10
	mov	ebx,[ebp-68]
	mov	[ebp-84],ebx
	mov	ebx,[ebp-64]
	mov	[ebp-88],ebx
	mov	[ebp-92],1
	jmp	_583
_584
	sub	esp,12
	mov	[esp+4],20
	mov	[esp+8],20
	mov	[esp],20
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,48
	mov	eax,[ebp-92]
	shl	eax,byte 2
	add	eax,[_adbname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_585
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,[ebp-92]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-104],eax
	sub	esp,4
	mov	ebx,_586
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-104]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],1
	mov	[esp+16],0
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	eax,[ebp-44]
	sar	eax,byte 1
	add	eax,[ebp-84]
	mov	[esp],eax
	call	_ftext
	sub	esp,12
	mov	[esp+4],48
	mov	[esp+8],48
	mov	[esp],48
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_frect
	mov	eax,[ebp-84]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-104],eax
	mov	ebx,[ebp-88]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-104]
	and	eax,ebx
	mov	[ebp-104],eax
	mov	ebx,[ebp-84]
	add	ebx,[ebp-44]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-104]
	and	eax,ebx
	mov	[ebp-104],eax
	mov	ebx,[ebp-88]
	add	ebx,[ebp-40]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-104]
	and	eax,ebx
	and	eax,eax
	jz	_587
	sub	esp,12
	mov	[esp+4],248
	mov	[esp+8],48
	mov	[esp],248
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-88]
	mov	[esp+4],ebx
	mov	eax,[ebp-84]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_588
	sub	esp,4
	mov	eax,[ebp-92]
	mov	[esp],eax
	call	_feditdb
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsetfont
_588
_587
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-88]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-88],esi
	mov	ebx,[ebp-64]
	add	ebx,[ebp-48]
	sub	ebx,10
	cmp	[ebp-88],ebx
	jle	_589
	mov	ebx,[ebp-44]
	add	ebx,10
	add	[ebp-84],ebx
	mov	ebx,[ebp-64]
	mov	[ebp-88],ebx
_589
	add	[ebp-92],1
_583
	mov	ebx,[_vdbs]
	cmp	[ebp-92],ebx
	jle	_584
_66
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-72]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	mov	[esp+12],esi
	mov	esi,[ebp-76]
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-72]
	mov	[esp+8],ebx
	mov	esi,[ebp-76]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-76]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-72]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	mov	[ebp-96],eax
	mov	ebx,[ebp-96]
	mov	esi,[ebp-100]
	and	ebx,esi
	and	ebx,ebx
	jz	_590
	mov	[ebp-100],0
	mov	[ebp-96],0
_590
	mov	ebx,[ebp-96]
	and	ebx,ebx
	jz	_581
_65
	call	_fflushkeys
	call	_fflushmouse
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_ffreefont
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ffreeimage
	mov	eax,0
	jmp	_63_leave
_63_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 0
	.align	16
_feditdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,316
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
	mov	[ebp-52],ebx
	mov	[ebp-56],ebx
	mov	[ebp-60],ebx
	mov	[ebp-64],ebx
	mov	[ebp-68],ebx
	mov	[ebp-72],ebx
	mov	[ebp-76],ebx
	mov	[ebp-80],ebx
	mov	[ebp-84],ebx
	mov	[ebp-88],ebx
	mov	[ebp-92],ebx
	mov	[ebp-96],ebx
	mov	[ebp-100],ebx
	mov	[ebp-104],ebx
	mov	[ebp-108],ebx
	mov	[ebp-112],ebx
	mov	[ebp-116],ebx
	mov	[ebp-120],ebx
	mov	[ebp-124],ebx
	mov	[ebp-128],ebx
	mov	[ebp-132],ebx
	mov	[ebp-136],ebx
	mov	[ebp-140],ebx
	mov	[ebp-144],ebx
	mov	[ebp-148],ebx
	mov	[ebp-152],ebx
	mov	[ebp-156],ebx
	mov	[ebp-160],ebx
	mov	[ebp-164],ebx
	mov	[ebp-168],ebx
	mov	[ebp-172],ebx
	mov	[ebp-176],ebx
	mov	[ebp-180],ebx
	mov	[ebp-184],ebx
	mov	[ebp-188],ebx
	mov	[ebp-192],ebx
	mov	[ebp-196],ebx
	mov	[ebp-200],ebx
	mov	[ebp-204],ebx
	mov	[ebp-208],ebx
	mov	[ebp-212],ebx
	mov	[ebp-216],ebx
	mov	[ebp-220],ebx
	mov	[ebp-224],ebx
	mov	[ebp-228],ebx
	mov	[ebp-232],ebx
	mov	[ebp-236],ebx
	mov	[ebp-240],ebx
	mov	[ebp-244],ebx
	mov	[ebp-248],ebx
	mov	[ebp-252],ebx
	mov	[ebp-256],ebx
	mov	[ebp-260],ebx
	mov	[ebp-264],ebx
	mov	[ebp-268],ebx
	mov	[ebp-272],ebx
	mov	[ebp-276],ebx
	mov	[ebp-280],ebx
	mov	[ebp-284],ebx
	mov	[ebp-288],ebx
	mov	[ebp-292],ebx
	mov	[ebp-296],ebx
	mov	[ebp-300],ebx
	mov	[ebp-304],ebx
	mov	[ebp-308],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbactive]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_591
	sub	esp,8
	mov	eax,_592
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_591
	call	_fgraphicsbuffer
	mov	[ebp-4],eax
	call	_fcolorred
	mov	[ebp-8],eax
	call	_fcolorgreen
	mov	[ebp-12],eax
	call	_fcolorblue
	mov	[ebp-16],eax
	call	_fgraphicswidth
	mov	[ebp-20],eax
	call	_fgraphicsheight
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-28],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fgrabimage
	sub	esp,4
	call	_fbackbuffer
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],17
	sub	esp,4
	mov	eax,_593
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-32],eax
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	mov	[esp+8],0
	mov	[esp+4],27
	sub	esp,4
	mov	eax,_594
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_floadfont
	mov	[ebp-36],eax
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fsetfont
	call	_ffontheight
	mov	[ebp-40],eax
	mov	ebx,[ebp-20]
	sar	ebx,byte 3
	mov	[ebp-44],ebx
	cmp	[ebp-48],100
	jge	_595
	mov	[ebp-48],100
_595
	mov	[ebp-52],20
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-52]
	mov	[ebp-56],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-40]
	shl	esi,byte 1
	add	esi,[ebp-52]
	sub	ebx,esi
	mov	[ebp-60],ebx
	mov	eax,[ebp-60]
	mov	ecx,[ebp-40]
	cdq
	idiv	ecx
	mov	[ebp-64],eax
	mov	eax,[ebp-56]
	mov	ecx,[ebp-44]
	cdq
	idiv	ecx
	mov	[ebp-68],eax
	call	_fflushkeys
	call	_fflushmouse
_596
	sub	esp,12
	mov	[esp+4],30
	mov	[esp+8],50
	mov	[esp],30
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	call	_fmousex
	mov	[ebp-72],eax
	call	_fmousey
	mov	[ebp-76],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[ebp-80],eax
	mov	ebx,[ebp-80]
	mov	esi,[ebp-84]
	and	ebx,esi
	and	ebx,ebx
	jz	_597
	mov	eax,[ebp-88]
	cmp	[ebp-72],eax
	setl	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-88]
	add	ebx,[ebp-92]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-96]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-96]
	add	ebx,[ebp-100]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	and	eax,eax
	jz	_598
	mov	[ebp-84],0
	mov	[ebp-80],0
_598
_597
	sub	esp,4
	mov	[esp],2
	call	_fmousehit
	mov	[ebp-104],eax
	sub	esp,4
	mov	[esp],1
	call	_fmousedown
	mov	[ebp-108],eax
	mov	ebx,[ebp-116]
	add	ebx,1
	mov	[ebp-112],ebx
	mov	[ebp-120],0
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	sub	ebx,[ebp-68]
	cmp	[ebp-116],ebx
	jle	_599
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	sub	ebx,[ebp-68]
	mov	[ebp-116],ebx
_599
	cmp	[ebp-116],0
	jge	_600
	mov	[ebp-116],0
_600
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,[ebp-64]
	cmp	[ebp-124],ebx
	jle	_601
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,[ebp-64]
	mov	[ebp-124],ebx
_601
	cmp	[ebp-124],0
	jge	_602
	mov	[ebp-124],0
_602
_603
	cmp	[ebp-112],0
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-112],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-112],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_604
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	mov	eax,_adbfield
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-112]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfield]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	[esp+4],0
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_ftext
	mov	ebx,[ebp-124]
	add	ebx,1
	mov	[ebp-128],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-132],ebx
_605
	cmp	[ebp-128],0
	setg	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-128],ebx
	mov	eax,ebx
	setle	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-128],0
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_606
	sub	esp,20
	mov	ebx,[ebp-112]
	mov	[esp+4],ebx
	mov	esi,[ebp-128]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp+4],eax
	lea	ebx,[ebp-136]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-44]
	mov	[esp+8],esi
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],30
	mov	[esp+8],50
	mov	[esp],30
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	[esp+8],3
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	add	eax,[ebp-44]
	sub	eax,3
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-40]
	cmp	[ebp-72],ebx
	jge	_607
	mov	eax,[ebp-132]
	cmp	[ebp-76],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-132]
	add	ebx,[ebp-40]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-140],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-84],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	ebx,[ebp-84]
	mov	[ebp-312],eax
	mov	esi,[ebp-128]
	cmp	[ebp-144],esi
	mov	eax,esi
	setz	al
	movzx	eax,al
	mov	esi,eax
	mov	eax,[ebp-312]
	and	ebx,esi
	or	eax,ebx
	and	eax,eax
	jz	_608
	mov	ebx,[ebp-128]
	mov	[ebp-144],ebx
	sub	esp,12
	mov	[esp+4],55
	mov	[esp+8],125
	mov	[esp],55
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-44]
	sub	esi,3
	mov	[esp+8],esi
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],155
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-136]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_ftext
	mov	eax,[ebp-120]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-120]
	add	ebx,[ebp-44]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-84],0
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_609
	mov	ebx,[ebp-112]
	mov	[ebp-148],ebx
	mov	ebx,[ebp-120]
	mov	[ebp-152],ebx
	mov	ebx,[ebp-132]
	mov	[ebp-156],ebx
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	sub	ebx,2
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	sub	esi,3
	mov	[esp+8],esi
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_frect
_609
	jmp	_610
_608
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],155
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-136]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_ftext
_610
	jmp	_611
_607
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],155
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],0
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-136]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-132]
	mov	[esp+4],ebx
	mov	eax,[ebp-120]
	mov	[esp],eax
	call	_ftext
_611
_606
	add	[ebp-128],1
	mov	ebx,[ebp-40]
	add	[ebp-132],ebx
	mov	eax,[ebp-132]
	add	eax,[ebp-40]
	mov	ebx,[ebp-60]
	add	ebx,[ebp-40]
	cmp	eax,ebx
	setg	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-128],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	and	eax,eax
	jz	_605
_70
_604
	add	[ebp-112],1
	mov	ebx,[ebp-44]
	add	[ebp-120],ebx
	mov	eax,[ebp-20]
	cmp	[ebp-120],eax
	setg	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-112],ebx
	mov	eax,ebx
	setg	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	and	eax,eax
	jz	_603
_69
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-68]
	jle	_612
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],90
	mov	[esp],95
	call	_fcolor
	mov	[ebp-160],0
	mov	ebx,[ebp-24]
	mov	esi,[ebp-40]
	shl	esi,byte 1
	sub	ebx,esi
	mov	[ebp-164],ebx
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-40]
	mov	[ebp-168],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-172],ebx
	sub	esp,20
	mov	ebx,[ebp-172]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-168]
	mov	[esp+8],esi
	mov	ebx,[ebp-164]
	mov	[esp+4],ebx
	mov	eax,[ebp-160]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],190
	mov	[esp+8],100
	mov	[esp],255
	call	_fcolor
	mov	eax,[ebp-68]
	imul	eax,[ebp-168]
	mov	ecx,[ebp+20]
	shl	ecx,byte 2
	add	ecx,[_adbfields]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	[ebp-176],eax
	mov	eax,[ebp-116]
	imul	eax,[ebp-168]
	mov	ecx,[ebp+20]
	shl	ecx,byte 2
	add	ecx,[_adbfields]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	[ebp-180],eax
	cmp	[ebp-140],1
	jnz	_613
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_613
	sub	esp,20
	mov	ebx,[ebp-172]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-176]
	mov	[esp+8],esi
	mov	ebx,[ebp-164]
	mov	[esp+4],ebx
	mov	eax,[ebp-180]
	mov	[esp],eax
	call	_frect
	mov	eax,[ebp-180]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-164]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-180]
	add	ebx,[ebp-176]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-164]
	add	ebx,[ebp-172]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_614
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-172]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-176]
	mov	[esp+8],esi
	mov	ebx,[ebp-164]
	mov	[esp+4],ebx
	mov	eax,[ebp-180]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_615
	mov	ebx,[ebp-72]
	mov	esi,[ebp-176]
	sar	esi,byte 1
	add	esi,[ebp-180]
	sub	ebx,esi
	mov	[ebp-184],ebx
	mov	[ebp-140],1
_615
_614
	cmp	[ebp-140],1
	jnz	_616
	mov	ebx,[ebp-72]
	sub	ebx,[ebp-184]
	mov	esi,[ebp-176]
	sar	esi,byte 1
	add	esi,[ebp-160]
	cmp	ebx,esi
	jge	_617
	mov	ebx,[ebp-176]
	sar	ebx,byte 1
	add	ebx,[ebp-160]
	add	ebx,[ebp-184]
	mov	[ebp-72],ebx
_617
	mov	ebx,[ebp-160]
	add	ebx,[ebp-168]
	mov	esi,[ebp-176]
	sar	esi,byte 1
	sub	ebx,esi
	mov	esi,[ebp-72]
	sub	esi,[ebp-184]
	cmp	esi,ebx
	jle	_618
	mov	ebx,[ebp-160]
	add	ebx,[ebp-20]
	mov	esi,[ebp-176]
	sar	esi,byte 1
	sub	ebx,esi
	add	ebx,[ebp-184]
	mov	[ebp-72],ebx
_618
	mov	ebx,[ebp-72]
	sub	ebx,[ebp-160]
	sub	ebx,[ebp-184]
	mov	esi,[ebp-176]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-188],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfields]
	mov	eax,[eax]
	imul	eax,[ebp-188]
	mov	ecx,[ebp-168]
	cdq
	idiv	ecx
	mov	[ebp-116],eax
_616
	cmp	[ebp-108],0
	jnz	_619
	mov	[ebp-140],0
_619
_612
	call	_fmousezspeed
	mov	[ebp-192],eax
	cmp	[ebp-192],0
	jz	_620
	mov	ebx,[ebp-64]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1053609165
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-192]
	push	esi
	fild	[esp]
	pop	esi
	fmulp	st(1)
	mov	ebx,[ebp-124]
	push	ebx
	fild	[esp]
	pop	ebx
	fsubrp	st(1)
	push	ebx
	fistp	[esp]
	pop	ebx
	mov	[ebp-124],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,[ebp-64]
	cmp	[ebp-124],ebx
	jle	_621
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,[ebp-64]
	mov	[ebp-124],ebx
_621
	cmp	[ebp-124],0
	jge	_622
	mov	[ebp-124],0
_622
_620
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-64]
	jle	_623
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],90
	mov	[esp],95
	call	_fcolor
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-40]
	mov	[ebp-160],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-164],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-168],ebx
	mov	ebx,[ebp-24]
	mov	esi,[ebp-40]
	imul	esi,3
	sub	ebx,esi
	mov	[ebp-172],ebx
	sub	esp,20
	mov	ebx,[ebp-172]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-168]
	mov	[esp+8],esi
	mov	ebx,[ebp-164]
	mov	[esp+4],ebx
	mov	eax,[ebp-160]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],190
	mov	[esp+8],100
	mov	[esp],255
	call	_fcolor
	mov	eax,[ebp-64]
	imul	eax,[ebp-172]
	mov	ecx,[ebp+20]
	shl	ecx,byte 2
	add	ecx,[_adbrecords]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	mov	[ebp-196],eax
	mov	eax,[ebp-124]
	imul	eax,[ebp-172]
	mov	ecx,[ebp+20]
	shl	ecx,byte 2
	add	ecx,[_adbrecords]
	mov	ecx,[ecx]
	cdq
	idiv	ecx
	add	eax,[ebp-164]
	mov	[ebp-200],eax
	cmp	[ebp-140],2
	jnz	_624
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
_624
	sub	esp,20
	mov	ebx,[ebp-196]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-40]
	mov	[esp+8],esi
	mov	ebx,[ebp-200]
	mov	[esp+4],ebx
	mov	eax,[ebp-160]
	mov	[esp],eax
	call	_frect
	mov	eax,[ebp-160]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-200]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-160]
	add	ebx,[ebp-168]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-200]
	add	ebx,[ebp-196]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_625
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-196]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-168]
	mov	[esp+8],esi
	mov	ebx,[ebp-200]
	mov	[esp+4],ebx
	mov	eax,[ebp-160]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_626
	mov	ebx,[ebp-76]
	mov	esi,[ebp-196]
	sar	esi,byte 1
	add	esi,[ebp-200]
	sub	ebx,esi
	mov	[ebp-184],ebx
	mov	[ebp-140],2
_626
_625
	cmp	[ebp-140],2
	jnz	_627
	mov	ebx,[ebp-76]
	sub	ebx,[ebp-184]
	mov	esi,[ebp-196]
	sar	esi,byte 1
	add	esi,[ebp-164]
	cmp	ebx,esi
	jge	_628
	mov	ebx,[ebp-196]
	sar	ebx,byte 1
	add	ebx,[ebp-164]
	add	ebx,[ebp-184]
	mov	[ebp-76],ebx
_628
	mov	ebx,[ebp-164]
	add	ebx,[ebp-172]
	add	ebx,1
	mov	esi,[ebp-196]
	sar	esi,byte 1
	sub	ebx,esi
	mov	esi,[ebp-76]
	sub	esi,[ebp-184]
	cmp	esi,ebx
	jle	_629
	mov	ebx,[ebp-164]
	add	ebx,[ebp-172]
	add	ebx,1
	mov	esi,[ebp-196]
	sar	esi,byte 1
	sub	ebx,esi
	add	ebx,[ebp-184]
	mov	[ebp-76],ebx
_629
	mov	ebx,[ebp-76]
	sub	ebx,[ebp-164]
	sub	ebx,[ebp-184]
	mov	esi,[ebp-196]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-188],ebx
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecords]
	mov	eax,[eax]
	imul	eax,[ebp-188]
	mov	ecx,[ebp-172]
	cdq
	idiv	ecx
	mov	[ebp-124],eax
_627
	cmp	[ebp-108],0
	jnz	_630
	mov	[ebp-140],0
_630
_623
	sub	esp,12
	mov	[esp+4],60
	mov	[esp+8],160
	mov	[esp],60
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-40]
	mov	[esp+4],ebx
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,12
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbname]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_632
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jz	_631
	sub	esp,8
	lea	eax,[ebp-204]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbname]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_633
_631
	sub	esp,8
	lea	eax,[ebp-204]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_634
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
_633
	sub	esp,40
	mov	eax,_635
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	lea	ebx,[ebp-204]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_636
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-40]
	add	ebx,1
	mov	[esp+4],ebx
	mov	[esp],1
	call	_ftext
	sub	esp,32
	mov	eax,_637
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-40]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,1048576000
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	sub	esp,32
	mov	eax,_638
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-40]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,1056964608
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
	cmp	[ebp-144],0
	jle	_639
	sub	esp,40
	mov	eax,[ebp-148]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_640
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp-144]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrFromInt
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-40]
	add	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	push	eax
	fild	[esp]
	pop	eax
	mov	esi,1061662228
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	push	eax
	fistp	[esp]
	pop	eax
	mov	[esp],eax
	call	_ftext
_639
	mov	ebx,[ebp-80]
	cmp	[ebp-144],0
	setg	al
	movzx	eax,al
	and	ebx,eax
	cmp	[ebp-148],0
	setg	al
	movzx	eax,al
	and	ebx,eax
	cmp	[ebp-84],0
	setz	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_641
	sub	esp,12
	mov	ebx,[ebp-24]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	eax,[ebp-20]
	mov	[esp],eax
	call	_fcreateimage
	mov	[ebp-208],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fgrabimage
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-148]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jz	_642
	sub	esp,20
	mov	ebx,[ebp-148]
	mov	[esp+4],ebx
	mov	esi,[ebp-144]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp+4],eax
	lea	ebx,[ebp-212]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-216]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	lea	ebx,[ebp-212]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
_643
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,12
	mov	[esp+4],0
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-44]
	sub	esi,3
	mov	[esp+8],esi
	mov	ebx,[ebp-156]
	mov	[esp+4],ebx
	mov	eax,[ebp-152]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	add	ebx,1
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-44]
	add	esi,2
	sub	esi,3
	mov	[esp+8],esi
	mov	ebx,[ebp-156]
	sub	ebx,1
	mov	[esp+4],ebx
	mov	eax,[ebp-152]
	sub	eax,1
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],60
	mov	[esp],60
	call	_fcolor
	call	_fmillisecs
	mov	[ebp-220],eax
	mov	ebx,[ebp-220]
	sub	ebx,[ebp-224]
	cmp	ebx,100
	jle	_644
	add	[ebp-228],1
	mov	ebx,[ebp-220]
	mov	[ebp-224],ebx
	cmp	[ebp-228],2
	jnz	_645
	mov	[ebp-228],0
_645
_644
	cmp	[ebp-228],1
	jnz	_646
	sub	esp,8
	lea	eax,[ebp-232]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_647
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_648
_646
	sub	esp,8
	lea	eax,[ebp-232]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_649
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
_648
	sub	esp,32
	lea	eax,[ebp-212]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	lea	ebx,[ebp-232]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+8],eax
	mov	[esp+12],0
	mov	[esp+16],0
	mov	ebx,[ebp-156]
	mov	[esp+4],ebx
	mov	eax,[ebp-152]
	mov	[esp],eax
	call	_ftext
	call	_fgetkey
	mov	[ebp-236],eax
	cmp	[ebp-236],0
	setg	al
	movzx	eax,al
	mov	[ebp-312],eax
	cmp	[ebp-236],27
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-236],8
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	cmp	[ebp-236],13
	mov	eax,ebx
	setnz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_650
	sub	esp,20
	lea	eax,[ebp-212]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp-236]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-212]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_650
	cmp	[ebp-236],8
	jnz	_651
	sub	esp,8
	lea	eax,[ebp-212]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	eax,0
	jle	_652
	sub	esp,20
	lea	eax,[ebp-212]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	[ebp-316],eax
	sub	esp,4
	lea	ebx,[ebp-212]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-316]
	mov	[esp],ebx
	mov	eax,ebx
	call	_flen
	mov	ebx,eax
	mov	eax,[ebp-312]
	sub	ebx,1
	mov	[esp+4],ebx
	call	_fleft
	mov	[esp+4],eax
	lea	ebx,[ebp-212]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_652
_651
	call	_fmousex
	mov	[ebp-240],eax
	call	_fmousey
	mov	[ebp-244],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-240]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-244]
	mov	[esp+12],esi
	mov	esi,[ebp-244]
	mov	[esp+4],esi
	mov	eax,[ebp-240]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-240]
	mov	[esp+8],ebx
	mov	esi,[ebp-244]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-244]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-240]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	cmp	[ebp-236],27
	setz	al
	movzx	eax,al
	mov	[ebp-312],eax
	cmp	[ebp-236],13
	mov	eax,ebx
	setz	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousehit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousehit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	and	eax,eax
	jz	_643
_71
	call	_fflushkeys
	call	_fflushmouse
	cmp	[ebp-236],27
	jz	_653
	sub	esp,16
	mov	ebx,[ebp-144]
	mov	[esp+8],ebx
	sub	esp,4
	lea	eax,[ebp-212]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+12],eax
	mov	esi,[ebp-148]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetdatastringsimple
_653
_642
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-148]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_654
	call	_fmousex
	mov	[ebp-248],eax
	call	_fmousey
	mov	[ebp-252],eax
	mov	[ebp-256],0
	mov	[ebp-260],100
_655
	sub	esp,20
	mov	ebx,[ebp-148]
	mov	[esp+4],ebx
	mov	esi,[ebp-256]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetliststring
	mov	[esp+4],eax
	lea	ebx,[ebp-264]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,8
	lea	eax,[ebp-264]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	add	eax,20
	cmp	[ebp-260],eax
	jge	_656
	sub	esp,8
	lea	eax,[ebp-264]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_fstringwidth
	add	eax,20
	mov	[ebp-260],eax
_656
	add	[ebp-256],1
	sub	esp,12
	lea	eax,[ebp-264]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_657
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_655
_72
	sub	[ebp-256],1
_658
	sub	esp,4
	mov	[esp],1
	call	_fmousehit
	mov	[ebp-80],eax
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fdrawblock
	mov	ebx,[ebp-260]
	mov	[ebp-92],ebx
	mov	ebx,[ebp-40]
	add	ebx,5
	imul	ebx,[ebp-256]
	add	ebx,20
	sub	ebx,5
	mov	[ebp-100],ebx
	mov	ebx,[ebp-72]
	mov	esi,[ebp-92]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-88],ebx
	mov	ebx,[ebp-76]
	mov	esi,[ebp-100]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-96],ebx
	cmp	[ebp-88],0
	jge	_659
	mov	[ebp-88],0
_659
	cmp	[ebp-96],0
	jge	_660
	mov	[ebp-96],0
_660
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-92]
	cmp	[ebp-88],ebx
	jle	_661
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-92]
	mov	[ebp-88],ebx
_661
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-100]
	cmp	[ebp-96],ebx
	jle	_662
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-100]
	mov	[ebp-96],ebx
_662
	sub	esp,12
	mov	[esp+4],90
	mov	[esp+8],120
	mov	[esp],90
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-100]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-92]
	mov	[esp+8],esi
	mov	ebx,[ebp-96]
	mov	[esp+4],ebx
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-100]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-92]
	mov	[esp+8],esi
	mov	ebx,[ebp-96]
	mov	[esp+4],ebx
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_frect
	mov	[ebp-268],-1
	mov	[ebp-272],1
	jmp	_663
_664
	sub	esp,12
	mov	[esp+4],20
	mov	[esp+8],20
	mov	[esp],20
	call	_fcolor
	mov	ebx,[ebp-88]
	add	ebx,10
	mov	[ebp-276],ebx
	mov	ebx,[ebp-272]
	sub	ebx,1
	mov	esi,[ebp-40]
	add	esi,5
	imul	ebx,esi
	mov	esi,[ebp-96]
	add	esi,10
	add	esi,ebx
	mov	[ebp-280],esi
	mov	ebx,[ebp-92]
	sub	ebx,20
	mov	[ebp-284],ebx
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	ebx,[ebp-148]
	mov	[esp+4],ebx
	mov	esi,[ebp-144]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	mov	ebx,[ebp-272]
	sub	ebx,1
	cmp	eax,ebx
	jnz	_665
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],0
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
_665
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-148]
	mov	[esp+4],ebx
	mov	esi,[ebp-272]
	sub	esi,1
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetliststring
	mov	[esp+4],eax
	lea	ebx,[ebp-288]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	call	_fmousex
	cmp	eax,[ebp-276]
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	[ebp-316],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-316]
	cmp	ebx,[ebp-280]
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	[ebp-316],eax
	mov	eax,ebx
	call	_fmousex
	mov	ebx,eax
	mov	eax,[ebp-316]
	mov	esi,[ebp-276]
	add	esi,[ebp-284]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	[ebp-316],eax
	mov	eax,ebx
	call	_fmousey
	mov	ebx,eax
	mov	eax,[ebp-316]
	mov	esi,[ebp-280]
	add	esi,[ebp-40]
	cmp	ebx,esi
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_666
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],55
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-40]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_667
	mov	ebx,[ebp-272]
	sub	ebx,1
	mov	[ebp-268],ebx
_667
_666
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-288]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-284]
	sar	eax,byte 1
	add	eax,[ebp-276]
	mov	[esp],eax
	call	_ftext
	add	[ebp-272],1
_663
	mov	ebx,[ebp-256]
	cmp	[ebp-272],ebx
	jle	_664
_74
	call	_fmousex
	mov	[ebp-240],eax
	call	_fmousey
	mov	[ebp-244],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-240]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-244]
	mov	[esp+12],esi
	mov	esi,[ebp-244]
	mov	[esp+4],esi
	mov	eax,[ebp-240]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-240]
	mov	[esp+8],ebx
	mov	esi,[ebp-244]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-244]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-240]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	mov	ebx,[ebp-80]
	or	eax,ebx
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousehit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	and	eax,eax
	jz	_658
_73
	mov	ebx,[ebp-80]
	cmp	[ebp-268],-1
	setg	al
	movzx	eax,al
	and	ebx,eax
	and	ebx,ebx
	jz	_668
	sub	esp,28
	mov	ebx,[ebp-148]
	mov	[esp+4],ebx
	mov	esi,[ebp-268]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetliststring
	mov	[esp+12],eax
	mov	ebx,[ebp-144]
	mov	[esp+8],ebx
	mov	esi,[ebp-148]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetdatastringsimple
	sub	esp,8
	mov	eax,[ebp-248]
	mov	[esp],eax
	mov	ebx,[ebp-252]
	mov	[esp+4],ebx
	call	_fmovemouse
_668
	call	_fflushmouse
	call	_fflushkeys
_654
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	eax,[ebp-208]
	mov	[esp],eax
	call	_ffreeimage
_641
	mov	[ebp-92],150
	mov	[ebp-100],116
	mov	ebx,[ebp-104]
	and	ebx,ebx
	jz	_669
	add	[ebp-84],1
	mov	ebx,[ebp-72]
	mov	esi,[ebp-92]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-88],ebx
	mov	ebx,[ebp-76]
	mov	esi,[ebp-100]
	sar	esi,byte 1
	sub	ebx,esi
	mov	[ebp-96],ebx
	cmp	[ebp-84],2
	jnz	_670
	mov	[ebp-84],0
_670
_669
	mov	ebx,[ebp-84]
	and	ebx,ebx
	jz	_671
	cmp	[ebp-88],0
	jge	_672
	mov	[ebp-88],0
_672
	cmp	[ebp-96],0
	jge	_673
	mov	[ebp-96],0
_673
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-92]
	cmp	[ebp-88],ebx
	jle	_674
	mov	ebx,[ebp-20]
	sub	ebx,[ebp-92]
	mov	[ebp-88],ebx
_674
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-100]
	cmp	[ebp-96],ebx
	jle	_675
	mov	ebx,[ebp-24]
	sub	ebx,[ebp-100]
	mov	[ebp-96],ebx
_675
	sub	esp,12
	mov	[esp+4],150
	mov	[esp+8],150
	mov	[esp],150
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-100]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-92]
	mov	[esp+8],esi
	mov	ebx,[ebp-96]
	mov	[esp+4],ebx
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-100]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-92]
	mov	[esp+8],esi
	mov	ebx,[ebp-96]
	mov	[esp+4],ebx
	mov	eax,[ebp-88]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-88]
	add	ebx,10
	mov	[ebp-276],ebx
	mov	ebx,[ebp-96]
	add	ebx,10
	mov	[ebp-280],ebx
	mov	ebx,[ebp-92]
	sub	ebx,20
	mov	[ebp-284],ebx
	mov	ebx,[ebp-40]
	mov	[ebp-292],ebx
	sub	esp,8
	lea	eax,[ebp-296]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_676
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],80
	mov	[esp],80
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-296]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-284]
	sar	eax,byte 1
	add	eax,[ebp-276]
	mov	[esp],eax
	call	_ftext
	mov	eax,[ebp-276]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-276]
	add	ebx,[ebp-284]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	add	ebx,[ebp-292]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_677
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_678
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddrecord
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,[ebp-64]
	mov	[ebp-124],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[ebp-144],ebx
_678
_677
	cmp	[ebp-144],0
	jle	_679
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-280]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-280],esi
	sub	esp,8
	lea	eax,[ebp-296]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_680
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],80
	mov	[esp],80
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-296]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-284]
	sar	eax,byte 1
	add	eax,[ebp-276]
	mov	[esp],eax
	call	_ftext
	mov	eax,[ebp-276]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-276]
	add	ebx,[ebp-284]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	add	ebx,[ebp-292]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_681
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_682
	sub	esp,4
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_faddrecord
	sub	esp,12
	mov	ebx,[ebp-144]
	mov	[esp+4],ebx
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecords]
	mov	esi,[esi]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fcopyrecordsimple
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	sub	ebx,[ebp-64]
	mov	[ebp-124],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[ebp-144],ebx
_682
_681
_679
	cmp	[ebp-144],0
	jle	_683
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-280]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-280],esi
	sub	esp,8
	lea	eax,[ebp-296]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_684
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],80
	mov	[esp],80
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-296]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-284]
	sar	eax,byte 1
	add	eax,[ebp-276]
	mov	[esp],eax
	call	_ftext
	mov	eax,[ebp-276]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-276]
	add	ebx,[ebp-284]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	add	ebx,[ebp-292]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_685
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_686
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-144]
	mov	[esp+4],ebx
	call	_fdbrecordid
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	mov	[esp],ebx
	mov	eax,ebx
	call	_ffreerecord
	mov	ebx,eax
_686
_685
_683
	mov	ebx,[ebp-40]
	push	ebx
	fild	[esp]
	pop	ebx
	mov	esi,1069547520
	push	esi
	fld	[esp]
	pop	esi
	fmulp	st(1)
	mov	esi,[ebp-280]
	push	esi
	fild	[esp]
	pop	esi
	faddp	st(1)
	push	esi
	fistp	[esp]
	pop	esi
	mov	[ebp-280],esi
	sub	esp,8
	lea	eax,[ebp-296]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_687
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	sub	esp,12
	mov	[esp+4],80
	mov	[esp+8],80
	mov	[esp],80
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],0
	sub	esp,4
	lea	eax,[ebp-296]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-284]
	sar	eax,byte 1
	add	eax,[ebp-276]
	mov	[esp],eax
	call	_ftext
	mov	eax,[ebp-276]
	cmp	[ebp-72],eax
	setge	al
	movzx	eax,al
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setge	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-276]
	add	ebx,[ebp-284]
	cmp	[ebp-72],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	mov	[ebp-312],eax
	mov	ebx,[ebp-280]
	add	ebx,[ebp-292]
	cmp	[ebp-76],ebx
	mov	eax,ebx
	setl	al
	movzx	eax,al
	mov	ebx,eax
	mov	eax,[ebp-312]
	and	eax,ebx
	and	eax,eax
	jz	_688
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],0
	mov	[esp],255
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-292]
	mov	[esp+12],ebx
	mov	[esp+16],0
	mov	esi,[ebp-284]
	mov	[esp+8],esi
	mov	ebx,[ebp-280]
	mov	[esp+4],ebx
	mov	eax,[ebp-276]
	mov	[esp],eax
	call	_frect
	mov	ebx,[ebp-80]
	and	ebx,ebx
	jz	_689
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_690
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	_fsavedb
	mov	[ebp-300],eax
	mov	ebx,[ebp-300]
	and	ebx,ebx
	jz	_691
	sub	esp,8
	lea	eax,[ebp-304]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_692
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_693
_691
	sub	esp,8
	lea	eax,[ebp-304]
	mov	[esp],eax
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,_694
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[esp+4],ebx
	call	__bbStrStore
_693
	sub	esp,12
	mov	[esp+4],50
	mov	[esp+8],120
	mov	[esp],50
	call	_fcolor
	sub	esp,20
	mov	ebx,[ebp-24]
	mov	[esp+12],ebx
	mov	[esp+16],1
	mov	esi,[ebp-20]
	mov	[esp+8],esi
	mov	[esp+4],0
	mov	[esp],0
	call	_frect
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,4
	mov	eax,[ebp-36]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,20
	mov	[esp+12],1
	mov	[esp+16],1
	sub	esp,4
	lea	eax,[ebp-304]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	ebx,[ebp-24]
	sar	ebx,byte 1
	mov	[esp+4],ebx
	mov	eax,[ebp-20]
	sar	eax,byte 1
	mov	[esp],eax
	call	_ftext
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_fsetfont
	sub	esp,4
	mov	[esp],1
	call	_fflip
_695
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],57
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],26
	mov	eax,ebx
	call	_fkeyhit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],1
	mov	eax,ebx
	call	_fmousehit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	mov	[ebp-312],eax
	sub	esp,4
	mov	[esp],2
	mov	eax,ebx
	call	_fmousehit
	mov	ebx,eax
	mov	eax,[ebp-312]
	or	eax,ebx
	and	eax,eax
	jz	_695
_75
	call	_fflushkeys
	call	_fflushmouse
_689
_688
_671
	cmp	[ebp-144],1
	jge	_696
	mov	[ebp-144],1
_696
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-144],ebx
	jle	_697
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	mov	[ebp-144],ebx
_697
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_698
	mov	[ebp-144],0
	mov	[ebp-148],0
_698
	cmp	[ebp-84],0
	jnz	_699
	mov	[ebp-144],0
	mov	[ebp-148],0
_699
	call	_fmousex
	mov	[ebp-240],eax
	call	_fmousey
	mov	[ebp-244],eax
	sub	esp,12
	mov	[esp+4],255
	mov	[esp+8],255
	mov	[esp],255
	call	_fcolor
	sub	esp,16
	mov	ebx,[ebp-240]
	add	ebx,1
	mov	[esp+8],ebx
	mov	esi,[ebp-244]
	mov	[esp+12],esi
	mov	esi,[ebp-244]
	mov	[esp+4],esi
	mov	eax,[ebp-240]
	sub	eax,1
	mov	[esp],eax
	call	_fline
	sub	esp,16
	mov	ebx,[ebp-240]
	mov	[esp+8],ebx
	mov	esi,[ebp-244]
	add	esi,1
	mov	[esp+12],esi
	mov	esi,[ebp-244]
	sub	esi,1
	mov	[esp+4],esi
	mov	eax,[ebp-240]
	mov	[esp],eax
	call	_fline
	sub	esp,4
	mov	[esp],1
	call	_fflip
	sub	esp,4
	mov	[esp],1
	call	_fkeyhit
	mov	[ebp-308],eax
	mov	ebx,[ebp-308]
	mov	esi,[ebp-84]
	and	ebx,esi
	and	ebx,ebx
	jz	_700
	mov	[ebp-84],0
	mov	[ebp-308],0
_700
	mov	ebx,[ebp-308]
	and	ebx,ebx
	jz	_596
_68
	call	_fflushkeys
	sub	esp,4
	mov	eax,[ebp-32]
	mov	[esp],eax
	call	_ffreefont
	sub	esp,4
	mov	eax,[ebp-4]
	mov	[esp],eax
	call	_fsetbuffer
	sub	esp,12
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	mov	esi,[ebp-16]
	mov	[esp+8],esi
	mov	eax,[ebp-8]
	mov	[esp],eax
	call	_fcolor
	sub	esp,16
	mov	[esp+8],0
	mov	[esp+12],0
	mov	[esp+4],0
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_fdrawblock
	sub	esp,4
	mov	eax,[ebp-28]
	mov	[esp],eax
	call	_ffreeimage
	mov	eax,0
	jmp	_67_leave
_67_leave
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp-296]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	esi,[ebp-304]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	esi,[ebp-288]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp-264]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	esi,[ebp-232]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp-216]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	esi,[ebp-212]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	ebx,[ebp-204]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-312]
	mov	[ebp-312],eax
	sub	esp,4
	mov	esi,[ebp-136]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-312]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 4
	.align	16
_ffindfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	[ebp-8],1
	jmp	_701
_702
	mov	ebx,_adbfieldlen
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldlen]
	mov	ebx,[ebx]
	cmp	ebx,[ebp-4]
	jnz	_703
	sub	esp,12
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,_adbfield
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-8]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfield]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_704
	mov	eax,[ebp-8]
	jmp	_76_leave
_704
_703
	add	[ebp-8],1
_701
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jle	_702
_77
	mov	eax,0
	jmp	_76_leave
_76_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_ffindrecordbyid
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
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	jmp	_705
_706
	mov	ebx,_adbrecordcacheid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jnz	_707
	mov	eax,_adbrecordcacheindex
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordcacheindex]
	mov	eax,[eax]
	jmp	_78_leave
_707
	add	[ebp-4],-1
_705
	cmp	[ebp-4],1
	jge	_706
_79
	mov	ebx,[ebp+24]
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbdels]
	mov	esi,[esi]
	add	esi,1
	sub	ebx,esi
	mov	[ebp-8],ebx
	cmp	[ebp-8],1
	jge	_708
	mov	[ebp-8],1
_708
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-8],ebx
	jg	_709
	mov	ebx,[ebp-8]
	mov	[ebp-12],ebx
	jmp	_710
_711
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fdbrecordid
	cmp	eax,[ebp+24]
	jnz	_712
	mov	eax,[ebp-12]
	jmp	_78_leave
_712
	add	[ebp-12],1
_710
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecords]
	mov	ebx,[ebx]
	cmp	[ebp-12],ebx
	jle	_711
_80
_709
	mov	[ebp-12],1
	jmp	_713
_714
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp-12]
	mov	[esp+4],ebx
	call	_fdbrecordid
	cmp	eax,[ebp+24]
	jnz	_715
	mov	eax,[ebp-12]
	jmp	_78_leave
_715
	add	[ebp-12],1
_713
	mov	ebx,[ebp-8]
	cmp	[ebp-12],ebx
	jle	_714
_81
	mov	eax,0
	jmp	_78_leave
_78_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fgetdatasimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_716
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	jmp	_82_leave
_716
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_717
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsbytefromdb
	jmp	_82_leave
_717
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_718
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshortfromdb
	jmp	_82_leave
_718
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_719
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsshortfromdb
	jmp	_82_leave
_719
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_720
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadintfromdb
	jmp	_82_leave
_720
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_721
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadfloatfromdb
	push	eax
	fistp	[esp]
	pop	eax
	jmp	_82_leave
_721
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_722
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	jmp	_82_leave
_722
	mov	eax,0
	jmp	_82_leave
_82_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fgetdatafloatsimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_723
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	push	eax
	fild	[esp]
	pop	eax
	jmp	_83_leave
_723
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_724
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsbytefromdb
	push	eax
	fild	[esp]
	pop	eax
	jmp	_83_leave
_724
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_725
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshortfromdb
	push	eax
	fild	[esp]
	pop	eax
	jmp	_83_leave
_725
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_726
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsshortfromdb
	push	eax
	fild	[esp]
	pop	eax
	jmp	_83_leave
_726
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_727
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadintfromdb
	push	eax
	fild	[esp]
	pop	eax
	jmp	_83_leave
_727
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_728
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadfloatfromdb
	jmp	_83_leave
_728
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_729
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	push	eax
	fild	[esp]
	pop	eax
	jmp	_83_leave
_729
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_83_leave
_83_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fgetdatastringsimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_730
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	mov	[esp],eax
	call	__bbStrFromInt
	jmp	_84_leave
_730
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_731
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsbytefromdb
	mov	[esp],eax
	call	__bbStrFromInt
	jmp	_84_leave
_731
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_732
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadshortfromdb
	mov	[esp],eax
	call	__bbStrFromInt
	jmp	_84_leave
_732
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_733
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadsshortfromdb
	mov	[esp],eax
	call	__bbStrFromInt
	jmp	_84_leave
_733
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_734
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadintfromdb
	mov	[esp],eax
	call	__bbStrFromInt
	jmp	_84_leave
_734
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_735
	sub	esp,16
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadfloatfromdb
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp],eax
	call	__bbStrFromFloat
	jmp	_84_leave
_735
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_736
	sub	esp,12
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadstringfromdb
	jmp	_84_leave
_736
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_737
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_freadbytefromdb
	mov	[esp+8],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetliststring
	jmp	_84_leave
_737
	sub	esp,4
	mov	eax,_738
	mov	[esp],eax
	call	__bbStrConst
	jmp	_84_leave
_84_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fsetdatasimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_739
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
	mov	eax,0
	jmp	_85_leave
_739
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_740
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesbytetodb
	mov	eax,0
	jmp	_85_leave
_740
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_741
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteshorttodb
	mov	eax,0
	jmp	_85_leave
_741
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_742
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesshorttodb
	mov	eax,0
	jmp	_85_leave
_742
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_743
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteinttodb
	mov	eax,0
	jmp	_85_leave
_743
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_744
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,4
	mov	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrFromInt
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritestringtodb
	mov	eax,0
	jmp	_85_leave
_744
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_745
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
	mov	eax,0
	jmp	_85_leave
_745
	mov	eax,0
	jmp	_85_leave
_85_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fsetdatafloatsimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_746
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
	mov	eax,0
	jmp	_86_leave
_746
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_747
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesbytetodb
	mov	eax,0
	jmp	_86_leave
_747
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_748
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteshorttodb
	mov	eax,0
	jmp	_86_leave
_748
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_749
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesshorttodb
	mov	eax,0
	jmp	_86_leave
_749
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_750
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteinttodb
	mov	eax,0
	jmp	_86_leave
_750
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_751
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritefloattodb
	mov	eax,0
	jmp	_86_leave
_751
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_752
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+32]
	push	esi
	fld	[esp]
	pop	esi
	push	esi
	fistp	[esp]
	pop	esi
	mov	[esp+12],esi
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
	mov	eax,0
	jmp	_86_leave
_752
	mov	eax,0
	jmp	_86_leave
_86_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fsetdatastringsimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,0
	jnz	_753
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
	mov	eax,0
	jmp	_87_leave
_753
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,1
	jnz	_754
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesbytetodb
	mov	eax,0
	jmp	_87_leave
_754
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,2
	jnz	_755
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteshorttodb
	mov	eax,0
	jmp	_87_leave
_755
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,3
	jnz	_756
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritesshorttodb
	mov	eax,0
	jmp	_87_leave
_756
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,4
	jnz	_757
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToInt
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwriteinttodb
	mov	eax,0
	jmp	_87_leave
_757
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,5
	jnz	_758
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrToFloat
	push	eax
	fstp	[esp]
	pop	eax
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritefloattodb
	mov	eax,0
	jmp	_87_leave
_758
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jnz	_759
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+12],eax
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritestringtodb
	mov	eax,0
	jmp	_87_leave
_759
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,7
	jnz	_760
	sub	esp,28
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+8],eax
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbgetlistvalue
	mov	[esp+12],eax
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	mov	esi,[ebp+24]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fwritebytetodb
	mov	eax,0
	jmp	_87_leave
_760
	mov	eax,0
	jmp	_87_leave
_87_leave
	mov	[ebp-4],eax
	sub	esp,4
	mov	ebx,[ebp+32]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-4]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_freadbytefromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	jmp	_88_leave
	mov	eax,0
	jmp	_88_leave
_88_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadsbytefromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	eax,ebx
	sub	eax,128
	mov	ebx,eax
	jmp	_89_leave
	mov	eax,0
	jmp	_89_leave
_89_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadshortfromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-8],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 8
	add	eax,[ebp-8]
	jmp	_90_leave
	mov	eax,0
	jmp	_90_leave
_90_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadsshortfromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-8],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 8
	add	eax,[ebp-8]
	sub	eax,32768
	jmp	_91_leave
	mov	eax,0
	jmp	_91_leave
_91_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadintfromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekint
	mov	ebx,eax
	jmp	_92_leave
	mov	eax,0
	jmp	_92_leave
_92_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadfloatfromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekfloat
	mov	ebx,eax
	jmp	_93_leave
	mov	ebx,0
	push	ebx
	fld	[esp]
	pop	ebx
	jmp	_93_leave
_93_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_freadstringfromdb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	shl	ebx,byte 8
	add	ebx,[ebp-8]
	mov	[ebp-12],ebx
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	ebx,[ebx]
	cmp	[ebp-12],ebx
	jle	_761
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	ebx,[ebx]
	mov	[ebp-12],ebx
_761
	cmp	[ebp-12],0
	jnz	_762
	sub	esp,4
	mov	eax,_763
	mov	[esp],eax
	call	__bbStrConst
	jmp	_94_leave
_762
	mov	[ebp-16],1
	jmp	_764
_765
	sub	esp,40
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,[ebp-16]
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[esp],ebx
	mov	eax,ebx
	call	_fchr
	mov	ebx,eax
	mov	[esp+4],ebx
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	add	[ebp-16],1
_764
	mov	ebx,[ebp-12]
	cmp	[ebp-16],ebx
	jle	_765
_95
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_94_leave
	sub	esp,4
	mov	eax,_766
	mov	[esp],eax
	call	__bbStrConst
	jmp	_94_leave
_94_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fwritebytetodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+32],0
	jge	_767
	mov	[ebp+32],0
_767
	cmp	[ebp+32],255
	jle	_768
	mov	[ebp+32],255
_768
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	mov	eax,0
	jmp	_96_leave
_96_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritesbytetodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	cmp	[ebp+32],-128
	jge	_769
	mov	[ebp+32],-128
_769
	cmp	[ebp+32],127
	jle	_770
	mov	[ebp+32],127
_770
	add	[ebp+32],128
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	mov	eax,0
	jmp	_97_leave
_97_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwriteshorttodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+32],65535
	jle	_771
	mov	[ebp+32],65535
_771
	cmp	[ebp+32],0
	jge	_772
	mov	[ebp+32],0
_772
	mov	ebx,[ebp+32]
	sar	ebx,byte 8
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-8],eax
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	mov	eax,0
	jmp	_98_leave
_98_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritesshorttodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	cmp	[ebp+32],32767
	jle	_773
	mov	[ebp+32],32767
_773
	cmp	[ebp+32],-32768
	jge	_774
	mov	[ebp+32],-32768
_774
	add	[ebp+32],32768
	cmp	[ebp+32],0
	jge	_775
	mov	[ebp+32],0
_775
	mov	ebx,[ebp+32]
	sar	ebx,byte 8
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp+32]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-8],eax
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp-4]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	mov	eax,0
	jmp	_99_leave
_99_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwriteinttodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokeint
	mov	ebx,eax
	mov	eax,0
	jmp	_100_leave
_100_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritefloattodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+32]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokefloat
	mov	ebx,eax
	mov	eax,0
	jmp	_101_leave
_101_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 16
	.align	16
_fwritestringtodb
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,28
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	sub	esp,8
	lea	eax,[ebp+32]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	[ebp-4],eax
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_776
	mov	ebx,_adbfieldsize
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldsize]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
_776
	mov	ebx,[ebp-4]
	sar	ebx,byte 8
	mov	[ebp-8],ebx
	sub	esp,8
	mov	eax,[ebp-4]
	mov	[esp],eax
	mov	[esp+4],256
	call	__bbMod
	mov	[ebp-12],eax
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp-8]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp-12]
	mov	[esp+8],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	mov	[ebp-16],1
	jmp	_777
_778
	sub	esp,24
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,[ebp-16]
	add	eax,1
	mov	[esp+4],eax
	mov	[ebp-20],eax
	sub	esp,4
	mov	[ebp-24],eax
	sub	esp,12
	mov	ebx,[ebp-16]
	mov	[esp+4],ebx
	mov	[esp+8],1
	mov	[ebp-28],eax
	sub	esp,4
	lea	esi,[ebp+32]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrLoad
	mov	esi,eax
	mov	eax,[ebp-28]
	mov	[esp],esi
	mov	eax,esi
	call	_fmid
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[esp],esi
	mov	eax,esi
	call	_fasc
	mov	esi,eax
	mov	eax,[ebp-20]
	mov	[esp+8],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpokebyte
	mov	ebx,eax
	add	[ebp-16],1
_777
	mov	ebx,[ebp-4]
	cmp	[ebp-16],ebx
	jle	_778
_103
	mov	eax,0
	jmp	_102_leave
_102_leave
	mov	[ebp-20],eax
	sub	esp,4
	mov	ebx,[ebp+32]
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
	ret	word 16
	.align	16
_fstringlength
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	ebx,_adbfieldtype
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldtype]
	mov	ebx,[ebx]
	cmp	ebx,6
	jz	_779
	mov	eax,0
	jmp	_104_leave
_779
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-4],ebx
	sub	esp,20
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	mov	esi,[ebp+28]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fdbdatalocation
	add	eax,1
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekbyte
	mov	ebx,eax
	mov	[ebp-8],ebx
	mov	eax,[ebp-4]
	shl	eax,byte 8
	add	eax,[ebp-8]
	jmp	_104_leave
	mov	eax,0
	jmp	_104_leave
_104_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fcopyrecordsimple
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-4],1
	jmp	_780
_781
	sub	esp,20
	mov	ebx,[ebp-4]
	mov	[esp+4],ebx
	mov	esi,[ebp+24]
	mov	[esp+8],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fgetdatastringsimple
	mov	[esp+4],eax
	lea	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
	sub	esp,16
	mov	ebx,[ebp+28]
	mov	[esp+8],ebx
	sub	esp,4
	lea	eax,[ebp-8]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp+12],eax
	mov	esi,[ebp-4]
	mov	[esp+4],esi
	mov	eax,[ebp+20]
	mov	[esp],eax
	call	_fsetdatastringsimple
	add	[ebp-4],1
_780
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_781
_106
	mov	eax,0
	jmp	_105_leave
_105_leave
	mov	[ebp-12],eax
	sub	esp,4
	mov	ebx,[ebp-8]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-12]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_faddfield
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	[ebp-4],0
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	and	ebx,ebx
	jz	_782
	sub	esp,8
	mov	eax,_783
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	call	_fruntimeerror
_782
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	cmp	ebx,64
	jnz	_784
	sub	esp,24
	mov	eax,_785
	mov	[esp],eax
	call	__bbStrConst
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_786
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp],eax
	call	_fruntimeerror
_784
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfields]
	mov	[esi],ebx
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfields]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,_adbfield
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfield]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	ebx,[ebp+28]
	mov	esi,_adbfieldtype
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfieldtype]
	mov	[esi],ebx
	sub	esp,8
	lea	eax,[ebp+24]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	mov	ebx,_adbfieldlen
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldlen]
	mov	[ebx],eax
	cmp	[ebp+28],7
	jnz	_787
	sub	esp,8
	mov	eax,_adbfieldlist
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfieldlist]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	lea	ebx,[ebp+36]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
	jmp	_788
_787
	sub	esp,8
	mov	eax,_adbfieldlist
	add	eax,12
	mov	eax,[eax]
	imul	eax,[ebp-4]
	add	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbfieldlist]
	mov	[esp],eax
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,_789
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[esp+4],ebx
	call	__bbStrStore
_788
	cmp	[ebp+28],6
	jnz	_790
	mov	ebx,[ebp+32]
	add	ebx,2
	mov	esi,_adbfieldsize
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfieldsize]
	mov	[esi],ebx
	jmp	_791
_790
	mov	ebx,0
	mov	esi,_adbfieldsize
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbfieldsize]
	mov	[esi],ebx
_791
	mov	eax,0
	jmp	_107_leave
_107_leave
	mov	[ebp-8],eax
	sub	esp,4
	mov	ebx,[ebp+24]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-8]
	mov	[ebp-8],eax
	sub	esp,4
	mov	esi,[ebp+36]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-8]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 20
	.align	16
_fdbgetliststring
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_adbfieldlist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldlist]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_792
_793
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
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
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_795
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_794
	add	[ebp-16],1
	mov	ebx,[ebp+28]
	add	ebx,1
	cmp	[ebp-16],ebx
	jnz	_796
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_108_leave
	jmp	_797
_796
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_798
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
_797
	jmp	_799
_794
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_799
	add	[ebp-8],1
_792
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_793
_109
	mov	ebx,[ebp+28]
	cmp	[ebp-16],ebx
	jnz	_800
	sub	esp,4
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	jmp	_108_leave
_800
	sub	esp,4
	mov	eax,_801
	mov	[esp],eax
	call	__bbStrConst
	jmp	_108_leave
_108_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fdbgetlistvalue
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,24
	mov	ebx,0
	mov	[ebp-4],ebx
	mov	[ebp-8],ebx
	mov	[ebp-12],ebx
	mov	[ebp-16],ebx
	mov	[ebp-20],ebx
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_adbfieldlist
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldlist]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
	mov	[ebp-8],1
	jmp	_802
_803
	sub	esp,20
	mov	ebx,[ebp-8]
	mov	[esp+4],ebx
	mov	[esp+8],1
	sub	esp,4
	lea	eax,[ebp-4]
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
	sub	esp,12
	lea	eax,[ebp-12]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_805
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_804
	add	[ebp-16],1
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_806
	mov	eax,[ebp-16]
	sub	eax,1
	jmp	_110_leave
	jmp	_807
_806
	sub	esp,8
	lea	eax,[ebp-20]
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,_808
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrConst
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrStore
_807
	jmp	_809
_804
	sub	esp,20
	lea	eax,[ebp-20]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrConcat
	mov	[esp+4],eax
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrStore
	mov	ebx,eax
_809
	add	[ebp-8],1
_802
	sub	esp,8
	lea	eax,[ebp-4]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	call	_flen
	cmp	[ebp-8],eax
	jle	_803
_111
	sub	esp,12
	lea	eax,[ebp+28]
	mov	[esp],eax
	call	__bbStrLoad
	mov	[esp],eax
	mov	[ebp-24],eax
	sub	esp,4
	lea	ebx,[ebp-20]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrLoad
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[esp+4],ebx
	call	__bbStrCompare
	cmp	eax,0
	jnz	_810
	mov	eax,[ebp-16]
	jmp	_110_leave
_810
	mov	eax,0
	jmp	_110_leave
_110_leave
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp-12]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-20]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	esi,[ebp-4]
	mov	[esp],esi
	mov	eax,esi
	call	__bbStrRelease
	mov	esi,eax
	mov	eax,[ebp-24]
	mov	[ebp-24],eax
	sub	esp,4
	mov	ebx,[ebp+28]
	mov	[esp],ebx
	mov	eax,ebx
	call	__bbStrRelease
	mov	ebx,eax
	mov	eax,[ebp-24]
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_fdbrecordid
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,16
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fdbrecordlocation
	mov	[esp+4],eax
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbbank]
	mov	ebx,[ebx]
	mov	[esp],ebx
	mov	eax,ebx
	call	_fpeekint
	mov	ebx,eax
	jmp	_112_leave
	mov	eax,0
	jmp	_112_leave
_112_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdbrecordlocation
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	mov	eax,[ebp+20]
	shl	eax,byte 2
	add	eax,[_adbrecordsize]
	mov	eax,[eax]
	mov	ebx,[ebp+24]
	sub	ebx,1
	imul	eax,ebx
	jmp	_113_leave
	mov	eax,0
	jmp	_113_leave
_113_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	16
_fdbdatalocation
	push	ebx
	push	esi
	push	edi
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+28]
	mov	[esp+4],ebx
	call	_fdbrecordlocation
	mov	ebx,_adbfieldoffset
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp+24]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbfieldoffset]
	mov	ebx,[ebx]
	add	ebx,eax
	mov	eax,ebx
	sub	eax,0
	mov	ebx,eax
	jmp	_114_leave
	mov	eax,0
	jmp	_114_leave
_114_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 12
	.align	16
_faddrecordtocache
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
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	ebx,0
	jle	_811
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jnz	_812
	mov	eax,0
	jmp	_115_leave
_812
	mov	[ebp-4],1
	jmp	_813
_814
	mov	ebx,_adbrecordcacheindex
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	cmp	ebx,[ebp+24]
	jnz	_815
	mov	ebx,_adbrecordcacheid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	ebx,[ebx]
	mov	[ebp-8],ebx
	mov	ebx,[ebp-4]
	mov	[ebp-12],ebx
	jmp	_816
_817
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheid]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheindex]
	mov	[esi],ebx
	add	[ebp-12],1
_816
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	sub	ebx,1
	cmp	[ebp-12],ebx
	jle	_817
_117
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	esi,[ebp-8]
	mov	[ebx],esi
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	esi,[ebp+24]
	mov	[ebx],esi
	mov	eax,0
	jmp	_115_leave
_815
	add	[ebp-4],1
_813
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	[ebp-4],ebx
	jle	_814
_116
_811
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	cmp	ebx,200
	jnz	_818
	mov	[ebp-12],1
	jmp	_819
_820
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheid
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheid]
	mov	[esi],ebx
	mov	ebx,[ebp-12]
	add	ebx,1
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	ebx,esi
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheindex]
	mov	ebx,[ebx]
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-12]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheindex]
	mov	[esi],ebx
	add	[ebp-12],1
_819
	cmp	[ebp-12],199
	jle	_820
_118
	jmp	_821
_818
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	add	ebx,1
	mov	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordsincache]
	mov	[esi],ebx
_821
	mov	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordsincache]
	mov	ebx,[ebx]
	mov	[ebp-4],ebx
	sub	esp,8
	mov	eax,[ebp+20]
	mov	[esp],eax
	mov	ebx,[ebp+24]
	mov	[esp+4],ebx
	call	_fdbrecordid
	mov	ebx,_adbrecordcacheid
	add	ebx,12
	mov	ebx,[ebx]
	imul	ebx,[ebp-4]
	add	ebx,[ebp+20]
	shl	ebx,byte 2
	add	ebx,[_adbrecordcacheid]
	mov	[ebx],eax
	mov	ebx,[ebp+24]
	mov	esi,_adbrecordcacheindex
	add	esi,12
	mov	esi,[esi]
	imul	esi,[ebp-4]
	add	esi,[ebp+20]
	shl	esi,byte 2
	add	esi,[_adbrecordcacheindex]
	mov	[esi],ebx
	mov	eax,0
	jmp	_115_leave
_115_leave
	mov	esp,ebp
	pop	ebp
	pop	edi
	pop	esi
	pop	ebx
	ret	word 8
	.align	4
_vdbs	.dd	0
	.align	4
_adbidat	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbname	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_adbactive	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbbank	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbfields	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbrecordsize	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbrecords	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbdels	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbfield	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adbfieldlist	.dd	0
	.dd	3
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adbfieldlen	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adbfieldtype	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adbfieldsize	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adbfieldoffset	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_vbasicdbmemoryusage	.dd	0
	.align	4
_vdbmaxqueries	.dd	0
	.align	4
_vdbqueries	.dd	0
	.align	4
_adbqueryop	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbqueryfield	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbqueryvalstring	.dd	0
	.dd	3
	.dd	1
	.dd	0
	.align	4
_adbqueryvalfloat	.dd	0
	.dd	2
	.dd	1
	.dd	0
	.align	4
_adbqueryvalint	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_vdblistedrecords	.dd	0
	.align	4
_adblistedrecord	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbrecordsincache	.dd	0
	.dd	1
	.dd	1
	.dd	0
	.align	4
_adbrecordcacheid	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
	.align	4
_adbrecordcacheindex	.dd	0
	.dd	1
	.dd	2
	.dd	0
	.dd	0
_119	.db	"Database Demo",0
_120	.db	"",0
_121	.db	"Items",0
_122	.db	"Name",0
_123	.db	"Type",0
_124	.db	"Weapon,Armour,Potion,Loot",0
_125	.db	"Level",0
_126	.db	"Cost",0
_127	.db	"Weight",0
_128	.db	"Name",0
_129	.db	"Longsword",0
_130	.db	"Type",0
_131	.db	"Weapon",0
_132	.db	"Level",0
_133	.db	"Cost",0
_134	.db	"Weight",0
_135	.db	"Name",0
_136	.db	"Chainmail",0
_137	.db	"Type",0
_138	.db	"Armour",0
_139	.db	"Level",0
_140	.db	"Cost",0
_141	.db	"Weight",0
_142	.db	"Name",0
_143	.db	"Elixir",0
_144	.db	"Type",0
_145	.db	"Potion",0
_146	.db	"Level",0
_147	.db	"Cost",0
_148	.db	"Weight",0
_149	.db	"Name",0
_150	.db	"Jewel",0
_151	.db	"Type",0
_152	.db	"Loot",0
_153	.db	"Level",0
_154	.db	"Cost",0
_155	.db	"Weight",0
_156	.db	"Name",0
_157	.db	"Platemail",0
_158	.db	"Type",0
_159	.db	"Armour",0
_160	.db	"Level",0
_161	.db	"Cost",0
_162	.db	"Weight",0
_163	.db	"Name",0
_164	.db	"Gold Nugget",0
_165	.db	"Type",0
_166	.db	"Loot",0
_167	.db	"Level",0
_168	.db	"Cost",0
_169	.db	"Weight",0
_170	.db	"Name",0
_171	.db	"Staff",0
_172	.db	"Type",0
_173	.db	"Weapon",0
_174	.db	"Level",0
_175	.db	"Cost",0
_176	.db	"Weight",0
_177	.db	"A small demo database has been prepared.  Select an option:",0
_178	.db	"",0
_179	.db	"ESC: Quit",0
_180	.db	"1: Edit database",0
_181	.db	"2: Measure database & do time trial (Requires the longsword to be still in the database)",0
_185	.db	"ADJUSTABLE ALLOCATION CONSTANTS:",0
_186	.db	"Current MaxDBs = 32",0
_187	.db	"Current MaxFields = 64",0
_188	.db	"The database library itself currently uses up ",0
_189	.db	" kilobytes.  (Depends on MaxDBs and MaxFields)",0
_190	.db	"",0
_191	.db	"USED BY DEMO DATABASE:",0
_192	.db	"Fields = ",0
_193	.db	"Records = ",0
_194	.db	"",0
_195	.db	"",0
_196	.db	"The demo database bank is ",0
_197	.db	" bytes. (",0
_198	.db	" kilobytes)",0
_199	.db	"There are ",0
_200	.db	" records in this demo database and each record takes up ",0
_201	.db	" bytes.",0
_202	.db	"MAIN FUNCTION EXECUTION TIME TRIALS:",0
_203	.db	"",0
_206	.db	"Cost",0
_207	.db	"GetData() - ",0
_208	.db	" times per second",0
_211	.db	"Cost",0
_212	.db	"SetData() - ",0
_213	.db	" times per second",0
_214	.db	"",0
_215	.db	"SEEK FUNCTION EXECUTION TIME TRIALS:",0
_216	.db	"",0
_219	.db	"Level",0
_220	.db	"1",0
_221	.db	"FindRecord() - ",0
_222	.db	" times per second (SEARCHING BY A NUMERIC FIELD)",0
_225	.db	"Name",0
_226	.db	"Longsword",0
_227	.db	"FindRecord() - ",0
_228	.db	" times per second (SEARCHING BY A STRING FIELD)",0
_229	.db	"",0
_230	.db	"QUERY FUNCTION EXECUTION TIME TRIALS:",0
_231	.db	"",0
_234	.db	"Level=1",0
_235	.db	"ListRecords() (QUERY!!) - ",0
_236	.db	" times per second (using simple query: ",0
_237	.db	"Level=1",0
_238	.db	")",0
_239	.db	"",0
_240	.db	"",0
_241	.db	"Note: Execution speeds of ListRecords() will be slower with bigger databases.",0
_242	.db	"",0
_246	.db	",",0
_248	.db	"",0
_249	.db	"",0
_250	.db	"",0
_253	.db	"<",0
_254	.db	"=",0
_255	.db	">",0
_262	.db	"=",0
_264	.db	"<",0
_266	.db	">",0
_268	.db	"<=",0
_269	.db	"=<",0
_271	.db	"=>",0
_272	.db	">=",0
_274	.db	"<>",0
_275	.db	"><",0
_284	.db	"",0
_415	.db	"Out of database space.",0
_417	.db	"Cannot build a database with no fields.",0
_428	.db	"",0
_429	.db	"",0
_430	.db	"",0
_431	.db	"",0
_432	.db	"",0
_433	.db	"",0
_434	.db	"",0
_446	.db	"",0
_449	.db	"Database doesn't contain specified record. (FindRecord)",0
_462	.db	"Database doesn't contain specified record.1",0
_464	.db	"Database doesn't contain specified field (`",0
_465	.db	"').",0
_467	.db	"Database doesn't contain specified record.2",0
_469	.db	"Database doesn't contain specified field (`",0
_470	.db	"').",0
_472	.db	"Database doesn't contain specified record.3",0
_474	.db	"Database doesn't contain specified field (`",0
_475	.db	"').",0
_477	.db	"Database doesn't contain specified record.4",0
_479	.db	"Database doesn't contain specified field (`",0
_480	.db	"').",0
_482	.db	"Database doesn't contain specified record.5",0
_484	.db	"Database doesn't contain specified field (`",0
_485	.db	"').",0
_487	.db	"Database doesn't contain specified record.6",0
_489	.db	"Database doesn't contain specified field (`",0
_490	.db	"').",0
_491	.db	"",0
_493	.db	"Database doesn't contain specified field (`",0
_494	.db	"').",0
_562	.db	"No such database for FreeDB.",0
_564	.db	"No such database for FreeDB.",0
_565	.db	"",0
_572	.db	"",0
_580	.db	"verdana",0
_585	.db	" (",0
_586	.db	")",0
_592	.db	"Database doesnt exist",0
_593	.db	"verdana",0
_594	.db	"verdana",0
_632	.db	"",0
_634	.db	"Unnamed",0
_635	.db	"Database: `",0
_636	.db	"'",0
_637	.db	"Fields: ",0
_638	.db	"Records: ",0
_640	.db	" x ",0
_647	.db	"_",0
_649	.db	"",0
_657	.db	"",0
_676	.db	"New Record",0
_680	.db	"Clone Record",0
_684	.db	"Delete Record",0
_687	.db	"Save Database",0
_690	.db	"Database.db",0
_692	.db	"Successfully exported database to Database.db",0
_694	.db	"Failed to write file!",0
_738	.db	"",0
_763	.db	"",0
_766	.db	"",0
_783	.db	"Cannot add fields to a finalized database.",0
_785	.db	"Database has reached field limit. (While adding `",0
_786	.db	"')",0
_789	.db	"",0
_795	.db	",",0
_798	.db	"",0
_801	.db	"",0
_805	.db	",",0
_808	.db	"",0
	.align	4
__LIBS
	.db	"",0
	.align	4
__DATA
	.dd	0

