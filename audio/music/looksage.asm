Music_LookSage: ; ee35e
	dbw $40, Music_LookSage_Ch1
	dbw $02, Music_LookSage_Ch3
; ee364

Music_LookSage_Ch1: ; ee364
	tempo 144
	stereopanning $f
	volume $7, $7
	waveduty $3
	notetype $c, $b, $0, $3
	note __, 2
	note __, 16
	callchannel Music_LookSage_branch_ee3fa
	volenvelope $b, $0, $3
	octave 3
	note D_, 2
	volenvelope $9, $0, $3
	note D_, 2
	volenvelope $b, $0, $3
	note E_, 2
	volenvelope $9, $0, $3
	note E_, 2
	volenvelope $b, $0, $3
	note A_, 2
	volenvelope $9, $0, $3
	note A_, 2
	volenvelope $b, $0, $3
	note F_, 2
	volenvelope $9, $0, $3
	note F_, 2
Music_LookSage_branch_ee38e: ; ee38e
	volenvelope $b, $0, $3
	note D_, 2
	volenvelope $9, $0, $3
	note D_, 2
	volenvelope $b, $0, $3
	octave 2
	note B_, 2
	volenvelope $9, $0, $3
	note B_, 2
	volenvelope $b, $0, $3
	note A_, 2
	volenvelope $9, $0, $3
	note A_, 2
	volenvelope $b, $0, $3
	note B_, 2
	volenvelope $9, $0, $3
	note B_, 2
	volenvelope $b, $0, $3
	octave 3
	note D_, 2
	volenvelope $9, $0, $3
	note D_, 2
	volenvelope $b, $0, $3
	octave 2
	note B_, 2
	volenvelope $9, $0, $3
	note B_, 2
	volenvelope $b, $0, $3
	octave 3
	note D_, 2
	volenvelope $9, $0, $3
	note D_, 2
	volenvelope $b, $0, $3
	note E_, 2
	volenvelope $9, $0, $3
	note E_, 2
	volenvelope $b, $0, $3
	note F_, 2
	volenvelope $9, $0, $3
	note F_, 2
	volenvelope $b, $0, $3
	note D_, 2
	volenvelope $9, $0, $3
	note D_, 2
	volenvelope $b, $0, $3
	note E_, 2
	volenvelope $9, $0, $3
	note E_, 2
	volenvelope $b, $0, $3
	note A_, 2
	volenvelope $9, $0, $3
	note A_, 2
	volenvelope $b, $0, $3
	note D_, 2
	volenvelope $9, $0, $3
	note D_, 2
	volenvelope $b, $0, $3
	octave 2
	note B_, 2
	volenvelope $9, $0, $3
	note B_, 2
	volenvelope $b, $0, $3
	note A_, 2
	volenvelope $9, $0, $3
	note A_, 2
	volenvelope $b, $0, $3
	note B_, 2
	volenvelope $9, $0, $3
	note B_, 2
	callchannel Music_LookSage_branch_ee3fa
	loopchannel 0, Music_LookSage_branch_ee38e
; ee3fa

Music_LookSage_branch_ee3fa: ; ee3fa
	volenvelope $b, $0, $3
	octave 2
	note E_, 2
	volenvelope $9, $0, $3
	note E_, 2
	volenvelope $b, $0, $3
	note A_, 2
	volenvelope $9, $0, $3
	note A_, 2
	volenvelope $b, $0, $3
	note B_, 2
	volenvelope $9, $0, $3
	note B_, 2
	volenvelope $b, $0, $3
	note A_, 2
	volenvelope $9, $0, $3
	note A_, 2
	endchannel
; ee414

Music_LookSage_Ch3: ; ee414
	stereopanning $f0
	vibrato $16, $2, $3
	notetype $c, $1, $0, $0
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	octave 5
	note B_, 16
	vibrato $7, $2, $3
	note B_, 8
	vibrato $14, $2, $3
	octave 6
	note D_, 6
	note E_, 1
	note F_, 1
	note E_, 14
	note G_, 1
	note G#, 1
Music_LookSage_branch_ee430: ; ee430
	note A_, 12
	note B_, 4
	note D_, 9
	note E_, 1
	note F_, 1
	note D_, 1
	vibrato $0, $0, $0
	note E_, 4
	vibrato $7, $2, $3
	note E_, 8
	vibrato $14, $2, $3
	octave 5
	note B_, 8
	octave 6
	note F_, 8
	notetype $6, $1, $0, $0
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 5
	note B_, 1
	note A#, 1
	note A_, 1
	note __, 4
	octave 6
	note E_, 2
	note F_, 2
	notetype $c, $1, $0, $0
	note E_, 14
	note G_, 1
	note G#, 1
	loopchannel 0, Music_LookSage_branch_ee430
; ee45f


