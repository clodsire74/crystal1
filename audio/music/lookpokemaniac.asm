Music_LookPokemaniac: ; ebde1
	dbw $80, Music_LookPokemaniac_Ch1
	dbw $01, Music_LookPokemaniac_Ch2
	dbw $02, Music_LookPokemaniac_Ch3
; ebdea

Music_LookPokemaniac_Ch1: ; ebdea
	stereopanning $f
	tempo 144
	volume $7, $7
	vibrato $2, $3, $3
	pitchoffset $0002
	notetype $c, $b, $0, $3
	note __, 8
Music_LookPokemaniac_branch_ebdfb: ; ebdfb
	note __, 4
	octave 3
	note A#, 1
	note __, 3
	note A#, 1
	note __, 3
	loopchannel 4, Music_LookPokemaniac_branch_ebdfb
	note __, 4
	note G_, 1
	note __, 3
	note G_, 1
	note __, 3
	loopchannel 4, Music_LookPokemaniac_branch_ebdfb
	loopchannel 0, Music_LookPokemaniac_branch_ebdfb
; ebe12

Music_LookPokemaniac_Ch2: ; ebe12
	stereopanning $ff
	vibrato $2, $3, $3
	pitchoffset $0001
	notetype $c, $b, $0, $3
	octave 2
	note A_, 1
	note F#, 1
	note D#, 1
	note C_, 1
	octave 1
	note A_, 4
Music_LookPokemaniac_branch_ebe24: ; ebe24
	octave 2
	note C_, 2
	note __, 2
	octave 3
	note F#, 1
	note __, 3
	note A_, 1
	note __, 3
	octave 1
	note G_, 2
	note __, 2
	octave 3
	note C_, 1
	note __, 3
	note D#, 1
	note __, 3
	loopchannel 2, Music_LookPokemaniac_branch_ebe24
Music_LookPokemaniac_branch_ebe38: ; ebe38
	octave 1
	note A_, 2
	note __, 2
	octave 3
	note D#, 1
	note __, 3
	note F#, 1
	note __, 3
	octave 1
	note E_, 2
	note __, 2
	octave 2
	note A_, 1
	note __, 3
	octave 3
	note C_, 1
	note __, 3
	loopchannel 2, Music_LookPokemaniac_branch_ebe38
	loopchannel 0, Music_LookPokemaniac_branch_ebe24
; ebe51

Music_LookPokemaniac_Ch3: ; ebe51
	stereopanning $f0
	vibrato $6, $3, $3
	notetype $c, $1, $0, $5
	octave 4
	note C_, 1
	note D#, 1
	note F#, 1
	note A_, 1
	octave 5
	note C_, 4
	volenvelope $1, $0, $0
Music_LookPokemaniac_branch_ebe62: ; ebe62
	callchannel Music_LookPokemaniac_branch_ebe70
	volenvelope $1, $0, $4
	callchannel Music_LookPokemaniac_branch_ebe70
	volenvelope $1, $0, $0
	loopchannel 0, Music_LookPokemaniac_branch_ebe62
; ebe70

Music_LookPokemaniac_branch_ebe70: ; ebe70
	note A#, 6
	note A_, 2
	note G#, 2
	note G_, 2
	note F#, 6
	note F_, 2
	note F#, 2
	note A_, 2
	octave 4
	note D#, 4
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note F#, 4
	note C_, 1
	note __, 1
	note F#, 1
	note __, 1
	note C_, 1
	note __, 1
	note F#, 1
	note __, 1
	note G_, 6
	note F#, 2
	note F_, 2
	note E_, 2
	note D#, 6
	note D_, 2
	note D#, 2
	note F#, 2
	note C_, 4
	octave 4
	note A_, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 4
	octave 4
	note A_, 1
	note __, 1
	octave 5
	note D#, 1
	note __, 1
	note F#, 1
	note __, 1
	note C_, 1
	note __, 1
	endchannel
; ebeab


