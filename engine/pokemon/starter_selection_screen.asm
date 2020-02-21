NUM_BASIC_MON EQU 8
NUM_ROCKET_MON EQU 3
NUM_ANIME_MON EQU 3
NUM_COMMON_MON EQU 13
NUM_UNCOMMON_MON EQU 69
NUM_TRADE_MON EQU 4
NUM_PSEUDO_LEGEND_MON EQU 2
NUM_BABY_MON EQU 9
NUM_CHALLENGE_MON EQU 6

INCLUDE "data/starters.asm"

StarterSelectionScreenInit:
	ld hl, StarterSelectionScreenMain
	jr StarterSelectionScreenInit_gotaddress

StarterSelectionScreenInit_gotaddress:
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a ; disable overworld tile animations
	ld a, [wBoxAlignment] ; whether sprite is to be mirrorred
	push af
	ld a, [wJumptableIndex]
	ld b, a
	ld a, [wcf64]
	ld c, a

	push bc
	push hl
	call ClearBGPalettes
	call ClearTileMap
	call UpdateSprites
	farcall StatsScreen_LoadFont
	pop hl
	call _hl_
	call ClearBGPalettes
	call ClearTileMap
	pop bc

	; restore old values
	ld a, b
	ld [wJumptableIndex], a
	ld a, c
	ld [wcf64], a
	pop af
	ld [wBoxAlignment], a
	pop af
	ldh [hMapAnims], a
	ret

StarterSelectionScreenMain:
	xor a
	ld [wStarterCursorPositionMon], a
	ld [wJumptableIndex], a
	; stupid interns
	ld [wcf64], a
.loop
	ld a, [wJumptableIndex]
	and $7f
	ld hl, StarterSelectionScreenPointerTable
	rst JumpTable
	call StarterSelectionScreen_WaitAnim ; check for keys?
	ld a, [wJumptableIndex]
	bit 4, a ; StarterSelectionScreen_Exit
	jr z, .loop
	ret

StarterSelectionScreenPointerTable:
	dw StarterStatsInit                ; 0
	dw StarterSelectionScreen_LoadPage ; 1
	dw StarterSelectionScreenWaitCry   ; 2
	dw StarterStatsJoypad              ; 3
	dw StarterSelectionScreen_Exit     ; 4

StarterSelectionScreen_WaitAnim:
	ld hl, wcf64
	bit 6, [hl]
	jr nz, .try_anim
	bit 5, [hl]
	jr nz, .finish
	call DelayFrame
	ret

.try_anim
	farcall SetUpPokeAnim
	jr nc, .finish
	ld hl, wcf64
	res 6, [hl]
.finish
	ld hl, wcf64
	res 5, [hl]
	farcall HDMATransferTileMapToWRAMBank3
	ret

StarterSelectionScreen_SetJumptableIndex:
	ld a, [wJumptableIndex]
	and $80
	or h
	ld [wJumptableIndex], a
	ret

StarterSelectionScreen_Exit:
	ld hl, wJumptableIndex
	set 4, [hl] ; StarterSelectionScreen_Exit
	ret

StarterStatsInit:
	ld hl, wcf64
	res 6, [hl]

	call ClearBGPalettes
	call ClearTileMap
	farcall HDMATransferTileMapToWRAMBank3

	; TODO: Get category table in bc
	; TODO; Get mon from category at hl
	ld a, [wStarterCursorPositionMon]
	ld e, a
	ld d, 0
	ld hl, BasicStarters
	add hl, de
	add hl, de

	ld a, [hl]
	ld [wTempSpecies], a
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a

	call .place_navigation_arrows
	call .place_mon_name

	ld hl, wcf64
	set 4, [hl]
	ld h, 1 ; StarterSelectionScreen_LoadPage
	call StarterSelectionScreen_SetJumptableIndex
	ret
.place_navigation_arrows
	hlcoord 4, 9
	ld [hl], "◀"
	hlcoord 15, 9
	ld [hl], "▶"
	ret
.place_mon_name
	ld a, MON_NAME
	ld [wNamedObjectTypeBuffer], a
	farcall GetName
	ld de, wStringBuffer1
	hlcoord 1, 1
	call PlaceString
	ret

StarterSelectionScreen_LoadPage:
	call StarterSelectionScreen_LoadGFX
	ld hl, wcf64
	res 4, [hl]
	ld a, [wJumptableIndex]
	inc a ; StarterSelectionScreenWaitCry
	ld [wJumptableIndex], a
	ret

