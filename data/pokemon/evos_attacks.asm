INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evolution_moves.asm"
INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, SMOG
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 16, ACID
	db 20, RAZOR_LEAF
	db 24, HEADBUTT
	db 27, GROWTH
	db 27, GIGA_DRAIN
	db 31, SYNTHESIS
	db 36, TOXIC
	db 42, SLUDGE_BOMB
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, SMOG
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 16, ACID
	db 22, RAZOR_LEAF
	db 26, HEADBUTT
	db 29, GROWTH
	db 29, GIGA_DRAIN
	db 33, SYNTHESIS
	db 38, TOXIC
	db 44, SLUDGE_BOMB
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, SMOG
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 16, ACID
	db 23, RAZOR_LEAF
	db 26, HEADBUTT
	db 29, GROWTH
	db 29, GIGA_DRAIN
	db 35, SYNTHESIS
	db 40, TOXIC
	db 46, SLUDGE_BOMB
	db 52, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, FIRE_SPIN
	db 7, SMOKESCREEN
	db 10, EMBER
	db 13, GLARE
	db 16, METAL_CLAW
	db 20, DRAGONBREATH
	db 24, FIRE_PUNCH
	db 27, SUNNY_DAY
	db 31, SLASH
	db 36, FLAMETHROWER
	db 42, OUTRAGE
	db 48, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, FIRE_SPIN
	db 7, SMOKESCREEN
	db 10, EMBER
	db 13, GLARE
	db 16, METAL_CLAW
	db 22, DRAGONBREATH
	db 26, FIRE_PUNCH
	db 29, SUNNY_DAY
	db 33, SLASH
	db 38, FLAMETHROWER
	db 44, OUTRAGE
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, FIRE_SPIN
	db 7, SMOKESCREEN
	db 10, EMBER
	db 13, GLARE
	db 16, METAL_CLAW
	db 22, DRAGONBREATH
	db 26, FIRE_PUNCH
	db 29, SUNNY_DAY
	db 33, SLASH
	db 38, WING_ATTACK
	db 40, FLAMETHROWER
	db 46, OUTRAGE
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 4, BUBBLE
	db 7, HAZE
	db 10, WATER_GUN
	db 13, RAPID_SPIN
	db 16, PROTECT
	db 20, BITE
	db 24, BUBBLEBEAM
	db 27, CRUNCH
	db 31, ICE_BEAM
	db 36, RAIN_DANCE
	db 42, SKULL_BASH
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 4, BUBBLE
	db 7, HAZE
	db 10, WATER_GUN
	db 13, RAPID_SPIN
	db 16, PROTECT
	db 22, BITE
	db 26, BUBBLEBEAM
	db 29, CRUNCH
	db 33, ICE_BEAM
	db 38, RAIN_DANCE
	db 44, SKULL_BASH
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 4, BUBBLE
	db 7, HAZE
	db 10, WATER_GUN
	db 13, RAPID_SPIN
	db 16, PROTECT
	db 22, BITE
	db 26, BUBBLEBEAM
	db 29, CRUNCH
	db 33, ICE_BEAM
	db 40, RAIN_DANCE
	db 46, SKULL_BASH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 10, ABSORB
	db 15, FURY_CUTTER
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 1, HARDEN
	db 7, HARDEN
	db 13, ABSORB
	db 17, FURY_CUTTER
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, STUN_SPORE
	db 18, GUST
	db 23, LEECH_LIFE
	db 28, PSYBEAM
	db 34, WING_ATTACK
	db 38, MOONLIGHT
	db 42, SPORE
	db 46, DREAM_EATER
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 10, ABSORB
	db 15, FURY_CUTTER
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, HARDEN
	db 7, HARDEN
	db 13, ABSORB
	db 17, FURY_CUTTER
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 10, FURY_ATTACK
	db 13, FOCUS_ENERGY
	db 18, TWINEEDLE
	db 23, SLUDGE
	db 28, RAGE
	db 34, SWORDS_DANCE
	db 38, PIN_MISSILE
	db 42, PAIN_SPLIT
	db 46, SLUDGE_BOMB
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, SCRATCH 
	db 3, SAND_ATTACK
	db 5, GUST
	db 9, WHIRLWIND
	db 13, SING
	db 17, PURSUIT
	db 21, WING_ATTACK
	db 26, STEEL_WING
	db 30, AGILITY
	db 35, PERISH_SONG
	db 39, TAKE_DOWN
	db 43, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, SCRATCH 
	db 3, SAND_ATTACK
	db 5, GUST
	db 9, WHIRLWIND
	db 13, SING
	db 17, PURSUIT
	db 23, WING_ATTACK
	db 28, STEEL_WING
	db 32, AGILITY
	db 37, PERISH_SONG
	db 41, TAKE_DOWN
	db 45, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH 
	db 3, SAND_ATTACK
	db 5, GUST
	db 9, WHIRLWIND
	db 13, SING
	db 17, PURSUIT
	db 23, WING_ATTACK
	db 28, STEEL_WING
	db 32, AGILITY
	db 39, PERISH_SONG
	db 43, TAKE_DOWN
	db 47, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, QUICK_ATTACK
	db 9, FOCUS_ENERGY
	db 13, BITE
	db 18, HYPER_FANG
	db 22, SWAGGER
	db 27, CRUNCH
	db 30, AGILITY
	db 34, PSYCH_UP
	db 39, DOUBLE_EDGE
	db 41, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, QUICK_ATTACK
	db 9, FOCUS_ENERGY
	db 13, BITE
	db 18, HYPER_FANG
	db 24, SWAGGER
	db 29, CRUNCH
	db 32, AGILITY
	db 36, PSYCH_UP
	db 41, DOUBLE_EDGE
	db 43, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 3, GROWL
	db 5, FALSE_SWIPE
	db 9, LEER
	db 13, QUICK_ATTACK
	db 17, WING_ATTACK
	db 21, SCREECH
	db 26, STEEL_WING
	db 30, DRILL_PECK
	db 35, MEAN_LOOK
	db 39, TWISTER
	db 43, MIRROR_MOVE
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 3, GROWL
	db 5, FALSE_SWIPE
	db 9, LEER
	db 13, QUICK_ATTACK
	db 17, WING_ATTACK
	db 23, SCREECH
	db 28, STEEL_WING
	db 32, DRILL_PECK
	db 37, MEAN_LOOK
	db 41, TWISTER
	db 45, MIRROR_MOVE
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, POISON_STING
	db 8, MEAN_LOOK
	db 14, BITE
	db 17, GLARE
	db 22, SLUDGE
	db 26, SCREECH
	db 30, CRUNCH
	db 34, SLUDGE_BOMB
	db 38, SUPER_FANG
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, POISON_STING
	db 8, MEAN_LOOK
	db 14, BITE
	db 17, GLARE
	db 22, SLUDGE
	db 28, SCREECH
	db 32, CRUNCH
	db 36, SLUDGE_BOMB
	db 40, SUPER_FANG
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 3, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 9, THUNDER_WAVE
	db 12, SWIFT
	db 15, DOUBLE_TEAM
	db 19, SPARK
	db 23, LIGHT_SCREEN
	db 23, REFLECT
	db 26, SLAM
	db 30, THUNDERBOLT
	db 35, AGILITY
	db 41, EXTREMESPEED
	db 47, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, SWIFT
	db 1, DOUBLE_TEAM
	db 1, AGILITY
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 8, FURY_SWIPES
	db 14, DIG
	db 17, ROLLOUT
	db 22, METAL_CLAW
	db 26, SLASH
	db 30, EARTHQUAKE
	db 34, SANDSTORM
	db 38, FISSURE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 8, FURY_SWIPES
	db 14, DIG
	db 17, ROLLOUT
	db 22, METAL_CLAW
	db 28, SLASH
	db 32, EARTHQUAKE
	db 36, SANDSTORM
	db 40, FISSURE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 3, GROWL
	db 7, SCRATCH
	db 9, MEAN_LOOK
	db 12, ACID
	db 15, ENDURE
	db 19, SLUDGE
	db 23, MAGNITUDE
	db 26, SLAM
	db 30, ROAR
	db 35, PAIN_SPLIT
	db 41, EARTHQUAKE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 3, GROWL
	db 7, SCRATCH
	db 9, MEAN_LOOK
	db 12, ACID
	db 15, ENDURE
	db 21, SLUDGE
	db 25, MAGNITUDE
	db 28, SLAM
	db 32, ROAR
	db 37, PAIN_SPLIT
	db 43, EARTHQUAKE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, MAGNITUDE
	db 1, SLUDGE
	db 1, ROAR
	db 1, ENDURE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 3, LEER
	db 7, SCRATCH
	db 9, ACID
	db 12, DOUBLE_KICK
	db 15, HORN_ATTACK
	db 19, SCARY_FACE
	db 23, SLUDGE
	db 26, IRON_TAIL
	db 30, EARTHQUAKE
	db 35, SLUDGE_BOMB
	db 41, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 3, LEER
	db 7, SCRATCH
	db 9, ACID
	db 12, DOUBLE_KICK
	db 15, HORN_ATTACK
	db 21, SCARY_FACE
	db 25, SLUDGE
	db 28, IRON_TAIL
	db 32, EARTHQUAKE
	db 37, SLUDGE_BOMB
	db 43, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLUDGE
	db 1, HORN_ATTACK
	db 1, IRON_TAIL
	db 1, SCARY_FACE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 3, GROWL
	db 7, DOUBLESLAP
	db 9, LOVELY_KISS
	db 12, CONFUSION
	db 15, DEFENSE_CURL
	db 19, PSYWAVE
	db 23, METRONOME
	db 26, MOONLIGHT
	db 30, PROTECT
	db 35, BODY_SLAM
	db 41, HEAL_BELL
	db 47, DREAM_EATER
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 1, BODY_SLAM
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, LICK
	db 1, TAIL_WHIP
	db 5, GROWL
	db 8, EMBER
	db 14, SMOKESCREEN
	db 17, FIRE_SPIN
	db 22, NIGHT_SHADE
	db 26, FLAME_WHEEL
	db 29, CONFUSE_RAY
	db 32, SHADOW_BALL
	db 36, FLAMETHROWER
	db 40, SPITE
	db 42, DESTINY_BOND
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SHADE
	db 1, FLAMETHROWER
	db 1, CONFUSE_RAY
	db 1, SMOKESCREEN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, POUND
	db 3, DEFENSE_CURL
	db 7, BEAT_UP
	db 9, SING
	db 12, DOUBLESLAP
	db 15, SONICBOOM
	db 19, REST
	db 19, SLEEP_TALK
	db 23, SWEET_KISS
	db 26, DIZZY_PUNCH
	db 30, MEGA_PUNCH
	db 35, BODY_SLAM
	db 41, PERISH_SONG
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH
	db 1, SING
	db 1, REST
	db 1, SLEEP_TALK
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, SMOG
	db 3, SUPERSONIC
	db 7, GUST
	db 9, BITE
	db 12, LEECH_LIFE
	db 15, SCARY_FACE
	db 19, SLUDGE
	db 23, WING_ATTACK
	db 26, SCREECH
	db 30, CRUNCH
	db 35, CONFUSE_RAY
	db 41, SLUDGE_BOMB
	db 47, TOXIC
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SMOG
	db 3, SUPERSONIC
	db 7, GUST
	db 9, BITE
	db 12, LEECH_LIFE
	db 15, SCARY_FACE
	db 19, SLUDGE
	db 25, WING_ATTACK
	db 28, SCREECH
	db 32, CRUNCH
	db 37, CONFUSE_RAY
	db 43, SLUDGE_BOMB
	db 49, TOXIC
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 3, SMOG
	db 7, SWEET_SCENT
	db 9, ACID
	db 12, POISONPOWDER
	db 12, SLEEP_POWDER
	db 12, STUN_SPORE
	db 15, SWIFT
	db 19, MEGA_DRAIN
	db 23, MOONLIGHT
	db 26, SLUDGE
	db 30, GIGA_DRAIN
	db 35, SLUDGE_BOMB
	db 41, SOLARBEAM
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 3, SMOG
	db 7, SWEET_SCENT
	db 9, ACID
	db 12, POISONPOWDER
	db 12, SLEEP_POWDER
	db 12, STUN_SPORE
	db 15, SWIFT
	db 19, MEGA_DRAIN
	db 25, MOONLIGHT
	db 28, SLUDGE
	db 32, GIGA_DRAIN
	db 37, SLUDGE_BOMB
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, MOONLIGHT
	db 1, SLUDGE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, ABSORB
	db 5, POISON_STING
	db 8, COTTON_SPORE
	db 14, FURY_CUTTER
	db 17, SLEEP_POWDER
	db 17, POISONPOWDER
	db 22, MEGA_DRAIN
	db 26, SLASH
	db 29, MOONLIGHT
	db 32, TWINEEDLE
	db 36, SWORDS_DANCE
	db 40, SPORE
	db 42, SLUDGE_BOMB
	db 45, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, ABSORB
	db 5, POISON_STING
	db 8, COTTON_SPORE
	db 14, FURY_CUTTER
	db 17, SLEEP_POWDER
	db 17, POISONPOWDER
	db 22, MEGA_DRAIN
	db 28, SLASH
	db 31, MOONLIGHT
	db 34, TWINEEDLE
	db 38, SWORDS_DANCE
	db 42, SPORE
	db 44, SLUDGE_BOMB
	db 47, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 6, LEER
	db 10, PSYWAVE
	db 15, LEECH_LIFE
	db 19, ACID
	db 23, CONFUSION
	db 29, SLUDGE
	db 32, CONFUSE_RAY
	db 35, SLEEP_POWDER
	db 35, POISONPOWDER
	db 38, PSYCHIC_M
	db 41, SLUDGE_BOMB
	db 45, MORNING_SUN
	db 47, DREAM_EATER
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 6, LEER
	db 10, PSYWAVE
	db 15, LEECH_LIFE
	db 19, ACID
	db 23, CONFUSION
	db 29, SLUDGE
	db 33, CONFUSE_RAY
	db 37, SLEEP_POWDER
	db 37, POISONPOWDER
	db 40, PSYCHIC_M
	db 43, SLUDGE_BOMB
	db 47, MORNING_SUN
	db 49, DREAM_EATER
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, SAND_ATTACK
	db 5, SCRATCH
	db 8, MAGNITUDE
	db 14, FURY_SWIPES
	db 17, FAINT_ATTACK
	db 22, DIG
	db 26, SLASH
	db 29, FOCUS_ENERGY
	db 32, ANCIENTPOWER
	db 36, EARTHQUAKE
	db 40, SCREECH
	db 42, SANDSTORM
	db 45, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, SAND_ATTACK
	db 5, SCRATCH
	db 8, MAGNITUDE
	db 14, FURY_SWIPES
	db 17, FAINT_ATTACK
	db 22, DIG
	db 26, SLASH
	db 31, FOCUS_ENERGY
	db 34, ANCIENTPOWER
	db 38, EARTHQUAKE
	db 42, SCREECH
	db 44, SANDSTORM
	db 47, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, GROWL
	db 8, FURY_SWIPES
	db 14, PAY_DAY
	db 17, BITE
	db 22, SCREECH
	db 26, METAL_CLAW
	db 29, SLASH
	db 32, FOCUS_ENERGY
	db 36, AGILITY
	db 40, CRUNCH
	db 42, DOUBLE_EDGE
	db 45, SUPER_FANG
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, GROWL
	db 8, FURY_SWIPES
	db 14, PAY_DAY
	db 17, BITE
	db 22, SCREECH
	db 26, METAL_CLAW
	db 31, SLASH
	db 34, FOCUS_ENERGY
	db 38, AGILITY
	db 42, CRUNCH
	db 44, DOUBLE_EDGE
	db 47, SUPER_FANG
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, PSYWAVE
	db 8, WATER_GUN
	db 14, DISABLE
	db 17, CONFUSION
	db 22, AMNESIA
	db 26, BUBBLEBEAM
	db 29, PSYCH_UP
	db 32, PSYBEAM
	db 36, RAIN_DANCE
	db 40, SURF
	db 42, PSYCHIC_M
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, PSYWAVE
	db 8, WATER_GUN
	db 14, DISABLE
	db 17, CONFUSION
	db 22, AMNESIA
	db 26, BUBBLEBEAM
	db 29, PSYCH_UP
	db 32, PSYBEAM
	db 38, RAIN_DANCE
	db 42, SURF
	db 44, PSYCHIC_M
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 6, ROCK_SMASH
	db 10, BEAT_UP
	db 15, RAGE
	db 19, LOW_KICK
	db 23, FOCUS_ENERGY
	db 29, KARATE_CHOP
	db 32, SCREECH
	db 35, SWORDS_DANCE
	db 38, MEGA_PUNCH
	db 41, SUBMISSION
	db 45, CROSS_CHOP
	db 47, MEGA_KICK
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 6, ROCK_SMASH
	db 10, BEAT_UP
	db 15, RAGE
	db 19, LOW_KICK
	db 23, FOCUS_ENERGY
	db 31, KARATE_CHOP
	db 34, SCREECH
	db 37, SWORDS_DANCE
	db 40, MEGA_PUNCH
	db 43, SUBMISSION
	db 47, CROSS_CHOP
	db 49, MEGA_KICK
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 5, EMBER
	db 8, BITE
	db 14, ROAR
	db 17, HEADBUTT
	db 22, FLAME_WHEEL
	db 26, SCARY_FACE
	db 29, SUNNY_DAY
	db 32, EXTREMESPEED
	db 36, FLAMETHROWER
	db 40, CRUNCH
	db 42, DOUBLE_EDGE
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, EXTREMESPEED
	db 1, FLAME_WHEEL
	db 1, SUNNY_DAY
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, CHARM
	db 9, WATER_GUN
	db 13, HYPNOSIS
	db 18, MIMIC
	db 24, BUBBLEBEAM
	db 27, PSYBEAM
	db 30, RAIN_DANCE
	db 34, BODY_SLAM
	db 38, REFLECT
	db 41, IRON_TAIL
	db 46, DOUBLE_EDGE
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, CHARM
	db 9, WATER_GUN
	db 13, HYPNOSIS
	db 18, MIMIC
	db 24, BUBBLEBEAM
	db 29, PSYBEAM
	db 32, RAIN_DANCE
	db 36, BODY_SLAM
	db 40, REFLECT
	db 43, IRON_TAIL
	db 49, DOUBLE_EDGE
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, SUBMISSION
	db 1, DIZZY_PUNCH
	db 1, RAIN_DANCE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, -1, ALAKAZAM ; Change to Energy Stone
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 5, PSYWAVE
	db 9, POUND
	db 13, ENDURE
	db 16, CONFUSION
	db 18, KINESIS
	db 24, HYPNOSIS
	db 27, PSYBEAM
	db 30, FORESIGHT
	db 34, FUTURE_SIGHT
	db 38, RECOVER
	db 41, PSYCHIC_M
	db 46, MIND_READER
	db 49, DREAM_EATER
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, FUTURE_SIGHT
	db 1, RECOVER
	db 1, PSYBEAM
	db 1, MIND_READER
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, POUND
	db 5, LEER
	db 9, MACH_PUNCH
	db 13, SEISMIC_TOSS
	db 18, COUNTER
	db 24, KARATE_CHOP
	db 27, DETECT
	db 30, DIZZY_PUNCH
	db 34, MEDITATE
	db 38, REVERSAL
	db 41, SUBMISSION
	db 46, MEGA_KICK
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_TRADE, -1, MACHAMP ; Change to Energy Stone
	db 0 ; no more evolutions
	db 1, POUND
	db 5, LEER
	db 9, MACH_PUNCH
	db 13, SEISMIC_TOSS
	db 18, COUNTER
	db 24, KARATE_CHOP
	db 27, DETECT
	db 32, DIZZY_PUNCH
	db 36, MEDITATE
	db 40, REVERSAL
	db 43, SUBMISSION
	db 48, MEGA_KICK
	db 51, CROSS_CHOP
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, KARATE_CHOP
	db 1, DETECT
	db 1, MEGA_KICK
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 3, GROWTH
	db 7, VINE_WHIP
	db 9, FURY_CUTTER
	db 12, ACID
	db 15, SWEET_SCENT
	db 19, RAZOR_LEAF
	db 23, SLASH
	db 26, SLUDGE
	db 30, GIGA_DRAIN
	db 35, SYNTHESIS
	db 41, SLUDGE_BOMB
	db 47, SOLARBEAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 3, GROWTH
	db 7, VINE_WHIP
	db 9, FURY_CUTTER
	db 12, ACID
	db 15, SWEET_SCENT
	db 19, RAZOR_LEAF
	db 25, SLASH
	db 27, SLUDGE
	db 32, GIGA_DRAIN
	db 37, SYNTHESIS
	db 43, SLUDGE_BOMB
	db 49, SOLARBEAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, ACID
	db 1, RAZOR_LEAF
	db 1, SLASH
	db 1, SYNTHESIS
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WATER_GUN
	db 14, HAZE
	db 17, ACID
	db 22, BUBBLEBEAM
	db 26, CONFUSE_RAY
	db 29, LIGHT_SCREEN
	db 29, REFLECT
	db 32, SLUDGE
	db 36, SURF
	db 40, TOXIC
	db 42, SLUDGE_BOMB
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WATER_GUN
	db 14, HAZE
	db 17, ACID
	db 22, BUBBLEBEAM
	db 26, CONFUSE_RAY
	db 29, LIGHT_SCREEN
	db 29, REFLECT
	db 34, SLUDGE
	db 38, SURF
	db 42, TOXIC
	db 44, SLUDGE_BOMB
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, POUND
	db 5, DEFENSE_CURL
	db 9, MUD_SLAP
	db 13, SAND_ATTACK
	db 18, ROLLOUT
	db 24, MAGNITUDE
	db 27, SELFDESTRUCT
	db 30, ROCK_THROW
	db 34, SPIKES
	db 38, BODY_SLAM
	db 41, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 49, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_TRADE, -1, GOLEM ; Change to Energy Stone
	db 0 ; no more evolutions
	db 1, POUND
	db 5, DEFENSE_CURL
	db 9, MUD_SLAP
	db 13, SAND_ATTACK
	db 18, ROLLOUT
	db 24, MAGNITUDE
	db 29, SELFDESTRUCT
	db 32, ROCK_THROW
	db 36, SPIKES
	db 40, BODY_SLAM
	db 43, ROCK_SLIDE
	db 48, EARTHQUAKE
	db 51, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, MAGNITUDE
	db 1, SELFDESTRUCT
	db 1, ROCK_THROW
	db 1, BODY_SLAM
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, TAIL_WHIP
	db 6, FIRE_SPIN
	db 10, EMBER
	db 15, SMOKESCREEN
	db 19, CONFUSE_RAY
	db 23, FLAME_WHEEL
	db 29, STOMP
	db 32, PSYBEAM
	db 35, FLAMETHROWER
	db 38, AGILITY
	db 41, EXTREMESPEED
	db 45, TAKE_DOWN
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, TAIL_WHIP
	db 6, FIRE_SPIN
	db 10, EMBER
	db 15, SMOKESCREEN
	db 19, CONFUSE_RAY
	db 23, FLAME_WHEEL
	db 29, STOMP
	db 32, PSYBEAM
	db 35, FLAMETHROWER
	db 38, AGILITY
	db 43, EXTREMESPEED
	db 47, TAKE_DOWN
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING ; Change to levelup while holding
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 5, PSYWAVE
	db 8, WATER_GUN
	db 14, MIST
	db 17, HEADBUTT
	db 22, CONFUSION
	db 26, REFLECT
	db 26, LIGHT_SCREEN
	db 30, BUBBLEBEAM
	db 34, AMNESIA
	db 38, BODY_SLAM
	db 42, PSYCHIC_M
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 5, PSYWAVE
	db 8, WATER_GUN
	db 14, MIST
	db 17, HEADBUTT
	db 22, CONFUSION
	db 26, REFLECT
	db 26, LIGHT_SCREEN
	db 30, BUBBLEBEAM
	db 34, AMNESIA
	db 40, BODY_SLAM
	db 44, PSYCHIC_M
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, THUNDER_WAVE
	db 5, THUNDERSHOCK
	db 8, SUPERSONIC
	db 14, SWIFT
	db 17, MIRROR_SHOT
	db 22, SONICBOOM
	db 26, FLASH
	db 29, THUNDERBOLT
	db 32, LOCK_ON
	db 36, FLASH_CANNON
	db 40, ZAP_CANNON
	db 44, THUNDER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, THUNDER_WAVE
	db 5, THUNDERSHOCK
	db 8, SUPERSONIC
	db 14, SWIFT
	db 17, MIRROR_SHOT
	db 22, SONICBOOM
	db 26, FLASH
	db 29, THUNDERBOLT
	db 34, LOCK_ON
	db 38, FLASH_CANNON
	db 42, ZAP_CANNON
	db 46, THUNDER
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 5, FALSE_SWIPE
	db 8, SAND_ATTACK
	db 14, FURY_SWIPES
	db 17, KARATE_CHOP
	db 22, WING_ATTACK
	db 26, SLASH
	db 29, SWAGGER
	db 32, SWORDS_DANCE
	db 36, REVERSAL
	db 40, SCREECH
	db 42, MIRROR_MOVE
	db 45, CROSS_CHOP
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 5, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 18, DOUBLE_TEAM
	db 24, RAGE
	db 27, AGILITY
	db 30, DRILL_PECK
	db 34, TRI_ATTACK
	db 38, SWAGGER
	db 41, MEGA_KICK
	db 46, SKY_ATTACK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 18, DOUBLE_TEAM
	db 24, RAGE
	db 27, AGILITY
	db 30, DRILL_PECK
	db 36, TRI_ATTACK
	db 40, SWAGGER
	db 43, MEGA_KICK
	db 48, SKY_ATTACK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, TACKLE 
	db 1, GROWL
	db 6, WATER_GUN
	db 10, POWDER_SNOW
	db 15, MIST
	db 19, BUBBLEBEAM
	db 23, HEADBUTT
	db 29, ICY_WIND
	db 32, RAIN_DANCE
	db 35, SURF
	db 38, ICE_BEAM
	db 41, IRON_TAIL
	db 45, BLIZZARD
	db 47, HORN_DRILL
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE 
	db 1, GROWL
	db 6, WATER_GUN
	db 10, POWDER_SNOW
	db 15, MIST
	db 19, BUBBLEBEAM
	db 23, HEADBUTT
	db 29, ICY_WIND
	db 32, RAIN_DANCE
	db 37, SURF
	db 40, ICE_BEAM
	db 43, IRON_TAIL
	db 47, BLIZZARD
	db 49, HORN_DRILL
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, HARDEN
	db 6, POUND
	db 10, POISON_GAS
	db 15, BEAT_UP
	db 19, ACID
	db 23, ACID_ARMOR
	db 29, SLAM
	db 32, MINIMIZE
	db 35, SLUDGE
	db 38, SCREECH
	db 41, TOXIC
	db 45, DOUBLE_EDGE
	db 47, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, SMOG
	db 1, HARDEN
	db 6, POUND
	db 10, POISON_GAS
	db 15, BEAT_UP
	db 19, ACID
	db 23, ACID_ARMOR
	db 29, SLAM
	db 32, MINIMIZE
	db 35, SLUDGE
	db 38, SCREECH
	db 43, TOXIC
	db 47, DOUBLE_EDGE
	db 49, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 5, CLAMP
	db 8, MIST
	db 14, WATER_GUN
	db 17, BIDE
	db 22, HARDEN
	db 26, BUBBLEBEAM
	db 29, AURORA_BEAM
	db 32, BARRIER
	db 36, ICE_BEAM
	db 40, WHIRLPOOL
	db 42, DOUBLE_EDGE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKE_CANNON
	db 1, AURORA_BEAM
	db 1, BUBBLEBEAM
	db 1, WITHDRAW
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 3, SPITE
	db 7, SMOKESCREEN
	db 9, ACID
	db 12, FAINT_ATTACK
	db 15, POISON_GAS
	db 19, NIGHT_SHADE
	db 23, HYPNOSIS
	db 23, NIGHTMARE
	db 26, CONFUSE_RAY
	db 30, MINIMIZE
	db 35, SHADOW_BALL
	db 41, SLUDGE_BOMB
	db 47, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR ; Change to Energy Stone
	db 0 ; no more evolutions
	db 1, LICK
	db 3, SPITE
	db 7, SMOKESCREEN
	db 9, ACID
	db 12, FAINT_ATTACK
	db 15, POISON_GAS
	db 19, NIGHT_SHADE
	db 23, HYPNOSIS
	db 23, NIGHTMARE
	db 28, CONFUSE_RAY
	db 32, MINIMIZE
	db 37, SHADOW_BALL
	db 43, SLUDGE_BOMB
	db 49, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, NIGHTMARE
	db 1, SLUDGE_BOMB
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX ; Change to Level Up While Holding
	db 0 ; no more evolutions
	db 1, WRAP
	db 5, HARDEN
	db 9, MAGNITUDE
	db 13, ROCK_THROW
	db 18, SHARPEN
	db 24, SCREECH
	db 27, DIG
	db 30, ANCIENTPOWER
	db 34, AGILITY
	db 38, ROCK_SLIDE
	db 41, EARTHQUAKE
	db 46, THRASH
	db 49, IRON_TAIL
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DISABLE
	db 5, BEAT_UP
	db 9, HYPNOSIS
	db 13, CONFUSION
	db 18, SPITE
	db 24, HEADBUTT
	db 27, PSYBEAM
	db 30, CONFUSE_RAY
	db 34, SHADOW_BALL
	db 38, PSYCHIC_M
	db 41, MIND_READER
	db 46, NIGHTMARE
	db 49, DREAM_EATER
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DISABLE
	db 5, BEAT_UP
	db 9, HYPNOSIS
	db 13, CONFUSION
	db 18, SPITE
	db 24, HEADBUTT
	db 29, PSYBEAM
	db 32, CONFUSE_RAY
	db 36, SHADOW_BALL
	db 40, PSYCHIC_M
	db 43, MIND_READER
	db 48, NIGHTMARE
	db 51, DREAM_EATER
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HARDEN
	db 5, WATER_GUN
	db 8, FURY_SWIPES
	db 14, VICEGRIP
	db 17, STOMP
	db 22, BUBBLEBEAM
	db 26, MIST
	db 29, SHARPEN
	db 32, CRABHAMMER
	db 36, DETECT
	db 40, WATERFALL
	db 42, CROSS_CHOP
	db 45, GUILLOTINE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HARDEN
	db 5, WATER_GUN
	db 8, FURY_SWIPES
	db 14, VICEGRIP
	db 17, STOMP
	db 22, BUBBLEBEAM
	db 26, MIST
	db 31, SHARPEN
	db 34, CRABHAMMER
	db 38, DETECT
	db 42, WATERFALL
	db 44, CROSS_CHOP
	db 47, GUILLOTINE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 5, QUICK_ATTACK
	db 8, HARDEN
	db 14, SPARK
	db 17, SUPERSONIC
	db 22, SONICBOOM
	db 26, ROLLOUT
	db 29, LIGHT_SCREEN
	db 29, REFLECT
	db 32, THUNDERBOLT
	db 36, SWIFT
	db 40, MIRROR_COAT
	db 42, THUNDER
	db 45, EXPLOSION
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 5, QUICK_ATTACK
	db 8, HARDEN
	db 14, SPARK
	db 17, SUPERSONIC
	db 22, SONICBOOM
	db 26, ROLLOUT
	db 29, LIGHT_SCREEN
	db 29, REFLECT
	db 34, THUNDERBOLT
	db 38, SWIFT
	db 42, MIRROR_COAT
	db 44, THUNDER
	db 47, EXPLOSION
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, ABSORB
	db 5, LEECH_SEED
	db 9, CONFUSION
	db 13, REFLECT
	db 13, LIGHT_SCREEN
	db 18, MEGA_DRAIN
	db 24, SWEET_SCENT
	db 27, SYNTHESIS
	db 30, PSYBEAM
	db 34, GIGA_DRAIN
	db 38, MIND_READER
	db 41, PSYCHIC_M
	db 46, EGG_BOMB
	db 49, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, LIGHT_SCREEN
	db 1, MEGA_DRAIN
	db 1, SYNTHESIS
	db 1, PSYBEAM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, TAIL_WHIP
	db 5, SCRATCH
	db 14, LEER
	db 17, BONEMERANG
	db 22, METAL_CLAW
	db 26, SCREECH
	db 30, HEADBUTT
	db 34, BONE_CLUB
	db 38, ROCK_SLIDE
	db 42, SANDSTORM
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, TAIL_WHIP
	db 5, SCRATCH
	db 14, LEER
	db 17, BONEMERANG
	db 22, METAL_CLAW
	db 26, SCREECH
	db 32, HEADBUTT
	db 36, BONE_CLUB
	db 40, ROCK_SLIDE
	db 44, SANDSTORM
	db 47, EARTHQUAKE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 6, DOUBLE_KICK
	db 10, MEDITATE
	db 15, LOW_KICK
	db 19, SCREECH
	db 23, STOMP
	db 29, ROLLING_KICK
	db 32, DETECT
	db 35, JUMP_KICK
	db 38, SWAGGER
	db 41, HI_JUMP_KICK
	db 45, DOUBLE_EDGE
	db 47, MEGA_KICK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 6, MACH_PUNCH
	db 10, COMET_PUNCH
	db 15, MEDITATE
	db 19, SEISMIC_TOSS
	db 23, ICE_PUNCH
	db 23, FIRE_PUNCH
	db 23, THUNDERPUNCH
	db 29, SWORDS_DANCE
	db 32, VITAL_THROW
	db 35, LOCK_ON
	db 38, MEGA_PUNCH
	db 41, SWAGGER
	db 45, DETECT
	db 47, DYNAMICPUNCH
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, TAIL_WHIP
	db 5, WRAP
	db 8, SUPERSONIC
	db 14, PURSUIT
	db 17, FOCUS_ENERGY
	db 22, HEADBUTT
	db 26, SCREECH
	db 29, MEGA_PUNCH
	db 32, CONFUSE_RAY
	db 36, BODY_SLAM
	db 40, BIDE
	db 42, PROTECT
	db 45, MEGA_KICK
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, SMOG
	db 6, SMOKESCREEN
	db 10, ACID
	db 15, HAZE
	db 19, ROLLOUT
	db 23, SCREECH
	db 29, SELFDESTRUCT
	db 32, SLUDGE
	db 35, ENDURE
	db 38, BODY_SLAM
	db 41, TOXIC
	db 45, SLUDGE_BOMB
	db 47, EXPLOSION
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, SMOG
	db 6, SMOKESCREEN
	db 10, ACID
	db 15, HAZE
	db 19, ROLLOUT
	db 23, SCREECH
	db 29, SELFDESTRUCT
	db 32, SLUDGE
	db 35, ENDURE
	db 40, BODY_SLAM
	db 43, TOXIC
	db 47, SLUDGE_BOMB
	db 49, EXPLOSION
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, MUD_SLAP
	db 10, ROCK_THROW
	db 15, HORN_ATTACK
	db 19, SCARY_FACE
	db 23, MAGNITUDE
	db 29, ENCORE
	db 32, ROCK_SLIDE
	db 35, SCREECH
	db 38, EARTHQUAKE
	db 41, SANDSTORM
	db 45, IRON_TAIL
	db 47, HORN_DRILL
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, MUD_SLAP
	db 10, ROCK_THROW
	db 15, HORN_ATTACK
	db 19, SCARY_FACE
	db 23, MAGNITUDE
	db 29, ENCORE
	db 32, ROCK_SLIDE
	db 35, SCREECH
	db 38, EARTHQUAKE
	db 41, SANDSTORM
	db 47, IRON_TAIL
	db 49, HORN_DRILL
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 6, SWEET_KISS
	db 10, COMET_PUNCH
	db 15, SOFTBOILED
	db 19, HEADBUTT
	db 23, LIGHT_SCREEN
	db 29, PRESENT
	db 32, SING
	db 35, MEGA_PUNCH
	db 38, SUBSTITUTE
	db 41, EGG_BOMB
	db 45, HEAL_BELL
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, GROWTH
	db 5, VINE_WHIP
	db 8, STUN_SPORE
	db 14, SWEET_SCENT
	db 17, SLEEP_POWDER
	db 22, MEGA_DRAIN
	db 26, SLASH
	db 29, REFLECT
	db 32, GIGA_DRAIN
	db 36, SYNTHESIS
	db 40, SLAM
	db 42, SOLARBEAM
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, TAIL_WHIP
	db 5, BEAT_UP
	db 8, GROWL
	db 14, BITE
	db 17, SCARY_FACE
	db 22, RAGE
	db 26, FOCUS_ENERGY
	db 29, DIZZY_PUNCH
	db 32, MEGA_PUNCH
	db 36, FLAIL
	db 40, GLARE
	db 42, OUTRAGE
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, SMOKESCREEN
	db 9, BARRAGE
	db 13, HAZE
	db 18, BUBBLEBEAM
	db 24, DRAGON_RAGE
	db 27, POISON_GAS
	db 30, DRAGONBREATH
	db 34, AGILITY
	db 38, WATERFALL
	db 41, RAIN_DANCE
	db 46, DOUBLE_EDGE
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA ; Change to Level Up While Holding
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, SMOKESCREEN
	db 9, BARRAGE
	db 13, HAZE
	db 18, BUBBLEBEAM
	db 24, DRAGON_RAGE
	db 27, POISON_GAS
	db 30, DRAGONBREATH
	db 38, AGILITY
	db 40, WATERFALL
	db 43, RAIN_DANCE
	db 48, DOUBLE_EDGE
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 8, SUPERSONIC
	db 14, HORN_ATTACK
	db 17, MIST
	db 22, BUBBLEBEAM
	db 26, AGILITY
	db 30, WATERFALL
	db 34, BARRIER
	db 38, CONFUSE_RAY
	db 42, HYDRO_PUMP
	db 45, HORN_DRILL
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 8, SUPERSONIC
	db 14, HORN_ATTACK
	db 17, MIST
	db 22, BUBBLEBEAM
	db 26, AGILITY
	db 30, WATERFALL
	db 36, BARRIER
	db 40, CONFUSE_RAY
	db 43, HYDRO_PUMP
	db 47, HORN_DRILL
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HARDEN
	db 5, SAFEGUARD
	db 8, RAPID_SPIN
	db 14, FLASH
	db 17, CONFUSION
	db 22, BUBBLEBEAM
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 29, SWIFT
	db 32, LOCK_ON
	db 36, PAIN_SPLIT
	db 40, PSYCHIC_M
	db 42, RECOVER
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, CONFUSION
	db 1, LOCK_ON
	db 1, RECOVER
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, PSYWAVE
	db 6, CONFUSION
	db 10, DOUBLESLAP
	db 15, SUBSTITUTE
	db 19, MIMIC
	db 23, REFLECT
	db 23, LIGHT_SCREEN
	db 27, PSYBEAM
	db 32, SAFEGUARD
	db 35, ENCORE
	db 38, MEGA_KICK
	db 41, PSYCHIC_M
	db 45, BATON_PASS
	db 47, MIRROR_COAT
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR ; Change to Level Up While Holding
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FURY_CUTTER
	db 8, FALSE_SWIPE
	db 14, FOCUS_ENERGY
	db 17, PURSUIT
	db 22, WING_ATTACK
	db 26, SWORDS_DANCE
	db 29, SLASH
	db 32, STEEL_WING
	db 36, DOUBLE_TEAM
	db 40, X_SCISSOR
	db 42, AGILITY
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 6, POWDER_SNOW
	db 10, LOVELY_KISS
	db 15, CONFUSION
	db 19, SWEET_KISS
	db 23, SPITE
	db 29, ICE_PUNCH
	db 34, PSYCHIC_M
	db 37, SING
	db 40, BODY_SLAM
	db 43, DREAM_EATER
	db 47, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 6, THUNDERSHOCK
	db 10, THUNDER_WAVE
	db 15, MACH_PUNCH
	db 19, LOW_KICK
	db 23, FLASH
	db 29, THUNDERPUNCH
	db 34, MEDITATE
	db 37, THUNDERBOLT
	db 40, COUNTER
	db 43, ZAP_CANNON
	db 47, DETECT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 6, EMBER
	db 10, SMOKESCREEN
	db 15, THIEF
	db 19, SPITE
	db 23, FAINT_ATTACK
	db 29, FIRE_PUNCH
	db 34, SUNNY_DAY
	db 37, CONFUSE_RAY
	db 40, FLAMETHROWER
	db 43, SHADOW_BALL
	db 47, SWAGGER
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 1, HARDEN
	db 6, VICEGRIP
	db 10, FOCUS_ENERGY
	db 15, TWINEEDLE
	db 19, MEDITATE
	db 23, SEISMIC_TOSS
	db 29, DETECT
	db 32, REVERSAL
	db 35, SWORDS_DANCE
	db 38, SUBMISSION
	db 41, X_SCISSOR
	db 45, MEAN_LOOK
	db 47, GUILLOTINE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 6, SCARY_FACE
	db 10, RAGE
	db 15, GLARE
	db 19, PURSUIT
	db 23, HORN_ATTACK
	db 29, AGILITY
	db 32, TAKE_DOWN
	db 35, IRON_TAIL
	db 38, SWORDS_DANCE
	db 41, OUTRAGE
	db 45, REST
	db 47, HORN_DRILL
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 6, WATER_GUN
	db 10, SCARY_FACE
	db 15, ROAR
	db 19, DRAGON_RAGE
	db 20, BITE
	db 25, BUBBLEBEAM
	db 31, MIST
	db 34, CRUNCH
	db 37, WATERFALL
	db 40, OUTRAGE
	db 43, RAIN_DANCE
	db 47, HYDRO_PUMP
	db 49, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WITHDRAW
	db 6, POWDER_SNOW
	db 10, SING
	db 15, BUBBLEBEAM
	db 19, ICY_WIND
	db 23, CONFUSE_RAY
	db 29, PERISH_SONG
	db 32, AURORA_BEAM
	db 35, SURF
	db 38, SAFEGUARD
	db 41, HYDRO_PUMP
	db 45, MIST
	db 47, BLIZZARD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 5, QUICK_ATTACK
	db 8, SAND_ATTACK
	db 14, BITE
	db 17, HIDDEN_POWER
	db 22, CRUNCH
	db 26, BODY_SLAM
	db 30, DOUBLE_TEAM
	db 34, AGILITY
	db 38, IRON_TAIL
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, CHARM
	db 5, WHIRLPOOL
	db 8, SAND_ATTACK
	db 14, BITE
	db 17, HAZE
	db 22, ACID_ARMOR
	db 26, BUBBLEBEAM
	db 30, MINIMIZE
	db 34, CRUNCH
	db 38, ICE_BEAM
	db 42, RAIN_DANCE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, CHARM
	db 5, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 14, PURSUIT
	db 17, DOUBLE_TEAM
	db 22, SPARK
	db 26, EXTREMESPEED
	db 30, AGILITY
	db 34, FLASH
	db 38, THUNDERBOLT
	db 42, LOCK_ON
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, CHARM
	db 5, FIRE_SPIN
	db 8, SMOKESCREEN
	db 14, BITE
	db 17, FOCUS_ENERGY
	db 22, FLAME_WHEEL
	db 26, SWORDS_DANCE
	db 30, CRUNCH
	db 34, FLAMETHROWER
	db 38, MORNING_SUN
	db 42, IRON_TAIL
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2 ; Change to Level Up While Holding
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, TACKLE
	db 5, PSYWAVE
	db 8, SHARPEN
	db 14, CONVERSION2
	db 17, SAFEGUARD
	db 26, MIRROR_SHOT
	db 29, TRI_ATTACK
	db 32, RECOVER
	db 36, FLASH_CANNON
	db 40, ZAP_CANNON
	db 42, LOCK_ON
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 6, CLAMP
	db 10, SPIKE_CANNON
	db 15, ROCK_THROW
	db 19, HARDEN
	db 23, BUBBLEBEAM
	db 29, ANCIENTPOWER
	db 32, PROTECT
	db 35, ROCK_SLIDE
	db 38, SURF
	db 41, RAIN_DANCE
	db 41, SANDSTORM
	db 45, SKULL_BASH
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 6, CLAMP
	db 10, SPIKE_CANNON
	db 15, ROCK_THROW
	db 19, HARDEN
	db 23, BUBBLEBEAM
	db 29, ANCIENTPOWER
	db 32, PROTECT
	db 35, ROCK_SLIDE
	db 38, SURF
	db 43, RAIN_DANCE
	db 43, SANDSTORM
	db 47, SKULL_BASH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 10, WATER_GUN
	db 15, ENDURE
	db 19, ROCK_THROW
	db 23, SLASH
	db 29, BUBBLEBEAM
	db 32, SWORDS_DANCE
	db 35, GIGA_DRAIN
	db 38, ROCK_SLIDE
	db 41, WATERFALL
	db 45, LOCK_ON
	db 47, SOLARBEAM
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 10, WATER_GUN
	db 15, ENDURE
	db 19, ROCK_THROW
	db 23, SLASH
	db 29, BUBBLEBEAM
	db 32, SWORDS_DANCE
	db 35, GIGA_DRAIN
	db 38, ROCK_SLIDE
	db 43, WATERFALL
	db 47, LOCK_ON
	db 49, SOLARBEAM
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, GROWL
	db 6, SCARY_FACE
	db 10, ROCK_THROW
	db 15, WING_ATTACK
	db 19, ROAR
	db 23, ANCIENTPOWER
	db 29, AGILITY
	db 32, EXTREMESPEED
	db 35, CRUNCH
	db 38, IRON_TAIL
	db 41, SCREECH
	db 45, HYPER_BEAM
	db 47, SKY_ATTACK
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, BIDE
	db 10, FORESIGHT
	db 15, ROLLOUT
	db 19, HEADBUTT
	db 23, BELLY_DRUM
	db 29, REST
	db 29, SNORE
	db 32, SLEEP_TALK
	db 35, BODY_SLAM
	db 38, AMNESIA
	db 41, TAKE_DOWN
	db 45, BATON_PASS
	db 47, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 5, MIST
	db 10, LEER
	db 20, WING_ATTACK
	db 30, AURORA_BEAM
	db 40, AGILITY
	db 45, FLY
	db 50, ICE_BEAM
	db 55, MIND_READER
	db 60, SCREECH
	db 65, BLIZZARD
	db 70, SKY_ATTACK
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 5, THUNDER_WAVE
	db 10, LEER
	db 20, DRILL_PECK
	db 30, DETECT
	db 40, AGILITY
	db 45, FLY
	db 50, THUNDERBOLT
	db 55, MIND_READER
	db 60, SCREECH
	db 65, THUNDER
	db 70, SKY_ATTACK
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, EMBER
	db 5, FIRE_SPIN
	db 10, LEER
	db 20, WING_ATTACK
	db 30, ENDURE
	db 40, AGILITY
	db 45, FLY
	db 50, FLAMETHROWER
	db 55, MIND_READER
	db 60, SCREECH
	db 65, FIRE_BLAST
	db 70, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 10, TWISTER
	db 15, SUPERSONIC
	db 20, GLARE
	db 25, DRAGON_RAGE
	db 30, AGILITY
	db 35, DRAGONBREATH
	db 40, BODY_SLAM
	db 45, ROAR
	db 50, OUTRAGE
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 10, TWISTER
	db 15, SUPERSONIC
	db 20, GLARE
	db 25, DRAGON_RAGE
	db 30, AGILITY
	db 37, DRAGONBREATH
	db 42, BODY_SLAM
	db 47, ROAR
	db 52, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 10, TWISTER
	db 15, SUPERSONIC
	db 20, GLARE
	db 25, DRAGON_RAGE
	db 30, AGILITY
	db 37, DRAGONBREATH
	db 42, BODY_SLAM
	db 47, ROAR
	db 52, OUTRAGE
	db 59, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 1, DISABLE
	db 5, CONFUSION
	db 10, BARRIER
	db 20, SWIFT
	db 30, SAFEGUARD
	db 40, PSYBEAM
	db 45, MIND_READER
	db 50, FUTURE_SIGHT
	db 55, HYPNOSIS
	db 60, PSYCHIC_M
	db 65, RECOVER
	db 70, DREAM_EATER
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 1, CHARM
	db 5, CONFUSION
	db 10, BARRIER
	db 20, METRONOME
	db 30, SAFEGUARD
	db 40, PSYBEAM
	db 45, MIND_READER
	db 50, FUTURE_SIGHT
	db 55, HYPNOSIS
	db 60, PSYCHIC_M
	db 65, RECOVER
	db 70, DREAM_EATER
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, ABSORB
	db 7, STUN_SPORE
	db 10, SWEET_SCENT
	db 13, SAFEGUARD
	db 16, MEGA_DRAIN
	db 20, SYNTHESIS
	db 24, RAZOR_LEAF
	db 27, REFLECT
	db 27, LIGHT_SCREEN
	db 31, GIGA_DRAIN
	db 36, BODY_SLAM
	db 41, BATON_PASS
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, ABSORB
	db 7, STUN_SPORE
	db 10, SWEET_SCENT
	db 13, SAFEGUARD
	db 16, MEGA_DRAIN
	db 22, SYNTHESIS
	db 26, RAZOR_LEAF
	db 29, REFLECT
	db 29, LIGHT_SCREEN
	db 33, GIGA_DRAIN
	db 38, BODY_SLAM
	db 44, BATON_PASS
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, ABSORB
	db 7, STUN_SPORE
	db 10, SWEET_SCENT
	db 13, SAFEGUARD
	db 16, MEGA_DRAIN
	db 22, SYNTHESIS
	db 26, RAZOR_LEAF
	db 29, REFLECT
	db 29, LIGHT_SCREEN
	db 35, GIGA_DRAIN
	db 40, BODY_SLAM
	db 46, BATON_PASS
	db 52, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 7, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 13, GLARE
	db 16, SWIFT
	db 20, FLAME_WHEEL
	db 24, SCREECH
	db 27, SUNNY_DAY
	db 31, FLAMETHROWER
	db 36, IRON_TAIL
	db 42, CONFUSE_RAY
	db 48, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 7, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 13, GLARE
	db 18, SWIFT
	db 22, FLAME_WHEEL
	db 26, SCREECH
	db 29, SUNNY_DAY
	db 33, FLAMETHROWER
	db 38, IRON_TAIL
	db 44, CONFUSE_RAY
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 7, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 13, GLARE
	db 18, SWIFT
	db 22, FLAME_WHEEL
	db 26, SCREECH
	db 29, SUNNY_DAY
	db 33, FLAMETHROWER
	db 40, IRON_TAIL
	db 46, CONFUSE_RAY
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 7, SCARY_FACE
	db 10, BITE
	db 13, DETECT
	db 16, BUBBLEBEAM
	db 20, HEADBUTT
	db 24, SCREECH
	db 27, CRUNCH
	db 31, WATERFALL
	db 36, OUTRAGE
	db 42, RAIN_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 7, SCARY_FACE
	db 10, BITE
	db 13, DETECT
	db 16, BUBBLEBEAM
	db 22, HEADBUTT
	db 26, SCREECH
	db 29, CRUNCH
	db 33, WATERFALL
	db 38, OUTRAGE
	db 44, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 7, SCARY_FACE
	db 10, BITE
	db 13, DETECT
	db 16, BUBBLEBEAM
	db 22, HEADBUTT
	db 26, SCREECH
	db 29, CRUNCH
	db 34, WATERFALL
	db 40, OUTRAGE
	db 46, RAIN_DANCE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 5, QUICK_ATTACK
	db 9, SAND_ATTACK
	db 13, FURY_SWIPES
	db 18, AGILITY
	db 22, FAINT_ATTACK
	db 27, AMNESIA
	db 30, BODY_SLAM
	db 34, REST
	db 39, IRON_TAIL
	db 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 5, QUICK_ATTACK
	db 9, SAND_ATTACK
	db 13, FURY_SWIPES
	db 20, AGILITY
	db 24, FAINT_ATTACK
	db 29, AMNESIA
	db 32, BODY_SLAM
	db 36, REST
	db 41, IRON_TAIL
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, FORESIGHT
	db 9, GUST
	db 13, CONFUSION
	db 17, HYPNOSIS
	db 21, REFLECT
	db 21, LIGHT_SCREEN
	db 26, PSYBEAM
	db 30, DISABLE
	db 35, TAKE_DOWN
	db 39, MIRROR_MOVE
	db 43, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, FORESIGHT
	db 9, GUST
	db 13, CONFUSION
	db 17, HYPNOSIS
	db 23, REFLECT
	db 23, LIGHT_SCREEN
	db 28, PSYBEAM
	db 32, DISABLE
	db 37, TAKE_DOWN
	db 41, MIRROR_MOVE
	db 45, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, SUPERSONIC
	db 6, BEAT_UP
	db 10, MACH_PUNCH
	db 13, LIGHT_SCREEN
	db 13, REFLECT
	db 18, MOONLIGHT
	db 23, SWIFT
	db 28, AGILITY
	db 34, MEGA_PUNCH
	db 38, X_SCISSOR
	db 42, SAFEGUARD
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, SUPERSONIC
	db 6, BEAT_UP
	db 10, MACH_PUNCH
	db 13, LIGHT_SCREEN
	db 13, REFLECT
	db 18, MOONLIGHT
	db 25, SWIFT
	db 30, AGILITY
	db 36, MEGA_PUNCH
	db 40, X_SCISSOR
	db 44, SAFEGUARD
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, LEECH_LIFE
	db 10, SPIDER_WEB
	db 13, BITE
	db 18, TWINEEDLE
	db 23, SCARY_FACE
	db 28, SLUDGE
	db 34, SCREECH
	db 38, CRUNCH
	db 42, TOXIC
	db 46, SLUDGE_BOMB
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, LEECH_LIFE
	db 10, SPIDER_WEB
	db 13, BITE
	db 18, TWINEEDLE
	db 25, SCARY_FACE
	db 30, SLUDGE
	db 36, SCREECH
	db 40, CRUNCH
	db 44, TOXIC
	db 48, SLUDGE_BOMB
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 3, SUPERSONIC
	db 7, GUST
	db 9, BITE
	db 12, LEECH_LIFE
	db 15, SCARY_FACE
	db 19, SLUDGE
	db 25, WING_ATTACK
	db 28, SCREECH
	db 32, CRUNCH
	db 37, CONFUSE_RAY
	db 43, SLUDGE_BOMB
	db 49, TOXIC
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, THUNDERSHOCK
	db 8, WATER_GUN
	db 14, SUPERSONIC
	db 17, PROTECT
	db 22, BUBBLEBEAM
	db 26, SAFEGUARD
	db 29, FLAIL
	db 32, CONFUSE_RAY
	db 36, THUNDERBOLT
	db 40, RAIN_DANCE
	db 42, LOCK_ON
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, THUNDERSHOCK
	db 8, WATER_GUN
	db 14, SUPERSONIC
	db 17, PROTECT
	db 22, BUBBLEBEAM
	db 26, SAFEGUARD
	db 31, FLAIL
	db 34, CONFUSE_RAY
	db 38, THUNDERBOLT
	db 42, RAIN_DANCE
	db 44, LOCK_ON
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, CHARM
	db 3, THUNDERSHOCK
	db 7, TAIL_WHIP
	db 9, GROWL
	db 12, POUND
	db 15, THUNDER_WAVE
	db 19, SWEET_KISS
	db 23, PRESENT
	db 26, SPARK
	db 30, FLASH
	db 35, BATON_PASS
	db 41, THUNDERBOLT
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, CHARM
	db 3, POUND
	db 7, ENCORE
	db 9, SWEET_KISS
	db 12, MIMIC
	db 15, SING
	db 19, DISABLE
	db 23, PRESENT
	db 26, METRONOME
	db 30, HEAL_BELL
	db 35, BATON_PASS
	db 41, BODY_SLAM
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, POUND
	db 7, CHARM
	db 9, SING
	db 12, FALSE_SWIPE
	db 15, SWEET_KISS
	db 19, FLAIL
	db 23, PRESENT
	db 26, LOVELY_KISS
	db 30, DIZZY_PUNCH
	db 35, BATON_PASS
	db 41, PERISH_SONG
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 8, SWEET_KISS
	db 14, PSYBEAM
	db 17, ENCORE
	db 22, DIZZY_PUNCH
	db 26, PROTECT
	db 30, MEGA_PUNCH
	db 34, PSYCHIC_M
	db 38, HEAL_BELL
	db 42, MIRROR_COAT
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 8, SWEET_KISS
	db 14, PSYBEAM
	db 17, ENCORE
	db 22, DIZZY_PUNCH
	db 26, PROTECT
	db 30, MEGA_PUNCH
	db 34, PSYCHIC_M
	db 38, HEAL_BELL
	db 42, MIRROR_COAT
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 5, TELEPORT
	db 8, CONFUSION
	db 14, WHIRLWIND
	db 17, WING_ATTACK
	db 22, FORESIGHT
	db 26, MIRROR_MOVE
	db 29, FUTURE_SIGHT
	db 32, SING
	db 36, PSYCHIC_M
	db 40, NIGHT_SHADE
	db 42, MIND_READER
	db 45, DREAM_EATER
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 5, TELEPORT
	db 8, CONFUSION
	db 14, WHIRLWIND
	db 17, WING_ATTACK
	db 22, FORESIGHT
	db 28, MIRROR_MOVE
	db 31, FUTURE_SIGHT
	db 34, SING
	db 38, PSYCHIC_M
	db 42, NIGHT_SHADE
	db 44, MIND_READER
	db 47, DREAM_EATER
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, THUNDERSHOCK
	db 9, THUNDER_WAVE
	db 12, SWIFT
	db 15, COTTON_SPORE
	db 19, SPARK
	db 23, FLASH
	db 26, LIGHT_SCREEN
	db 30, THUNDERBOLT
	db 35, CONFUSE_RAY
	db 41, IRON_TAIL
	db 47, ZAP_CANNON
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, THUNDERSHOCK
	db 9, THUNDER_WAVE
	db 12, SWIFT
	db 15, COTTON_SPORE
	db 21, SPARK
	db 25, FLASH
	db 28, LIGHT_SCREEN
	db 32, THUNDERBOLT
	db 37, CONFUSE_RAY
	db 43, IRON_TAIL
	db 49, ZAP_CANNON
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, THUNDERSHOCK
	db 9, THUNDER_WAVE
	db 12, SWIFT
	db 15, COTTON_SPORE
	db 21, SPARK
	db 25, FLASH
	db 28, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 34, THUNDERBOLT
	db 39, CONFUSE_RAY
	db 45, IRON_TAIL
	db 51, ZAP_CANNON
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, MORNING_SUN
	db 1, PETAL_DANCE
	db 1, STUN_SPORE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, DEFENSE_CURL
	db 5, TACKLE
	db 8, WATER_GUN
	db 14, MIST
	db 17, ROLLOUT
	db 22, BUBBLEBEAM
	db 26, RAIN_DANCE
	db 30, HEADBUTT
	db 34, PSYCH_UP
	db 38, DOUBLE_EDGE
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, DEFENSE_CURL
	db 5, TACKLE
	db 8, WATER_GUN
	db 14, MIST
	db 17, ROLLOUT
	db 24, BUBBLEBEAM
	db 28, RAIN_DANCE
	db 32, HEADBUTT
	db 36, PSYCH_UP
	db 40, DOUBLE_EDGE
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HARDEN
	db 5, MIMIC
	db 8, ROCK_THROW
	db 14, LOW_KICK
	db 17, SHARPEN
	db 22, FLAIL
	db 26, FAINT_ATTACK
	db 29, PROTECT
	db 32, ROCK_SLIDE
	db 36, SLAM
	db 40, SANDSTORM
	db 42, SUBMISSION
	db 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, ICE_PUNCH
	db 1, PERISH_SONG
	db 1, HYPNOSIS
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 3, ABSORB
	db 7, CHARM
	db 9, GUST
	db 12, SLEEP_POWDER
	db 12, STUN_SPORE
	db 12, POISONPOWDER
	db 15, MEGA_DRAIN
	db 19, COTTON_SPORE
	db 23, SLAM
	db 26, SYNTHESIS
	db 30, GIGA_DRAIN
	db 35, MIRROR_MOVE
	db 41, SPORE
	db 47, SOLARBEAM
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 3, ABSORB
	db 7, CHARM
	db 9, GUST
	db 12, SLEEP_POWDER
	db 12, STUN_SPORE
	db 12, POISONPOWDER
	db 15, MEGA_DRAIN
	db 21, COTTON_SPORE
	db 25, SLAM
	db 28, SYNTHESIS
	db 32, GIGA_DRAIN
	db 37, MIRROR_MOVE
	db 43, SPORE
	db 49, SOLARBEAM
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 3, ABSORB
	db 7, CHARM
	db 9, GUST
	db 12, SLEEP_POWDER
	db 12, STUN_SPORE
	db 12, POISONPOWDER
	db 15, MEGA_DRAIN
	db 21, COTTON_SPORE
	db 25, SLAM
	db 30, SYNTHESIS
	db 34, GIGA_DRAIN
	db 39, MIRROR_MOVE
	db 45, SPORE
	db 51, SOLARBEAM
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, FALSE_SWIPE
	db 8, MACH_PUNCH
	db 14, SAND_ATTACK
	db 17, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 26, AGILITY
	db 29, MEGA_PUNCH
	db 32, SWORDS_DANCE
	db 36, FLAIL
	db 40, DYNAMICPUNCH
	db 42, SCREECH
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 5, TACKLE
	db 8, LEECH_SEED
	db 14, SWEET_SCENT
	db 17, MEGA_DRAIN
	db 22, SUNNY_DAY
	db 26, SWIFT
	db 29, SYNTHESIS
	db 32, FLASH
	db 36, GIGA_DRAIN
	db 40, FLAIL
	db 42, PROTECT
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 5, TACKLE
	db 8, LEECH_SEED
	db 14, SWEET_SCENT
	db 17, MEGA_DRAIN
	db 22, SUNNY_DAY
	db 26, SWIFT
	db 29, SYNTHESIS
	db 32, FLASH
	db 36, GIGA_DRAIN
	db 40, FLAIL
	db 42, PROTECT
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 1, SUPERSONIC
	db 5, GUST
	db 8, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, SWORDS_DANCE
	db 22, WING_ATTACK
	db 26, SCREECH
	db 30, DETECT
	db 34, LOCK_ON
	db 38, X_SCISSOR
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 5, MUD_SLAP
	db 8, MIST
	db 14, SWAGGER
	db 17, MAGNITUDE
	db 22, BUBBLEBEAM
	db 26, AMNESIA
	db 29, RAIN_DANCE
	db 32, SLAM
	db 36, EARTHQUAKE
	db 40, REST
	db 42, HYDRO_PUMP
	db 45, FISSURE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 5, MUD_SLAP
	db 8, MIST
	db 14, SWAGGER
	db 17, MAGNITUDE
	db 24, BUBBLEBEAM
	db 28, AMNESIA
	db 31, RAIN_DANCE
	db 34, SLAM
	db 38, EARTHQUAKE
	db 42, REST
	db 44, HYDRO_PUMP
	db 47, FISSURE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 1, CHARM
	db 5, CONFUSION
	db 8, SAND_ATTACK
	db 14, BITE
	db 17, SPITE
	db 22, HYPNOSIS
	db 26, PSYBEAM
	db 30, MORNING_SUN
	db 34, CRUNCH
	db 38, PSYCHIC_M
	db 42, PSYCH_UP
	db 45, DREAM_EATER
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 5, PURSUIT
	db 8, SAND_ATTACK
	db 14, BITE
	db 17, FLASH
	db 22, FAINT_ATTACK
	db 26, SCREECH
	db 30, MOONLIGHT
	db 34, CRUNCH
	db 38, SHADOW_BALL
	db 42, LOCK_ON
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, THIEF
	db 8, MEAN_LOOK
	db 14, FAINT_ATTACK
	db 17, SPITE
	db 22, WING_ATTACK
	db 26, BEAT_UP
	db 29, MIMIC
	db 32, DRILL_PECK
	db 36, SHADOW_BALL
	db 40, SCREECH
	db 42, NIGHT_SHADE
	db 45, MIRROR_MOVE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 5, PSYWAVE
	db 8, WATER_GUN
	db 14, MIST
	db 17, HEADBUTT
	db 22, CONFUSION
	db 26, REFLECT
	db 26, LIGHT_SCREEN
	db 30, BUBBLEBEAM
	db 34, AMNESIA
	db 40, BODY_SLAM
	db 44, PSYCHIC_M
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 6, PSYWAVE
	db 10, SPITE
	db 15, CONFUSE_RAY
	db 19, NIGHT_SHADE
	db 23, MEAN_LOOK
	db 29, PSYBEAM
	db 32, PERISH_SONG
	db 35, FUTURE_SIGHT
	db 38, SHADOW_BALL
	db 41, SWIFT
	db 45, PAIN_SPLIT
	db 47, NIGHTMARE
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 1, GROWL
	db 6, CONFUSION
	db 10, DOUBLE_KICK
	db 15, SAFEGUARD
	db 19, BITE
	db 23, PSYBEAM
	db 29, AGILITY
	db 32, STOMP
	db 35, CRUNCH
	db 38, GLARE
	db 41, PSYCHIC_M
	db 45, MIND_READER
	db 47, MEGA_KICK
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, HARDEN
	db 10, LEECH_LIFE
	db 15, PIN_MISSILE
	db 19, SPIKES
	db 23, SELFDESTRUCT
	db 29, SWEET_SCENT
	db 32, BIDE
	db 35, MIRROR_SHOT
	db 38, X_SCISSOR
	db 41, SHARPEN
	db 45, DOUBLE_EDGE
	db 47, EXPLOSION
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, HARDEN
	db 10, LEECH_LIFE
	db 15, PIN_MISSILE
	db 19, SPIKES
	db 23, SELFDESTRUCT
	db 29, SWEET_SCENT
	db 34, BIDE
	db 37, MIRROR_SHOT
	db 40, X_SCISSOR
	db 43, SHARPEN
	db 47, DOUBLE_EDGE
	db 49, EXPLOSION
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 5, TACKLE
	db 8, PURSUIT
	db 14, GLARE
	db 17, DRAGON_RAGE
	db 22, MEAN_LOOK
	db 26, DRAGONBREATH
	db 29, SLAM
	db 32, SWORDS_DANCE
	db 36, FLAIL
	db 40, SCREECH
	db 42, SKULL_BASH
	db 45, OUTRAGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 5, MUD_SLAP
	db 8, DEFENSE_CURL
	db 14, GUST
	db 17, MAGNITUDE
	db 22, DOUBLE_TEAM
	db 26, WING_ATTACK
	db 29, FAINT_ATTACK
	db 32, SCREECH
	db 36, EARTHQUAKE
	db 40, RAZOR_WIND
	db 42, TOXIC
	db 45, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, DIG
	db 1, ANCIENTPOWER
	db 1, IRON_TAIL
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 5, POUND
	db 8, SCARY_FACE
	db 14, BITE
	db 17, ROAR
	db 22, RAGE
	db 26, HYPER_FANG
	db 29, AMNESIA
	db 32, MEGA_PUNCH
	db 36, CRUNCH
	db 40, REST
	db 42, SUPER_FANG
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 5, POUND
	db 8, SCARY_FACE
	db 14, BITE
	db 17, ROAR
	db 22, RAGE
	db 28, HYPER_FANG
	db 31, AMNESIA
	db 34, MEGA_PUNCH
	db 38, CRUNCH
	db 42, REST
	db 44, SUPER_FANG
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, BUBBLE
	db 6, PIN_MISSILE
	db 10, TAIL_WHIP
	db 15, SPIKE_CANNON
	db 19, SHARPEN
	db 23, SLUDGE
	db 29, BUBBLEBEAM
	db 32, SPIKES
	db 35, SWORDS_DANCE
	db 38, SLUDGE_BOMB
	db 41, TOXIC
	db 45, HYDRO_PUMP
	db 47, HORN_DRILL
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, FALSE_SWIPE
	db 1, WING_ATTACK
	db 1, SWORDS_DANCE
	db 1, X_SCISSOR
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 5, BIDE
	db 8, SPIKES
	db 14, LEECH_LIFE
	db 17, FURY_CUTTER
	db 22, PROTECT
	db 26, SAFEGUARD
	db 29, ROCK_THROW
	db 32, SANDSTORM
	db 36, AMNESIA
	db 40, DOUBLE_EDGE
	db 42, LOCK_ON
	db 45, PAIN_SPLIT
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_SMASH
	db 1, LEER
	db 6, FORESIGHT
	db 10, MACH_PUNCH
	db 15, FOCUS_ENERGY
	db 19, SEISMIC_TOSS
	db 23, FURY_CUTTER
	db 29, SWAGGER
	db 32, VITAL_THROW
	db 35, X_SCISSOR
	db 38, SCREECH
	db 41, REVERSAL
	db 45, DETECT
	db 47, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THIEF
	db 8, MIST
	db 14, ICY_WIND
	db 17, SWAGGER
	db 22, FAINT_ATTACK
	db 26, METAL_CLAW
	db 26, SLASH
	db 29, AGILITY
	db 32, ICE_PUNCH
	db 36, SPITE
	db 40, SCREECH
	db 42, MOONLIGHT
	db 45, BLIZZARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 6, FURY_SWIPES
	db 10, REST
	db 15, SNORE
	db 19, LOVELY_KISS
	db 23, METAL_CLAW
	db 29, FAINT_ATTACK
	db 32, SCREECH
	db 35, SLASH
	db 38, SWORDS_DANCE
	db 41, OUTRAGE
	db 45, DETECT
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 6, FURY_SWIPES
	db 10, REST
	db 15, SNORE
	db 19, LOVELY_KISS
	db 23, METAL_CLAW
	db 29, FAINT_ATTACK
	db 34, SCREECH
	db 37, SLASH
	db 40, SWORDS_DANCE
	db 43, OUTRAGE
	db 47, DETECT
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, SMOKESCREEN
	db 6, EMBER
	db 10, HARDEN
	db 15, ROCK_THROW
	db 19, FLAME_WHEEL
	db 23, SUNNY_DAY
	db 29, ANCIENTPOWER
	db 32, AMNESIA
	db 35, SLUDGE_BOMB
	db 38, FLAMETHROWER
	db 41, MORNING_SUN
	db 45, SANDSTORM
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, SMOKESCREEN
	db 6, EMBER
	db 10, HARDEN
	db 15, ROCK_THROW
	db 19, FLAME_WHEEL
	db 23, SUNNY_DAY
	db 29, ANCIENTPOWER
	db 32, AMNESIA
	db 35, SLUDGE_BOMB
	db 38, FLAMETHROWER
	db 43, MORNING_SUN
	db 47, SANDSTORM
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, POWDER_SNOW
	db 8, MIST
	db 14, MAGNITUDE
	db 17, ICY_WIND
	db 22, ENDURE
	db 26, AURORA_BEAM
	db 29, AMNESIA
	db 32, TAKE_DOWN
	db 36, EARTHQUAKE
	db 40, HAZE
	db 42, BLIZZARD
	db 45, FISSURE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 5, POWDER_SNOW
	db 8, MIST
	db 14, MAGNITUDE
	db 17, ICY_WIND
	db 22, ENDURE
	db 26, AURORA_BEAM
	db 29, AMNESIA
	db 32, TAKE_DOWN
	db 38, EARTHQUAKE
	db 42, HAZE
	db 44, BLIZZARD
	db 47, FISSURE
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, WATER_GUN
	db 7, HARDEN
	db 9, ROCK_THROW
	db 12, BIDE
	db 15, SHARPEN
	db 23, ANCIENTPOWER
	db 26, PROTECT
	db 30, MIRROR_COAT
	db 35, ROCK_SLIDE
	db 41, RECOVER
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SMOKESCREEN
	db 5, QUICK_ATTACK
	db 8, TAIL_WHIP
	db 14, PSYBEAM
	db 17, POISON_GAS
	db 22, AURORA_BEAM
	db 26, OCTAZOOKA
	db 29, FOCUS_ENERGY
	db 32, ICE_BEAM
	db 36, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 42, LOCK_ON
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SMOKESCREEN
	db 5, QUICK_ATTACK
	db 8, TAIL_WHIP
	db 14, PSYBEAM
	db 17, POISON_GAS
	db 22, AURORA_BEAM
	db 28, OCTAZOOKA
	db 31, FOCUS_ENERGY
	db 34, ICE_BEAM
	db 38, RAIN_DANCE
	db 42, HYDRO_PUMP
	db 44, LOCK_ON
	db 47, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, MIST
	db 5, PECK
	db 8, MEAN_LOOK
	db 14, ICY_WIND
	db 17, PRESENT
	db 22, WING_ATTACK
	db 26, HAZE
	db 29, AURORA_BEAM
	db 32, DRILL_PECK
	db 36, PRESENT
	db 40, ICE_BEAM
	db 42, PROTECT
	db 45, BLIZZARD
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 6, GUST
	db 10, TWISTER
	db 15, LEER
	db 19, AGILITY
	db 23, BUBBLEBEAM
	db 29, WING_ATTACK
	db 32, CONFUSE_RAY
	db 35, MIRROR_MOVE
	db 38, RAIN_DANCE
	db 41, SURF
	db 45, REST
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, HARDEN
	db 19, MIRROR_SHOT
	db 23, WING_ATTACK
	db 29, AGILITY
	db 32, STEEL_WING
	db 35, DRILL_PECK
	db 41, LOCK_ON
	db 45, FLASH_CANNON
	db 47, SKY_ATTACK
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, BEAT_UP
	db 8, EMBER
	db 14, SMOKESCREEN
	db 17, BITE
	db 22, ROAR
	db 26, FLAME_WHEEL
	db 29, SHADOW_BALL
	db 32, SUNNY_DAY
	db 36, CRUNCH
	db 40, FLAMETHROWER
	db 42, PSYCH_UP
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, BEAT_UP
	db 8, EMBER
	db 14, SMOKESCREEN
	db 17, BITE
	db 22, ROAR
	db 28, FLAME_WHEEL
	db 31, SHADOW_BALL
	db 34, SUNNY_DAY
	db 38, CRUNCH
	db 42, FLAMETHROWER
	db 44, PSYCH_UP
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, SMOKESCREEN
	db 1, DRAGONBREATH
	db 1, RAIN_DANCE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, SAND_ATTACK
	db 15, MAGNITUDE
	db 19, ROLLOUT
	db 23, AMNESIA
	db 29, ANCIENTPOWER
	db 32, ENDURE
	db 35, TAKE_DOWN
	db 38, EARTHQUAKE
	db 41, BELLY_DRUM
	db 45, IRON_TAIL
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, SAND_ATTACK
	db 15, MAGNITUDE
	db 19, ROLLOUT
	db 23, AMNESIA
	db 31, ANCIENTPOWER
	db 34, ENDURE
	db 37, TAKE_DOWN
	db 40, EARTHQUAKE
	db 43, BELLY_DRUM
	db 47, IRON_TAIL
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, MIRROR_SHOT
	db 1, TRI_ATTACK
	db 1, RECOVER
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, SAND_ATTACK
	db 8, CONFUSION
	db 14, FAINT_ATTACK
	db 17, HYPNOSIS
	db 22, STOMP
	db 26, PSYBEAM
	db 29, CONFUSE_RAY
	db 32, SHADOW_BALL
	db 36, MEDITATE
	db 40, TAKE_DOWN
	db 42, NIGHTMARE
	db 45, DREAM_EATER
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 6, MACH_PUNCH
	db 10, GROWL
	db 15, PRESENT
	db 19, LOW_KICK
	db 21, BEAT_UP
	db 27, DETECT
	db 30, SCREECH
	db 33, COMET_PUNCH
	db 36, ROLLING_KICK
	db 39, PROTECT
	db 43, SUBSTITUTE
	db 45, VITAL_THROW
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, LEER
	db 6, DOUBLE_KICK
	db 10, MEDITATE
	db 15, TRIPLE_KICK
	db 19, AGILITY
	db 23, STOMP
	db 29, ROLLING_KICK
	db 32, COUNTER
	db 35, MEDITATE
	db 38, SWAGGER
	db 41, DETECT
	db 45, DOUBLE_EDGE
	db 47, MEGA_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 6, POWDER_SNOW
	db 10, LOVELY_KISS
	db 15, CONFUSION
	db 19, SWEET_KISS
	db 23, SPITE
	db 29, ICE_PUNCH
	db 32, PSYCHIC_M
	db 35, SING
	db 38, BODY_SLAM
	db 41, DREAM_EATER
	db 45, PERISH_SONG
	db 47, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 6, THUNDERSHOCK
	db 10, THUNDER_WAVE
	db 15, MACH_PUNCH
	db 19, LOW_KICK
	db 23, FLASH
	db 29, THUNDERPUNCH
	db 32, MEDITATE
	db 35, THUNDERBOLT
	db 38, COUNTER
	db 41, ZAP_CANNON
	db 45, DETECT
	db 47, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 6, EMBER
	db 10, SMOKESCREEN
	db 15, THIEF
	db 19, SPITE
	db 23, FAINT_ATTACK
	db 29, FIRE_PUNCH
	db 32, SUNNY_DAY
	db 35, CONFUSE_RAY
	db 38, FLAMETHROWER
	db 41, SHADOW_BALL
	db 45, SWAGGER
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, TAIL_WHIP
	db 6, MACH_PUNCH
	db 10, COMET_PUNCH
	db 15, ATTRACT
	db 19, STOMP
	db 23, ENCORE
	db 29, MILK_DRINK
	db 32, MEGA_PUNCH
	db 35, VITAL_THROW
	db 38, HEAL_BELL
	db 41, MEGA_KICK
	db 45, SWEET_KISS
	db 47, DYNAMICPUNCH
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 6, SWEET_KISS
	db 10, COMET_PUNCH
	db 15, SOFTBOILED
	db 19, HEADBUTT
	db 23, LIGHT_SCREEN
	db 29, PRESENT
	db 32, SING
	db 35, MEGA_PUNCH
	db 38, SUBSTITUTE
	db 41, EGG_BOMB
	db 45, HEAL_BELL
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 5, PURSUIT
	db 10, SPARK
	db 20, FLASH
	db 30, DRAGONBREATH
	db 40, THUNDERBOLT
	db 45, ROAR
	db 50, AGILITY
	db 55, ZAP_CANNON
	db 60, LOCK_ON
	db 65, OUTRAGE
	db 70, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOKESCREEN
	db 5, PURSUIT
	db 10, FLAME_WHEEL
	db 20, FLASH
	db 30, DRAGONBREATH
	db 40, FLAMETHROWER
	db 45, ROAR
	db 50, AGILITY
	db 55, SKULL_BASH
	db 60, LOCK_ON
	db 65, OUTRAGE
	db 70, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, MIST
	db 5, PURSUIT
	db 10, BUBBLEBEAM
	db 20, FLASH
	db 30, DRAGONBREATH
	db 40, WATERFALL
	db 45, ROAR
	db 50, AGILITY
	db 55, SURF
	db 60, LOCK_ON
	db 65, OUTRAGE
	db 70, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, HARDEN
	db 5, BITE
	db 10, ROCK_THROW
	db 15, SCARY_FACE
	db 20, MAGNITUDE
	db 25, DRAGON_RAGE
	db 30, SANDSTORM
	db 35, ROCK_SLIDE
	db 40, CRUNCH
	db 45, SCREECH
	db 50, OUTRAGE
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, HARDEN
	db 5, BITE
	db 10, ROCK_THROW
	db 15, SCARY_FACE
	db 20, MAGNITUDE
	db 25, DRAGON_RAGE
	db 30, SANDSTORM
	db 37, ROCK_SLIDE
	db 42, CRUNCH
	db 47, SCREECH
	db 52, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, HARDEN
	db 5, BITE
	db 10, ROCK_THROW
	db 15, SCARY_FACE
	db 20, MAGNITUDE
	db 25, DRAGON_RAGE
	db 30, SANDSTORM
	db 37, ROCK_SLIDE
	db 42, CRUNCH
	db 47, SCREECH
	db 52, OUTRAGE
	db 59, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, WHIRLWIND
	db 5, CONFUSION
	db 10, HAZE
	db 20, PSYBEAM
	db 30, WING_ATTACK
	db 40, SAFEGUARD
	db 45, FUTURE_SIGHT
	db 50, RAIN_DANCE
	db 55, AEROBLAST
	db 60, PSYCHIC_M
	db 65, RECOVER
	db 70, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, WHIRLWIND
	db 5, GUST
	db 10, SMOKESCREEN
	db 20, FIRE_SPIN
	db 30, WING_ATTACK
	db 40, SAFEGUARD
	db 45, FLAMETHROWER
	db 50, SUNNY_DAY
	db 55, MIRROR_MOVE
	db 60, SACRED_FIRE
	db 65, RECOVER
	db 70, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, CHARM
	db 5, CONFUSION
	db 10, LEECH_SEED
	db 20, MEGA_DRAIN
	db 30, FUTURE_SIGHT
	db 40, PERISH_SONG
	db 45, PETAL_DANCE
	db 50, GIGA_DRAIN
	db 55, HEAL_BELL
	db 60, PSYCHIC_M
	db 65, MIND_READER
	db 70, SOLARBEAM
	db 0 ; no more level-up moves
