	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38
.frame2
	db $01 ; bitmask
	db $39, $3a, $3b, $3c, $3d, $3e, $31, $32, $3f, $40, $34, $35, $36, $37, $38
.frame3
	db $02 ; bitmask
	db $39, $3a, $3b, $3c, $3d, $3e, $31, $32, $3f, $40, $34, $35, $41, $42, $43, $37, $38, $44, $45, $46, $47
.frame4
	db $02 ; bitmask
	db $39, $3a, $3b, $3c, $3d, $3e, $31, $32, $3f, $40, $34, $35, $48, $42, $43, $37, $38, $49, $45, $46, $47
.frame5
	db $02 ; bitmask
	db $39, $4a, $3b, $3c, $4b, $3e, $31, $32, $3f, $40, $34, $35, $41, $42, $43, $37, $38, $44, $45, $46, $47
.frame6
	db $02 ; bitmask
	db $39, $3a, $3b, $3c, $3d, $3e, $31, $4c, $3f, $40, $34, $4d, $41, $42, $43, $37, $38, $44, $45, $46, $47
.frame7
	db $02 ; bitmask
	db $39, $4a, $3b, $3c, $4b, $3e, $31, $4c, $3f, $40, $34, $4d, $48, $42, $43, $37, $38, $49, $45, $46, $47