StarterStatsJoypad:
	call StarterSelectionScreen_GetJoypad
	jr nc, .next
	ld h, 0 ; StarterStatsInit
	call StarterSelectionScreen_SetJumptableIndex
	ret

.next
	and D_DOWN | D_UP | D_LEFT | D_RIGHT | A_BUTTON | B_BUTTON
	jp StarterSelectionScreen_JoypadAction

StarterSelectionScreenWaitCry:
	call IsSFXPlaying
	ret nc
	ld a, [wJumptableIndex]
	inc a ; StarterStatsJoypad
	ld [wJumptableIndex], a
	ret

StarterSelectionScreen_GetJoypad:
	call GetJoypad
	ld a, [wMonType]
	cp TEMPMON
	jr nz, .notbreedmon
	push hl
	push de
	push bc
	farcall StatsScreenDPad
	pop bc
	pop de
	pop hl
	ld a, [wMenuJoypad]
	and D_LEFT | D_RIGHT
	jr nz, .set_carry
	ld a, [wMenuJoypad]
	jr .clear_flags

.notbreedmon
	ldh a, [hJoyPressed]
.clear_flags
	and a
	ret

.set_carry
	scf
	ret

StarterSelectionScreen_JoypadAction:
	bit D_LEFT_F, a
	jr nz, .d_left
	bit D_RIGHT_F, a
	jr nz, .d_right
	bit A_BUTTON_F, a
	jr nz, .a_button
	jr .done

.d_right
	ld a, [wStarterCursorPositionMon]
	cp NUM_BASIC_MON - 1 ; last page
	jr z, .go_to_first_starter
	ld a, [wStarterCursorPositionMon]
	add a, 1
	ld [wStarterCursorPositionMon], a
	call .load_mon
	ret

.d_left
	ld a, [wStarterCursorPositionMon]
	cp 0 ; first page
	jr z, .go_to_last_starter
	ld a, [wStarterCursorPositionMon]
	sub a, 1
	ld [wStarterCursorPositionMon], a
	call .load_mon
	ret

.a_button
	call .exit_starter_selection_screen

.done
	ret

.set_page
	ld a, [wcf64]
	and %11111100
	or c
	ld [wcf64], a
	ld h, 1 ; StarterSelectionScreen_LoadPage
	call StarterSelectionScreen_SetJumptableIndex
	ret

.go_to_first_starter
	xor a
	ld [wStarterCursorPositionMon], a
	call .load_mon
	ret

.go_to_last_starter
	ld a, NUM_BASIC_MON - 1
	LD [wStarterCursorPositionMon], a
	call .load_mon
	ret

.load_mon
	ld h, 0 ; StarterStatsInit
	call StarterSelectionScreen_SetJumptableIndex
	ret

.exit_starter_selection_screen
	ld h, 4 ; StarterSelectionScreen_Exit
	call StarterSelectionScreen_SetJumptableIndex
	ret

StarterSelectionScreen_LoadGFX:
	ld a, [wBaseDexNo]
	ld [wTempSpecies], a
	ld [wCurSpecies], a
	xor a
	ldh [hBGMapMode], a

	call .LoadPals

	ld hl, wcf64
	bit 4, [hl]

	jr nz, .place_frontpic
	call SetPalettes
	ret

.place_frontpic
	call StarterSelectionScreen_PlaceFrontpic
	ret

.LoadPals:
	ld a, [wcf64]
	maskbits NUM_STAT_PAGES
	ld c, a

	; calling both of these is a hack
	; TODO: figure out why both need to be called
	farcall LoadStatsScreenPals
	farcall LoadMonPaletteAsNthBGPal
	call DelayFrame

	ld hl, wcf64
	set 5, [hl]
	ret

StarterSelectionScreen_PlaceFrontpic:
	ld hl, wTempMonDVs
	predef GetUnownLetter
	call StarterSelectionScreen_GetAnimationParam
	call SetPalettes
	call .AnimateMon
	ret

.AnimateMon:
	ld hl, wcf64
	set 5, [hl]

	hlcoord 6, 4
	call PrepMonFrontpic
	ret

StarterSelectionScreen_GetAnimationParam:
	ld bc, wTempMonSpecies
	xor a
	ret
