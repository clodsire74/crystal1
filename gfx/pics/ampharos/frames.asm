	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $00, $31, $00, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $00
.frame2
	db $01 ; bitmask
	db $00, $00, $00, $00, $45, $46, $35, $36, $37, $38, $39, $3a, $47, $48, $49, $3c, $3d, $3e, $3f, $4a, $4b, $4c, $40, $41, $4d, $4e, $4f, $42, $43, $50, $51, $44, $00
.frame3
	db $02 ; bitmask
	db $00, $00, $00, $00, $52, $46, $35, $36, $37, $38, $39, $3a, $53, $3b, $3c, $3d, $3e, $3f, $54, $55, $40, $41, $42, $43, $44, $00
.frame4
	db $03 ; bitmask
	db $53, $55
.frame5
	db $04 ; bitmask
	db $36, $37, $3b, $3c, $42, $43, $44, $00
.frame6
	db $05 ; bitmask
	db $36, $37, $53, $3b, $3c, $55, $42, $43, $44, $00
