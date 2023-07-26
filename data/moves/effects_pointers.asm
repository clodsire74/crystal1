MoveEffectsPointers:
; entries correspond to EFFECT_* constants
	table_width 2, MoveEffectsPointers
	dw NormalHit
	dw DoSleep
	dw PoisonHit
	dw LeechHit
	dw BurnHit
	dw FreezeHit
	dw ParalyzeHit
	dw Selfdestruct
	dw DreamEater
	dw DoBurn
	dw AttackUp
	dw DefenseUp
	dw SpeedUp
	dw SpecialAttackUp
	dw SpecialDefenseUp
	dw AccuracyUp
	dw EvasionUp
	dw NormalHit
	dw AttackDown
	dw DefenseDown
	dw SpeedDown
	dw SpecialAttackDown
	dw SpecialDefenseDown
	dw AccuracyDown
	dw EvasionDown
	dw ResetStats
	dw SpAtkUpHit
	dw Rampage
	dw ForceSwitch
	dw MultiHit
	dw CalmMind
	dw FlinchHit
	dw Heal
	dw Toxic
	dw DragonDance
	dw LightScreen
	dw TriAttack
	dw Draco
	dw OHKOHit
	dw Coil
	dw SuperFang
	dw StaticDamage
	dw TrapTarget
	dw BulkUp
	dw MultiHit
	dw NormalHit
	dw Mist
	dw FocusEnergy
	dw RecoilHit
	dw DoConfuse
	dw AttackUp2
	dw DefenseUp2
	dw SpeedUp2
	dw SpecialAttackUp2
	dw SpecialDefenseUp2
	dw AccuracyUp2
	dw EvasionUp2
	dw Transform
	dw AttackDown2
	dw DefenseDown2
	dw SpeedDown2
	dw SpecialAttackDown2
	dw SpecialDefenseDown2
	dw AccuracyDown2
	dw EvasionDown2
	dw Reflect
	dw DoPoison
	dw DoParalyze
	dw AttackDownHit
	dw DefenseDownHit
	dw SpeedDownHit
	dw SpecialAttackDownHit
	dw SpecialDefenseDownHit
	dw AccuracyDownHit
	dw EvasionDownHit
	dw ConfuseHit			; this is for hurricane, same concept used for blizzard below
	dw ConfuseHit
	dw PoisonMultiHit
	dw ClearSmog
	dw Substitute
	dw HyperBeam
	dw Rage
	dw Hammer
	dw Metronome
	dw LeechSeed
	dw Growth
	dw Disable
	dw StaticDamage
	dw CloseCombat
	dw Counter
	dw Encore
	dw PainSplit
	dw Snore
	dw NormalHit
	dw LockOn
	dw NormalHit
	dw DefrostOpponent
	dw SleepTalk
	dw DestinyBond
	dw Reversal
	dw Spite
	dw NormalHit
	dw HealBell
	dw NormalHit
	dw TripleKick
	dw Thief
	dw MeanLook
	dw NormalHit
	dw FlameWheel
	dw Curse
	dw NormalHit
	dw Protect
	dw Spikes
	dw Foresight
	dw PerishSong
	dw Sandstorm
	dw CosmicPower
	dw Rollout
	dw WorkUp
	dw FuryCutter
	dw NormalHit
	dw Return
	dw Present
	dw NormalHit
	dw Safeguard
	dw SacredFire
	dw Magnitude
	dw BatonPass
	dw Pursuit
	dw RapidSpin
	dw NormalHit
	dw NormalHit
	dw MorningSun
	dw NormalHit
	dw NormalHit
	dw HiddenPower
	dw RainDance
	dw SunnyDay
	dw DefenseUpHit
	dw AttackUpHit
	dw AllUpHit
	dw FakeOut
	dw BellyDrum
	dw PsychUp
	dw MirrorCoat
	dw NormalHit
	dw Twister
	dw Earthquake
	dw FutureSight
	dw Gust
	dw NormalHit
	dw Solarbeam
	dw Thunder
	dw Teleport
	dw BeatUp
	dw Fly
	dw DefenseCurl
	dw FreezeHit ; for Blizzard, purposefully with different EFFECT_* constant
	dw Hail
	assert_table_length NUM_MOVE_EFFECTS
